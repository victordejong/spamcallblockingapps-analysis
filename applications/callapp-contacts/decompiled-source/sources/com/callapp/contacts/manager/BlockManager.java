package com.callapp.contacts.manager;

import android.app.Activity;
import android.content.Context;
import android.provider.ContactsContract;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.framework.dao.ContentQuery;
import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.framework.dao.column.BooleanColumn;
import com.callapp.contacts.framework.dao.column.Column;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.BlockedNumberData;
import com.callapp.contacts.model.objectbox.BlockedNumberData_;
import com.callapp.contacts.model.objectbox.BlockedRule;
import com.callapp.contacts.model.objectbox.BlockedRule_;
import com.callapp.contacts.model.objectbox.CommonSpammer;
import com.callapp.contacts.model.objectbox.CommonSpammer_;
import com.callapp.contacts.model.objectbox.SpamData;
import com.callapp.contacts.model.objectbox.SpamData_;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImage;
import com.callapp.contacts.popup.contact.DialogSimpleMessageWithIcon;
import com.callapp.contacts.util.Activities;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import io.objectbox.a;
import io.objectbox.g;
import io.objectbox.query.Query;
import java.util.Date;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/BlockManager.class */
public class BlockManager {

    /* renamed from: a  reason: collision with root package name */
    public static final BooleanColumn f14793a = new BooleanColumn("send_to_voicemail");

    /* renamed from: b  reason: collision with root package name */
    private static final Object f14794b = new Object();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/BlockManager$BlockMethod.class */
    public enum BlockMethod {
        SILENT(2131886225),
        HANG_UP(2131886223);
        
        private final int titleResId;

        BlockMethod(int i) {
            this.titleResId = i;
        }

        public final String getTitle() {
            return Activities.getString(this.titleResId);
        }
    }

    public static long a(String str) {
        return CallAppApplication.get().getObjectBoxStore().d(SpamData.class).e().a(SpamData_.phoneAsRaw, str).a().f();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x019e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Boolean, java.lang.String> a(com.callapp.framework.phone.Phone r5) {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.BlockManager.a(com.callapp.framework.phone.Phone):android.util.Pair");
    }

    public static void a() {
        CallAppApplication.get().getObjectBoxStore().d(CommonSpammer.class).d();
    }

    public static void a(long j, String str, Phone phone) {
        ContentQuery contentQuery = new ContentQuery(ContactsContract.Contacts.CONTENT_URI);
        BooleanColumn booleanColumn = f14793a;
        boolean booleanValue = ((Boolean) contentQuery.a(booleanColumn).b((Column<String>) Constants.ID_COLUMN, "=", (String) Long.valueOf(j)).a((RowCallback<RowCallback<Boolean>>) new RowCallback<Boolean>() { // from class: com.callapp.contacts.manager.BlockManager.1
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ Boolean onRow(RowContext rowContext) {
                return (Boolean) rowContext.a(BlockManager.f14793a);
            }
        }, (RowCallback<Boolean>) Boolean.FALSE)).booleanValue();
        boolean z = ((j > 0 && booleanValue) || b(phone)) && (!booleanValue ? !(phone == null || !phone.isNotEmpty() || e(phone).f() <= 0) : ContentQuery.c(ContactsContract.Contacts.CONTENT_URI).b(Constants.ID_COLUMN, "=", Long.valueOf(j)).a(booleanColumn, Boolean.FALSE).b().intValue() > 0);
        if (!StringUtils.b((CharSequence) str)) {
            str = phone.a();
        }
        FeedbackManager.get().a(z ? Activities.a(2131886145, StringUtils.j(str)) : Activities.a(2131886144, StringUtils.j(str)));
    }

    public static void a(BlockedRule.BlockRuleType blockRuleType, String str) {
        CallAppApplication.get().getObjectBoxStore().d(BlockedRule.class).a((a) new BlockedRule(str, blockRuleType));
    }

    public static void a(Phone phone, String str, int i) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(CommonSpammer.class);
        if (phone != null && phone.isNotEmpty()) {
            CommonSpammer commonSpammer = (CommonSpammer) d2.e().a(CommonSpammer_.commonSpammerPhone, phone.a()).a().a();
            CommonSpammer commonSpammer2 = commonSpammer;
            if (commonSpammer == null) {
                commonSpammer2 = new CommonSpammer();
            }
            commonSpammer2.setCommonSpammerName(str);
            commonSpammer2.setCommonSpammerScore(i);
            commonSpammer2.setCommonSpammerPhone(phone.a());
            d2.a((a) commonSpammer2);
        }
    }

    public static void a(String str, Phone phone) {
        String a2 = StringUtils.b((CharSequence) str) ? str : phone.a();
        FeedbackManager.get().a(a(phone, str) ? Activities.a(2131886143, StringUtils.j(a2)) : Activities.a(2131886142, StringUtils.j(a2)));
    }

