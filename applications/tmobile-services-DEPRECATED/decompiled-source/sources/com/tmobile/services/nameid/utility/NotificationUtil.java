package com.tmobile.services.nameid.utility;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.CategorySetting;
import com.tmobile.services.nameid.model.Contact;
import com.tmobile.services.nameid.model.MessageUserPreference;
import java.util.List;
import java.util.Random;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/NotificationUtil.class */
public class NotificationUtil {
    @Nullable

    /* renamed from: a */
    private static NotificationBuilderWrapperInterface f14419a;

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/NotificationUtil$Facade.class */
    public static class Facade {

        /* renamed from: a */
        private static Facade f14420a;

        /* renamed from: a */
        public static Facade m5432a() {
            if (f14420a == null) {
                f14420a = new Facade();
            }
            return f14420a;
        }

        /* renamed from: b */
        public void m5431b(Context context, String str, String str2, String str3, String str4, CallerSetting.Action action, boolean z, @Nullable Uri uri, boolean z2, int i) {
            NotificationUtil.m5438s(context, str, str2, str3, str4, action, z, uri, z2, i);
        }

        /* renamed from: c */
        public void m5430c(Context context, String str, String str2, String str3, String str4, @Nullable Uri uri) {
            NotificationUtil.m5435v(context, str, str2, str3, str4, uri);
        }
    }

    private NotificationUtil() {
        throw new IllegalAccessError("This is a utility class. It should not be created.");
    }

    /* renamed from: a */
    private static void m5456a(NotificationBuilderWrapper notificationBuilderWrapper, String str) {
        notificationBuilderWrapper.m5476a(C1517R.C1519drawable.allow_inverted_check, C1517R.string.notification_allow, "ALLOW_KEY", str);
    }

    /* renamed from: b */
    private static void m5455b(NotificationBuilderWrapper notificationBuilderWrapper, String str) {
        notificationBuilderWrapper.m5476a(C1517R.C1519drawable.block_ghostbuster_inverted, C1517R.string.notification_block, "BLOCK_PRESSED_KEY", str);
    }

    /* renamed from: c */
    private static void m5454c(NotificationBuilderWrapper notificationBuilderWrapper, String str) {
        notificationBuilderWrapper.m5476a(C1517R.C1519drawable.categories_people_inverted, C1517R.string.notification_manage, "MANAGE_KEY", str);
    }

    /* renamed from: d */
    private static void m5453d(NotificationBuilderWrapper notificationBuilderWrapper, String str) {
        notificationBuilderWrapper.m5476a(C1517R.C1519drawable.block_ghostbuster_inverted, C1517R.string.notification_unblock, "UNBLOCK_PRESSED_KEY", str);
    }

    /* renamed from: e */
    private static void m5452e(NotificationBuilderWrapper notificationBuilderWrapper, String str, boolean z, boolean z2, CallerSetting.Action action) {
        if (!PhoneNumberHelper.m5403p(str)) {
            m5451f(notificationBuilderWrapper, str);
        } else if (z) {
            if (action == CallerSetting.Action.BLOCKED) {
                m5453d(notificationBuilderWrapper, str);
                m5456a(notificationBuilderWrapper, str);
                m5454c(notificationBuilderWrapper, str);
                return;
            }
            m5455b(notificationBuilderWrapper, str);
            m5456a(notificationBuilderWrapper, str);
            m5454c(notificationBuilderWrapper, str);
        } else if (z2) {
            if (action == CallerSetting.Action.BLOCKED) {
                m5456a(notificationBuilderWrapper, str);
            } else {
                m5455b(notificationBuilderWrapper, str);
            }
            m5454c(notificationBuilderWrapper, str);
        } else {
            m5455b(notificationBuilderWrapper, str);
            if (action == CallerSetting.Action.VOICEMAIL) {
                m5456a(notificationBuilderWrapper, str);
            }
            m5454c(notificationBuilderWrapper, str);
        }
    }

    /* renamed from: f */
    private static void m5451f(NotificationBuilderWrapper notificationBuilderWrapper, String str) {
        m5454c(notificationBuilderWrapper, str);
    }

    /* renamed from: g */
    private static void m5450g(@Nonnull NotificationCompat.Builder builder, Context context, int i) {
        m5433x(builder);
        LogUtil.m5643d("NotificationUtil#", "buildApi24GroupNotification");
        builder.setContentIntent(PendingIntent.getActivity(context, 0, new Intent(context, MainActivity.class), 268435456));
        Intent intent = new Intent(context, NotificationReceiver.class);
        intent.putExtra("NOTIFICATION_INTENT_KEY_EXTRA", "API24_GROUP_DELETED_KEY");
        builder.setDeleteIntent(PendingIntent.getBroadcast(context, i + 9021 + new Random(150L).nextInt(), intent, 268435456));
        builder.setAutoCancel(true);
    }

