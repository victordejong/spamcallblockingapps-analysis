package com.callapp.contacts.manager;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.telecom.TelecomManager;
import android.text.Html;
import android.widget.RemoteViews;
import androidx.core.app.C0745g;
import androidx.core.app.C0768o;
import androidx.core.p036e.C0828b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.PostCallActivity;
import com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView;
import com.callapp.contacts.activity.contact.list.ContactsListActivity;
import com.callapp.contacts.activity.missedcall.MissedCallManager;
import com.callapp.contacts.activity.setup.SetupWizardActivity;
import com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileActivity;
import com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager;
import com.callapp.contacts.api.helper.backup.BackupUtils;
import com.callapp.contacts.inCallService.AudioModeProvider;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.BluetoothHeadsetConnectivityManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.contacts.service.CallAppService;
import com.callapp.contacts.service.NotificationPendingIntentHandlerService;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.MissedCallUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.wearable.WearableClientHandler;
import com.callapp.contacts.workers.RemoveMissedCallNotAnsweredNotificationWorker;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationManager.class */
public class NotificationManager implements ManagedLifecycle {

    /* renamed from: b */
    public static int f25735b;

    /* renamed from: i */
    private android.app.NotificationManager f25744i;

    /* renamed from: m */
    private HashMap<Integer, NotificationChannelEnum> f25747m;

    /* renamed from: k */
    private static final Object f25737k = new Object();

    /* renamed from: e */
    public static final Object f25736e = new Object();

    /* renamed from: f */
    private SimpleDateFormat f25741f = new SimpleDateFormat(" - HH:mm");

    /* renamed from: g */
    private SimpleDateFormat f25742g = new SimpleDateFormat(" - HH:mm dd/MM");

    /* renamed from: h */
    private long f25743h = DateUtils.getTodayStartTime();

    /* renamed from: a */
    public Random f25738a = new Random();

    /* renamed from: c */
    public final AtomicInteger f25739c = new AtomicInteger(0);

    /* renamed from: j */
    private long f25745j = new Date().getTime();

    /* renamed from: d */
    public CurrentCallDynamicObject f25740d = new CurrentCallDynamicObject();

    /* renamed from: l */
    private C0828b[] f25746l = {new C0828b(50, 50), new C0828b(15, 15), new C0828b(1, 1), new C0828b(9, 9), new C0828b(8, 8), new C0828b(4, 4), new C0828b(12, 12), new C0828b(17, 17), new C0828b(40, 40), new C0828b(10000, 20000), new C0828b(100, 1000)};

