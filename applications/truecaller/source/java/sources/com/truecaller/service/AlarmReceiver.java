package com.truecaller.service;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.widget.RemoteViews;
import com.amazon.device.ads.DtbConstants;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.filters.blockedevents.BlockedEventsActivity;
import com.truecaller.log.AssertionUtil;
import com.truecaller.notifications.NotificationHandlerService;
import com.truecaller.notifications.support.NotificationTrampolineActivity;
import com.truecaller.p183ui.NotificationAccessActivity;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.premium.util.NotificationAccessSource;
import com.truecaller.settings.CallingSettings;
import java.util.Calendar;
import java.util.Iterator;
import p1727n3.p1807k.p1808a.C26447o;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1808a.C26458x;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p837h0.AbstractC14840m;
import p193e.p194a.p912i4.AbstractC15275e;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import s1.z.c.l;
import w3.c.a.a.a.a;
import w3.c.a.a.a.h;
/* loaded from: classes13-dex2jar.jar:com/truecaller/service/AlarmReceiver.class */
public class AlarmReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static final AlarmType[] f14701a;

    /* renamed from: b */
    public static final AlarmType[] f14702b;

    /* renamed from: c */
    public static final AlarmType[] f14703c;

    /* renamed from: d */
    public static final AlarmType[] f14704d = {AlarmType.TYPE_DO_NOT_DISTURB_ACCESS};

    /* renamed from: e */
    public static PackageInfo f14705e;

    /* loaded from: classes13-dex2jar.jar:com/truecaller/service/AlarmReceiver$AlarmType.class */
    public static abstract class AlarmType extends Enum<AlarmType> {
        private static final /* synthetic */ AlarmType[] $VALUES;
        public static final AlarmType TYPE_15DAYS;
        public static final AlarmType TYPE_20DAYS;
        public static final AlarmType TYPE_2DAYS_UPGRADED;
        public static final AlarmType TYPE_5DAYS;
        public static final AlarmType TYPE_DISMISS_NOTIFICATION;
        public static final AlarmType TYPE_DO_NOT_DISTURB_ACCESS;
        public static final AlarmType TYPE_NOTIFICATION_ACCESS;
        public static final AlarmType TYPE_RESCHEDULE;
        public static final AlarmType TYPE_UPDATE_SPAM;
        private final String mAnalyticsSubtype;
        private final long mFirstDelay;
        private final int mNotificationId;
        private final String mNotificationType;
        private final long mRecurringPeriod;

        /* renamed from: com.truecaller.service.AlarmReceiver$AlarmType$a */
        /* loaded from: classes13-dex2jar.jar:com/truecaller/service/AlarmReceiver$AlarmType$a.class */
        public final class C4452a extends AlarmType {
            public C4452a(String str, int i, long j, int i2, String str2, String str3) {
                super(str, i, j, i2, str2, str3);
            }

            @Override // com.truecaller.service.AlarmReceiver.AlarmType
            public Notification getNotification(Context context) {
                AbstractApplicationC8442a abstractApplicationC8442a = (AbstractApplicationC8442a) context.getApplicationContext();
                AbstractC15539j2 mo10154s = ((AbstractC21187w1) context.getApplicationContext()).mo10154s();
                if (abstractApplicationC8442a.mo28540W() && !h.m(abstractApplicationC8442a.m28549N().mo12420d().getString("profileAvatar"))) {
                    return AlarmType.createNotification(context, context.getString(C2752R.string.AppName), context.getString(C2752R.string.LocalNotificationAddPhoto), PendingIntent.getActivity(context, C2752R.C2754id.req_code_alarm_receiver_notification_photo_open, mo10154s.mo12495X2().m15457a(context).putExtra("ARG_SHOW_PHOTO_SELECTOR", true), 201326592));
                }
                return null;
            }
        }

        /* renamed from: com.truecaller.service.AlarmReceiver$AlarmType$b */
        /* loaded from: classes13-dex2jar.jar:com/truecaller/service/AlarmReceiver$AlarmType$b.class */
        public final class C4453b extends AlarmType {
            public C4453b(String str, int i, long j, int i2, String str2, String str3) {
                super(str, i, j, i2, str2, str3);
            }

            @Override // com.truecaller.service.AlarmReceiver.AlarmType
            public Notification getNotification(Context context) {
                return AlarmType.TYPE_5DAYS.getNotification(context);
            }
        }

        /* renamed from: com.truecaller.service.AlarmReceiver$AlarmType$c */
        /* loaded from: classes13-dex2jar.jar:com/truecaller/service/AlarmReceiver$AlarmType$c.class */
        public final class C4454c extends AlarmType {
            public C4454c(String str, int i, long j, int i2, String str2, String str3) {
                super(str, i, j, i2, str2, str3);
            }

            @Override // com.truecaller.service.AlarmReceiver.AlarmType
            public Notification getNotification(Context context) {
                NotificationTrampolineActivity.C4317a c4317a = NotificationTrampolineActivity.f14119j;
                l.e(context, AnalyticsConstants.CONTEXT);
                l.e("com.truecaller.intent.action.SHARE", "notificationName");
                Intent putExtra = new Intent(context, NotificationTrampolineActivity.class).putExtra("notification-name", "com.truecaller.intent.action.SHARE");
                l.d(putExtra, "Intent(context, Notifica…N_NAME, notificationName)");
                return AlarmType.createNotification(context, context.getString(C2752R.string.AppName), context.getString(C2752R.string.LocalNotificationEasierLife), PendingIntent.getActivity(context, C2752R.C2754id.req_code_alarm_receiver_notification_share_open, putExtra, 201326592));
            }
        }

        /* renamed from: com.truecaller.service.AlarmReceiver$AlarmType$d */
        /* loaded from: classes13-dex2jar.jar:com/truecaller/service/AlarmReceiver$AlarmType$d.class */
        public final class C4455d extends AlarmType {
            public C4455d(String str, int i, long j, int i2, String str2, String str3) {
                super(str, i, j, i2, str2, str3);
            }

            @Override // com.truecaller.service.AlarmReceiver.AlarmType
            public Notification getNotification(Context context) {
                long currentTimeMillis = System.currentTimeMillis();
                AlarmReceiver.m34772b(context);
                if (currentTimeMillis - AlarmReceiver.f14705e.firstInstallTime > 15552000000L) {
                    return AlarmType.TYPE_20DAYS.getNotification(context);
                }
                return null;
            }
        }

        /* renamed from: com.truecaller.service.AlarmReceiver$AlarmType$e */
        /* loaded from: classes13-dex2jar.jar:com/truecaller/service/AlarmReceiver$AlarmType$e.class */
        public final class C4456e extends AlarmType {
            public C4456e(String str, int i, long j, int i2, String str2, String str3) {
                super(str, i, j, i2, (String) null, (String) null);
            }

            @Override // com.truecaller.service.AlarmReceiver.AlarmType
            public Notification getNotification(Context context) {
                AbstractC15539j2 mo10154s = ((TrueApp) context.getApplicationContext()).mo10154s();
                AbstractC14840m mo11655T = mo10154s.mo11655T();
                AbstractC8541a mo12420d = mo10154s.mo12420d();
                if ((mo11655T.mo19547u() || mo11655T.mo19550r()) && !h.j(mo12420d.getString("profileAvatar"))) {
                    return null;
                }
                for (AlarmType alarmType : AlarmReceiver.f14702b) {
                    C15571h.m18625z(alarmType.name(), 0L);
                }
                AlarmReceiver.m34773a(context, false);
                return null;
            }
        }

        /* renamed from: com.truecaller.service.AlarmReceiver$AlarmType$f */
        /* loaded from: classes13-dex2jar.jar:com/truecaller/service/AlarmReceiver$AlarmType$f.class */
        public final class C4457f extends AlarmType {
            public C4457f(String str, int i, long j, long j2, int i2, String str2, String str3) {
                super(str, i, j, j2, i2, str2, str3);
            }

            @Override // com.truecaller.service.AlarmReceiver.AlarmType
            public Notification getNotification(Context context) {
                TrueApp m36032b0 = TrueApp.m36032b0();
                if (!m36032b0.mo28540W() || m36032b0.mo10154s().mo11643f().mo16408H()) {
                    return null;
                }
                m36032b0.mo10154s().mo11655T().mo19552p(true);
                return AlarmType.createNotification(context, context.getString(C2752R.string.AppName), context.getString(C2752R.string.LocalNotificationUpdateSpam), PendingIntent.getActivity(context, C2752R.C2754id.req_code_alarm_receiver_notification_spam_open, new Intent(context, BlockedEventsActivity.class), 201326592));
            }
        }

        /* renamed from: com.truecaller.service.AlarmReceiver$AlarmType$g */
        /* loaded from: classes13-dex2jar.jar:com/truecaller/service/AlarmReceiver$AlarmType$g.class */
        public final class C4458g extends AlarmType {
            public C4458g(String str, int i, long j, int i2, String str2, String str3) {
                super(str, i, j, i2, str2, str3);
            }

            @Override // com.truecaller.service.AlarmReceiver.AlarmType
            public Notification getNotification(Context context) {
                return AlarmType.createNotification(context, context.getString(C2752R.string.BlockFragmentBlockMethodRingSilent), context.getString(C2752R.string.LocalNotificationDoNotDisturbAccess), PendingIntent.getActivity(context, C2752R.C2754id.req_code_alarm_receiver_notification_dnd_open, new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"), 201326592));
            }

            @Override // com.truecaller.service.AlarmReceiver.AlarmType
            public boolean shouldShow(Context context) {
                AbstractC15539j2 mo10154s = TrueApp.m36032b0().mo10154s();
                CallingSettings mo12414d6 = mo10154s.mo12414d6();
                AbstractC19219a0 mo11647c = mo10154s.mo11647c();
                boolean z = true;
                if (!(mo12414d6.mo8949z() == CallingSettings.BlockMethod.Mute) || mo11647c.mo13824i()) {
                    z = false;
                }
                if (z) {
                    mo10154s.mo12678J7().mo17202a(NotificationAccessSource.NOTIFICATION_RING_SILENT);
                }
                return z;
            }
        }

        /* renamed from: com.truecaller.service.AlarmReceiver$AlarmType$h */
        /* loaded from: classes13-dex2jar.jar:com/truecaller/service/AlarmReceiver$AlarmType$h.class */
        public final class C4459h extends AlarmType {
            public C4459h(String str, int i, long j, int i2, String str2, String str3) {
                super(str, i, j, i2, str2, str3);
            }

            @Override // com.truecaller.service.AlarmReceiver.AlarmType
            public Notification getNotification(Context context) {
                boolean z;
                if (TrueApp.m36032b0().mo10154s().mo11647c().mo13831b()) {
                    return null;
                }
                PackageManager packageManager = context.getPackageManager();
                Iterator<String> it = NotificationHandlerService.f14083k.iterator();
                while (true) {
                    z = false;
                    if (!it.hasNext()) {
                        break;
                    }
                    try {
                        packageManager.getPackageInfo(it.next(), 0);
                        z = true;
                        break;
                    } catch (PackageManager.NameNotFoundException e) {
                    }
                }
                if (!z) {
                    return null;
                }
                PendingIntent activity = PendingIntent.getActivity(context, C2752R.C2754id.req_code_alarm_receiver_notification_open, NotificationAccessActivity.m34593sa(context, NotificationAccessSource.NOTIFICATION_AUTO_SEARCH, C2752R.string.LocalNotificationIdentifyMessagesToast, TruecallerInit.m34553xa(context, "calls", RemoteMessageConst.NOTIFICATION)), 335544320);
                C26450q c26450q = new C26450q(context, AlarmType.getNotificationChannelId(context));
                c26450q.f74137R.icon = 2131236603;
                Object obj = C26467a.f74235a;
                c26450q.f74123D = C26467a.C26471d.m1787a(context, 2131101323);
                c26450q.f74137R.contentView = new RemoteViews(context.getPackageName(), (int) C2752R.layout.notification_collapsed);
                c26450q.f74147g = activity;
                c26450q.m1853p(16, true);
                PendingIntent broadcast = PendingIntent.getBroadcast(context, C2752R.C2754id.req_code_alarm_receiver_notification_dismiss, new Intent("com.truecaller.intent.action.PROMO_DISMISSED", null, context, AlarmReceiver.class), 335544320);
                RemoteViews remoteViews = new RemoteViews(context.getPackageName(), (int) C2752R.layout.notification_expanded);
                remoteViews.setOnClickPendingIntent(2131362821, broadcast);
                c26450q.f74127H = remoteViews;
                return c26450q.m1865d();
            }
        }

        /* renamed from: com.truecaller.service.AlarmReceiver$AlarmType$i */
        /* loaded from: classes13-dex2jar.jar:com/truecaller/service/AlarmReceiver$AlarmType$i.class */
        public final class C4460i extends AlarmType {
            public C4460i(String str, int i, long j, int i2, String str2, String str3) {
                super(str, i, j, i2, (String) null, (String) null);
            }

            @Override // com.truecaller.service.AlarmReceiver.AlarmType
            public Notification getNotification(Context context) {
                new C26458x(context).m1816b(AlarmType.TYPE_NOTIFICATION_ACCESS.getNotificationId());
                return null;
            }
        }

        static {
            C4452a c4452a = new C4452a("TYPE_5DAYS", 0, 432000000L, C2752R.C2754id.req_code_alarm_receiver_5days, "add_photo", "addPhoto");
            TYPE_5DAYS = c4452a;
            C4453b c4453b = new C4453b("TYPE_15DAYS", 1, 1296000000L, C2752R.C2754id.req_code_alarm_receiver_15days, c4452a.getNotificationType(), c4452a.getAnalyticsSubtype());
            TYPE_15DAYS = c4453b;
            C4454c c4454c = new C4454c("TYPE_20DAYS", 2, 1728000000L, C2752R.C2754id.req_code_alarm_receiver_20days, ViewAction.SHARE, "shareTc");
            TYPE_20DAYS = c4454c;
            C4455d c4455d = new C4455d("TYPE_2DAYS_UPGRADED", 3, DtbConstants.CONFIG_CHECKIN_INTERVAL, C2752R.C2754id.req_code_alarm_receiver_2days_upgraded, c4454c.getNotificationType(), c4454c.getAnalyticsSubtype());
            TYPE_2DAYS_UPGRADED = c4455d;
            C4456e c4456e = new C4456e("TYPE_RESCHEDULE", 4, 2160000000L, C2752R.C2754id.req_code_alarm_receiver_reschedule, null, null);
            TYPE_RESCHEDULE = c4456e;
            C4457f c4457f = new C4457f("TYPE_UPDATE_SPAM", 5, 1209600000L, 1209600000L, C2752R.C2754id.req_code_alarm_receiver_update_spam, "update_spam", "openBlock");
            TYPE_UPDATE_SPAM = c4457f;
            C4458g c4458g = new C4458g("TYPE_DO_NOT_DISTURB_ACCESS", 6, DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL, C2752R.C2754id.req_code_alarm_receiver_dnd_access, "do_not_disturb", "muteCalls");
            TYPE_DO_NOT_DISTURB_ACCESS = c4458g;
            C4459h c4459h = new C4459h("TYPE_NOTIFICATION_ACCESS", 7, 259200000L, C2752R.C2754id.req_code_alarm_receiver_notification_access, "notification_access", "messagingApps");
            TYPE_NOTIFICATION_ACCESS = c4459h;
            C4460i c4460i = new C4460i("TYPE_DISMISS_NOTIFICATION", 8, 864000000L, 0, null, null);
            TYPE_DISMISS_NOTIFICATION = c4460i;
            $VALUES = new AlarmType[]{c4452a, c4453b, c4454c, c4455d, c4456e, c4457f, c4458g, c4459h, c4460i};
        }

        private AlarmType(String str, int i, long j, int i2, String str2, String str3) {
            this(str, i, j, 0L, i2, str2, str3);
        }

        private AlarmType(String str, int i, long j, long j2, int i2, String str2, String str3) {
            super(str, i);
            this.mFirstDelay = j;
            this.mRecurringPeriod = j2;
            this.mNotificationId = i2;
            this.mNotificationType = str2;
            this.mAnalyticsSubtype = str3;
        }

        public static Notification createNotification(Context context, String str, String str2, PendingIntent pendingIntent) {
            C26450q c26450q = new C26450q(context, getNotificationChannelId(context));
            c26450q.f74137R.icon = 2131236603;
            Object obj = C26467a.f74235a;
            c26450q.f74123D = C26467a.C26471d.m1787a(context, 2131101323);
            c26450q.m1843z(context.getString(C2752R.string.AppName));
            c26450q.m1855n(str);
            C26447o c26447o = new C26447o();
            c26447o.m1873k(str2);
            c26450q.m1845x(c26447o);
            c26450q.m1856m(str2);
            c26450q.m1854o(1);
            c26450q.f74147g = pendingIntent;
            c26450q.m1853p(16, true);
            return c26450q.m1865d();
        }

        public static String getNotificationChannelId(Context context) {
            return ((AbstractC21187w1) context.getApplicationContext()).mo10154s().mo12458a1().mo19422d();
        }

        public static AlarmType valueOf(String str) {
            return (AlarmType) Enum.valueOf(AlarmType.class, str);
        }

        public static AlarmType[] values() {
            return (AlarmType[]) $VALUES.clone();
        }

        public String getAnalyticsSubtype() {
            return this.mAnalyticsSubtype;
        }

        public long getFirstDelay() {
            return this.mFirstDelay;
        }

        public abstract Notification getNotification(Context context);

        public int getNotificationId() {
            return this.mNotificationId;
        }

        public String getNotificationType() {
            return this.mNotificationType;
        }

        public long getRecurringPeriod() {
            return this.mRecurringPeriod;
        }

        public boolean shouldShow(Context context) {
            return true;
        }
    }

    static {
        AlarmType alarmType = AlarmType.TYPE_15DAYS;
        AlarmType alarmType2 = AlarmType.TYPE_20DAYS;
        AlarmType alarmType3 = AlarmType.TYPE_RESCHEDULE;
        AlarmType alarmType4 = AlarmType.TYPE_UPDATE_SPAM;
        AlarmType alarmType5 = AlarmType.TYPE_NOTIFICATION_ACCESS;
        AlarmType alarmType6 = AlarmType.TYPE_DISMISS_NOTIFICATION;
        f14701a = new AlarmType[]{alarmType, alarmType2, alarmType3, alarmType4, alarmType5, alarmType6};
        f14702b = new AlarmType[]{alarmType, alarmType3};
        f14703c = new AlarmType[]{AlarmType.TYPE_2DAYS_UPGRADED, AlarmType.TYPE_5DAYS, alarmType4, alarmType5, alarmType6};
    }

    /* renamed from: a */
    public static void m34773a(Context context, boolean z) {
        AlarmType[] alarmTypeArr;
        if (!((AbstractApplicationC8442a) context.getApplicationContext()).mo28540W()) {
            return;
        }
        m34772b(context);
        PackageInfo packageInfo = f14705e;
        if (packageInfo.firstInstallTime != packageInfo.lastUpdateTime) {
            AlarmType[] alarmTypeArr2 = f14703c;
            AlarmType[] alarmTypeArr3 = f14701a;
            int length = alarmTypeArr3.length;
            int i = 0;
            while (true) {
                alarmTypeArr = alarmTypeArr2;
                if (i >= length) {
                    break;
                }
                AlarmType alarmType = alarmTypeArr3[i];
                if (C15571h.m18644g(alarmType.name()) > 0) {
                    C15571h.m18625z(alarmType.name(), 0L);
                    ((AlarmManager) context.getSystemService("alarm")).cancel(PendingIntent.getBroadcast(context, alarmType.getNotificationId(), new Intent(context, AlarmReceiver.class), 67108864));
                    alarmType.name();
                }
                i++;
            }
        } else {
            alarmTypeArr = f14701a;
        }
        AlarmType[] alarmTypeArr4 = alarmTypeArr;
        if (z) {
            alarmTypeArr4 = (AlarmType[]) a.b(alarmTypeArr, f14704d);
        }
        for (AlarmType alarmType2 : alarmTypeArr4) {
            long m18644g = C15571h.m18644g(alarmType2.name());
            if ((!C15571h.m18636o(C15571h.m18645f(alarmType2.name())) || alarmType2.getRecurringPeriod() > 0) && ((z && m18644g > 0) || m18644g == 0)) {
                m34770d(context, alarmType2);
            }
        }
    }

    /* renamed from: b */
    public static void m34772b(Context context) {
        if (f14705e == null) {
            try {
                f14705e = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* renamed from: d */
    public static void m34770d(Context context, AlarmType alarmType) {
        ?? m18644g = C15571h.m18644g(alarmType.name());
        char c = m18644g;
        if (m18644g == 0) {
            c = System.currentTimeMillis() + ((!C15571h.m18636o(C15571h.m18645f(alarmType.name())) || alarmType.getRecurringPeriod() <= 0) ? alarmType.getFirstDelay() : alarmType.getRecurringPeriod());
        }
        ((AlarmManager) context.getSystemService("alarm")).set(0, c, PendingIntent.getBroadcast(context, alarmType.getNotificationId(), new Intent(context, AlarmReceiver.class).putExtra("notification_type", alarmType.name()), 67108864));
        C15571h.m18625z(alarmType.name(), c);
        alarmType.name();
        long currentTimeMillis = (c - System.currentTimeMillis()) / 1000;
    }

    /* renamed from: c */
    public final void m34771c(Context context, AlarmType alarmType) {
        C15571h.m18625z(alarmType.name(), 0L);
        C15571h.m18626y(C15571h.m18645f(alarmType.name()), true);
        Notification notification = alarmType.getNotification(context);
        if (notification != null && alarmType.shouldShow(context)) {
            String analyticsSubtype = alarmType.getAnalyticsSubtype();
            if (analyticsSubtype == null) {
                AssertionUtil.OnlyInDebug.fail("Notification must specify analytics subtype");
                return;
            }
            Bundle m8654X0 = C22128a.m8654X0("Subtype", analyticsSubtype);
            AbstractC15275e mo12617O1 = ((AbstractC21187w1) context.getApplicationContext()).mo10154s().mo12617O1();
            mo12617O1.mo18968f(alarmType.getNotificationId());
            mo12617O1.mo18971c(null, alarmType.getNotificationId(), notification, "notificationPeriodicPromo", m8654X0);
        }
        if (alarmType.getRecurringPeriod() > 0) {
            m34770d(context, alarmType);
        }
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        char c;
        String str = "AlarmReceiver received intent " + intent;
        if ("com.truecaller.intent.action.PROMO_DISMISSED".equals(intent.getAction())) {
            new C26458x(context).m1816b(AlarmType.TYPE_NOTIFICATION_ACCESS.getNotificationId());
        } else if (!intent.hasExtra("notification_type")) {
        } else {
            try {
                AlarmType valueOf = AlarmType.valueOf(intent.getStringExtra("notification_type"));
                valueOf.name();
                if (C12864a2.m22551i()) {
                    m34771c(context, valueOf);
                    return;
                }
                PendingIntent broadcast = PendingIntent.getBroadcast(context.getApplicationContext(), valueOf.getNotificationId(), intent, 201326592);
                AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
                Calendar calendar = Calendar.getInstance();
                int i = calendar.get(11);
                if (i < 9 || i > 21) {
                    calendar.add(11, 12);
                    c = calendar.getTimeInMillis();
                } else {
                    c = calendar.getTimeInMillis();
                }
                alarmManager.set(0, c, broadcast);
            } catch (IllegalArgumentException e) {
                C10480a.m26057J1(e, "Unsupported alarm type");
            }
        }
    }
}