    /* renamed from: h */
    private static PendingIntent m5449h(Context context) {
        Intent intent = new Intent(context, NotificationReceiver.class);
        intent.putExtra("NOTIFICATION_INTENT_KEY_EXTRA", "MAIN_KEY");
        return PendingIntent.getBroadcast(context, new Random(150L).nextInt() + 9021, intent, 268435456);
    }

    /* renamed from: i */
    private static int m5448i(String str, ApiUtils.CommEventType commEventType, int i) {
        String num = Integer.toString(commEventType.getValue());
        String num2 = Integer.toString(i);
        return (str + num + num2).hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static String m5447j(String str) {
        Contact e = ContactLookup.m5824d().m5823e(PhoneNumberHelper.m5415d(str));
        if (e == null || e.getName() == null || e.getName().isEmpty()) {
            return null;
        }
        return e.getName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: k */
    public static Uri m5446k(String str) {
        Contact e = ContactLookup.m5824d().m5823e(PhoneNumberHelper.m5415d(str));
        if (e == null || e.getUri() == null || e.getUri().isEmpty()) {
            return null;
        }
        return Uri.parse(e.getUri());
    }

    /* renamed from: l */
    public static void m5445l(Context context) {
        try {
            ((NotificationManager) context.getSystemService("notification")).cancelAll();
            LogUtil.m5643d("NotificationUtil#", "Cleared all notifications.");
        } catch (SecurityException e) {
            LogUtil.m5641f("NotificationUtil#", "Error while attempting to clear notifications: ", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public static void m5444m(Context context) {
        if (PreferenceUtils.m5394c("PREF_NUMBER_NOTIFICATIONS", 0) == 0) {
            NotificationManagerCompat.m19729d(context).m19731b(9020);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public static void m5443n(Context context, int i) {
        ((NotificationManager) context.getSystemService("notification")).cancel(i);
    }

    /* renamed from: o */
    private static NotificationBuilderWrapperInterface m5442o(int i, Context context) {
        NotificationBuilderWrapperInterface notificationBuilderWrapperInterface = f14419a;
        NotificationBuilderWrapperInterface notificationBuilderWrapperInterface2 = notificationBuilderWrapperInterface;
        if (notificationBuilderWrapperInterface == null) {
            notificationBuilderWrapperInterface2 = new NotificationBuilderWrapper(i, context);
        }
        return notificationBuilderWrapperInterface2;
    }

    /* renamed from: r */
    public static void m5439r(Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            LogUtil.m5643d("NotificationUtil#onCreate", "setting up notification channel");
            NotificationChannel notificationChannel = new NotificationChannel("nameid", context.getString(2131689612), 3);
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
            if (notificationManager != null) {
                notificationManager.createNotificationChannel(notificationChannel);
            } else {
                LogUtil.m5631p("NotificationUtil#onCreate", "notification manager was null, cannot create channel");
            }
        } else {
            LogUtil.m5643d("NotificationUtil#onCreate", "Skipping notification channel setup");
        }
    }

    /* renamed from: s */
    public static void m5438s(Context context, String str, String str2, String str3, final String str4, CallerSetting.Action action, boolean z, @Nullable Uri uri, boolean z2, int i) {
        LogUtil.m5643d("NotificationUtil#showCategoryNotification", "\nnum: " + str + "\nline1: " + str2 + "\nline2: " + str3 + "\nsummary: " + str4 + "\naction: " + action.name() + "\nPNB?: " + z + "\nshowOpt?: " + z2 + "\nbucketId: " + i);
        if (PreferenceUtils.m5395b("PREF_IS_APP_RESUMED", false)) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.tmobile.services.nameid.utility.d1
                @Override // java.lang.Runnable
                public final void run() {
                    MainApplication.m7540P(str4);
                }
            });
            return;
        }
        int c = PreferenceUtils.m5394c("PREF_LAST_NOTIFICATION_ID", 0) + 1;
        PreferenceUtils.m5385l("PREF_LAST_NOTIFICATION_ID", c);
        NotificationBuilderWrapper notificationBuilderWrapper = (NotificationBuilderWrapper) m5442o(c, context);
        notificationBuilderWrapper.m5472e(str4);
        notificationBuilderWrapper.m5474c("NOTIFICATION_PRESSED_KEY", str);
        boolean z3 = true;
        if (i != CategorySetting.BucketId.CALL_BLOCKING.getValue()) {
            z3 = i == CategorySetting.BucketId.SCAM.getValue();
        }
        int i2 = C1517R.C1519drawable.caller_unknown_png;
        if (z3) {
            i2 = C1517R.C1519drawable.exclamation_scam_png;
        }
        notificationBuilderWrapper.m5467j(str2, str3, false);
        if (uri != null) {
            notificationBuilderWrapper.m5465l(uri);
        } else {
            notificationBuilderWrapper.m5466k(i2);
        }
        notificationBuilderWrapper.m5473d();
        if (z2) {
            m5452e(notificationBuilderWrapper, str, z, z3, action);
        }
        notificationBuilderWrapper.m5464m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public static void m5437t(Context context, int i) {
        int c = PreferenceUtils.m5394c("PREF_NUMBER_NOTIFICATIONS", 0);
        if (c > 1) {
            PendingIntent h = m5449h(context);
            NotificationCompat.Builder builder = new NotificationCompat.Builder(context);
            builder.setContentTitle(context.getString(C1517R.string.notification_api24_title, Integer.valueOf(c)));
            builder.setGroupSummary(true);
            builder.setGroup("com.services.tmobile.nameid.notification");
            builder.setSmallIcon(C1517R.C1519drawable.status_bar_icon);
            builder.setChannelId("nameid");
            builder.setColor(context.getResources().getColor(2131034197));
            builder.setContentIntent(h);
            if (Build.VERSION.SDK_INT < 24) {
                m5450g(builder, context, i);
            }
            NotificationManagerCompat.m19729d(context).m19727f(9020, builder.build());
        }
    }

    /* renamed from: u */
    public static void m5436u(Context context, String str, String str2, String str3, String str4) {
        if (!PreferenceUtils.m5395b("PREF_IS_APP_RESUMED", false)) {
            int c = PreferenceUtils.m5394c("PREF_LAST_NOTIFICATION_ID", 0) + 1;
            PreferenceUtils.m5385l("PREF_LAST_NOTIFICATION_ID", c);
            NotificationBuilderWrapper notificationBuilderWrapper = (NotificationBuilderWrapper) m5442o(c, context);
            notificationBuilderWrapper.m5472e(str3);
            notificationBuilderWrapper.m5474c(str4, null);
            notificationBuilderWrapper.m5467j(str, str2, true);
            notificationBuilderWrapper.m5473d();
            notificationBuilderWrapper.m5464m();
        }
    }

    /* renamed from: v */
    public static void m5435v(Context context, String str, String str2, String str3, final String str4, @Nullable Uri uri) {
        LogUtil.m5643d("NotificationUtil#showSmsBlockNotification", "\nnum: " + str + "\nline1: " + str2 + "\nline2: " + str3 + "\nsummary: " + str4);
        if (PreferenceUtils.m5395b("PREF_IS_APP_RESUMED", false)) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.tmobile.services.nameid.utility.e1
                @Override // java.lang.Runnable
                public final void run() {
                    MainApplication.m7540P(str4);
                }
            });
            return;
        }
        NotificationBuilderWrapper notificationBuilderWrapper = (NotificationBuilderWrapper) m5442o(m5448i(str, ApiUtils.CommEventType.TEXT, MessageUserPreference.Action.BLOCKED.getValue()), context);
        notificationBuilderWrapper.m5472e(str4);
        notificationBuilderWrapper.m5474c("NOTIFICATION_PRESSED_KEY", str);
        notificationBuilderWrapper.m5467j(str2, str3, false);
        if (uri != null) {
            notificationBuilderWrapper.m5465l(uri);
        } else {
            notificationBuilderWrapper.m5466k(C1517R.C1519drawable.caller_unknown_png);
        }
        notificationBuilderWrapper.m5473d();
        m5451f(notificationBuilderWrapper, str);
        notificationBuilderWrapper.m5464m();
    }

    /* renamed from: w */
    public static void m5434w(Context context, String str, String str2, String str3, String str4) {
        if (!PreferenceUtils.m5395b("PREF_IS_APP_RESUMED", false)) {
            int c = PreferenceUtils.m5394c("PREF_LAST_NOTIFICATION_ID", 0) + 1;
            PreferenceUtils.m5385l("PREF_LAST_NOTIFICATION_ID", c);
            NotificationBuilderWrapper notificationBuilderWrapper = (NotificationBuilderWrapper) m5442o(c, context);
            notificationBuilderWrapper.m5472e(str3);
            notificationBuilderWrapper.m5474c(str4, null);
            notificationBuilderWrapper.m5467j(str, str2, true);
            notificationBuilderWrapper.m5473d();
            int i = (!SubscriptionHelper.m5317k() || SubscriptionHelper.m5308t()) ? C1517R.string.general_more_info : C1517R.string.notif_handler_review_msg_activity;
            notificationBuilderWrapper.m5476a(C1517R.C1519drawable.empty, C1517R.string.general_thanks, "", "");
            notificationBuilderWrapper.m5476a(C1517R.C1519drawable.empty, i, "STARTUP_KEY_BASIC", "");
            notificationBuilderWrapper.m5464m();
        }
    }

    /* renamed from: x */
    private static void m5433x(@Nonnull NotificationCompat.Builder builder) {
        List<String> i = PreferenceUtils.m5388i("PREF_API24_NOTIFICATIONS");
        if (i.size() == 1) {
            builder.setContentText(i.get(0));
            return;
        }
        NotificationCompat.InboxStyle inboxStyle = new NotificationCompat.InboxStyle();
        for (String str : i) {
            inboxStyle.m19774q(str);
        }
        builder.setStyle(inboxStyle);
    }
}
