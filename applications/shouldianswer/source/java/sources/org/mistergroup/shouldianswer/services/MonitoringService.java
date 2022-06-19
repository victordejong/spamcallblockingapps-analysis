package org.mistergroup.shouldianswer.services;

import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Binder;
import android.os.IBinder;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import androidx.core.app.C0445h;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.C2405c;
import org.mistergroup.shouldianswer.model.EnumC2378a;
import org.mistergroup.shouldianswer.model.EnumC2393af;
import org.mistergroup.shouldianswer.p098b.C2273d;
import org.mistergroup.shouldianswer.p101ui.main.MainFragment;
import org.mistergroup.shouldianswer.receivers.PhoneStateReceiver;
import org.mistergroup.shouldianswer.utils.C3086e;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3113m;
import org.mistergroup.shouldianswer.utils.C3115o;
import org.mistergroup.shouldianswer.utils.C3135y;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/MonitoringService.class */
public final class MonitoringService extends Service {

    /* renamed from: g */
    private static MonitoringService f7215g;

    /* renamed from: b */
    private final int f7217b = 1233311;

    /* renamed from: c */
    private final BinderC2472b f7218c = new BinderC2472b();

    /* renamed from: d */
    private final TelephonyManager f7219d = C3135y.f9272b.m20d();

    /* renamed from: e */
    private final PhoneStateReceiver f7220e = new PhoneStateReceiver();

    /* renamed from: f */
    private final C2473c f7221f = new C2473c();

    /* renamed from: a */
    public static final C2471a f7214a = new C2471a(null);

    /* renamed from: h */
    private static final String f7216h = f7216h;

    /* renamed from: h */
    private static final String f7216h = f7216h;

    /* renamed from: org.mistergroup.shouldianswer.services.MonitoringService$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/MonitoringService$a.class */
    public static final class C2471a {
        private C2471a() {
        }

        public /* synthetic */ C2471a(C1691e c1691e) {
            this();
        }

        /* renamed from: e */
        private final void m943e() {
            C3104j.m157a(C3104j.f9124a, "MonitoringService.stop", (String) null, 2, (Object) null);
            new Intent(MyApp.f5480c.m1802a(), MonitoringService.class);
            if (C3115o.f9175a.m120c()) {
                MonitoringService m948a = m948a();
                if (m948a != null) {
                    m948a.stopForeground(1);
                    m948a.stopSelf();
                }
            } else {
                MonitoringService m948a2 = m948a();
                if (m948a2 != null) {
                    m948a2.stopForeground(true);
                    m948a2.stopSelf();
                }
            }
            m947a(null);
        }

        /* renamed from: a */
        public final MonitoringService m948a() {
            return MonitoringService.f7215g;
        }

        /* renamed from: a */
        public final void m947a(MonitoringService monitoringService) {
            MonitoringService.f7215g = monitoringService;
        }

