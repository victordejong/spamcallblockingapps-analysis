package org.mistergroup.shouldianswer.services;

import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.IBinder;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import androidx.core.app.C0445h;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.C2405c;
import org.mistergroup.shouldianswer.p101ui.main.MainFragment;
import org.mistergroup.shouldianswer.receivers.PhoneStateReceiver;
import org.mistergroup.shouldianswer.utils.C3086e;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3113m;
import org.mistergroup.shouldianswer.utils.C3115o;
import org.mistergroup.shouldianswer.utils.C3135y;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/OnCallService.class */
public final class OnCallService extends Service {

    /* renamed from: g */
    private static OnCallService f7234g;

    /* renamed from: j */
    private static OnCallService f7237j;

    /* renamed from: k */
    private static boolean f7238k;

    /* renamed from: b */
    private final int f7240b = 1233311;

    /* renamed from: c */
    private final BinderC2478c f7241c = new BinderC2478c();

    /* renamed from: d */
    private final TelephonyManager f7242d = C3135y.f9272b.m20d();

    /* renamed from: e */
    private final PhoneStateReceiver f7243e = new PhoneStateReceiver();

    /* renamed from: f */
    private final C2479d f7244f = new C2479d();

    /* renamed from: a */
    public static final C2476a f7233a = new C2476a(null);

    /* renamed from: h */
    private static final String f7235h = f7235h;

    /* renamed from: h */
    private static final String f7235h = f7235h;

    /* renamed from: i */
    private static final String f7236i = f7236i;

    /* renamed from: i */
    private static final String f7236i = f7236i;

    /* renamed from: l */
    private static final ServiceConnectionC2477b f7239l = new ServiceConnectionC2477b();

    /* renamed from: org.mistergroup.shouldianswer.services.OnCallService$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/OnCallService$a.class */
    public static final class C2476a {
        private C2476a() {
        }

        public /* synthetic */ C2476a(C1691e c1691e) {
            this();
        }

        /* renamed from: c */
        public final void m934c() {
            C3104j.m157a(C3104j.f9124a, "OnCallService.stop", (String) null, 2, (Object) null);
            C2476a c2476a = this;
            OnCallService m938a = c2476a.m938a();
            if (m938a != null) {
                if (C3115o.f9175a.m120c()) {
                    C3104j.m157a(C3104j.f9124a, "OnCallService.stop stopForeground(STOP_FOREGROUND_REMOVE)", (String) null, 2, (Object) null);
                    m938a.stopForeground(1);
                    m938a.stopSelf();
                } else {
                    C3104j.m157a(C3104j.f9124a, "OnCallService.stop stopForeground(true)", (String) null, 2, (Object) null);
                    m938a.stopForeground(true);
                    m938a.stopSelf();
                }
            }
            c2476a.m936a((OnCallService) null);
        }

        /* renamed from: a */
        public final OnCallService m938a() {
            return OnCallService.f7234g;
        }

        /* renamed from: a */
        public final void m936a(OnCallService onCallService) {
            OnCallService.f7234g = onCallService;
        }

        /* renamed from: b */
        public final void m935b() {
            try {
                Intent intent = new Intent(MyApp.f5480c.m1802a(), OnCallService.class);
                if (C3115o.f9175a.m120c()) {
                    C3104j.m157a(C3104j.f9124a, "OnCallService.start startForegroundService", (String) null, 2, (Object) null);
                    MyApp.f5480c.m1802a().startForegroundService(intent);
                } else {
                    C3104j.m157a(C3104j.f9124a, "OnCallService.start startService", (String) null, 2, (Object) null);
                    MyApp.f5480c.m1802a().startService(intent);
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.services.OnCallService$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/OnCallService$b.class */
    public static final class ServiceConnectionC2477b implements ServiceConnection {
        ServiceConnectionC2477b() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C1694h.m3117b(componentName, "className");
            C1694h.m3117b(iBinder, "service");
            OnCallService.f7237j = ((BinderC2478c) iBinder).m933a();
            OnCallService.f7238k = true;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C1694h.m3117b(componentName, "arg0");
            OnCallService.f7238k = false;
            OnCallService.f7237j = null;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.services.OnCallService$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/OnCallService$c.class */
    private final class BinderC2478c extends Binder {
        public BinderC2478c() {
            OnCallService.this = r4;
        }

        /* renamed from: a */
        public final OnCallService m933a() {
            return OnCallService.this;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.services.OnCallService$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/OnCallService$d.class */
    private static final class C2479d extends PhoneStateListener {
        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(int i, String str) {
            try {
                if (C2405c.f6946b.m1205M().length() > 0) {
                    str = C2405c.f6946b.m1205M();
                }
                C3104j c3104j = C3104j.f9124a;
                C3104j.m157a(c3104j, "MyPhoneStateListener.onCallStateChanged state=" + String.valueOf(i), (String) null, 2, (Object) null);
                if (i != 0) {
                    return;
                }
                C3086e.f9028a.m179c(C3086e.EnumC3087a.LISTERNER_PHONE_STATE, str);
                OnCallService.f7233a.m934c();
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
    }

    public OnCallService() {
        this.f7243e.m951a(C3086e.EnumC3087a.BROADCAST_PHONE_STATE_RUNTIME);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        C1694h.m3117b(intent, "intent");
        return this.f7241c;
    }

    @Override // android.app.Service
    public void onCreate() {
        C3104j.m157a(C3104j.f9124a, "SERVICE: OnCallService.onCreate", (String) null, 2, (Object) null);
        try {
            f7234g = this;
            this.f7242d.listen(this.f7244f, 32);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(TelephonyManager.EXTRA_STATE_RINGING);
            intentFilter.addAction("android.intent.action.PHONE_STATE");
            registerReceiver(this.f7243e, intentFilter);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
        C3104j.m157a(C3104j.f9124a, "SERVICE: OnCallService.onCreate.End", (String) null, 2, (Object) null);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        try {
            C3104j.m154b(C3104j.f9124a, "OnCallService.onDestroy", null, 2, null);
            this.f7242d.listen(this.f7244f, 0);
            unregisterReceiver(this.f7243e);
            stopForeground(true);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        String action;
        C3104j.m157a(C3104j.f9124a, "OnCallService.onStartCommand", (String) null, 2, (Object) null);
        super.onStartCommand(intent, i, i2);
        if (intent == null || intent.getAction() == null) {
            C3104j.m157a(C3104j.f9124a, "SERVICE: OnCallService.onStartCommand startForeground", (String) null, 2, (Object) null);
            MyApp m1802a = MyApp.f5480c.m1802a();
            startForeground(this.f7240b, new C0445h.C0450d(m1802a, C3113m.f9165a.m133d()).m6633a(2131230930).m6599e(true).m6604d(-2).m6628a(MainFragment.f7560b.m752a(m1802a)).m6616b());
        }
        if (intent == null || (action = intent.getAction()) == null) {
            return 1;
        }
        if (C1694h.m3123a((Object) action, (Object) f7235h)) {
            C3104j.m157a(C3104j.f9124a, "OnCallService.onStartCommand stopForeground", (String) null, 2, (Object) null);
            stopForeground(true);
            stopSelf();
        }
        if (!C1694h.m3123a((Object) action, (Object) f7236i)) {
            return 1;
        }
        C3104j.m157a(C3104j.f9124a, "OnCallService.onStartCommand showPopup", (String) null, 2, (Object) null);
        return 1;
    }
}