    public static boolean a(Context context, String str, Phone phone) {
        String str2;
        if (a(str, phone, true)) {
            if (StringUtils.b((CharSequence) str)) {
                str2 = str + " - ";
            } else {
                str2 = "";
            }
            PopupManager.get().a(context, new DialogMessageWithTopImage(2131230889, StringUtils.a(str2 + phone, new char[0]), 2131100123, Activities.getString(2131886342), Activities.getString(2131887338), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.manager.BlockManager.4
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                }
            }, (String) null, 0, (DialogPopup.IDialogOnClickListener) null));
            return true;
        }
        if (!StringUtils.b((CharSequence) str)) {
            str = phone.a();
        }
        FeedbackManager.get().a(Activities.a(2131886142, StringUtils.j(str)));
        return false;
    }

    public static boolean a(ContactData contactData) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(SpamData.class);
        synchronized (f14794b) {
            String rawNumber = contactData.getPhone().getRawNumber();
            if (!contactData.isSpammer() || contactData.isVoiceMail()) {
                Prefs.ek.b(((int) d2.e().a(SpamData_.phoneAsRaw, rawNumber).a().f()) * (-1));
            } else if (((SpamData) d2.e().a(SpamData_.phoneAsRaw, rawNumber).a().a()) == null) {
                SpamData spamData = new SpamData();
                spamData.setPhoneAsRaw(rawNumber);
                spamData.setWhen(new Date().getTime());
                d2.a((a) spamData);
                Prefs.ek.b(1);
                new Task() { // from class: com.callapp.contacts.manager.BlockManager.5
                    @Override // com.callapp.contacts.manager.task.Task
                    public final void doTask() {
                        BlockManager.b();
                    }
                }.execute();
                return true;
            }
            return false;
        }
    }

    public static boolean a(Phone phone, String str) {
        BlockedNumberData a2;
        if (phone == null || !phone.isNotEmpty() || (a2 = e(phone).a()) == null) {
            return false;
        }
        a d2 = CallAppApplication.get().getObjectBoxStore().d(BlockedNumberData.class);
        a2.setFullName(str);
        d2.a((a) a2);
        return true;
    }

    public static boolean a(String str, Phone phone, boolean z) {
        return phone != null && phone.isNotEmpty() && CallAppApplication.get().getObjectBoxStore().d(BlockedNumberData.class).a((a) new BlockedNumberData(str, phone.a(), z, true, new Date().getTime())) > 0;
    }

    static /* synthetic */ long b() {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(SpamData.class);
        if (d2.b() <= 200) {
            return 0L;
        }
        List a2 = d2.e().a((g) SpamData_.when, 1).a().a(200L);
        return d2.e().c(SpamData_.when, ((SpamData) a2.get(a2.size() - 1)).when).a().f();
    }

    public static void b(final Context context, final String str, final Phone phone) {
        PopupManager.get().a(context, new DialogSimpleMessageWithIcon(Activities.getString(2131886346), Activities.a(2131886343, str), Activities.getString(2131886341), Activities.getString(2131886505), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.manager.BlockManager.2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                if (BlockManager.a(context, str, phone)) {
                    EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.BLOCK, false);
                }
            }
        }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.manager.BlockManager.3
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
            }
        }, 2131231499));
    }

    public static void b(BlockedRule.BlockRuleType blockRuleType, String str) {
        CallAppApplication.get().getObjectBoxStore().d(BlockedRule.class).e().a(BlockedRule_.rawNumber, str).a(BlockedRule_.blockRuleType, blockRuleType.type).a().f();
    }

    public static boolean b(Phone phone) {
        BlockedNumberData a2;
        if (phone == null || !phone.isNotEmpty() || (a2 = e(phone).a()) == null) {
            return false;
        }
        return a2.isBlockCall();
    }

    public static String c(Phone phone) {
        BlockedNumberData a2;
        if (phone == null || !phone.isNotEmpty() || (a2 = e(phone).a()) == null) {
            return null;
        }
        return a2.getFullName();
    }

    public static boolean d(Phone phone) {
        return ((phone == null || !phone.isNotEmpty()) ? null : (CommonSpammer) CallAppApplication.get().getObjectBoxStore().d(CommonSpammer.class).e().a(CommonSpammer_.commonSpammerPhone, phone.a()).a().a()) != null;
    }

    private static Query<BlockedNumberData> e(Phone phone) {
        return CallAppApplication.get().getObjectBoxStore().d(BlockedNumberData.class).e().a(BlockedNumberData_.phoneNum, phone.a()).a();
    }

    public static List<BlockedRule> getAllBlockedRules() {
        return CallAppApplication.get().getObjectBoxStore().d(BlockedRule.class).c();
    }

    public static List<SpamData> getAllSpamData() {
        return CallAppApplication.get().getObjectBoxStore().d(SpamData.class).e().a((g) SpamData_.when, 1).a().c();
    }

    public static List<BlockedNumberData> getBlockedNumbersForIncoming() {
        return CallAppApplication.get().getObjectBoxStore().d(BlockedNumberData.class).e().a((g) BlockedNumberData_.blockCall, true).a().c();
    }
}