        /* renamed from: b */
        public final void m946b() {
            if (C2398ai.f6930a.m1283c() == EnumC2393af.ACTIVE) {
                if (C2398ai.f6930a.m1275e() == EnumC2378a.IN_CALL_SCREEN && !C2405c.f6946b.m1216B()) {
                    C3104j.m157a(C3104j.f9124a, "MonitoringService.start set inCallServiceEnabled to true", (String) null, 2, (Object) null);
                    C2405c.f6946b.m1195a(true);
                }
                if (C2398ai.f6930a.m1275e() == EnumC2378a.POPUP && C2405c.f6946b.m1216B()) {
                    C3104j.m157a(C3104j.f9124a, "MonitoringService.start set inCallServiceEnabled to false", (String) null, 2, (Object) null);
                    C2405c.f6946b.m1195a(false);
                }
            } else {
                C3104j.m157a(C3104j.f9124a, "MonitoringService.start set inCallServiceEnabled to false due passive level", (String) null, 2, (Object) null);
                C2405c.f6946b.m1195a(false);
            }
            if (C2398ai.f6930a.m1283c() != EnumC2393af.PASSIVE) {
                C3104j.m157a(C3104j.f9124a, "MonitoringService.start - NOT PASSIVE - service not required", (String) null, 2, (Object) null);
                return;
            }
            try {
                Intent intent = new Intent(MyApp.f5480c.m1802a(), MonitoringService.class);
                if (C3115o.f9175a.m120c()) {
                    C3104j.m157a(C3104j.f9124a, "MonitoringService.start startForegroundService", (String) null, 2, (Object) null);
                    MyApp.f5480c.m1802a().startForegroundService(intent);
                } else {
                    C3104j.m157a(C3104j.f9124a, "MonitoringService.start startService", (String) null, 2, (Object) null);
                    MyApp.f5480c.m1802a().startService(intent);
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }

        /* renamed from: c */
        public final void m945c() {
            C3104j.m157a(C3104j.f9124a, "MonitoringService.restart", (String) null, 2, (Object) null);
            C2471a c2471a = this;
            c2471a.m943e();
            c2471a.m946b();
        }

        /* renamed from: d */
        public final boolean m944d() {
            return m948a() != null;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.services.MonitoringService$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/MonitoringService$b.class */
    private final class BinderC2472b extends Binder {
        public BinderC2472b() {
            MonitoringService.this = r4;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.services.MonitoringService$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/MonitoringService$c.class */
    private static final class C2473c extends PhoneStateListener {
        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(int i, String str) {
            try {
                if (C2405c.f6946b.m1205M().length() > 0) {
                    str = C2405c.f6946b.m1205M();
                }
                C3104j c3104j = C3104j.f9124a;
                C3104j.m157a(c3104j, "MyPhoneStateListener.onCallStateChanged state=" + String.valueOf(i), (String) null, 2, (Object) null);
                if (i == 0) {
                    C3086e.f9028a.m179c(C3086e.EnumC3087a.LISTERNER_PHONE_STATE, str);
                } else if (i == 1) {
                    C3086e.f9028a.m185a(C3086e.EnumC3087a.LISTERNER_PHONE_STATE, str);
                } else if (i != 2) {
                } else {
                    C3086e.f9028a.m180b(C3086e.EnumC3087a.LISTERNER_PHONE_STATE, str);
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
    }

    public MonitoringService() {
        this.f7220e.m951a(C3086e.EnumC3087a.BROADCAST_PHONE_STATE_RUNTIME);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        C1694h.m3117b(intent, "intent");
        return this.f7218c;
    }

    @Override // android.app.Service
    public void onCreate() {
        C3104j.m157a(C3104j.f9124a, "SERVICE: MonitoringService.onCreate", (String) null, 2, (Object) null);
        try {
            f7215g = this;
            MyApp m1802a = MyApp.f5480c.m1802a();
            boolean m117f = C3115o.f9175a.m117f();
            boolean m115h = C3115o.f9175a.m115h();
            boolean m113j = C3115o.f9175a.m113j();
            C3104j c3104j = C3104j.f9124a;
            C3104j.m157a(c3104j, "Permission canReadCallLog=" + String.valueOf(m117f), (String) null, 2, (Object) null);
            C3104j c3104j2 = C3104j.f9124a;
            C3104j.m157a(c3104j2, "Permission canReadPhoneState=" + String.valueOf(m115h), (String) null, 2, (Object) null);
            C3104j c3104j3 = C3104j.f9124a;
            C3104j.m157a(c3104j3, "Permission canReadContact=" + String.valueOf(m113j), (String) null, 2, (Object) null);
            if (!m117f || !m115h || !m113j) {
                C3104j.m157a(C3104j.f9124a, "MonitoringService.updateCallMonitoring invalid permissions!", (String) null, 2, (Object) null);
                C2273d.f6370a.m1710a(false);
            }
            this.f7219d.listen(this.f7221f, 32);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(TelephonyManager.EXTRA_STATE_RINGING);
            intentFilter.addAction("android.intent.action.PHONE_STATE");
            registerReceiver(this.f7220e, intentFilter);
            C3104j.m157a(C3104j.f9124a, "SERVICE: MonitoringService.onCreate startForeground", (String) null, 2, (Object) null);
            startForeground(this.f7217b, new C0445h.C0450d(m1802a, C3113m.f9165a.m131f()).m6633a(2131230930).m6620a((CharSequence) m1802a.getString(2131755150)).m6611b((CharSequence) m1802a.getString(2131755487)).m6610b("Checked Calls").m6597f(true).m6599e(true).m6604d(-2).m6628a(MainFragment.f7560b.m752a(m1802a)).m6616b());
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        try {
            C3104j.m154b(C3104j.f9124a, "MonitoringService.onDestroy", null, 2, null);
            this.f7219d.listen(this.f7221f, 0);
            unregisterReceiver(this.f7220e);
            stopForeground(true);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        String action;
        C3104j.m157a(C3104j.f9124a, "MonitoringService.onStartCommand", (String) null, 2, (Object) null);
        super.onStartCommand(intent, i, i2);
        if (intent == null || (action = intent.getAction()) == null || !C1694h.m3123a((Object) action, (Object) f7216h)) {
            return 1;
        }
        C3104j.m157a(C3104j.f9124a, "MonitoringService.onStartCommand stopForeground", (String) null, 2, (Object) null);
        stopForeground(true);
        stopSelf();
        return 1;
    }
}
