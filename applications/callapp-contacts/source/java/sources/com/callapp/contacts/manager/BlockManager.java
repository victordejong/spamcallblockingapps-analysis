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
import io.objectbox.C17944a;
import io.objectbox.C17978g;
import io.objectbox.query.Query;
import java.util.Date;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/BlockManager.class */
public class BlockManager {

    /* renamed from: a */
    public static final BooleanColumn f25588a = new BooleanColumn("send_to_voicemail");

    /* renamed from: b */
    private static final Object f25589b = new Object();

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

    /* renamed from: a */
    public static long m28752a(String str) {
        return CallAppApplication.get().getObjectBoxStore().m4727d(SpamData.class).m4700e().m4611a(SpamData_.phoneAsRaw, str).m4618a().m4624f();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x019e  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Boolean, java.lang.String> m28755a(com.callapp.framework.phone.Phone r5) {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.BlockManager.m28755a(com.callapp.framework.phone.Phone):android.util.Pair");
    }

    /* renamed from: a */
    public static void m28760a() {
        CallAppApplication.get().getObjectBoxStore().m4727d(CommonSpammer.class).m4701d();
    }

    /* renamed from: a */
    public static void m28759a(long j, String str, Phone phone) {
        ContentQuery contentQuery = new ContentQuery(ContactsContract.Contacts.CONTENT_URI);
        BooleanColumn booleanColumn = f25588a;
        boolean booleanValue = ((Boolean) contentQuery.m29023a(booleanColumn).m29014b((Column<String>) Constants.ID_COLUMN, "=", (String) Long.valueOf(j)).m29025a((RowCallback<RowCallback<Boolean>>) new RowCallback<Boolean>() { // from class: com.callapp.contacts.manager.BlockManager.1
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ Boolean onRow(RowContext rowContext) {
                return (Boolean) rowContext.m29003a(BlockManager.f25588a);
            }
        }, (RowCallback<Boolean>) Boolean.FALSE)).booleanValue();
        boolean z = ((j > 0 && booleanValue) || m28746b(phone)) && (!booleanValue ? !(phone == null || !phone.isNotEmpty() || m28743e(phone).m4624f() <= 0) : ContentQuery.m29010c(ContactsContract.Contacts.CONTENT_URI).m29005b(Constants.ID_COLUMN, "=", Long.valueOf(j)).m29006a(booleanColumn, Boolean.FALSE).m29039b().intValue() > 0);
        if (!StringUtils.m26045b((CharSequence) str)) {
            str = phone.m26101a();
        }
        FeedbackManager.get().m28671a(z ? Activities.m27697a(2131886145, StringUtils.m26020j(str)) : Activities.m27697a(2131886144, StringUtils.m26020j(str)));
    }

    /* renamed from: a */
    public static void m28756a(BlockedRule.BlockRuleType blockRuleType, String str) {
        CallAppApplication.get().getObjectBoxStore().m4727d(BlockedRule.class).m4711a((C17944a) new BlockedRule(str, blockRuleType));
    }

    /* renamed from: a */
    public static void m28753a(Phone phone, String str, int i) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(CommonSpammer.class);
        if (phone == null || !phone.isNotEmpty()) {
            return;
        }
        CommonSpammer commonSpammer = (CommonSpammer) m4727d.m4700e().m4611a(CommonSpammer_.commonSpammerPhone, phone.m26101a()).m4618a().m4641a();
        CommonSpammer commonSpammer2 = commonSpammer;
        if (commonSpammer == null) {
            commonSpammer2 = new CommonSpammer();
        }
        commonSpammer2.setCommonSpammerName(str);
        commonSpammer2.setCommonSpammerScore(i);
        commonSpammer2.setCommonSpammerPhone(phone.m26101a());
        m4727d.m4711a((C17944a) commonSpammer2);
    }

    /* renamed from: a */
    public static void m28751a(String str, Phone phone) {
        String m26101a = StringUtils.m26045b((CharSequence) str) ? str : phone.m26101a();
        FeedbackManager.get().m28671a(m28754a(phone, str) ? Activities.m27697a(2131886143, StringUtils.m26020j(m26101a)) : Activities.m27697a(2131886142, StringUtils.m26020j(m26101a)));
    }

