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
import androidx.core.app.g;
import androidx.core.app.o;
import androidx.core.e.b;
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
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationManager.class */
public class NotificationManager implements ManagedLifecycle {

    /* renamed from: b  reason: collision with root package name */
    public static int f14905b;
    private android.app.NotificationManager i;
    private HashMap<Integer, NotificationChannelEnum> m;
    private static final Object k = new Object();
    public static final Object e = new Object();
    private SimpleDateFormat f = new SimpleDateFormat(" - HH:mm");
    private SimpleDateFormat g = new SimpleDateFormat(" - HH:mm dd/MM");
    private long h = DateUtils.getTodayStartTime();

    /* renamed from: a  reason: collision with root package name */
    public Random f14906a = new Random();

    /* renamed from: c  reason: collision with root package name */
    public final AtomicInteger f14907c = new AtomicInteger(0);
    private long j = new Date().getTime();

    /* renamed from: d  reason: collision with root package name */
    public CurrentCallDynamicObject f14908d = new CurrentCallDynamicObject();
    private b[] l = {new b(50, 50), new b(15, 15), new b(1, 1), new b(9, 9), new b(8, 8), new b(4, 4), new b(12, 12), new b(17, 17), new b(40, 40), new b(10000, 20000), new b(100, 1000)};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.manager.NotificationManager$3  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationManager$3.class */
    public static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14914a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[MissedCallUtils.MissedCallNotificationType.values().length];
            f14914a = iArr;
            try {
                iArr[MissedCallUtils.MissedCallNotificationType.SINGLE_CALL_PRIVATE_NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14914a[MissedCallUtils.MissedCallNotificationType.SINGLE_CALL_NON_PRIVATE_NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f14914a[MissedCallUtils.MissedCallNotificationType.MULTIPLE_CALLS_ALL_PRIVATE_NUMBERS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f14914a[MissedCallUtils.MissedCallNotificationType.MULTIPLE_CALLS_ALL_SAME_CALLER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f14914a[MissedCallUtils.MissedCallNotificationType.MULTIPLE_CALLS_MIXED_CALLERS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationManager$ContactDataForNotification.class */
    public static abstract class ContactDataForNotification<T> {

        /* renamed from: a  reason: collision with root package name */
        public final T f14915a;

        /* renamed from: b  reason: collision with root package name */
        private ContactData f14916b;

        public ContactDataForNotification(T t) {
            this.f14915a = t;
        }

        public static String a(ContactDataForNotification contactDataForNotification) {
            String nameForNotificationLine;
            String str;
            if (StringUtils.b((CharSequence) contactDataForNotification.getNameForNotificationLine())) {
                str = "<b>" + StringUtils.j(nameForNotificationLine) + "</b>";
            } else {
                str = null;
            }
            String str2 = str;
            if (StringUtils.b((CharSequence) str)) {
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
                if (!CallLogUtils.b(sourcePhone.getRawNumber())) {
                    if (StringUtils.b((CharSequence) str2)) {
                        str3 = str2 + " (" + sourcePhone.e() + ")";
                    } else {
                        str3 = "(" + sourcePhone.e() + ")";
                    }
                }
            }
            String str4 = str3;
            if (StringUtils.a((CharSequence) str3)) {
                if (ViewUtils.isLocaleLTR()) {
                    str4 = "\u200e\u202a" + Activities.getString(2131886488) + "\u202c";
                } else {
                    str4 = "\u200f\u202b" + Activities.getString(2131886488) + "\u202c";
                }
            }
            return str4;
        }

        public static <T extends ContactDataForNotification> void a(List<T> list) {
            for (T t : list) {
                if (t.getSourcePhone() != null) {
                    String phone = t.getSourcePhone().toString();
                    if (StringUtils.b((CharSequence) phone)) {
                        t.setContactData(ContactUtils.a(phone));
                    }
                }
            }
        }

        public Intent getAddContactIntent() {
            ContactData contactData = this.f14916b;
            if (contactData == null) {
                return null;
            }
            return ContactUtils.a(contactData, true);
        }

        public String getCallappName() {
            ContactData contactData = this.f14916b;
            if (contactData == null) {
                return null;
            }
            return contactData.getFullName();
        }

        public ContactData getContactData() {
            return this.f14916b;
        }

        public String getNameForNotificationLine() {
            if (StringUtils.b((CharSequence) getCallappName())) {
                return StringUtils.j(getCallappName());
            }
            if (StringUtils.b((CharSequence) getSourceName())) {
                return StringUtils.j(getSourceName());
            }
            return null;
        }

        public String getPhotoUrl() {
            ContactData contactData = this.f14916b;
            if (contactData == null) {
                return null;
            }
            return contactData.getThumbnailUrl();
        }

        public abstract Date getSourceDate();

        public abstract String getSourceName();

        public abstract Phone getSourcePhone();

        public boolean isContactInDevice() {
            ContactData contactData = this.f14916b;
            return contactData != null && contactData.isContactInDevice();
        }

        public void setContactData(ContactData contactData) {
            this.f14916b = contactData;
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
        private final int id;
        private final int importance;
        private final CharSequence name;
        private final boolean showBadge;

        NotificationChannelEnum(int i, CharSequence charSequence, int i2, NotificationChannelGroupEnum notificationChannelGroupEnum, boolean z) {
            this.id = i;
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
            return this.id;
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
            return "NotificationChannelEnum{id=" + this.id + ", name=" + ((Object) this.name) + ", importance=" + this.importance + ", groupId='" + this.groupId + "', showBadge=" + this.showBadge + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
        
        private final String id;
        private final CharSequence name;

        NotificationChannelGroupEnum(String str, CharSequence charSequence) {
            this.id = str;
            this.name = charSequence;
        }

        public final String getId() {
            return this.id;
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

    private static PendingIntent a(int i, Phone phone, String str) {
        return PendingIntent.getService(Singletons.get().getApplication(), i, b(i, phone, str), 1073741824);
    }

    private static PendingIntent a(int i, String str, Phone phone, int i2) {
        String nameOrNumber = ContactUtils.a(phone).getNameOrNumber();
        Intent intent = new Intent(CallAppApplication.get(), NotificationPendingIntentHandlerService.class);
        intent.putExtra("future_target_index_key", i2);
        intent.setAction(str);
        intent.putExtra("com.callapp.contacts.EXTRA_FULL_NAME", nameOrNumber);
        intent.putExtra("notification_id", i);
        intent.putExtra("com.callapp.contacts.EXTRA_RAW_NUMBER", phone.getRawNumber());
        return PendingIntent.getService(Singletons.get().getApplication(), i, intent, 1073741824);
    }

    private static g.a a(int i, int i2, PendingIntent pendingIntent) {
        return new g.a(i, Activities.getString(i2), pendingIntent);
    }

    private ArrayList<g.a> a(int i, Phone phone, int i2, int i3, boolean z) {
        ArrayList<g.a> arrayList = new ArrayList<>(3);
        int[] iArr = z ? new int[]{2131231553, 2131231770, 2131231937} : new int[]{2131231552, 2131231769, 2131231419};
        PendingIntent a2 = a(i, phone, i3 == 3 ? "com.callapp.contacts.ACTION_CALL_FROM_MISSED_CALL_NOTIFICATION" : "com.callapp.contacts.ACTION_CALL_FROM_NOT_ANSWERED_NOTIFICATION");
        PendingIntent a3 = a(i, phone, i3 == 3 ? "com.callapp.contacts.ACTION_SEND_MESSAGE_FROM_MISSED_CALL_NOTIFICATION" : "com.callapp.contacts.ACTION_SEND_MESSAGE_FROM_NOT_ANSWERED_NOTIFICATION");
        PendingIntent a4 = a(i, i3 == 3 ? "com.callapp.contacts.ACTION_BTN_REMINDER_FROM_MISSED_CALL_NOTIFICATION" : "com.callapp.contacts.ACTION_BTN_REMINDER_FROM_NOT_ANSWERED_NOTIFICATION", phone, i2);
        arrayList.add(a(iArr[0], i3 == 3 ? 2131886440 : 2131886441, a2));
        arrayList.add(a(iArr[1], 2131886449, a3));
        arrayList.add(a(iArr[2], 2131887565, a4));
        return arrayList;
    }

    private void a(int i, g.e eVar, int i2, Phone phone, String str) {
        Intent intent;
        ContactData a2 = Prefs.cJ.get().booleanValue() ? ContactUtils.a(phone) : null;
        String str2 = null;
        if (a2 != null) {
            str2 = !Prefs.cJ.get().booleanValue() ? null : a2.getThumbnailUrl();
        }
        ExtractedInfo build = ExtractedInfo.Builder.getBuilderAccordingToOrigin(phone, IMDataExtractionUtils.RecognizedPersonOrigin.CALL).build();
        if (!Prefs.cJ.get().booleanValue() || i2 != 1) {
            intent = new Intent(CallAppApplication.get(), WhoViewedMyProfileActivity.class);
        } else {
            intent = ContactDetailsActivity.createIntent(CallAppApplication.get(), 0L, phone.getRawNumber(), build, true, null, "NotificationWhoViewedMyProfile", null);
            intent.putExtra(ContactDetailsActivity.EXTRA_FULL_NAME, str);
            intent.putExtra(ContactDetailsActivity.EXTRA_WHO_VIEW_PROFILE_NOTIFICATION, true);
        }
        intent.putExtra(Constants.WHO_VIEWED_MY_NOTIFICATION_CLICKED, true);
        a((Object) ContactsListActivity.class, intent, eVar, 12, true);
        Bitmap a3 = this.f14908d.a(str2, Prefs.cJ.get().booleanValue() ? 2131232143 : 2131232118, i, a2);
        if (a3 != null) {
            eVar.a(a3);
        }
        eVar.a(2131231796);
        eVar.a(true);
        eVar.l = 1;
        eVar.A = "call";
        eVar.a(a3);
        eVar.C = ThemeUtils.getColor(2131099784);
        a(eVar, str, i2);
        a(eVar, 15, "com.callapp.contacts.ACTION_DISMISS_FROM_WHO_VIEWED_MY_PROFILE", i);
    }

    private static void a(Context context, g.e eVar, long j) {
        Intent type = new Intent(CallAppApplication.get(), ContactsListActivity.class).setType("vnd.android.cursor.dir/calls");
        type.putExtra("future_target_index_key", j);
        type.putExtra("EXTRA_MISSED_CALL_NOTIFICATION_CLICKED", true);
        eVar.f = PendingIntent.getActivity(context, 12, type, 134217728);
    }

    public static void a(g.e eVar, int i, String str, int i2) {
        Intent intent = new Intent(CallAppApplication.get(), NotificationPendingIntentHandlerService.class);
        intent.putExtra("future_target_index_key", i2);
        intent.setAction(str);
        intent.putExtra("notification_id", i);
        eVar.a(PendingIntent.getService(Singletons.get().getApplication(), i, intent, 1073741824));
    }

    public static void a(g.e eVar, Bitmap bitmap, List<g.a> list) {
        if (Singletons.get().getWearableClientHandler().isWearConnected()) {
            g.j a2 = new g.j().a();
            a2.f1749a = ImageUtils.a(bitmap);
            if (CollectionUtils.b(list)) {
                a2.a(list);
            }
            eVar.a(a2);
        }
    }

    private void a(g.e eVar, MissedCallUtils.MissedCallNotificationType missedCallNotificationType, List<MissedCallUtils.MissedCallDataForNotification> list, int i) {
        String str;
        String str2;
        String str3;
        String a2 = MissedCallUtils.a(list.get(0));
        Phone sourcePhone = list.get(0).getSourcePhone();
        String str4 = "";
        if (sourcePhone != null) {
            str = "(" + list.get(0).getSourcePhone().e() + ")";
        } else {
            str = "";
        }
        String a3 = a(list.get(0).getSourceDate());
        int i2 = AnonymousClass3.f14914a[missedCallNotificationType.ordinal()];
        if (i2 == 1) {
            str2 = a2 + org.apache.commons.lang3.StringUtils.SPACE + a3;
            str4 = i == 3 ? Activities.getString(2131887701) : Activities.getString(2131887702);
        } else if (i2 != 2) {
            if (i2 == 3 || i2 == 4 || i2 == 5) {
                if (i == 3) {
                    str4 = Activities.getString(2131887255);
                    str3 = Activities.a(2131887256, Integer.valueOf(list.size()));
                } else {
                    str4 = Activities.getString(2131887318);
                    str3 = Activities.a(2131887317, Integer.valueOf(list.size()));
                }
                a(eVar, str3, list);
                str2 = str3;
            } else {
                str2 = "";
            }
            eVar.a(str4);
            eVar.b(str2);
        } else {
            str2 = a2 + org.apache.commons.lang3.StringUtils.SPACE + str + org.apache.commons.lang3.StringUtils.SPACE + a3;
            str4 = i == 3 ? Activities.getString(2131887701) : Activities.getString(2131887702);
        }
        eVar.a(str4);
        eVar.b(str2);
    }

    private static void a(g.e eVar, String str, int i) {
        String string = Activities.getString(2131888222);
        String a2 = Prefs.cJ.get().booleanValue() ? i == 1 ? Activities.a(2131888221, str) : Activities.a(2131888218, str, Integer.valueOf(i - 1)) : i == 1 ? Activities.a(2131888220, Integer.valueOf(i)) : Activities.a(2131888219, Integer.valueOf(i));
        eVar.a(string);
        eVar.b(a2);
    }

    private void a(g.e eVar, String str, String str2, RemoteViews remoteViews, long j, boolean z) {
        boolean z2 = true;
        boolean z3 = PhoneManager.get().isDefaultPhoneApp() && PhoneStateManager.get().shouldConferenceScreenAppear();
        if (IncognitoCallManager.get().isIncognito(PhoneManager.get().a(str)) || !PhoneManager.get().a(PhoneManager.get().a(str))) {
            z2 = false;
        }
        String str3 = "";
        if (StringUtils.b((CharSequence) str)) {
            eVar.a(2131231915);
            remoteViews.setTextViewText(2131363388, Activities.getString(2131886392));
        } else {
            eVar.a(2131231555);
            remoteViews.setTextViewText(2131363388, "");
        }
        eVar.m = false;
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            this.f14908d.a(z3, z2, j, z);
        }
        if (!StringUtils.a((CharSequence) str2)) {
            str3 = str2;
        } else if (!StringUtils.a((CharSequence) this.f14908d.getName())) {
            str3 = this.f14908d.getName();
        } else if (!StringUtils.a((CharSequence) str)) {
            str3 = str;
        }
        if (z3) {
            str3 = Activities.getString(2131886626);
        } else if (z2) {
            str3 = Activities.getString(2131888153);
        }
        remoteViews.setTextViewText(2131363391, str3);
        a(str3, this.f14908d.getPhotoBitmap(), str);
        remoteViews.setImageViewBitmap(2131363390, this.f14908d.getPhotoBitmap());
    }

    private <T extends ContactDataForNotification> void a(g.e eVar, String str, List<T> list) {
        if (list != null && list.size() > 1 && Build.VERSION.SDK_INT >= 16) {
            g.C0042g gVar = new g.C0042g();
            gVar.a(str);
            for (T t : list) {
                gVar.b(Html.fromHtml(ContactDataForNotification.a(t) + a(t.getSourceDate())));
            }
            eVar.a(gVar);
        }
    }

    private <T extends ContactDataForNotification> void a(g.e eVar, String str, Map<IMDataExtractionUtils.RecognizedPersonOrigin, Integer> map, Map<IMDataExtractionUtils.RecognizedPersonOrigin, List<IMDataExtractionUtils.ImDataForCallappNotification>> map2) {
        if (Build.VERSION.SDK_INT >= 16) {
            g.C0042g gVar = new g.C0042g();
            gVar.a(Html.fromHtml(str));
            for (Map.Entry<IMDataExtractionUtils.RecognizedPersonOrigin, Integer> entry : map.entrySet()) {
                StringBuilder sb = new StringBuilder("<b>");
                sb.append(Activities.a(2131887009, entry.getValue(), entry.getKey().getDisplayName()));
                sb.append("</b>");
                gVar.b(Html.fromHtml(sb.toString()));
                List<IMDataExtractionUtils.ImDataForCallappNotification> list = map2.get(entry.getKey());
                if (CollectionUtils.b(list)) {
                    for (int i = 0; i < list.size(); i++) {
                        gVar.b(Html.fromHtml(ContactDataForNotification.a(list.get(i)) + a(list.get(i).getSourceDate())));
                    }
                }
            }
            eVar.a(gVar);
        }
    }

    private void a(MissedCallUtils.MissedCallsListParams missedCallsListParams, int i, g.e eVar, List<MissedCallUtils.MissedCallDataForNotification> list, int i2, int i3) {
        Bitmap bitmap;
        MissedCallUtils.MissedCallNotificationType a2 = MissedCallUtils.a(missedCallsListParams);
        MissedCallUtils.MissedCallDataForNotification missedCallDataForNotification = list.get(0);
        String photoUrl = missedCallDataForNotification.getPhotoUrl();
        Phone phone = ((CallLogUtils.MissedCallData) missedCallDataForNotification.f14915a).f15872c;
        Bitmap a3 = this.f14908d.a(photoUrl, i, missedCallDataForNotification.getContactData());
        ArrayList<g.a> a4 = a(i3, phone, i, i2, true);
        ExtractedInfo build = ExtractedInfo.Builder.getBuilderAccordingToOrigin(phone, IMDataExtractionUtils.RecognizedPersonOrigin.CALL).build();
        ArrayList<g.a> a5 = a(i3, phone, i, i2, false);
        if (a2.equals(MissedCallUtils.MissedCallNotificationType.SINGLE_CALL_NON_PRIVATE_NUMBER) || a2.equals(MissedCallUtils.MissedCallNotificationType.MULTIPLE_CALLS_ALL_SAME_CALLER)) {
            Intent type = new Intent(CallAppApplication.get(), ContactsListActivity.class).setType("vnd.android.cursor.dir/calls");
            Intent createIntent = ContactDetailsActivity.createIntent(CallAppApplication.get(), 0L, phone.getRawNumber(), build, true, null, "NotificationMissedCall", ENTRYPOINT.MISSED_CALL_NOT_ANSWERED);
            type.putExtra(Constants.EXTRA_PHONE_NUMBER, phone.a());
            String str = "EXTRA_MISSED_CALL_NOTIFICATION_CLICKED";
            type.putExtra(i2 == 3 ? "EXTRA_MISSED_CALL_NOTIFICATION_CLICKED" : "EXTRA_NOT_ANSWERED_NOTIFICATION_CLICKED", true);
            if (i2 != 3) {
                str = "EXTRA_NOT_ANSWERED_NOTIFICATION_CLICKED";
            }
            createIntent.putExtra(str, true);
            createIntent.putExtra("future_target_index_key", i);
            a((Object) type, createIntent, eVar, 12, false);
            for (g.a aVar : a5) {
                eVar.a(aVar);
            }
        } else {
            a(CallAppApplication.get(), eVar, i);
        }
        if (a3 != null) {
            eVar.a(a3);
            bitmap = a3;
        } else {
            bitmap = null;
        }
        eVar.a(i2 == 3 ? 2131231914 : 2131232117).a(true);
        eVar.l = 1;
        eVar.A = "call";
        eVar.a(a3);
        eVar.C = ThemeUtils.getColor(2131099784);
        a(eVar, a2, list, i2);
        a(eVar, bitmap, a4);
        a(eVar, i3, "com.callapp.contacts.ACTION_DISMISS_FROM_MISSED_CALL_NOTIFICATION", i);
    }

    public static void a(Object obj, Intent intent, g.e eVar, int i, boolean z) {
        o a2 = o.a(Singletons.get().getApplication());
        if (obj instanceof Class) {
            if (z) {
                a2.b(intent);
            } else {
                a2.a((Class) obj);
                a2.a(intent);
            }
        } else if (obj instanceof Intent) {
            a2.a((Intent) obj);
            a2.a(intent);
        }
        eVar.f = a2.a(i, 134217728);
    }

    private void a(String str, Bitmap bitmap, String str2) {
        byte[] b2;
        if (!this.f14908d.isBlocked() || Prefs.bM.get() == BlockManager.BlockMethod.SILENT) {
            WearableClientHandler wearableClientHandler = Singletons.get().getWearableClientHandler();
            if (wearableClientHandler.isWearConnected()) {
                if (!(bitmap == null || (b2 = ImageUtils.b(bitmap)) == null)) {
                    if (wearableClientHandler.f16387a == null) {
                        wearableClientHandler.f16387a = b2;
                        wearableClientHandler.a("/callapp/image_path", wearableClientHandler.f16387a);
                    } else if (!Arrays.equals(b2, wearableClientHandler.f16387a)) {
                        wearableClientHandler.f16387a = b2;
                        wearableClientHandler.a("/callapp/image_path", wearableClientHandler.f16387a);
                    }
                }
                if (StringUtils.b((CharSequence) str)) {
                    if (wearableClientHandler.f16388b == null) {
                        wearableClientHandler.f16388b = str;
                        wearableClientHandler.a("/callapp/name_path", wearableClientHandler.f16388b.getBytes());
                    } else if (!StringUtils.b(wearableClientHandler.f16388b, str)) {
                        wearableClientHandler.f16388b = str;
                        wearableClientHandler.a("/callapp/name_path", wearableClientHandler.f16388b.getBytes());
                    }
                }
                wearableClientHandler.f16389c = str2;
            }
        }
    }

    private static Intent b(int i, Phone phone, String str) {
        Intent intent = new Intent(Singletons.get().getApplication(), NotificationPendingIntentHandlerService.class);
        setDummyData(intent);
        intent.setAction(str);
        intent.putExtra("notification_id", i);
        intent.putExtra("com.callapp.contacts.EXTRA_RAW_NUMBER", phone.getRawNumber());
        return intent;
    }

    public static void c() {
        Class<?> cls;
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                TelecomManager telecomManager = (TelecomManager) Singletons.a("telecom");
                if (telecomManager != null) {
                    try {
                        telecomManager.cancelMissedCallsNotification();
                    } catch (IllegalArgumentException | NoSuchMethodError | SecurityException e2) {
                        CLog.a(PhoneManager.class, e2, "Failed to cancelNativeMissedCallsNotification");
                    }
                }
            } else {
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
                if (cls != null) {
                    Object invoke2 = cls.getDeclaredMethod("asInterface", Class.forName("android.os.IBinder")).invoke(null, invoke);
                    if (invoke2 != null) {
                        invoke2.getClass().getMethod("cancelNativeMissedCallsNotification", new Class[0]).invoke(invoke2, new Object[0]);
                    } else {
                        CLog.a(NotificationManager.class, "Telephony service is null, can't call cancelNativeMissedCallsNotification");
                    }
                } else {
                    CLog.a(NotificationManager.class, "Unable to locate ITelephony.Stub class!");
                }
            }
        } catch (ClassNotFoundException e3) {
            CLog.a(NotificationManager.class, "Failed to clear missed calls notification due to ClassNotFoundException!", e3);
        } catch (NoSuchMethodException e4) {
            CLog.a(NotificationManager.class, "Failed to clear missed calls notification due to NoSuchMethodException!", e4);
        } catch (InvocationTargetException e5) {
            CLog.a(NotificationManager.class, "Failed to clear missed calls notification due to InvocationTargetException!", e5);
        } catch (Throwable th) {
            CLog.a(NotificationManager.class, "Failed to clear missed calls notification due to Throwable!", th);
        }
    }

    public static void d() {
        PhoneStateManager.blockedCallsList.clear();
        f14905b = 0;
    }

    private boolean d(int i) {
        b[] bVarArr;
        for (b bVar : this.l) {
            if (i >= ((Integer) bVar.f1889a).intValue() && i <= ((Integer) bVar.f1890b).intValue()) {
                return true;
            }
        }
        return false;
    }

    private void f() {
        NotificationChannel notificationChannel = new NotificationChannel(getNotificationChannelIdWithPrefix(NotificationChannelEnum.BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL.getId()), NotificationChannelEnum.BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL.getName(), NotificationChannelEnum.BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL.getImportance());
        notificationChannel.setSound(Uri.parse("android.resource://" + CallAppApplication.get().getPackageName() + "/raw/2131820545"), new AudioAttributes.Builder().setUsage(5).build());
        this.i.createNotificationChannel(notificationChannel);
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
        return this.m.get(Integer.valueOf(i2));
    }

    private String getNotificationChannelIdWithPrefix(int i) {
        return Prefs.am.get() + org.apache.commons.lang3.StringUtils.SPACE + i;
    }

    public static void setDummyData(Intent intent) {
        intent.setData(Uri.parse(Long.toString(System.currentTimeMillis())));
    }

    private void setNotificationAsSilent(Notification notification) {
        notification.defaults = 4;
        notification.sound = null;
    }

    public final g.e a(int i, int i2, boolean z, String str) {
        g.e a2 = a(NotificationChannelEnum.SYNC_PROGRESS_NOTIFICATION_CHANNEL);
        a2.a(Activities.getString(2131887768)).a(2131231569);
        a2.a(2, true);
        Intent intent = new Intent(Singletons.get().getApplication(), ContactsListActivity.class);
        intent.putExtra("from_sync_progress", true);
        a((Object) ContactsListActivity.class, intent, a2, 0, false);
        if (!z) {
            a2.b(str);
        }
        a2.r = i;
        a2.s = i2;
        a2.t = z;
        return a2;
    }

    public final g.e a(NotificationChannelEnum notificationChannelEnum) {
        g.e eVar = new g.e(Singletons.get().getApplication(), getNotificationChannelIdWithPrefix(notificationChannelEnum.getId()));
        eVar.C = ThemeUtils.a(CallAppApplication.get().getBaseContext(), 2131099784);
        return eVar;
    }

    public final g.e a(String str, String str2, boolean z) {
        Intent intent = new Intent();
        g.e a2 = a(NotificationChannelEnum.INCALL_NOTIFICATION_CHANNEL);
        synchronized (k) {
            long deviceId = this.f14908d.getContact() != null ? this.f14908d.getContact().getDeviceId() : 0L;
            String fullName = (this.f14908d.getContact() == null || this.f14908d.getContact().isIncognito() || IncognitoCallManager.get().isIncognito(this.f14908d.getContact())) ? "" : this.f14908d.getContact().getFullName();
            intent.setAction("com.callapp.contacts.ACTION_START_CALL_SCREEN").setComponent(new ComponentName(Singletons.get().getApplication(), CallAppService.class));
            setDummyData(intent);
            intent.putExtra(ContactDetailsOverlayView.EXTRA_IS_FROM_NOTIFICATION, true);
            intent.putExtra(Constants.EXTRA_IS_INCOMING, false);
            intent.putExtra(PostCallActivity.EXTRA_IS_BLOCKED, z);
            if (IncognitoCallManager.get().isIncognito(PhoneManager.get().a(str))) {
                intent.putExtra(BaseContactDetailsActivity.EXTRA_INCOGNITO_CALL, true);
            }
            if (!(this.f14908d.getContact() == null || this.f14908d.getContact().getGenomeData() == null)) {
                intent.putExtra(PostCallActivity.EXTRA_IS_SPAMMER, this.f14908d.getContact().isSpammer());
            }
            if (StringUtils.b((CharSequence) str)) {
                ContactDetailsActivity.fillIntentWithCallData(intent, deviceId, str, null, ExtractedInfo.Builder.getBuilderAccordingToOrigin(PhoneManager.get().a(str), IMDataExtractionUtils.RecognizedPersonOrigin.CALL).build(), false, null, null);
                intent.putExtra(ContactDetailsActivity.EXTRA_FULL_NAME, fullName);
            }
        }
        PendingIntent service = PendingIntent.getService(Singletons.get().getApplication(), 30, intent, 134217728);
        CurrentCallDynamicObject currentCallDynamicObject = this.f14908d;
        boolean z2 = (currentCallDynamicObject == null || currentCallDynamicObject.getContact() == null || !this.f14908d.getContact().isSpammer()) ? false : true;
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
        a(a2, str, str2, remoteViews, time, z2);
        a(a2, str, str2, remoteViews2, time, z2);
        Bundle bundle = new Bundle();
        bundle.putLong("time_stamp", time);
        a2.B = bundle;
        a2.a(2, true);
        a2.l = 2;
        a2.A = "call";
        a2.D = 1;
        a2.a((Uri) null);
        a2.f = service;
        Intent action = new Intent(Singletons.get().getApplication(), NotificationPendingIntentHandlerService.class).setAction("com.callapp.contacts.ACTION_END_CALL");
        setDummyData(action);
        PendingIntent service2 = PendingIntent.getService(Singletons.get().getApplication(), 20, action, 134217728);
        Intent action2 = new Intent(Singletons.get().getApplication(), NotificationPendingIntentHandlerService.class).setAction("com.callapp.contacts.ACTION_TOGGLE_AUDIO");
        setDummyData(action2);
        PendingIntent service3 = PendingIntent.getService(Singletons.get().getApplication(), 40, action2, 134217728);
        int i = 2131231700;
        String string = Activities.getString(2131888047);
        if (PhoneManager.get().isDefaultPhoneApp()) {
            int audioMode = AudioModeProvider.get().getAudioMode();
            if (audioMode != 2) {
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
                a2.G = remoteViews;
                a2.F = remoteViews2;
                return a2;
            }
            string = Activities.getString(2131888044);
            i = 2131231697;
            remoteViews.setOnClickPendingIntent(2131362163, service2);
            remoteViews.setOnClickPendingIntent(2131362170, service3);
            remoteViews.setTextViewText(2131362163, Activities.getString(2131886223));
            remoteViews.setTextViewText(2131362170, string);
            remoteViews2.setInt(2131362170, "setImageResource", i);
            remoteViews2.setOnClickPendingIntent(2131362163, service2);
            remoteViews2.setOnClickPendingIntent(2131362170, service3);
            a2.G = remoteViews;
            a2.F = remoteViews2;
            return a2;
        } else if (BluetoothHeadsetConnectivityManager.isUsingBT()) {
            string = Activities.getString(2131886280);
            i = 2131231697;
            remoteViews.setOnClickPendingIntent(2131362163, service2);
            remoteViews.setOnClickPendingIntent(2131362170, service3);
            remoteViews.setTextViewText(2131362163, Activities.getString(2131886223));
            remoteViews.setTextViewText(2131362170, string);
            remoteViews2.setInt(2131362170, "setImageResource", i);
            remoteViews2.setOnClickPendingIntent(2131362163, service2);
            remoteViews2.setOnClickPendingIntent(2131362170, service3);
            a2.G = remoteViews;
            a2.F = remoteViews2;
            return a2;
        } else {
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
            a2.G = remoteViews;
            a2.F = remoteViews2;
            return a2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a(Date date) {
        return date.getTime() > this.h ? this.f.format(date) : this.g.format(date);
    }

    public List<g.a> a(int i, Phone phone, String str, long j, boolean z) {
        PendingIntent a2 = a(i, phone, "com.callapp.contacts.ACTION_CALL_REMINDER_CALL");
        PendingIntent a3 = a(i, phone, "com.callapp.contacts.ACTION_CALL_REMINDER_SEND_MESSAGE");
        Intent intent = new Intent(Singletons.get().getApplication(), NotificationPendingIntentHandlerService.class);
        intent.setAction("com.callapp.contacts.ACTION_CALL_SNOOZE");
        intent.putExtra("com.callapp.contacts.EXTRA_FULL_NAME", str);
        intent.putExtra("notification_id", i);
        intent.putExtra("com.callapp.contacts.EXTRA_RAW_NUMBER", phone.getRawNumber());
        intent.putExtra("call_reminder_notification_time", j);
        PendingIntent service = PendingIntent.getService(Singletons.get().getApplication(), i, intent, 1073741824);
        ArrayList arrayList = new ArrayList(3);
        int[] iArr = z ? new int[]{2131231553, 2131231770, 2131231937} : new int[]{2131231552, 2131231769, 2131231419};
        arrayList.add(a(iArr[0], 2131886440, a2));
        arrayList.add(a(iArr[1], 2131886449, a3));
        arrayList.add(a(iArr[2], 2131886450, service));
        return arrayList;
    }

    public final void a() {
        Intent intent = new Intent(CallAppApplication.get(), SetupWizardActivity.class);
        PendingIntent.getActivity(Singletons.get().getApplication(), 0, intent, 134217728).cancel();
        PendingIntent activity = PendingIntent.getActivity(Singletons.get().getApplication(), 0, intent, 134217728);
        g.e a2 = a(NotificationChannelEnum.SETUP_INPROGRESS_NOTIFICATION_CHANNEL);
        g.e b2 = a2.a(2131231569).a(Activities.getString(2131887652)).b(Activities.getString(2131887651));
        b2.a(2, true);
        b2.f = activity;
        a(9, a2);
    }

    public final void a(int i) {
        if (i == 12) {
            synchronized (k) {
                this.f14908d.a("", "", (String) null, (ContactData) null);
                this.f14908d.a(0);
                this.f14908d.a(-1);
            }
        }
        this.i.cancel(i);
    }

    public final void a(int i, int i2, String str) {
        a(8, a(i, i2, false, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(g.e eVar, int i, IMDataExtractionUtils.ImDataForCallappNotification imDataForCallappNotification, int i2) {
        PendingIntent pendingIntent;
        Phone a2 = PhoneManager.get().a(((ExtractedInfo) imDataForCallappNotification.f14915a).phoneAsRaw);
        Intent intent = new Intent(CallAppApplication.get(), NotificationPendingIntentHandlerService.class);
        intent.setAction("com.callapp.contacts.ACTION_OPEN_CD_FOR_IM_IDENTIFIED_NUMBER_NOTIFICATION");
        intent.putExtra("notification_id", 50);
        intent.putExtra("future_target_index_key", i2);
        ContactDetailsActivity.fillIntentWithCallData(intent, 0L, a2.getRawNumber(), null, null, false, null, ENTRYPOINT.CALLAPP_PLUS);
        setDummyData(intent);
        eVar.f = PendingIntent.getService(Singletons.get().getApplication(), 0, intent, 134217728);
        a(eVar, 50, "com.callapp.contacts.ACTION_DISMISS_FROM_IM_IDENTIFIED_NUMBER_NOTIFICATION", i2);
        ArrayList<g.a> arrayList = new ArrayList(3);
        Phone a3 = PhoneManager.get().a(((ExtractedInfo) imDataForCallappNotification.f14915a).phoneAsRaw);
        int[] iArr = {2131231552, 2131231769, 2131231409};
        arrayList.add(a(iArr[0], 2131886440, a(50, a3, "com.callapp.contacts.ACTION_CALL_FROM_IM_IDENTIFIED_NUMBER_NOTIFICATION")));
        if (((ExtractedInfo) imDataForCallappNotification.f14915a).recognizedPersonOrigin == IMDataExtractionUtils.RecognizedPersonOrigin.SMS_MESSAGE) {
            pendingIntent = a(50, a3, "com.callapp.contacts.ACTION_SEND_TEXT_MESSAGE");
        } else {
            Intent b2 = b(50, a3, "com.callapp.contacts.ACTION_SEND_MESSAGE_FROM_IM_IDENTIFIED_NUMBER_NOTIFICATION");
            b2.putExtra("extra_im_package", ((ExtractedInfo) imDataForCallappNotification.f14915a).recognizedPersonOrigin.pkgName);
            b2.putExtra("extra_im_type", ((ExtractedInfo) imDataForCallappNotification.f14915a).recognizedPersonOrigin.senderType);
            b2.putExtra("com.callapp.contacts.EXTRA_RAW_NUMBER", a3.getRawNumber());
            pendingIntent = PendingIntent.getService(Singletons.get().getApplication(), 50, b2, 1073741824);
        }
        arrayList.add(a(iArr[1], 2131886449, pendingIntent));
        if (!imDataForCallappNotification.isContactInDevice()) {
            int i3 = iArr[2];
            Intent intent2 = new Intent(Singletons.get().getApplication(), NotificationPendingIntentHandlerService.class);
            setDummyData(intent2);
            intent2.setAction("com.callapp.contacts.ACTION_CREATE_NEW_CONTACT_FROM_IDENTIFIED_NUMBER_NOTIFICATION");
            intent2.putExtra("android.intent.extra.INTENT", imDataForCallappNotification.getAddContactIntent());
            intent2.putExtra("notification_id", 50);
            arrayList.add(a(i3, 2131886205, PendingIntent.getService(Singletons.get().getApplication(), 50, intent2, 134217728)));
        }
        for (g.a aVar : arrayList) {
            eVar.a(aVar);
        }
    }

    public final void a(CallData callData, ContactData contactData, boolean z, boolean z2) {
        String rawNumber;
        boolean z3;
        String str;
        if (Prefs.aW.get().booleanValue()) {
            synchronized (k) {
                long time = new Date().getTime();
                rawNumber = callData != null ? callData.getNumber().getRawNumber() : "";
                str = null;
                String j = (contactData == null || contactData.isIncognito() || IncognitoCallManager.get().isIncognito(contactData)) ? null : StringUtils.j(contactData.getFullName());
                String thumbnailUrl = contactData != null ? contactData.getThumbnailUrl() : ImageUtils.getResourceUri(2131232143);
                z3 = true;
                boolean z4 = !rawNumber.equals(this.f14908d.getNumber());
                if (z4) {
                    this.f14908d.a(rawNumber, j, thumbnailUrl, contactData);
                } else {
                    if (this.f14908d.getContact() != null && (contactData == null || !StringUtils.b((CharSequence) contactData.getThumbnailUrl()))) {
                        if (z && contactData != null && StringUtils.a((CharSequence) contactData.getThumbnailUrl())) {
                            this.f14908d.a((String) null, time);
                            this.f14908d.a((Bitmap) null, time);
                            this.f14908d.a(0);
                        }
                    }
                    this.f14908d.setContact(contactData);
                }
                if (!z2 && !z4 && ((!StringUtils.a((CharSequence) this.f14908d.getPhotoUrl()) || !z) && ((!StringUtils.b((CharSequence) this.f14908d.getPhotoUrl()) || StringUtils.b(this.f14908d.getPhotoUrl(), thumbnailUrl)) && (!StringUtils.b((CharSequence) j) || j.equals(this.f14908d.getName()))))) {
                    rawNumber = null;
                    z3 = false;
                }
                if (z2) {
                    this.f14908d.setName(Activities.getString(2131886427));
                } else if (StringUtils.b((CharSequence) j)) {
                    this.f14908d.setName(j);
                }
                CurrentCallDynamicObject currentCallDynamicObject = this.f14908d;
                boolean z5 = false;
                if (callData != null) {
                    z5 = false;
                    if (callData.isBlocked()) {
                        z5 = true;
                    }
                }
                currentCallDynamicObject.setBlocked(z5);
                str = this.f14908d.getName();
            }
            if (!z3) {
                return;
            }
            if (PhoneStateManager.get().isIncoming()) {
                a(12, b(rawNumber, str, this.f14908d.isBlocked()));
            } else {
                a(12, a(rawNumber, str, this.f14908d.isBlocked()));
            }
        }
    }

    public final void a(String str) {
        String string = Activities.getString(2131886234);
        String a2 = Activities.a(2131887339, str);
        g.e a3 = a(NotificationChannelEnum.BACKUP_NOTIFICATION_CHANNEL);
        PendingIntent activity = PendingIntent.getActivity(Singletons.get().getApplication(), 0, BackupUtils.getBackupSettingsIntent(), 134217728);
        g.e a4 = a3.a(string).b(a2).a(2131231569).a(BitmapFactory.decodeResource(CallAppApplication.get().getResources(), 2131231454)).a(true);
        a4.f = activity;
        a4.Q = true;
        a(60, a3);
    }

    public final void a(String str, String str2) {
        FeedbackManager.get().a("send who viewed my profile notification", 80);
        AnalyticsManager.get().a(Constants.WHO_VIEWED_MY_PROFILE_CATEGORY, "ViewProfile_notification_receive");
        WhoViewedMyProfileDataManager.e();
        Phone a2 = PhoneManager.get().a(str);
        int incrementAndGet = this.f14907c.incrementAndGet();
        g.e a3 = a(NotificationChannelEnum.PROFILE_VIEWED_NOTIFICATION_CHANNEL);
        a(incrementAndGet, a3, WhoViewedMyProfileDataManager.getViewerNotificationCount(), a2, str2);
        a3.k = WhoViewedMyProfileDataManager.getViewerNotificationCount();
        a(15, a3);
    }

    public final void a(List<Phone> list) {
        String str;
        CharSequence charSequence;
        int i;
        String str2;
        Bitmap a2;
        if (!CollectionUtils.a(list) && Prefs.cf.get().booleanValue()) {
            CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(list);
            f14905b++;
            CallAppApplication callAppApplication = CallAppApplication.get();
            g.e a3 = a(NotificationChannelEnum.CALL_BLOCKED_NOTIFICATION_CHANNEL);
            Phone phone = (Phone) copyOnWriteArrayList.get(copyOnWriteArrayList.size() - 1);
            ContactData a4 = ContactUtils.a(phone);
            boolean a5 = PhoneManager.get().a(phone);
            if (a4.isIncognito()) {
                charSequence = a4.getPhone().b();
                str = ImageUtils.getResourceUri(2131232150);
            } else if (a5) {
                charSequence = Activities.getString(2131888153);
                str = ImageUtils.getResourceUri(2131231612);
            } else {
                charSequence = a4.getNameOrNumber();
                str = a4.getThumbnailUrl();
            }
            int incrementAndGet = this.f14907c.incrementAndGet();
            if (StringUtils.b((CharSequence) str) && (a2 = this.f14908d.a(str, incrementAndGet, a4)) != null) {
                try {
                    a(a3, a2, (List<g.a>) null);
                } catch (RuntimeException e2) {
                    CLog.a(getClass(), "Could not generate notification bitmap for in-call", e2);
                }
                a3.a(a2);
            }
            if (f14905b == 1) {
                a3.a(Activities.getString(2131887700));
                a3.b(charSequence);
            } else {
                a3.a(Activities.getString(2131887254));
            }
            Intent a6 = StringUtils.a(charSequence) ? ContactsListActivity.a(callAppApplication) : ContactDetailsActivity.createIntent(callAppApplication, 0L, phone.getRawNumber(), ExtractedInfo.Builder.getBuilderAccordingToOrigin(phone, IMDataExtractionUtils.RecognizedPersonOrigin.CALL).build(), false, null, "NotificationBlock", null);
            g.C0042g gVar = new g.C0042g();
            int i2 = f14905b;
            if (i2 == 1) {
                gVar.a(Activities.getString(2131886347));
            } else {
                gVar.a(Activities.a(2131887252, Integer.valueOf(i2)));
            }
            HashSet hashSet = new HashSet();
            for (int size = copyOnWriteArrayList.size() - 1; size >= 0; size--) {
                Phone phone2 = (Phone) copyOnWriteArrayList.get(size);
                hashSet.add(phone2);
                ContactData a7 = ContactUtils.a(phone2);
                boolean isIncognito = a7.isIncognito();
                boolean isVoiceMail = a7.isVoiceMail();
                if (isIncognito) {
                    str2 = a7.getPhone().b();
                } else if (isVoiceMail) {
                    str2 = Activities.getString(2131888153);
                } else {
                    str2 = a7.getNameOrNumber();
                    if (StringUtils.a(charSequence)) {
                        str2 = Activities.getString(2131886488);
                    }
                }
                gVar.b(Activities.a(2131886380, str2));
            }
            a3.a(gVar);
            if (hashSet.size() == 1 && f14905b == 1) {
                a3.b(charSequence);
            } else if (hashSet.size() != 1 || (i = f14905b) <= 1) {
                a3.b(Activities.a(2131887252, Integer.valueOf(f14905b)));
            } else {
                a3.b(Activities.a(2131887253, Integer.valueOf(i), charSequence));
            }
            a6.putExtra("EXTRA_BLOCKED_CALL_NOTIFICATION_CLICKED", true);
            a6.putExtra("EXTRA_ASK_OPEN_RATE_US", true);
            a6.putExtra("future_target_index_key", incrementAndGet);
            a3.a(2131231912).f = PendingIntent.getActivity(callAppApplication, 0, a6, 134217728);
            a(a3, 1, "com.callapp.contacts.ACTION_DISMISS_FROM_BLOCKED_CALL_NOTIFICATION", incrementAndGet);
            a3.b(-1);
            a3.a(true);
            a(1, a3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(List<IMDataExtractionUtils.ImDataForCallappNotification> list, g.e eVar) {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            Integer num = hashMap.get(((ExtractedInfo) list.get(i2).f14915a).recognizedPersonOrigin);
            if (num == null) {
                hashMap.put(((ExtractedInfo) list.get(i2).f14915a).recognizedPersonOrigin, 1);
            } else {
                hashMap.put(((ExtractedInfo) list.get(i2).f14915a).recognizedPersonOrigin, Integer.valueOf(num.intValue() + 1));
            }
            i++;
            List<IMDataExtractionUtils.ImDataForCallappNotification> list2 = hashMap2.get(((ExtractedInfo) list.get(i2).f14915a).recognizedPersonOrigin);
            List<IMDataExtractionUtils.ImDataForCallappNotification> list3 = list2;
            if (CollectionUtils.a(list2)) {
                list3 = new ArrayList<>();
            }
            list3.add(list.get(i2));
            hashMap2.put(((ExtractedInfo) list.get(i2).f14915a).recognizedPersonOrigin, list3);
        }
        String string = Activities.getString(2131887010);
        String str = "";
        for (Map.Entry<IMDataExtractionUtils.RecognizedPersonOrigin, Integer> entry : hashMap.entrySet()) {
            str = StringUtils.a((CharSequence) str) ? entry.getKey().getDisplayName() : str + ", " + entry.getKey().getDisplayName();
        }
        String a2 = Activities.a(2131887009, Integer.valueOf(i), str);
        a(eVar, string, hashMap, hashMap2);
        eVar.a(string).b(a2);
        Intent intent = new Intent(CallAppApplication.get(), NotificationPendingIntentHandlerService.class);
        intent.setAction("com.callapp.contacts.ACTION_OPEN_IM_CALL_LOG_FOR_IM_IDENTIFIED_NUMBER_NOTIFICATION");
        intent.putExtra("notification_id", 50);
        setDummyData(intent);
        PendingIntent service = PendingIntent.getService(Singletons.get().getApplication(), 0, intent, 134217728);
        a(eVar, 50, "com.callapp.contacts.ACTION_DISMISS_IM_NOTIFICATION", -1);
        eVar.f = service;
    }

    public final void a(List<MissedCallUtils.MissedCallDataForNotification> list, MissedCallUtils.MissedCallsListParams missedCallsListParams) {
        if (!Prefs.aW.get().booleanValue() || !MissedCallManager.isMissedCallsNotificationsEnabled()) {
            return;
        }
        if (CollectionUtils.a(list)) {
            a(17);
            return;
        }
        c();
        g.e a2 = a(NotificationChannelEnum.MISSED_CALL_NOTIFICATION_CHANNEL);
        int incrementAndGet = this.f14907c.incrementAndGet();
        a(missedCallsListParams, this.f14907c.incrementAndGet(), a2, list, 3, 17);
        a2.k = list.size();
        a(a2, 17, "com.callapp.contacts.ACTION_DISMISS_FROM_MISSED_CALL_NOTIFICATION", incrementAndGet);
        RemoveMissedCallNotAnsweredNotificationWorker.f17076a.a();
        a(17, a2);
    }

    public final void a(boolean z, boolean z2) {
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
        g.e a2 = a(NotificationChannelEnum.BACKUP_NOTIFICATION_CHANNEL);
        PendingIntent activity = PendingIntent.getActivity(Singletons.get().getApplication(), 0, BackupUtils.getBackupSettingsIntent(), 134217728);
        g.e a3 = a2.a(string).b(string2).a(2131231569).a(BitmapFactory.decodeResource(CallAppApplication.get().getResources(), 2131231454));
        a3.f = activity;
        a3.a(true).Q = true;
        a(60, a2);
    }

    public final boolean a(int i, Notification notification) {
        if (NotificationTimeUtils.isCurrentTimeDisturbing()) {
            if (!d(i)) {
                FeedbackManager feedbackManager = FeedbackManager.get();
                feedbackManager.a("not showing notification with ID: " + i + " because current time is disturbing", 80);
                return false;
            } else if (i == 8 || i == 50) {
                setNotificationAsSilent(notification);
            }
        }
        this.i.notify(i, notification);
        return true;
    }

    public final boolean a(int i, g.e eVar) {
        if (eVar == null) {
            return false;
        }
        if (i == 12) {
            synchronized (k) {
                long j = eVar.a().getLong("time_stamp");
                if (j <= this.j) {
                    return false;
                }
                this.j = j;
            }
        }
        String b2 = b(i);
        if (StringUtils.b((CharSequence) b2)) {
            eVar.I = b2;
        }
        try {
            return a(i, eVar.b());
        } catch (RuntimeException e2) {
            CLog.a(NotificationManager.class, e2);
            return false;
        }
    }

    public final g.e b(String str, String str2, boolean z) {
        long deviceId;
        Intent intent = new Intent();
        g.e a2 = a(NotificationChannelEnum.INCALL_NOTIFICATION_CHANNEL);
        boolean z2 = this.f14908d.getContact() != null && this.f14908d.getContact().isVoiceMail();
        synchronized (k) {
            deviceId = this.f14908d.getContact() != null ? this.f14908d.getContact().getDeviceId() : 0L;
            String fullName = (this.f14908d.getContact() == null || this.f14908d.getContact().isIncognito() || IncognitoCallManager.get().isIncognito(this.f14908d.getContact())) ? "" : this.f14908d.getContact().getFullName();
            intent.setAction("com.callapp.contacts.ACTION_START_CALL_SCREEN").setComponent(new ComponentName(Singletons.get().getApplication(), CallAppService.class));
            setDummyData(intent);
            intent.putExtra(ContactDetailsOverlayView.EXTRA_IS_FROM_NOTIFICATION, true);
            intent.putExtra(Constants.EXTRA_IS_INCOMING, true);
            intent.putExtra(PostCallActivity.EXTRA_IS_BLOCKED, z);
            if (IncognitoCallManager.get().isIncognito(PhoneManager.get().a(str))) {
                intent.putExtra(BaseContactDetailsActivity.EXTRA_INCOGNITO_CALL, true);
            }
            if (!(this.f14908d.getContact() == null || this.f14908d.getContact().getGenomeData() == null)) {
                intent.putExtra(PostCallActivity.EXTRA_IS_SPAMMER, this.f14908d.getContact().isSpammer());
            }
            ContactDetailsActivity.fillIntentWithCallData(intent, deviceId, str, null, ExtractedInfo.Builder.getBuilderAccordingToOrigin(PhoneManager.get().a(str), IMDataExtractionUtils.RecognizedPersonOrigin.CALL).build(), false, null, null);
            intent.putExtra(ContactDetailsActivity.EXTRA_FULL_NAME, fullName);
        }
        PendingIntent service = PendingIntent.getService(Singletons.get().getApplication(), 30, intent, 134217728);
        CurrentCallDynamicObject currentCallDynamicObject = this.f14908d;
        boolean isSpammer = (currentCallDynamicObject == null || currentCallDynamicObject.getContact() == null) ? false : this.f14908d.getContact().isSpammer();
        Bundle bundle = new Bundle();
        long time = new Date().getTime();
        bundle.putLong("time_stamp", time);
        a2.B = bundle;
        a2.a(2131231915);
        a2.m = false;
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            this.f14908d.a(false, z2, time, isSpammer);
        }
        a2.a(this.f14908d.getPhotoBitmap());
        if (z2) {
            str2 = Activities.getString(2131888153);
        } else if (StringUtils.a((CharSequence) str2)) {
            str2 = StringUtils.a((CharSequence) this.f14908d.getName()) ? str : this.f14908d.getName();
        }
        a(str2, this.f14908d.getPhotoBitmap(), str);
        this.f14908d.setName(str2);
        a2.a(2, true);
        a2.D = 1;
        a2.l = 2;
        a2.A = "call";
        a2.a((Uri) null);
        PendingIntent service2 = PendingIntent.getService(Singletons.get().getApplication(), 20, new Intent(Singletons.get().getApplication(), NotificationPendingIntentHandlerService.class).setAction("com.callapp.contacts.ACTION_END_CALL_TELECOM"), 134217728);
        Intent action = new Intent(Singletons.get().getApplication(), NotificationPendingIntentHandlerService.class).setAction("com.callapp.contacts.ACTION_INCOMING_CALL_SMS_TELECOM");
        action.putExtra(Constants.EXTRA_PHONE_NUMBER, str);
        action.putExtra(Constants.EXTRA_CONTACT_ID, deviceId);
        PendingIntent service3 = PendingIntent.getService(Singletons.get().getApplication(), 40, action, 134217728);
        PendingIntent service4 = PendingIntent.getService(Singletons.get().getApplication(), 60, new Intent(Singletons.get().getApplication(), NotificationPendingIntentHandlerService.class).setAction("com.callapp.contacts.ACTION_ANSWER_CALL_TELECOM"), 134217728);
        RemoteViews remoteViews = new RemoteViews(CallAppApplication.get().getPackageName(), 2131558743);
        RemoteViews remoteViews2 = new RemoteViews(CallAppApplication.get().getPackageName(), 2131558744);
        int color = ThemeUtils.getColor(isSpammer ? 2131099675 : 2131099784);
        int color2 = ThemeUtils.getColor(isSpammer ? 2131099676 : 2131099785);
        remoteViews.setInt(2131362471, "setBackgroundColor", color);
        remoteViews.setInt(2131363791, "setBackgroundColor", color2);
        remoteViews2.setInt(2131362471, "setBackgroundColor", color);
        remoteViews.setImageViewBitmap(2131363390, this.f14908d.getPhotoBitmap());
        remoteViews2.setImageViewBitmap(2131363390, this.f14908d.getPhotoBitmap());
        if (CallLogUtils.b(str)) {
            CLog.a(NotificationManager.class, "Hiding SMS: ".concat(String.valueOf(str)));
            remoteViews.setViewVisibility(2131363043, 4);
        } else {
            remoteViews.setViewVisibility(2131363043, 0);
        }
        remoteViews.setTextViewText(2131363391, this.f14908d.getName());
        remoteViews2.setTextViewText(2131363391, this.f14908d.getName());
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
        a2.G = remoteViews;
        a2.F = remoteViews2;
        return a2;
    }

    public final String b(int i) {
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        NotificationChannelEnum channelEnumFromNotificationId = getChannelEnumFromNotificationId(i);
        if (channelEnumFromNotificationId == null) {
            return getNotificationChannelIdWithPrefix(NotificationChannelEnum.DEFAULT_NOTIFICATION_CHANNEL.getId());
        }
        if (this.i.getNotificationChannel(getNotificationChannelIdWithPrefix(channelEnumFromNotificationId.getId())) == null) {
            b();
        }
        return getNotificationChannelIdWithPrefix(channelEnumFromNotificationId.getId());
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x0159 -> B:30:0x0152). Please submit an issue!!! */
    public final void b() {
        NotificationChannelGroupEnum[] values;
        NotificationChannelEnum[] values2;
        if (Build.VERSION.SDK_INT >= 26) {
            for (NotificationChannelGroup notificationChannelGroup : this.i.getNotificationChannelGroups()) {
                this.i.deleteNotificationChannelGroup(notificationChannelGroup.getId());
            }
            for (NotificationChannel notificationChannel : this.i.getNotificationChannels()) {
                try {
                    this.i.deleteNotificationChannel(notificationChannel.getId());
                } catch (IllegalArgumentException e2) {
                }
            }
            Prefs.am.b(1);
            for (NotificationChannelGroupEnum notificationChannelGroupEnum : NotificationChannelGroupEnum.values()) {
                this.i.createNotificationChannelGroup(new NotificationChannelGroup(notificationChannelGroupEnum.getId(), notificationChannelGroupEnum.getName()));
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
                    this.i.createNotificationChannel(notificationChannel2);
                } catch (IllegalArgumentException e3) {
                }
            }
        }
    }

    public final void b(List<MissedCallUtils.MissedCallDataForNotification> list, MissedCallUtils.MissedCallsListParams missedCallsListParams) {
        if (!Prefs.aW.get().booleanValue() || !MissedCallManager.isNotAnswerNotificationsEnabled()) {
            return;
        }
        if (CollectionUtils.a(list)) {
            a(40);
            return;
        }
        g.e a2 = a(NotificationChannelEnum.NOT_ANSWERED_NOTIFICATION_CHANNEL);
        int incrementAndGet = this.f14907c.incrementAndGet();
        a(missedCallsListParams, this.f14907c.incrementAndGet(), a2, list, 40, 40);
        a2.k = list.size();
        a(a2, 40, "com.callapp.contacts.ACTION_DISMISS_FROM_NOT_ANSWERED_NOTIFICATION", incrementAndGet);
        RemoveMissedCallNotAnsweredNotificationWorker.f17076a.a();
        a(40, a2);
    }

    public final void c(int i) {
        this.f14908d.a(i);
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        this.i = null;
    }

    public final void e() {
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.manager.NotificationManager.2
            @Override // java.lang.Runnable
            public void run() {
                NotificationManager notificationManager = NotificationManager.this;
                notificationManager.a(12, notificationManager.getCurrentCallAppInCallNotificationBuilder());
            }
        });
    }

    public g.e getCurrentCallAppInCallNotificationBuilder() {
        return PhoneStateManager.get().isIncoming() ? b(this.f14908d.getNumber(), this.f14908d.getName(), this.f14908d.isBlocked()) : a(this.f14908d.getNumber(), this.f14908d.getName(), this.f14908d.isBlocked());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g.e getImDetailNotificationBuilder() {
        g.e a2 = a(NotificationChannelEnum.IM_NOTIFICATION_CHANNEL).a(true);
        a2.l = 1;
        a2.a((Uri) null);
        a2.a(2131231913);
        return a2;
    }

    public Intent getOpenBirthdayChannelSettingsIntent() {
        if (this.i.getNotificationChannel(getNotificationChannelIdWithPrefix(NotificationChannelEnum.BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL.getId())) == null) {
            f();
        }
        return new Intent("android.settings.CHANNEL_NOTIFICATION_SETTINGS").putExtra("android.provider.extra.APP_PACKAGE", CallAppApplication.get().getPackageName()).putExtra("android.provider.extra.CHANNEL_ID", getNotificationChannelIdWithPrefix(NotificationChannelEnum.BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL.getId()));
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        NotificationChannelEnum[] values;
        this.i = (android.app.NotificationManager) CallAppApplication.get().getSystemService("notification");
        if (Build.VERSION.SDK_INT >= 26) {
            this.m = new HashMap<>();
            for (NotificationChannelEnum notificationChannelEnum : NotificationChannelEnum.values()) {
                this.m.put(Integer.valueOf(notificationChannelEnum.getId()), notificationChannelEnum);
            }
        }
    }

    public boolean isBirthdayChannelHasSound() {
        try {
            int importance = this.i.getNotificationChannel(getNotificationChannelIdWithPrefix(NotificationChannelEnum.BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL.getId())).getImportance();
            boolean z = true;
            if (importance != 3) {
                z = importance == 4;
            }
            return z;
        } catch (NullPointerException e2) {
            f();
            return true;
        }
    }
}