    /* renamed from: com.callapp.contacts.manager.NotificationManager$3 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationManager$3.class */
    public static /* synthetic */ class C74183 {

        /* renamed from: a */
        static final /* synthetic */ int[] f25753a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[MissedCallUtils.MissedCallNotificationType.values().length];
            f25753a = iArr;
            try {
                iArr[MissedCallUtils.MissedCallNotificationType.SINGLE_CALL_PRIVATE_NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f25753a[MissedCallUtils.MissedCallNotificationType.SINGLE_CALL_NON_PRIVATE_NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f25753a[MissedCallUtils.MissedCallNotificationType.MULTIPLE_CALLS_ALL_PRIVATE_NUMBERS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f25753a[MissedCallUtils.MissedCallNotificationType.MULTIPLE_CALLS_ALL_SAME_CALLER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f25753a[MissedCallUtils.MissedCallNotificationType.MULTIPLE_CALLS_MIXED_CALLERS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationManager$ContactDataForNotification.class */
    public static abstract class ContactDataForNotification<T> {

        /* renamed from: a */
        public final T f25754a;

        /* renamed from: b */
        private ContactData f25755b;

        public ContactDataForNotification(T t) {
            this.f25754a = t;
        }

        /* renamed from: a */
        public static String m28529a(ContactDataForNotification contactDataForNotification) {
            String nameForNotificationLine;
            String str;
            if (StringUtils.m26045b((CharSequence) contactDataForNotification.getNameForNotificationLine())) {
                str = "<b>" + StringUtils.m26020j(nameForNotificationLine) + "</b>";
            } else {
                str = null;
            }
            String str2 = str;
            if (StringUtils.m26045b((CharSequence) str)) {
                if (ViewUtils.isLocaleLTR()) {
                    str2 = "\u200e\u202a" + str + "\u202c";
                } else {
                    str2 = "\u200f\u202b" + str + "\u202c";
                }
            }
            Phone sourcePhone = contactDataForNotification.getSourcePhone();
            String str3 = str2;
            if (sourcePhone != null) {
                str3 = str2;
                if (!CallLogUtils.m27556b(sourcePhone.getRawNumber())) {
                    if (StringUtils.m26045b((CharSequence) str2)) {
                        str3 = str2 + " (" + sourcePhone.m26087e() + ")";
                    } else {
                        str3 = "(" + sourcePhone.m26087e() + ")";
                    }
                }
            }
            String str4 = str3;
            if (StringUtils.m26059a((CharSequence) str3)) {
                if (ViewUtils.isLocaleLTR()) {
                    str4 = "\u200e\u202a" + Activities.getString(2131886488) + "\u202c";
                } else {
                    str4 = "\u200f\u202b" + Activities.getString(2131886488) + "\u202c";
                }
            }
            return str4;
        }

        /* renamed from: a */
        public static <T extends ContactDataForNotification> void m28528a(List<T> list) {
            for (T t : list) {
                if (t.getSourcePhone() != null) {
                    String phone = t.getSourcePhone().toString();
                    if (StringUtils.m26045b((CharSequence) phone)) {
                        t.setContactData(ContactUtils.m28325a(phone));
                    }
                }
            }
        }

        public Intent getAddContactIntent() {
            ContactData contactData = this.f25755b;
            if (contactData == null) {
                return null;
            }
            return ContactUtils.m28328a(contactData, true);
        }

        public String getCallappName() {
            ContactData contactData = this.f25755b;
            if (contactData == null) {
                return null;
            }
            return contactData.getFullName();
        }

        public ContactData getContactData() {
            return this.f25755b;
        }

        public String getNameForNotificationLine() {
            if (StringUtils.m26045b((CharSequence) getCallappName())) {
                return StringUtils.m26020j(getCallappName());
            }
            if (!StringUtils.m26045b((CharSequence) getSourceName())) {
                return null;
            }
            return StringUtils.m26020j(getSourceName());
        }

        public String getPhotoUrl() {
            ContactData contactData = this.f25755b;
            if (contactData == null) {
                return null;
            }
            return contactData.getThumbnailUrl();
        }

        public abstract Date getSourceDate();

        public abstract String getSourceName();

        public abstract Phone getSourcePhone();

        public boolean isContactInDevice() {
            ContactData contactData = this.f25755b;
            return contactData != null && contactData.isContactInDevice();
        }

        public void setContactData(ContactData contactData) {
            this.f25755b = contactData;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationManager$NotificationChannelEnum.class */
    public enum NotificationChannelEnum {
        REMINDER_NOTIFICATION_CHANNEL(4, Activities.getString(2131887571), 3, NotificationChannelGroupEnum.REMINDERS, false),
        CALL_REMINDER_NOTIFICATION_CHANNEL(10000, Activities.getString(2131886447), 4, NotificationChannelGroupEnum.REMINDERS, false),
        BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL(100, Activities.getString(2131886333), 3, NotificationChannelGroupEnum.REMINDERS, false),
        WHATS_NEW_NOTIFICATION_CHANNEL(13, Activities.getString(2131888205), 3, NotificationChannelGroupEnum.WHATS_NEW, false),
        REGISTRATION_REMINDER_NOTIFICATION_CHANNEL(5, Activities.getString(2131887562), 4, NotificationChannelGroupEnum.REGISTRATION_AND_SYNC, false),
        BACKUP_NOTIFICATION_CHANNEL(60, Activities.getString(2131886298), 2, NotificationChannelGroupEnum.BACKUP, false),
        SETUP_INPROGRESS_NOTIFICATION_CHANNEL(9, Activities.getString(2131887647), 2, NotificationChannelGroupEnum.REGISTRATION_AND_SYNC, false),
        SYNC_PROGRESS_NOTIFICATION_CHANNEL(8, Activities.getString(2131887764), 2, NotificationChannelGroupEnum.REGISTRATION_AND_SYNC, false),
        VALIDATE_CLIENT_TASK_NOTIFICATION_CHANNEL(7, Activities.getString(2131888134), 4, NotificationChannelGroupEnum.REGISTRATION_AND_SYNC, false),
        CALL_BLOCKED_NOTIFICATION_CHANNEL(1, Activities.getString(2131886379), 3, NotificationChannelGroupEnum.CALL_IDENTIFICATION, false),
        IM_NOTIFICATION_CHANNEL(50, Activities.getString(2131886382), 3, NotificationChannelGroupEnum.CALL_IDENTIFICATION, false),
        INCALL_NOTIFICATION_CHANNEL(12, Activities.getString(2131887028), 3, NotificationChannelGroupEnum.CALL_NOTIFICATION, false),
        MISSED_CALL_NOTIFICATION_CHANNEL(17, Activities.getString(2131887196), 3, NotificationChannelGroupEnum.MISSED_CALL_NOTIFICATION, true),
        NOT_ANSWERED_NOTIFICATION_CHANNEL(40, Activities.getString(2131887319), 3, NotificationChannelGroupEnum.NOT_ANSWERED_NOTIFICATION, true),
        REFER_AND_EARN_NOTIFICATION_CHANNEL(14, Activities.getString(2131887539), 4, NotificationChannelGroupEnum.REFER_AND_EARN_NOTIFICATION, false),
        PROFILE_VIEWED_NOTIFICATION_CHANNEL(15, Activities.getString(2131887439), 4, NotificationChannelGroupEnum.PROFILE_VIEWED, false),
        DEFAULT_NOTIFICATION_CHANNEL(-1, Activities.getString(2131886721), 3, null, false);
        
        private final String groupId;

        /* renamed from: id */
        private final int f25756id;
        private final int importance;
        private final CharSequence name;
        private final boolean showBadge;

        NotificationChannelEnum(int i, CharSequence charSequence, int i2, NotificationChannelGroupEnum notificationChannelGroupEnum, boolean z) {
            this.f25756id = i;
            this.name = charSequence;
            this.importance = i2;
            if (notificationChannelGroupEnum != null) {
                this.groupId = notificationChannelGroupEnum.getId();
            } else {
                this.groupId = null;
            }
            this.showBadge = z;
        }

        public final String getGroupId() {
            return this.groupId;
        }

        public final int getId() {
            return this.f25756id;
        }

        public final int getImportance() {
            return this.importance;
        }

        public final CharSequence getName() {
            return this.name;
        }

        public final boolean isShowBadge() {
            return this.showBadge;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "NotificationChannelEnum{id=" + this.f25756id + ", name=" + ((Object) this.name) + ", importance=" + this.importance + ", groupId='" + this.groupId + "', showBadge=" + this.showBadge + '}';
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum.class */
    public enum NotificationChannelGroupEnum {
        REMINDERS("0", Activities.getString(2131887570)),
        WHATS_NEW("1", Activities.getString(2131888203)),
        CALL_IDENTIFICATION("2", Activities.getString(2131886382)),
        REGISTRATION_AND_SYNC("3", Activities.getString(2131887558)),
        CALL_NOTIFICATION("4", Activities.getString(2131886391)),
        MISSED_CALL_NOTIFICATION("5", Activities.getString(2131887197)),
        NOT_ANSWERED_NOTIFICATION("6", Activities.getString(2131887316)),
        REFER_AND_EARN_NOTIFICATION("7", Activities.getString(2131887542)),
        PROFILE_VIEWED("8", Activities.getString(2131887440)),
        BACKUP("9", Activities.getString(2131886299));
        

        /* renamed from: id */
        private final String f25757id;
        private final CharSequence name;

        NotificationChannelGroupEnum(String str, CharSequence charSequence) {
            this.f25757id = str;
            this.name = charSequence;
        }

        public final String getId() {
            return this.f25757id;
        }

        public final CharSequence getName() {
            return this.name;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationManager$NotificationTimeUtils.class */
    public static class NotificationTimeUtils {
        public static boolean isCurrentTimeDisturbing() {
            int i = Calendar.getInstance().get(11);
            return i < 10 || i >= 20;
        }
    }

    /* renamed from: a */
    private static PendingIntent m28570a(int i, Phone phone, String str) {
        return PendingIntent.getService(Singletons.get().getApplication(), i, m28540b(i, phone, str), 1073741824);
    }

    /* renamed from: a */
    private static PendingIntent m28568a(int i, String str, Phone phone, int i2) {
        String nameOrNumber = ContactUtils.m28327a(phone).getNameOrNumber();
        Intent intent = new Intent(CallAppApplication.get(), NotificationPendingIntentHandlerService.class);
        intent.putExtra("future_target_index_key", i2);
        intent.setAction(str);
        intent.putExtra("com.callapp.contacts.EXTRA_FULL_NAME", nameOrNumber);
        intent.putExtra("notification_id", i);
        intent.putExtra("com.callapp.contacts.EXTRA_RAW_NUMBER", phone.getRawNumber());
        return PendingIntent.getService(Singletons.get().getApplication(), i, intent, 1073741824);
    }

    /* renamed from: a */
    private static C0745g.C0747a m28577a(int i, int i2, PendingIntent pendingIntent) {
        return new C0745g.C0747a(i, Activities.getString(i2), pendingIntent);
    }

    /* renamed from: a */
    private ArrayList<C0745g.C0747a> m28571a(int i, Phone phone, int i2, int i3, boolean z) {
        ArrayList<C0745g.C0747a> arrayList = new ArrayList<>(3);
        int[] iArr = z ? new int[]{2131231553, 2131231770, 2131231937} : new int[]{2131231552, 2131231769, 2131231419};
        PendingIntent m28570a = m28570a(i, phone, i3 == 3 ? "com.callapp.contacts.ACTION_CALL_FROM_MISSED_CALL_NOTIFICATION" : "com.callapp.contacts.ACTION_CALL_FROM_NOT_ANSWERED_NOTIFICATION");
        PendingIntent m28570a2 = m28570a(i, phone, i3 == 3 ? "com.callapp.contacts.ACTION_SEND_MESSAGE_FROM_MISSED_CALL_NOTIFICATION" : "com.callapp.contacts.ACTION_SEND_MESSAGE_FROM_NOT_ANSWERED_NOTIFICATION");
        PendingIntent m28568a = m28568a(i, i3 == 3 ? "com.callapp.contacts.ACTION_BTN_REMINDER_FROM_MISSED_CALL_NOTIFICATION" : "com.callapp.contacts.ACTION_BTN_REMINDER_FROM_NOT_ANSWERED_NOTIFICATION", phone, i2);
        arrayList.add(m28577a(iArr[0], i3 == 3 ? 2131886440 : 2131886441, m28570a));
        arrayList.add(m28577a(iArr[1], 2131886449, m28570a2));
        arrayList.add(m28577a(iArr[2], 2131887565, m28568a));
        return arrayList;
    }

    /* renamed from: a */
    private void m28572a(int i, C0745g.C0751e c0751e, int i2, Phone phone, String str) {
        Intent intent;
        ContactData m28327a = Prefs.f26339cJ.get().booleanValue() ? ContactUtils.m28327a(phone) : null;
        String str2 = null;
        if (m28327a != null) {
            str2 = !Prefs.f26339cJ.get().booleanValue() ? null : m28327a.getThumbnailUrl();
        }
        ExtractedInfo build = ExtractedInfo.Builder.getBuilderAccordingToOrigin(phone, IMDataExtractionUtils.RecognizedPersonOrigin.CALL).build();
        if (!Prefs.f26339cJ.get().booleanValue() || i2 != 1) {
            intent = new Intent(CallAppApplication.get(), WhoViewedMyProfileActivity.class);
        } else {
            intent = ContactDetailsActivity.createIntent(CallAppApplication.get(), 0L, phone.getRawNumber(), build, true, null, "NotificationWhoViewedMyProfile", null);
            intent.putExtra(ContactDetailsActivity.EXTRA_FULL_NAME, str);
            intent.putExtra(ContactDetailsActivity.EXTRA_WHO_VIEW_PROFILE_NOTIFICATION, true);
        }
        intent.putExtra(Constants.WHO_VIEWED_MY_NOTIFICATION_CLICKED, true);
        m28552a((Object) ContactsListActivity.class, intent, c0751e, 12, true);
        Bitmap m28686a = this.f25740d.m28686a(str2, Prefs.f26339cJ.get().booleanValue() ? 2131232143 : 2131232118, i, m28327a);
        if (m28686a != null) {
            c0751e.m44576a(m28686a);
        }
        c0751e.m44581a(2131231796);
        c0751e.m44570a(true);
        c0751e.f3341l = 1;
        c0751e.f3312A = "call";
        c0751e.m44576a(m28686a);
        c0751e.f3314C = ThemeUtils.getColor(2131099784);
        m28561a(c0751e, str, i2);
        m28565a(c0751e, 15, "com.callapp.contacts.ACTION_DISMISS_FROM_WHO_VIEWED_MY_PROFILE", i);
    }

    /* renamed from: a */
    private static void m28567a(Context context, C0745g.C0751e c0751e, long j) {
        Intent type = new Intent(CallAppApplication.get(), ContactsListActivity.class).setType("vnd.android.cursor.dir/calls");
        type.putExtra("future_target_index_key", j);
        type.putExtra("EXTRA_MISSED_CALL_NOTIFICATION_CLICKED", true);
        c0751e.f3335f = PendingIntent.getActivity(context, 12, type, 134217728);
    }

    /* renamed from: a */
    public static void m28565a(C0745g.C0751e c0751e, int i, String str, int i2) {
        Intent intent = new Intent(CallAppApplication.get(), NotificationPendingIntentHandlerService.class);
        intent.putExtra("future_target_index_key", i2);
        intent.setAction(str);
        intent.putExtra("notification_id", i);
        c0751e.m44577a(PendingIntent.getService(Singletons.get().getApplication(), i, intent, 1073741824));
    }

    /* renamed from: a */
    public static void m28563a(C0745g.C0751e c0751e, Bitmap bitmap, List<C0745g.C0747a> list) {
        if (!Singletons.get().getWearableClientHandler().isWearConnected()) {
            return;
        }
        C0745g.C0757j m44554a = new C0745g.C0757j().m44554a();
        m44554a.f3371a = ImageUtils.m27535a(bitmap);
        if (CollectionUtils.m26068b(list)) {
            m44554a.m44551a(list);
        }
        c0751e.m44573a(m44554a);
    }

    /* renamed from: a */
    private void m28562a(C0745g.C0751e c0751e, MissedCallUtils.MissedCallNotificationType missedCallNotificationType, List<MissedCallUtils.MissedCallDataForNotification> list, int i) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String m27444a = MissedCallUtils.m27444a(list.get(0));
        if (list.get(0).getSourcePhone() != null) {
            str = "(" + list.get(0).getSourcePhone().m26087e() + ")";
        } else {
            str = "";
        }
        String m28547a = m28547a(list.get(0).getSourceDate());
        int i2 = C74183.f25753a[missedCallNotificationType.ordinal()];
        if (i2 == 1) {
            str4 = m27444a + org.apache.commons.lang3.StringUtils.SPACE + m28547a;
            str5 = i == 3 ? Activities.getString(2131887701) : Activities.getString(2131887702);
        } else if (i2 != 2) {
            if (i2 == 3 || i2 == 4 || i2 == 5) {
                if (i == 3) {
                    str7 = Activities.getString(2131887255);
                    str6 = Activities.m27697a(2131887256, Integer.valueOf(list.size()));
                } else {
                    str7 = Activities.getString(2131887318);
                    str6 = Activities.m27697a(2131887317, Integer.valueOf(list.size()));
                }
                m28559a(c0751e, str6, list);
                str2 = str7;
                str3 = str6;
            } else {
                str3 = "";
                str2 = "";
            }
            c0751e.m44571a(str2);
            c0751e.m44567b(str3);
        } else {
            str4 = m27444a + org.apache.commons.lang3.StringUtils.SPACE + str + org.apache.commons.lang3.StringUtils.SPACE + m28547a;
            str5 = i == 3 ? Activities.getString(2131887701) : Activities.getString(2131887702);
        }
        String str8 = str4;
        str2 = str5;
        str3 = str8;
        c0751e.m44571a(str2);
        c0751e.m44567b(str3);
    }

    /* renamed from: a */
    private static void m28561a(C0745g.C0751e c0751e, String str, int i) {
        String string = Activities.getString(2131888222);
        String m27697a = Prefs.f26339cJ.get().booleanValue() ? i == 1 ? Activities.m27697a(2131888221, str) : Activities.m27697a(2131888218, str, Integer.valueOf(i - 1)) : i == 1 ? Activities.m27697a(2131888220, Integer.valueOf(i)) : Activities.m27697a(2131888219, Integer.valueOf(i));
        c0751e.m44571a(string);
        c0751e.m44567b(m27697a);
    }

    /* renamed from: a */
    private void m28560a(C0745g.C0751e c0751e, String str, String str2, RemoteViews remoteViews, long j, boolean z) {
        boolean z2 = true;
        boolean z3 = PhoneManager.get().isDefaultPhoneApp() && PhoneStateManager.get().shouldConferenceScreenAppear();
        if (IncognitoCallManager.get().isIncognito(PhoneManager.get().m28239a(str)) || !PhoneManager.get().m28240a(PhoneManager.get().m28239a(str))) {
            z2 = false;
        }
        if (StringUtils.m26045b((CharSequence) str)) {
            c0751e.m44581a(2131231915);
            remoteViews.setTextViewText(2131363388, Activities.getString(2131886392));
        } else {
            c0751e.m44581a(2131231555);
            remoteViews.setTextViewText(2131363388, "");
        }
        c0751e.f3342m = false;
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            this.f25740d.m28682a(z3, z2, j, z);
        }
        String name = StringUtils.m26059a((CharSequence) str2) ? StringUtils.m26059a((CharSequence) this.f25740d.getName()) ? StringUtils.m26059a((CharSequence) str) ? "" : str : this.f25740d.getName() : str2;
        if (z3) {
            name = Activities.getString(2131886626);
        } else if (z2) {
            name = Activities.getString(2131888153);
        }
        remoteViews.setTextViewText(2131363391, name);
        m28550a(name, this.f25740d.getPhotoBitmap(), str);
        remoteViews.setImageViewBitmap(2131363390, this.f25740d.getPhotoBitmap());
    }

    /* renamed from: a */
    private <T extends ContactDataForNotification> void m28559a(C0745g.C0751e c0751e, String str, List<T> list) {
        if (list == null || list.size() <= 1 || Build.VERSION.SDK_INT < 16) {
            return;
        }
        C0745g.C0753g c0753g = new C0745g.C0753g();
        c0753g.m44564a(str);
        for (T t : list) {
            c0753g.m44563b(Html.fromHtml(ContactDataForNotification.m28529a(t) + m28547a(t.getSourceDate())));
        }
        c0751e.m44572a(c0753g);
    }

    /* renamed from: a */
    private <T extends ContactDataForNotification> void m28558a(C0745g.C0751e c0751e, String str, Map<IMDataExtractionUtils.RecognizedPersonOrigin, Integer> map, Map<IMDataExtractionUtils.RecognizedPersonOrigin, List<IMDataExtractionUtils.ImDataForCallappNotification>> map2) {
        if (Build.VERSION.SDK_INT >= 16) {
            C0745g.C0753g c0753g = new C0745g.C0753g();
            c0753g.m44564a(Html.fromHtml(str));
            for (Map.Entry<IMDataExtractionUtils.RecognizedPersonOrigin, Integer> entry : map.entrySet()) {
                StringBuilder sb = new StringBuilder("<b>");
                sb.append(Activities.m27697a(2131887009, entry.getValue(), entry.getKey().getDisplayName()));
                sb.append("</b>");
                c0753g.m44563b(Html.fromHtml(sb.toString()));
                List<IMDataExtractionUtils.ImDataForCallappNotification> list = map2.get(entry.getKey());
                if (CollectionUtils.m26068b(list)) {
                    for (int i = 0; i < list.size(); i++) {
                        c0753g.m44563b(Html.fromHtml(ContactDataForNotification.m28529a(list.get(i)) + m28547a(list.get(i).getSourceDate())));
                    }
                }
            }
            c0751e.m44572a(c0753g);
        }
    }

    /* renamed from: a */
    private void m28553a(MissedCallUtils.MissedCallsListParams missedCallsListParams, int i, C0745g.C0751e c0751e, List<MissedCallUtils.MissedCallDataForNotification> list, int i2, int i3) {
        Bitmap bitmap;
        MissedCallUtils.MissedCallNotificationType m27443a = MissedCallUtils.m27443a(missedCallsListParams);
        MissedCallUtils.MissedCallDataForNotification missedCallDataForNotification = list.get(0);
        String photoUrl = missedCallDataForNotification.getPhotoUrl();
        Phone phone = ((CallLogUtils.MissedCallData) missedCallDataForNotification.f25754a).f27710c;
        Bitmap m28685a = this.f25740d.m28685a(photoUrl, i, missedCallDataForNotification.getContactData());
        ArrayList<C0745g.C0747a> m28571a = m28571a(i3, phone, i, i2, true);
        ExtractedInfo build = ExtractedInfo.Builder.getBuilderAccordingToOrigin(phone, IMDataExtractionUtils.RecognizedPersonOrigin.CALL).build();
        ArrayList<C0745g.C0747a> m28571a2 = m28571a(i3, phone, i, i2, false);
        if (m27443a.equals(MissedCallUtils.MissedCallNotificationType.SINGLE_CALL_NON_PRIVATE_NUMBER) || m27443a.equals(MissedCallUtils.MissedCallNotificationType.MULTIPLE_CALLS_ALL_SAME_CALLER)) {
            Intent type = new Intent(CallAppApplication.get(), ContactsListActivity.class).setType("vnd.android.cursor.dir/calls");
            Intent createIntent = ContactDetailsActivity.createIntent(CallAppApplication.get(), 0L, phone.getRawNumber(), build, true, null, "NotificationMissedCall", ENTRYPOINT.MISSED_CALL_NOT_ANSWERED);
            type.putExtra(Constants.EXTRA_PHONE_NUMBER, phone.m26101a());
            type.putExtra(i2 == 3 ? "EXTRA_MISSED_CALL_NOTIFICATION_CLICKED" : "EXTRA_NOT_ANSWERED_NOTIFICATION_CLICKED", true);
            createIntent.putExtra(i2 == 3 ? "EXTRA_MISSED_CALL_NOTIFICATION_CLICKED" : "EXTRA_NOT_ANSWERED_NOTIFICATION_CLICKED", true);
            createIntent.putExtra("future_target_index_key", i);
            m28552a((Object) type, createIntent, c0751e, 12, false);
            for (C0745g.C0747a c0747a : m28571a2) {
                c0751e.m44574a(c0747a);
            }
        } else {
            m28567a(CallAppApplication.get(), c0751e, i);
        }
        if (m28685a != null) {
            c0751e.m44576a(m28685a);
            bitmap = m28685a;
        } else {
            bitmap = null;
        }
        c0751e.m44581a(i2 == 3 ? 2131231914 : 2131232117).m44570a(true);
        c0751e.f3341l = 1;
        c0751e.f3312A = "call";
        c0751e.m44576a(m28685a);
        c0751e.f3314C = ThemeUtils.getColor(2131099784);
        m28562a(c0751e, m27443a, list, i2);
        m28563a(c0751e, bitmap, m28571a);
        m28565a(c0751e, i3, "com.callapp.contacts.ACTION_DISMISS_FROM_MISSED_CALL_NOTIFICATION", i);
    }

    /* renamed from: a */
    public static void m28552a(Object obj, Intent intent, C0745g.C0751e c0751e, int i, boolean z) {
        C0768o m44526a = C0768o.m44526a(Singletons.get().getApplication());
        if (obj instanceof Class) {
            if (z) {
                m44526a.m44523b(intent);
            } else {
                m44526a.m44524a((Class) obj);
                m44526a.m44525a(intent);
            }
        } else if (obj instanceof Intent) {
            m44526a.m44525a((Intent) obj);
            m44526a.m44525a(intent);
        }
        c0751e.f3335f = m44526a.m44528a(i, 134217728);
    }

    /* renamed from: a */
    private void m28550a(String str, Bitmap bitmap, String str2) {
        byte[] m27523b;
        if (!this.f25740d.isBlocked() || Prefs.f26289bM.get() == BlockManager.BlockMethod.SILENT) {
            WearableClientHandler wearableClientHandler = Singletons.get().getWearableClientHandler();
            if (!wearableClientHandler.isWearConnected()) {
                return;
            }
            if (bitmap != null && (m27523b = ImageUtils.m27523b(bitmap)) != null) {
                if (wearableClientHandler.f28530a == null) {
                    wearableClientHandler.f28530a = m27523b;
                    wearableClientHandler.m26862a("/callapp/image_path", wearableClientHandler.f28530a);
                } else if (!Arrays.equals(m27523b, wearableClientHandler.f28530a)) {
                    wearableClientHandler.f28530a = m27523b;
                    wearableClientHandler.m26862a("/callapp/image_path", wearableClientHandler.f28530a);
                }
            }
            if (StringUtils.m26045b((CharSequence) str)) {
                if (wearableClientHandler.f28531b == null) {
                    wearableClientHandler.f28531b = str;
                    wearableClientHandler.m26862a("/callapp/name_path", wearableClientHandler.f28531b.getBytes());
                } else if (!StringUtils.m26042b(wearableClientHandler.f28531b, str)) {
                    wearableClientHandler.f28531b = str;
                    wearableClientHandler.m26862a("/callapp/name_path", wearableClientHandler.f28531b.getBytes());
                }
            }
            wearableClientHandler.f28532c = str2;
        }
    }

    /* renamed from: b */
    private static Intent m28540b(int i, Phone phone, String str) {
        Intent intent = new Intent(Singletons.get().getApplication(), NotificationPendingIntentHandlerService.class);
        setDummyData(intent);
        intent.setAction(str);
        intent.putExtra("notification_id", i);
        intent.putExtra("com.callapp.contacts.EXTRA_RAW_NUMBER", phone.getRawNumber());
        return intent;
    }

    /* renamed from: c */
    public static void m28535c() {
        Class<?> cls;
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                TelecomManager telecomManager = (TelecomManager) Singletons.m28493a("telecom");
                if (telecomManager == null) {
                    return;
                }
                try {
                    telecomManager.cancelMissedCallsNotification();
                    return;
                } catch (IllegalArgumentException | NoSuchMethodError | SecurityException e) {
                    CLog.m27608a(PhoneManager.class, e, "Failed to cancelNativeMissedCallsNotification");
                    return;
                }
            }
            Object invoke = Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, Constants.EXTRA_PHONE_NUMBER);
            Class<?>[] declaredClasses = Class.forName("com.android.internal.telephony.ITelephony").getDeclaredClasses();
            int length = declaredClasses.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    cls = null;
                    break;
                }
                cls = declaredClasses[i];
                if ("Stub".equals(cls.getSimpleName())) {
                    break;
                }
                i++;
            }
            if (cls == null) {
                CLog.m27611a(NotificationManager.class, "Unable to locate ITelephony.Stub class!");
                return;
            }
            Object invoke2 = cls.getDeclaredMethod("asInterface", Class.forName("android.os.IBinder")).invoke(null, invoke);
            if (invoke2 != null) {
                invoke2.getClass().getMethod("cancelNativeMissedCallsNotification", new Class[0]).invoke(invoke2, new Object[0]);
            } else {
                CLog.m27611a(NotificationManager.class, "Telephony service is null, can't call cancelNativeMissedCallsNotification");
            }
        } catch (ClassNotFoundException e2) {
            CLog.m27610a(NotificationManager.class, "Failed to clear missed calls notification due to ClassNotFoundException!", e2);
        } catch (NoSuchMethodException e3) {
            CLog.m27610a(NotificationManager.class, "Failed to clear missed calls notification due to NoSuchMethodException!", e3);
        } catch (InvocationTargetException e4) {
            CLog.m27610a(NotificationManager.class, "Failed to clear missed calls notification due to InvocationTargetException!", e4);
        } catch (Throwable th) {
            CLog.m27610a(NotificationManager.class, "Failed to clear missed calls notification due to Throwable!", th);
        }
    }

    /* renamed from: d */
    public static void m28533d() {
        PhoneStateManager.blockedCallsList.clear();
        f25735b = 0;
    }

    /* renamed from: d */
    private boolean m28532d(int i) {
        C0828b[] c0828bArr;
        for (C0828b c0828b : this.f25746l) {
            if (i >= ((Integer) c0828b.f3556a).intValue() && i <= ((Integer) c0828b.f3557b).intValue()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    private void m28530f() {
        NotificationChannel notificationChannel = new NotificationChannel(getNotificationChannelIdWithPrefix(NotificationChannelEnum.BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL.getId()), NotificationChannelEnum.BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL.getName(), NotificationChannelEnum.BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL.getImportance());
        notificationChannel.setSound(Uri.parse("android.resource://" + CallAppApplication.get().getPackageName() + "/raw/2131820545"), new AudioAttributes.Builder().setUsage(5).build());
        this.f25744i.createNotificationChannel(notificationChannel);
    }

    public static NotificationManager get() {
        return Singletons.get().getNotificationManager();
    }

    private NotificationChannelEnum getChannelEnumFromNotificationId(int i) {
        int i2;
        if (i < 10000 || i > 20000) {
            i2 = i;
            if (i >= 100) {
                i2 = i;
                if (i <= 20000) {
                    i2 = 100;
                }
            }
        } else {
            i2 = 10000;
        }
        return this.f25747m.get(Integer.valueOf(i2));
    }

    private String getNotificationChannelIdWithPrefix(int i) {
        return Prefs.f26262am.get() + org.apache.commons.lang3.StringUtils.SPACE + i;
    }

    public static void setDummyData(Intent intent) {
        intent.setData(Uri.parse(Long.toString(System.currentTimeMillis())));
    }

    private void setNotificationAsSilent(Notification notification) {
        notification.defaults = 4;
        notification.sound = null;
    }

    /* renamed from: a */
    public final C0745g.C0751e m28575a(int i, int i2, boolean z, String str) {
        C0745g.C0751e m28557a = m28557a(NotificationChannelEnum.SYNC_PROGRESS_NOTIFICATION_CHANNEL);
        m28557a.m44571a(Activities.getString(2131887768)).m44581a(2131231569);
        m28557a.m44579a(2, true);
        Intent intent = new Intent(Singletons.get().getApplication(), ContactsListActivity.class);
        intent.putExtra("from_sync_progress", true);
        m28552a((Object) ContactsListActivity.class, intent, m28557a, 0, false);
        if (!z) {
            m28557a.m44567b(str);
        }
        m28557a.f3347r = i;
        m28557a.f3348s = i2;
        m28557a.f3349t = z;
        return m28557a;
    }

    /* renamed from: a */
    public final C0745g.C0751e m28557a(NotificationChannelEnum notificationChannelEnum) {
        C0745g.C0751e c0751e = new C0745g.C0751e(Singletons.get().getApplication(), getNotificationChannelIdWithPrefix(notificationChannelEnum.getId()));
        c0751e.f3314C = ThemeUtils.m27386a(CallAppApplication.get().getBaseContext(), 2131099784);
        return c0751e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v155, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r1v49 */
    /* renamed from: a */
    public final C0745g.C0751e m28548a(String str, String str2, boolean z) {
        Intent intent = new Intent();
        C0745g.C0751e m28557a = m28557a(NotificationChannelEnum.INCALL_NOTIFICATION_CHANNEL);
        synchronized (f25737k) {
            ?? deviceId = this.f25740d.getContact() != null ? this.f25740d.getContact().getDeviceId() : false;
            String fullName = (this.f25740d.getContact() == null || this.f25740d.getContact().isIncognito() || IncognitoCallManager.get().isIncognito(this.f25740d.getContact())) ? "" : this.f25740d.getContact().getFullName();
            intent.setAction("com.callapp.contacts.ACTION_START_CALL_SCREEN").setComponent(new ComponentName(Singletons.get().getApplication(), CallAppService.class));
            setDummyData(intent);
            intent.putExtra(ContactDetailsOverlayView.EXTRA_IS_FROM_NOTIFICATION, true);
            intent.putExtra(Constants.EXTRA_IS_INCOMING, false);
            intent.putExtra(PostCallActivity.EXTRA_IS_BLOCKED, z);
            if (IncognitoCallManager.get().isIncognito(PhoneManager.get().m28239a(str))) {
                intent.putExtra(BaseContactDetailsActivity.EXTRA_INCOGNITO_CALL, true);
            }
            if (this.f25740d.getContact() != null && this.f25740d.getContact().getGenomeData() != null) {
                intent.putExtra(PostCallActivity.EXTRA_IS_SPAMMER, this.f25740d.getContact().isSpammer());
            }
            if (StringUtils.m26045b((CharSequence) str)) {
                ContactDetailsActivity.fillIntentWithCallData(intent, deviceId == true ? 1L : 0L, str, null, ExtractedInfo.Builder.getBuilderAccordingToOrigin(PhoneManager.get().m28239a(str), IMDataExtractionUtils.RecognizedPersonOrigin.CALL).build(), false, null, null);
                intent.putExtra(ContactDetailsActivity.EXTRA_FULL_NAME, fullName);
            }
        }
        PendingIntent service = PendingIntent.getService(Singletons.get().getApplication(), 30, intent, 134217728);
        CurrentCallDynamicObject currentCallDynamicObject = this.f25740d;
        boolean z2 = (currentCallDynamicObject == null || currentCallDynamicObject.getContact() == null || !this.f25740d.getContact().isSpammer()) ? false : true;
        RemoteViews remoteViews = new RemoteViews(CallAppApplication.get().getPackageName(), 2131558684);
        RemoteViews remoteViews2 = new RemoteViews(CallAppApplication.get().getPackageName(), 2131558685);
        int color = ThemeUtils.getColor(z2 ? 2131099675 : 2131099784);
        int color2 = ThemeUtils.getColor(z2 ? 2131099676 : 2131099785);
        remoteViews.setInt(2131362471, "setBackgroundColor", color);
        remoteViews.setInt(2131364009, "setBackgroundColor", color2);
        remoteViews2.setInt(2131362471, "setBackgroundColor", color);
        remoteViews.setInt(2131364009, "setBackgroundColor", color2);
        remoteViews.setInt(2131362471, "setBackgroundColor", color);
        remoteViews2.setInt(2131362471, "setBackgroundColor", color);
        long time = new Date().getTime();
        m28560a(m28557a, str, str2, remoteViews, time, z2);
        m28560a(m28557a, str, str2, remoteViews2, time, z2);
        Bundle bundle = new Bundle();
        bundle.putLong("time_stamp", time);
        m28557a.f3313B = bundle;
        m28557a.m44579a(2, true);
        m28557a.f3341l = 2;
        m28557a.f3312A = "call";
        m28557a.f3315D = 1;
        m28557a.m44575a((Uri) null);
        m28557a.f3335f = service;
        Intent action = new Intent(Singletons.get().getApplication(), NotificationPendingIntentHandlerService.class).setAction("com.callapp.contacts.ACTION_END_CALL");
        setDummyData(action);
        PendingIntent service2 = PendingIntent.getService(Singletons.get().getApplication(), 20, action, 134217728);
        Intent action2 = new Intent(Singletons.get().getApplication(), NotificationPendingIntentHandlerService.class).setAction("com.callapp.contacts.ACTION_TOGGLE_AUDIO");
        setDummyData(action2);
        PendingIntent service3 = PendingIntent.getService(Singletons.get().getApplication(), 40, action2, 134217728);
        int i = 2131231700;
        String string = Activities.getString(2131888047);
        if (!PhoneManager.get().isDefaultPhoneApp()) {
            if (BluetoothHeadsetConnectivityManager.isUsingBT()) {
                string = Activities.getString(2131886280);
                i = 2131231697;
                remoteViews.setOnClickPendingIntent(2131362163, service2);
                remoteViews.setOnClickPendingIntent(2131362170, service3);
                remoteViews.setTextViewText(2131362163, Activities.getString(2131886223));
                remoteViews.setTextViewText(2131362170, string);
                remoteViews2.setInt(2131362170, "setImageResource", i);
                remoteViews2.setOnClickPendingIntent(2131362163, service2);
                remoteViews2.setOnClickPendingIntent(2131362170, service3);
                m28557a.f3318G = remoteViews;
                m28557a.f3317F = remoteViews2;
                return m28557a;
            }
            if (PhoneManager.get().isSpeakerOn()) {
                string = Activities.getString(2131888046);
                i = 2131231701;
            }
            remoteViews.setOnClickPendingIntent(2131362163, service2);
            remoteViews.setOnClickPendingIntent(2131362170, service3);
            remoteViews.setTextViewText(2131362163, Activities.getString(2131886223));
            remoteViews.setTextViewText(2131362170, string);
            remoteViews2.setInt(2131362170, "setImageResource", i);
            remoteViews2.setOnClickPendingIntent(2131362163, service2);
            remoteViews2.setOnClickPendingIntent(2131362170, service3);
            m28557a.f3318G = remoteViews;
            m28557a.f3317F = remoteViews2;
            return m28557a;
        }
        int audioMode = AudioModeProvider.get().getAudioMode();
        if (audioMode == 2) {
            string = Activities.getString(2131888044);
            i = 2131231697;
            remoteViews.setOnClickPendingIntent(2131362163, service2);
            remoteViews.setOnClickPendingIntent(2131362170, service3);
            remoteViews.setTextViewText(2131362163, Activities.getString(2131886223));
            remoteViews.setTextViewText(2131362170, string);
            remoteViews2.setInt(2131362170, "setImageResource", i);
            remoteViews2.setOnClickPendingIntent(2131362163, service2);
            remoteViews2.setOnClickPendingIntent(2131362170, service3);
            m28557a.f3318G = remoteViews;
            m28557a.f3317F = remoteViews2;
            return m28557a;
        }
        if (audioMode == 8) {
            string = (AudioModeProvider.get().isAnyBluetoothConnected() || BluetoothHeadsetConnectivityManager.isBluetoothConnected()) ? Activities.getString(2131888045) : Activities.getString(2131888046);
            i = 2131231701;
        }
        remoteViews.setOnClickPendingIntent(2131362163, service2);
        remoteViews.setOnClickPendingIntent(2131362170, service3);
        remoteViews.setTextViewText(2131362163, Activities.getString(2131886223));
        remoteViews.setTextViewText(2131362170, string);
        remoteViews2.setInt(2131362170, "setImageResource", i);
        remoteViews2.setOnClickPendingIntent(2131362163, service2);
        remoteViews2.setOnClickPendingIntent(2131362170, service3);
        m28557a.f3318G = remoteViews;
        m28557a.f3317F = remoteViews2;
        return m28557a;
    }

    /* renamed from: a */
    public final String m28547a(Date date) {
        return date.getTime() > this.f25743h ? this.f25741f.format(date) : this.f25742g.format(date);
    }

    /* renamed from: a */
    public List<C0745g.C0747a> m28569a(int i, Phone phone, String str, long j, boolean z) {
        PendingIntent m28570a = m28570a(i, phone, "com.callapp.contacts.ACTION_CALL_REMINDER_CALL");
        PendingIntent m28570a2 = m28570a(i, phone, "com.callapp.contacts.ACTION_CALL_REMINDER_SEND_MESSAGE");
        Intent intent = new Intent(Singletons.get().getApplication(), NotificationPendingIntentHandlerService.class);
        intent.setAction("com.callapp.contacts.ACTION_CALL_SNOOZE");
        intent.putExtra("com.callapp.contacts.EXTRA_FULL_NAME", str);
        intent.putExtra("notification_id", i);
        intent.putExtra("com.callapp.contacts.EXTRA_RAW_NUMBER", phone.getRawNumber());
        intent.putExtra("call_reminder_notification_time", j);
        PendingIntent service = PendingIntent.getService(Singletons.get().getApplication(), i, intent, 1073741824);
        ArrayList arrayList = new ArrayList(3);
        int[] iArr = z ? new int[]{2131231553, 2131231770, 2131231937} : new int[]{2131231552, 2131231769, 2131231419};
        arrayList.add(m28577a(iArr[0], 2131886440, m28570a));
        arrayList.add(m28577a(iArr[1], 2131886449, m28570a2));
        arrayList.add(m28577a(iArr[2], 2131886450, service));
        return arrayList;
    }

    /* renamed from: a */
    public final void m28579a() {
        Intent intent = new Intent(CallAppApplication.get(), SetupWizardActivity.class);
        PendingIntent.getActivity(Singletons.get().getApplication(), 0, intent, 134217728).cancel();
        PendingIntent activity = PendingIntent.getActivity(Singletons.get().getApplication(), 0, intent, 134217728);
        C0745g.C0751e m28557a = m28557a(NotificationChannelEnum.SETUP_INPROGRESS_NOTIFICATION_CHANNEL);
        C0745g.C0751e m44567b = m28557a.m44581a(2131231569).m44571a(Activities.getString(2131887652)).m44567b(Activities.getString(2131887651));
        m44567b.m44579a(2, true);
        m44567b.f3335f = activity;
        m28573a(9, m28557a);
    }

    /* renamed from: a */
    public final void m28578a(int i) {
        if (i == 12) {
            synchronized (f25737k) {
                this.f25740d.m28683a("", "", (String) null, (ContactData) null);
                this.f25740d.m28691a(0);
                this.f25740d.m28691a(-1);
            }
        }
        this.f25744i.cancel(i);
    }

    /* renamed from: a */
    public final void m28576a(int i, int i2, String str) {
        m28573a(8, m28575a(i, i2, false, str));
    }

    /* renamed from: a */
    public final void m28566a(C0745g.C0751e c0751e, int i, IMDataExtractionUtils.ImDataForCallappNotification imDataForCallappNotification, int i2) {
        PendingIntent pendingIntent;
        Phone m28239a = PhoneManager.get().m28239a(((ExtractedInfo) imDataForCallappNotification.f25754a).phoneAsRaw);
        Intent intent = new Intent(CallAppApplication.get(), NotificationPendingIntentHandlerService.class);
        intent.setAction("com.callapp.contacts.ACTION_OPEN_CD_FOR_IM_IDENTIFIED_NUMBER_NOTIFICATION");
        intent.putExtra("notification_id", 50);
        intent.putExtra("future_target_index_key", i2);
        ContactDetailsActivity.fillIntentWithCallData(intent, 0L, m28239a.getRawNumber(), null, null, false, null, ENTRYPOINT.CALLAPP_PLUS);
        setDummyData(intent);
        c0751e.f3335f = PendingIntent.getService(Singletons.get().getApplication(), 0, intent, 134217728);
        m28565a(c0751e, 50, "com.callapp.contacts.ACTION_DISMISS_FROM_IM_IDENTIFIED_NUMBER_NOTIFICATION", i2);
        ArrayList<C0745g.C0747a> arrayList = new ArrayList(3);
        Phone m28239a2 = PhoneManager.get().m28239a(((ExtractedInfo) imDataForCallappNotification.f25754a).phoneAsRaw);
        int[] iArr = {2131231552, 2131231769, 2131231409};
        arrayList.add(m28577a(iArr[0], 2131886440, m28570a(50, m28239a2, "com.callapp.contacts.ACTION_CALL_FROM_IM_IDENTIFIED_NUMBER_NOTIFICATION")));
        if (((ExtractedInfo) imDataForCallappNotification.f25754a).recognizedPersonOrigin == IMDataExtractionUtils.RecognizedPersonOrigin.SMS_MESSAGE) {
            pendingIntent = m28570a(50, m28239a2, "com.callapp.contacts.ACTION_SEND_TEXT_MESSAGE");
        } else {
            Intent m28540b = m28540b(50, m28239a2, "com.callapp.contacts.ACTION_SEND_MESSAGE_FROM_IM_IDENTIFIED_NUMBER_NOTIFICATION");
            m28540b.putExtra("extra_im_package", ((ExtractedInfo) imDataForCallappNotification.f25754a).recognizedPersonOrigin.pkgName);
            m28540b.putExtra("extra_im_type", ((ExtractedInfo) imDataForCallappNotification.f25754a).recognizedPersonOrigin.senderType);
            m28540b.putExtra("com.callapp.contacts.EXTRA_RAW_NUMBER", m28239a2.getRawNumber());
            pendingIntent = PendingIntent.getService(Singletons.get().getApplication(), 50, m28540b, 1073741824);
        }
        arrayList.add(m28577a(iArr[1], 2131886449, pendingIntent));
        if (!imDataForCallappNotification.isContactInDevice()) {
            int i3 = iArr[2];
            Intent intent2 = new Intent(Singletons.get().getApplication(), NotificationPendingIntentHandlerService.class);
            setDummyData(intent2);
            intent2.setAction("com.callapp.contacts.ACTION_CREATE_NEW_CONTACT_FROM_IDENTIFIED_NUMBER_NOTIFICATION");
            intent2.putExtra("android.intent.extra.INTENT", imDataForCallappNotification.getAddContactIntent());
            intent2.putExtra("notification_id", 50);
            arrayList.add(m28577a(i3, 2131886205, PendingIntent.getService(Singletons.get().getApplication(), 50, intent2, 134217728)));
        }
        for (C0745g.C0747a c0747a : arrayList) {
            c0751e.m44574a(c0747a);
        }
    }

    /* renamed from: a */
    public final void m28554a(CallData callData, ContactData contactData, boolean z, boolean z2) {
        String rawNumber;
        boolean z3;
        String str;
        if (!Prefs.f26246aW.get().booleanValue()) {
            return;
        }
        synchronized (f25737k) {
            long time = new Date().getTime();
            rawNumber = callData != null ? callData.getNumber().getRawNumber() : "";
            String m26020j = (contactData == null || contactData.isIncognito() || IncognitoCallManager.get().isIncognito(contactData)) ? null : StringUtils.m26020j(contactData.getFullName());
            String thumbnailUrl = contactData != null ? contactData.getThumbnailUrl() : ImageUtils.getResourceUri(2131232143);
            z3 = true;
            boolean z4 = !rawNumber.equals(this.f25740d.getNumber());
            if (z4) {
                this.f25740d.m28683a(rawNumber, m26020j, thumbnailUrl, contactData);
            } else {
                if (this.f25740d.getContact() != null && (contactData == null || !StringUtils.m26045b((CharSequence) contactData.getThumbnailUrl()))) {
                    if (z && contactData != null && StringUtils.m26059a((CharSequence) contactData.getThumbnailUrl())) {
                        this.f25740d.m28684a((String) null, time);
                        this.f25740d.m28688a((Bitmap) null, time);
                        this.f25740d.m28691a(0);
                    }
                }
                this.f25740d.setContact(contactData);
            }
            if (!z2 && !z4 && ((!StringUtils.m26059a((CharSequence) this.f25740d.getPhotoUrl()) || !z) && ((!StringUtils.m26045b((CharSequence) this.f25740d.getPhotoUrl()) || StringUtils.m26042b(this.f25740d.getPhotoUrl(), thumbnailUrl)) && (!StringUtils.m26045b((CharSequence) m26020j) || m26020j.equals(this.f25740d.getName()))))) {
                rawNumber = null;
                z3 = false;
                str = null;
            }
            if (z2) {
                this.f25740d.setName(Activities.getString(2131886427));
            } else if (StringUtils.m26045b((CharSequence) m26020j)) {
                this.f25740d.setName(m26020j);
            }
            CurrentCallDynamicObject currentCallDynamicObject = this.f25740d;
            boolean z5 = false;
            if (callData != null) {
                z5 = false;
                if (callData.isBlocked()) {
                    z5 = true;
                }
            }
            currentCallDynamicObject.setBlocked(z5);
            str = this.f25740d.getName();
        }
        if (!z3) {
            return;
        }
        if (PhoneStateManager.get().isIncoming()) {
            m28573a(12, m28537b(rawNumber, str, this.f25740d.isBlocked()));
        } else {
            m28573a(12, m28548a(rawNumber, str, this.f25740d.isBlocked()));
        }
    }

    /* renamed from: a */
    public final void m28551a(String str) {
        String string = Activities.getString(2131886234);
        String m27697a = Activities.m27697a(2131887339, str);
        C0745g.C0751e m28557a = m28557a(NotificationChannelEnum.BACKUP_NOTIFICATION_CHANNEL);
        PendingIntent activity = PendingIntent.getActivity(Singletons.get().getApplication(), 0, BackupUtils.getBackupSettingsIntent(), 134217728);
        C0745g.C0751e m44570a = m28557a.m44571a(string).m44567b(m27697a).m44581a(2131231569).m44576a(BitmapFactory.decodeResource(CallAppApplication.get().getResources(), 2131231454)).m44570a(true);
        m44570a.f3335f = activity;
        m44570a.f3328Q = true;
        m28573a(60, m28557a);
    }

    /* renamed from: a */
    public final void m28549a(String str, String str2) {
        FeedbackManager.get().m28670a("send who viewed my profile notification", 80);
        AnalyticsManager.get().m28450a(Constants.WHO_VIEWED_MY_PROFILE_CATEGORY, "ViewProfile_notification_receive");
        WhoViewedMyProfileDataManager.m29351e();
        Phone m28239a = PhoneManager.get().m28239a(str);
        int incrementAndGet = this.f25739c.incrementAndGet();
        C0745g.C0751e m28557a = m28557a(NotificationChannelEnum.PROFILE_VIEWED_NOTIFICATION_CHANNEL);
        m28572a(incrementAndGet, m28557a, WhoViewedMyProfileDataManager.getViewerNotificationCount(), m28239a, str2);
        m28557a.f3340k = WhoViewedMyProfileDataManager.getViewerNotificationCount();
        m28573a(15, m28557a);
    }

    /* renamed from: a */
    public final void m28546a(List<Phone> list) {
        String str;
        CharSequence charSequence;
        int i;
        String str2;
        Bitmap m28685a;
        if (CollectionUtils.m26076a(list) || !Prefs.f26361cf.get().booleanValue()) {
            return;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(list);
        f25735b++;
        CallAppApplication callAppApplication = CallAppApplication.get();
        C0745g.C0751e m28557a = m28557a(NotificationChannelEnum.CALL_BLOCKED_NOTIFICATION_CHANNEL);
        Phone phone = (Phone) copyOnWriteArrayList.get(copyOnWriteArrayList.size() - 1);
        ContactData m28327a = ContactUtils.m28327a(phone);
        boolean m28240a = PhoneManager.get().m28240a(phone);
        if (m28327a.isIncognito()) {
            charSequence = m28327a.getPhone().m26095b();
            str = ImageUtils.getResourceUri(2131232150);
        } else if (m28240a) {
            charSequence = Activities.getString(2131888153);
            str = ImageUtils.getResourceUri(2131231612);
        } else {
            charSequence = m28327a.getNameOrNumber();
            str = m28327a.getThumbnailUrl();
        }
        int incrementAndGet = this.f25739c.incrementAndGet();
        if (StringUtils.m26045b((CharSequence) str) && (m28685a = this.f25740d.m28685a(str, incrementAndGet, m28327a)) != null) {
            try {
                m28563a(m28557a, m28685a, (List<C0745g.C0747a>) null);
            } catch (RuntimeException e) {
                CLog.m27610a(getClass(), "Could not generate notification bitmap for in-call", e);
            }
            m28557a.m44576a(m28685a);
        }
        if (f25735b == 1) {
            m28557a.m44571a(Activities.getString(2131887700));
            m28557a.m44567b(charSequence);
        } else {
            m28557a.m44571a(Activities.getString(2131887254));
        }
        Intent m30648a = StringUtils.m26059a(charSequence) ? ContactsListActivity.m30648a(callAppApplication) : ContactDetailsActivity.createIntent(callAppApplication, 0L, phone.getRawNumber(), ExtractedInfo.Builder.getBuilderAccordingToOrigin(phone, IMDataExtractionUtils.RecognizedPersonOrigin.CALL).build(), false, null, "NotificationBlock", null);
        CharSequence charSequence2 = charSequence;
        C0745g.C0753g c0753g = new C0745g.C0753g();
        int i2 = f25735b;
        if (i2 == 1) {
            c0753g.m44564a(Activities.getString(2131886347));
        } else {
            c0753g.m44564a(Activities.m27697a(2131887252, Integer.valueOf(i2)));
        }
        HashSet hashSet = new HashSet();
        for (int size = copyOnWriteArrayList.size() - 1; size >= 0; size--) {
            Phone phone2 = (Phone) copyOnWriteArrayList.get(size);
            hashSet.add(phone2);
            ContactData m28327a2 = ContactUtils.m28327a(phone2);
            boolean isIncognito = m28327a2.isIncognito();
            boolean isVoiceMail = m28327a2.isVoiceMail();
            if (isIncognito) {
                str2 = m28327a2.getPhone().m26095b();
            } else if (isVoiceMail) {
                str2 = Activities.getString(2131888153);
            } else {
                str2 = m28327a2.getNameOrNumber();
                if (StringUtils.m26059a(charSequence2)) {
                    str2 = Activities.getString(2131886488);
                }
            }
            c0753g.m44563b(Activities.m27697a(2131886380, str2));
        }
        m28557a.m44572a(c0753g);
        if (hashSet.size() == 1 && f25735b == 1) {
            m28557a.m44567b(charSequence2);
        } else if (hashSet.size() != 1 || (i = f25735b) <= 1) {
            m28557a.m44567b(Activities.m27697a(2131887252, Integer.valueOf(f25735b)));
        } else {
            m28557a.m44567b(Activities.m27697a(2131887253, Integer.valueOf(i), charSequence2));
        }
        m30648a.putExtra("EXTRA_BLOCKED_CALL_NOTIFICATION_CLICKED", true);
        m30648a.putExtra("EXTRA_ASK_OPEN_RATE_US", true);
        m30648a.putExtra("future_target_index_key", incrementAndGet);
        m28557a.m44581a(2131231912).f3335f = PendingIntent.getActivity(callAppApplication, 0, m30648a, 134217728);
        m28565a(m28557a, 1, "com.callapp.contacts.ACTION_DISMISS_FROM_BLOCKED_CALL_NOTIFICATION", incrementAndGet);
        m28557a.m44568b(-1);
        m28557a.m44570a(true);
        m28573a(1, m28557a);
    }

    /* renamed from: a */
    public final void m28545a(List<IMDataExtractionUtils.ImDataForCallappNotification> list, C0745g.C0751e c0751e) {
        Map.Entry<IMDataExtractionUtils.RecognizedPersonOrigin, Integer> next;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            Integer num = hashMap.get(((ExtractedInfo) list.get(i2).f25754a).recognizedPersonOrigin);
            if (num == null) {
                hashMap.put(((ExtractedInfo) list.get(i2).f25754a).recognizedPersonOrigin, 1);
            } else {
                hashMap.put(((ExtractedInfo) list.get(i2).f25754a).recognizedPersonOrigin, Integer.valueOf(num.intValue() + 1));
            }
            i++;
            List<IMDataExtractionUtils.ImDataForCallappNotification> list2 = hashMap2.get(((ExtractedInfo) list.get(i2).f25754a).recognizedPersonOrigin);
            ArrayList arrayList = list2;
            if (CollectionUtils.m26076a(list2)) {
                arrayList = new ArrayList();
            }
            arrayList.add(list.get(i2));
            hashMap2.put(((ExtractedInfo) list.get(i2).f25754a).recognizedPersonOrigin, arrayList);
        }
        String string = Activities.getString(2131887010);
        Iterator<Map.Entry<IMDataExtractionUtils.RecognizedPersonOrigin, Integer>> it2 = hashMap.entrySet().iterator();
        String str = "";
        while (true) {
            String str2 = str;
            if (!it2.hasNext()) {
                String m27697a = Activities.m27697a(2131887009, Integer.valueOf(i), str2);
                m28558a(c0751e, string, hashMap, hashMap2);
                c0751e.m44571a(string).m44567b(m27697a);
                Intent intent = new Intent(CallAppApplication.get(), NotificationPendingIntentHandlerService.class);
                intent.setAction("com.callapp.contacts.ACTION_OPEN_IM_CALL_LOG_FOR_IM_IDENTIFIED_NUMBER_NOTIFICATION");
                intent.putExtra("notification_id", 50);
                setDummyData(intent);
                PendingIntent service = PendingIntent.getService(Singletons.get().getApplication(), 0, intent, 134217728);
                m28565a(c0751e, 50, "com.callapp.contacts.ACTION_DISMISS_IM_NOTIFICATION", -1);
                c0751e.f3335f = service;
                return;
            }
            str = StringUtils.m26059a((CharSequence) str2) ? it2.next().getKey().getDisplayName() : str2 + ", " + next.getKey().getDisplayName();
        }
    }

    /* renamed from: a */
    public final void m28544a(List<MissedCallUtils.MissedCallDataForNotification> list, MissedCallUtils.MissedCallsListParams missedCallsListParams) {
        if (Prefs.f26246aW.get().booleanValue() && MissedCallManager.isMissedCallsNotificationsEnabled()) {
            if (CollectionUtils.m26076a(list)) {
                m28578a(17);
                return;
            }
            m28535c();
            C0745g.C0751e m28557a = m28557a(NotificationChannelEnum.MISSED_CALL_NOTIFICATION_CHANNEL);
            int incrementAndGet = this.f25739c.incrementAndGet();
            m28553a(missedCallsListParams, this.f25739c.incrementAndGet(), m28557a, list, 3, 17);
            m28557a.f3340k = list.size();
            m28565a(m28557a, 17, "com.callapp.contacts.ACTION_DISMISS_FROM_MISSED_CALL_NOTIFICATION", incrementAndGet);
            RemoveMissedCallNotAnsweredNotificationWorker.f29633a.m26125a();
            m28573a(17, m28557a);
        }
    }

    /* renamed from: a */
    public final void m28543a(boolean z, boolean z2) {
        int i;
        int i2;
        if (z2) {
            i2 = 2131887899;
            i = 2131887412;
        } else {
            i2 = 2131886234;
            i = 2131886235;
        }
        if (z) {
            i2 = 2131887060;
            i = 2131888254;
        }
        String string = Activities.getString(i2);
        String string2 = Activities.getString(i);
        C0745g.C0751e m28557a = m28557a(NotificationChannelEnum.BACKUP_NOTIFICATION_CHANNEL);
        PendingIntent activity = PendingIntent.getActivity(Singletons.get().getApplication(), 0, BackupUtils.getBackupSettingsIntent(), 134217728);
        C0745g.C0751e m44576a = m28557a.m44571a(string).m44567b(string2).m44581a(2131231569).m44576a(BitmapFactory.decodeResource(CallAppApplication.get().getResources(), 2131231454));
        m44576a.f3335f = activity;
        m44576a.m44570a(true).f3328Q = true;
        m28573a(60, m28557a);
    }

    /* renamed from: a */
    public final boolean m28574a(int i, Notification notification) {
        if (NotificationTimeUtils.isCurrentTimeDisturbing()) {
            if (!m28532d(i)) {
                FeedbackManager feedbackManager = FeedbackManager.get();
                feedbackManager.m28670a("not showing notification with ID: " + i + " because current time is disturbing", 80);
                return false;
            } else if (i == 8 || i == 50) {
                setNotificationAsSilent(notification);
            }
        }
        this.f25744i.notify(i, notification);
        return true;
    }

    /* renamed from: a */
    public final boolean m28573a(int i, C0745g.C0751e c0751e) {
        if (c0751e == null) {
            return false;
        }
        if (i == 12) {
            synchronized (f25737k) {
                long j = c0751e.m44582a().getLong("time_stamp");
                if (j <= this.f25745j) {
                    return false;
                }
                this.f25745j = j;
            }
        }
        String m28541b = m28541b(i);
        if (StringUtils.m26045b((CharSequence) m28541b)) {
            c0751e.f3320I = m28541b;
        }
        try {
            return m28574a(i, c0751e.m44569b());
        } catch (RuntimeException e) {
            CLog.m27609a(NotificationManager.class, e);
            return false;
        }
    }

    /* JADX WARN: Type inference failed for: r0v166, types: [long] */
    /* renamed from: b */
    public final C0745g.C0751e m28537b(String str, String str2, boolean z) {
        char deviceId;
        Intent intent = new Intent();
        C0745g.C0751e m28557a = m28557a(NotificationChannelEnum.INCALL_NOTIFICATION_CHANNEL);
        boolean z2 = this.f25740d.getContact() != null && this.f25740d.getContact().isVoiceMail();
        synchronized (f25737k) {
            deviceId = this.f25740d.getContact() != null ? this.f25740d.getContact().getDeviceId() : (char) 0;
            String fullName = (this.f25740d.getContact() == null || this.f25740d.getContact().isIncognito() || IncognitoCallManager.get().isIncognito(this.f25740d.getContact())) ? "" : this.f25740d.getContact().getFullName();
            intent.setAction("com.callapp.contacts.ACTION_START_CALL_SCREEN").setComponent(new ComponentName(Singletons.get().getApplication(), CallAppService.class));
            setDummyData(intent);
            intent.putExtra(ContactDetailsOverlayView.EXTRA_IS_FROM_NOTIFICATION, true);
            intent.putExtra(Constants.EXTRA_IS_INCOMING, true);
            intent.putExtra(PostCallActivity.EXTRA_IS_BLOCKED, z);
            if (IncognitoCallManager.get().isIncognito(PhoneManager.get().m28239a(str))) {
                intent.putExtra(BaseContactDetailsActivity.EXTRA_INCOGNITO_CALL, true);
            }
            if (this.f25740d.getContact() != null && this.f25740d.getContact().getGenomeData() != null) {
                intent.putExtra(PostCallActivity.EXTRA_IS_SPAMMER, this.f25740d.getContact().isSpammer());
            }
            ContactDetailsActivity.fillIntentWithCallData(intent, deviceId, str, null, ExtractedInfo.Builder.getBuilderAccordingToOrigin(PhoneManager.get().m28239a(str), IMDataExtractionUtils.RecognizedPersonOrigin.CALL).build(), false, null, null);
            intent.putExtra(ContactDetailsActivity.EXTRA_FULL_NAME, fullName);
        }
        PendingIntent service = PendingIntent.getService(Singletons.get().getApplication(), 30, intent, 134217728);
        CurrentCallDynamicObject currentCallDynamicObject = this.f25740d;
        boolean isSpammer = (currentCallDynamicObject == null || currentCallDynamicObject.getContact() == null) ? false : this.f25740d.getContact().isSpammer();
        Bundle bundle = new Bundle();
        long time = new Date().getTime();
        bundle.putLong("time_stamp", time);
        m28557a.f3313B = bundle;
        m28557a.m44581a(2131231915);
        m28557a.f3342m = false;
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            this.f25740d.m28682a(false, z2, time, isSpammer);
        }
        m28557a.m44576a(this.f25740d.getPhotoBitmap());
        if (z2) {
            str2 = Activities.getString(2131888153);
        } else if (StringUtils.m26059a((CharSequence) str2)) {
            str2 = StringUtils.m26059a((CharSequence) this.f25740d.getName()) ? str : this.f25740d.getName();
        }
        m28550a(str2, this.f25740d.getPhotoBitmap(), str);
        this.f25740d.setName(str2);
        m28557a.m44579a(2, true);
        m28557a.f3315D = 1;
        m28557a.f3341l = 2;
        m28557a.f3312A = "call";
        m28557a.m44575a((Uri) null);
        PendingIntent service2 = PendingIntent.getService(Singletons.get().getApplication(), 20, new Intent(Singletons.get().getApplication(), NotificationPendingIntentHandlerService.class).setAction("com.callapp.contacts.ACTION_END_CALL_TELECOM"), 134217728);
        Intent action = new Intent(Singletons.get().getApplication(), NotificationPendingIntentHandlerService.class).setAction("com.callapp.contacts.ACTION_INCOMING_CALL_SMS_TELECOM");
        action.putExtra(Constants.EXTRA_PHONE_NUMBER, str);
        action.putExtra(Constants.EXTRA_CONTACT_ID, (long) deviceId);
        PendingIntent service3 = PendingIntent.getService(Singletons.get().getApplication(), 40, action, 134217728);
        PendingIntent service4 = PendingIntent.getService(Singletons.get().getApplication(), 60, new Intent(Singletons.get().getApplication(), NotificationPendingIntentHandlerService.class).setAction("com.callapp.contacts.ACTION_ANSWER_CALL_TELECOM"), 134217728);
        RemoteViews remoteViews = new RemoteViews(CallAppApplication.get().getPackageName(), 2131558743);
        RemoteViews remoteViews2 = new RemoteViews(CallAppApplication.get().getPackageName(), 2131558744);
        int color = ThemeUtils.getColor(isSpammer ? 2131099675 : 2131099784);
        int color2 = ThemeUtils.getColor(isSpammer ? 2131099676 : 2131099785);
        remoteViews.setInt(2131362471, "setBackgroundColor", color);
        remoteViews.setInt(2131363791, "setBackgroundColor", color2);
        remoteViews2.setInt(2131362471, "setBackgroundColor", color);
        remoteViews.setImageViewBitmap(2131363390, this.f25740d.getPhotoBitmap());
        remoteViews2.setImageViewBitmap(2131363390, this.f25740d.getPhotoBitmap());
        if (CallLogUtils.m27556b(str)) {
            CLog.m27611a(NotificationManager.class, "Hiding SMS: ".concat(String.valueOf(str)));
            remoteViews.setViewVisibility(2131363043, 4);
        } else {
            remoteViews.setViewVisibility(2131363043, 0);
        }
        remoteViews.setTextViewText(2131363391, this.f25740d.getName());
        remoteViews2.setTextViewText(2131363391, this.f25740d.getName());
        remoteViews.setTextViewText(2131363388, Activities.getString(2131887044));
        remoteViews2.setTextViewText(2131363388, Activities.getString(2131887044));
        remoteViews.setOnClickPendingIntent(2131362471, service);
        remoteViews.setOnClickPendingIntent(2131363040, service2);
        remoteViews.setOnClickPendingIntent(2131363043, service3);
        remoteViews.setOnClickPendingIntent(2131363039, service4);
        remoteViews2.setOnClickPendingIntent(2131362471, service);
        remoteViews2.setOnClickPendingIntent(2131363040, service2);
        remoteViews2.setOnClickPendingIntent(2131363043, service3);
        remoteViews2.setOnClickPendingIntent(2131363039, service4);
        m28557a.f3318G = remoteViews;
        m28557a.f3317F = remoteViews2;
        return m28557a;
    }

    /* renamed from: b */
    public final String m28541b(int i) {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannelEnum channelEnumFromNotificationId = getChannelEnumFromNotificationId(i);
            if (channelEnumFromNotificationId == null) {
                return getNotificationChannelIdWithPrefix(NotificationChannelEnum.DEFAULT_NOTIFICATION_CHANNEL.getId());
            }
            if (this.f25744i.getNotificationChannel(getNotificationChannelIdWithPrefix(channelEnumFromNotificationId.getId())) == null) {
                m28542b();
            }
            return getNotificationChannelIdWithPrefix(channelEnumFromNotificationId.getId());
        }
        return null;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x0159 -> B:30:0x0152). Please submit an issue!!! */
    /* renamed from: b */
    public final void m28542b() {
        NotificationChannelGroupEnum[] values;
        NotificationChannelEnum[] values2;
        if (Build.VERSION.SDK_INT >= 26) {
            for (NotificationChannelGroup notificationChannelGroup : this.f25744i.getNotificationChannelGroups()) {
                this.f25744i.deleteNotificationChannelGroup(notificationChannelGroup.getId());
            }
            for (NotificationChannel notificationChannel : this.f25744i.getNotificationChannels()) {
                try {
                    this.f25744i.deleteNotificationChannel(notificationChannel.getId());
                } catch (IllegalArgumentException e) {
                }
            }
            Prefs.f26262am.m28169b(1);
            for (NotificationChannelGroupEnum notificationChannelGroupEnum : NotificationChannelGroupEnum.values()) {
                this.f25744i.createNotificationChannelGroup(new NotificationChannelGroup(notificationChannelGroupEnum.getId(), notificationChannelGroupEnum.getName()));
            }
            for (NotificationChannelEnum notificationChannelEnum : NotificationChannelEnum.values()) {
                NotificationChannel notificationChannel2 = new NotificationChannel(getNotificationChannelIdWithPrefix(notificationChannelEnum.getId()), notificationChannelEnum.getName(), notificationChannelEnum.getImportance());
                notificationChannel2.setGroup(notificationChannelEnum.getGroupId());
                notificationChannel2.setName(notificationChannelEnum.getName());
                notificationChannel2.setShowBadge(notificationChannelEnum.isShowBadge());
                if (notificationChannelEnum == NotificationChannelEnum.BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL) {
                    notificationChannel2.setSound(Uri.parse("android.resource://" + CallAppApplication.get().getPackageName() + "/raw/2131820545"), new AudioAttributes.Builder().setUsage(5).build());
                }
                if (notificationChannelEnum == NotificationChannelEnum.INCALL_NOTIFICATION_CHANNEL || notificationChannelEnum == NotificationChannelEnum.IM_NOTIFICATION_CHANNEL) {
                    notificationChannel2.setSound(null, null);
                }
                try {
                    this.f25744i.createNotificationChannel(notificationChannel2);
                } catch (IllegalArgumentException e2) {
                }
            }
        }
    }

    /* renamed from: b */
    public final void m28536b(List<MissedCallUtils.MissedCallDataForNotification> list, MissedCallUtils.MissedCallsListParams missedCallsListParams) {
        if (Prefs.f26246aW.get().booleanValue() && MissedCallManager.isNotAnswerNotificationsEnabled()) {
            if (CollectionUtils.m26076a(list)) {
                m28578a(40);
                return;
            }
            C0745g.C0751e m28557a = m28557a(NotificationChannelEnum.NOT_ANSWERED_NOTIFICATION_CHANNEL);
            int incrementAndGet = this.f25739c.incrementAndGet();
            m28553a(missedCallsListParams, this.f25739c.incrementAndGet(), m28557a, list, 40, 40);
            m28557a.f3340k = list.size();
            m28565a(m28557a, 40, "com.callapp.contacts.ACTION_DISMISS_FROM_NOT_ANSWERED_NOTIFICATION", incrementAndGet);
            RemoveMissedCallNotAnsweredNotificationWorker.f29633a.m26125a();
            m28573a(40, m28557a);
        }
    }

    /* renamed from: c */
    public final void m28534c(int i) {
        this.f25740d.m28691a(i);
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        this.f25744i = null;
    }

    /* renamed from: e */
    public final void m28531e() {
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.manager.NotificationManager.2
            @Override // java.lang.Runnable
            public void run() {
                NotificationManager notificationManager = NotificationManager.this;
                notificationManager.m28573a(12, notificationManager.getCurrentCallAppInCallNotificationBuilder());
            }
        });
    }

    public C0745g.C0751e getCurrentCallAppInCallNotificationBuilder() {
        return PhoneStateManager.get().isIncoming() ? m28537b(this.f25740d.getNumber(), this.f25740d.getName(), this.f25740d.isBlocked()) : m28548a(this.f25740d.getNumber(), this.f25740d.getName(), this.f25740d.isBlocked());
    }

    public C0745g.C0751e getImDetailNotificationBuilder() {
        C0745g.C0751e m44570a = m28557a(NotificationChannelEnum.IM_NOTIFICATION_CHANNEL).m44570a(true);
        m44570a.f3341l = 1;
        m44570a.m44575a((Uri) null);
        m44570a.m44581a(2131231913);
        return m44570a;
    }

    public Intent getOpenBirthdayChannelSettingsIntent() {
        if (this.f25744i.getNotificationChannel(getNotificationChannelIdWithPrefix(NotificationChannelEnum.BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL.getId())) == null) {
            m28530f();
        }
        return new Intent("android.settings.CHANNEL_NOTIFICATION_SETTINGS").putExtra("android.provider.extra.APP_PACKAGE", CallAppApplication.get().getPackageName()).putExtra("android.provider.extra.CHANNEL_ID", getNotificationChannelIdWithPrefix(NotificationChannelEnum.BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL.getId()));
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        NotificationChannelEnum[] values;
        this.f25744i = (android.app.NotificationManager) CallAppApplication.get().getSystemService("notification");
        if (Build.VERSION.SDK_INT >= 26) {
            this.f25747m = new HashMap<>();
            for (NotificationChannelEnum notificationChannelEnum : NotificationChannelEnum.values()) {
                this.f25747m.put(Integer.valueOf(notificationChannelEnum.getId()), notificationChannelEnum);
            }
        }
    }

    public boolean isBirthdayChannelHasSound() {
        try {
            int importance = this.f25744i.getNotificationChannel(getNotificationChannelIdWithPrefix(NotificationChannelEnum.BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL.getId())).getImportance();
            boolean z = true;
            if (importance != 3) {
                z = importance == 4;
            }
            return z;
        } catch (NullPointerException e) {
            m28530f();
            return true;
        }
    }
}