    /* renamed from: a */
    public static boolean m28758a(Context context, String str, Phone phone) {
        String str2;
        if (!m28750a(str, phone, true)) {
            if (!StringUtils.m26045b((CharSequence) str)) {
                str = phone.m26101a();
            }
            FeedbackManager.get().m28671a(Activities.m27697a(2131886142, StringUtils.m26020j(str)));
            return false;
        }
        if (StringUtils.m26045b((CharSequence) str)) {
            str2 = str + " - ";
        } else {
            str2 = "";
        }
        PopupManager.get().m28209a(context, new DialogMessageWithTopImage(2131230889, StringUtils.m26049a(str2 + phone, new char[0]), 2131100123, Activities.getString(2131886342), Activities.getString(2131887338), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.manager.BlockManager.4
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
            }
        }, (String) null, 0, (DialogPopup.IDialogOnClickListener) null));
        return true;
    }

    /* renamed from: a */
    public static boolean m28757a(ContactData contactData) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(SpamData.class);
        synchronized (f25589b) {
            String rawNumber = contactData.getPhone().getRawNumber();
            if (!contactData.isSpammer() || contactData.isVoiceMail()) {
                Prefs.f26472ek.m28169b(((int) m4727d.m4700e().m4611a(SpamData_.phoneAsRaw, rawNumber).m4618a().m4624f()) * (-1));
            } else if (((SpamData) m4727d.m4700e().m4611a(SpamData_.phoneAsRaw, rawNumber).m4618a().m4641a()) == null) {
                SpamData spamData = new SpamData();
                spamData.setPhoneAsRaw(rawNumber);
                spamData.setWhen(new Date().getTime());
                m4727d.m4711a((C17944a) spamData);
                Prefs.f26472ek.m28169b(1);
                new Task() { // from class: com.callapp.contacts.manager.BlockManager.5
                    @Override // com.callapp.contacts.manager.task.Task
                    public final void doTask() {
                        BlockManager.m28749b();
                    }
                }.execute();
                return true;
            }
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m28754a(Phone phone, String str) {
        BlockedNumberData m4641a;
        if (phone == null || !phone.isNotEmpty() || (m4641a = m28743e(phone).m4641a()) == null) {
            return false;
        }
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(BlockedNumberData.class);
        m4641a.setFullName(str);
        m4727d.m4711a((C17944a) m4641a);
        return true;
    }

    /* renamed from: a */
    public static boolean m28750a(String str, Phone phone, boolean z) {
        return phone != null && phone.isNotEmpty() && CallAppApplication.get().getObjectBoxStore().m4727d(BlockedNumberData.class).m4711a((C17944a) new BlockedNumberData(str, phone.m26101a(), z, true, new Date().getTime())) > 0;
    }

    /* renamed from: b */
    static /* synthetic */ long m28749b() {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(SpamData.class);
        if (m4727d.m4709b() > 200) {
            List m4640a = m4727d.m4700e().m4614a((C17978g) SpamData_.when, 1).m4618a().m4640a(200L);
            return m4727d.m4700e().m4602c(SpamData_.when, ((SpamData) m4640a.get(m4640a.size() - 1)).when).m4618a().m4624f();
        }
        return 0L;
    }

    /* renamed from: b */
    public static void m28748b(final Context context, final String str, final Phone phone) {
        PopupManager.get().m28209a(context, new DialogSimpleMessageWithIcon(Activities.getString(2131886346), Activities.m27697a(2131886343, str), Activities.getString(2131886341), Activities.getString(2131886505), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.manager.BlockManager.2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                if (BlockManager.m28758a(context, str, phone)) {
                    EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.BLOCK, false);
                }
            }
        }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.manager.BlockManager.3
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
            }
        }, 2131231499));
    }

    /* renamed from: b */
    public static void m28747b(BlockedRule.BlockRuleType blockRuleType, String str) {
        CallAppApplication.get().getObjectBoxStore().m4727d(BlockedRule.class).m4700e().m4611a(BlockedRule_.rawNumber, str).m4613a(BlockedRule_.blockRuleType, blockRuleType.type).m4618a().m4624f();
    }

    /* renamed from: b */
    public static boolean m28746b(Phone phone) {
        BlockedNumberData m4641a;
        if (phone == null || !phone.isNotEmpty() || (m4641a = m28743e(phone).m4641a()) == null) {
            return false;
        }
        return m4641a.isBlockCall();
    }

    /* renamed from: c */
    public static String m28745c(Phone phone) {
        BlockedNumberData m4641a;
        if (phone == null || !phone.isNotEmpty() || (m4641a = m28743e(phone).m4641a()) == null) {
            return null;
        }
        return m4641a.getFullName();
    }

    /* renamed from: d */
    public static boolean m28744d(Phone phone) {
        return ((phone == null || !phone.isNotEmpty()) ? null : (CommonSpammer) CallAppApplication.get().getObjectBoxStore().m4727d(CommonSpammer.class).m4700e().m4611a(CommonSpammer_.commonSpammerPhone, phone.m26101a()).m4618a().m4641a()) != null;
    }

    /* renamed from: e */
    private static Query<BlockedNumberData> m28743e(Phone phone) {
        return CallAppApplication.get().getObjectBoxStore().m4727d(BlockedNumberData.class).m4700e().m4611a(BlockedNumberData_.phoneNum, phone.m26101a()).m4618a();
    }

    public static List<BlockedRule> getAllBlockedRules() {
        return CallAppApplication.get().getObjectBoxStore().m4727d(BlockedRule.class).m4703c();
    }

    public static List<SpamData> getAllSpamData() {
        return CallAppApplication.get().getObjectBoxStore().m4727d(SpamData.class).m4700e().m4614a((C17978g) SpamData_.when, 1).m4618a().m4628c();
    }

    public static List<BlockedNumberData> getBlockedNumbersForIncoming() {
        return CallAppApplication.get().getObjectBoxStore().m4727d(BlockedNumberData.class).m4700e().m4609a((C17978g) BlockedNumberData_.blockCall, true).m4618a().m4628c();
    }
}
