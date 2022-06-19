package com.kedlin.cca.core;

import android.app.AlarmManager;
import android.app.Application;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import com.flexaspect.android.everycallcontrol.ui.activities.MainActivity;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.kedlin.cca.receivers.EventReceiver;
import com.kedlin.cca.receivers.ScreenLockReceiver;
import p000.fa1;
import p000.j91;
import p000.n91;
import p000.q71;
import z7;
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/CCAApplication.class */
public class CCAApplication extends Application implements fa1.AbstractC1418c, fa1.AbstractC1417b {

    /* renamed from: a */
    public BroadcastReceiver f3659a = new C0627b(this);

    /* renamed from: com.kedlin.cca.core.CCAApplication$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/CCAApplication$a.class */
    public class C0626a implements j91.AbstractC1455d {
        public C0626a(CCAApplication cCAApplication) {
        }

        @Override // p000.j91.AbstractC1455d
        /* renamed from: a */
        public void mo1485a(Throwable th, String str) {
            FirebaseCrashlytics firebaseCrashlytics = FirebaseCrashlytics.getInstance();
            if (!TextUtils.isEmpty(str)) {
                firebaseCrashlytics.log(str);
            }
            firebaseCrashlytics.recordException(th);
        }

        @Override // p000.j91.AbstractC1455d
        /* renamed from: b */
        public void mo1484b(Throwable th, String str) {
            if (!TextUtils.isEmpty(str)) {
                FirebaseCrashlytics.getInstance().log(str);
            }
        }
    }

    /* renamed from: com.kedlin.cca.core.CCAApplication$b */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/CCAApplication$b.class */
    public class C0627b extends BroadcastReceiver {
        public C0627b(CCAApplication cCAApplication) {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action == null || !action.equals(aa1.f215h)) {
                return;
            }
            intent.setClass(context, CCAService.class);
            fa1.m1850P(intent);
        }
    }

    public CCAApplication() {
        fa1.m1854L(this);
    }

    /* renamed from: g */
    public static /* synthetic */ void m4415g() {
        Process.killProcess(Process.myPid());
        System.exit(0);
    }

    @Override // p000.fa1.AbstractC1417b
    /* renamed from: a */
    public void mo1823a(boolean z) {
        oe1.m1101W(z);
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(ke1.m1401d(context));
        oz.l(this);
    }

    @Override // p000.fa1.AbstractC1418c
    /* renamed from: b */
    public Class mo1820b() {
        return MainActivity.class;
    }

    @Override // p000.fa1.AbstractC1417b
    /* renamed from: c */
    public void mo1822c(String str) {
        Intent intent = new Intent(getApplicationContext(), CCAService.class);
        intent.addCategory(CCAService.f3671s);
        intent.putExtra(CCAService.f3662C, str);
        fa1.m1851O(this, intent);
    }

    @Override // p000.fa1.AbstractC1418c
    /* renamed from: d */
    public int mo1819d() {
        return 2131231626;
    }

    @Override // p000.fa1.AbstractC1417b
    /* renamed from: e */
    public void mo1821e(q71.EnumC1618e enumC1618e, i91 i91Var, String str, n91.C1485b c1485b) {
        Intent intent = new Intent(getApplicationContext(), CCAService.class);
        intent.addCategory(c1485b.f7083b ? CCAService.f3666n : CCAService.f3667o);
        intent.putExtra(CCAService.f3673u, i91Var.toString());
        intent.putExtra(CCAService.f3674v, str);
        intent.putExtra(CCAService.f3675w, c1485b.f7082a.ordinal());
        intent.putExtra(CCAService.f3676x, c1485b.f7087g);
        intent.putExtra(CCAService.f3677y, enumC1618e.ordinal());
        intent.putExtra(CCAService.f3678z, c1485b.f7086f);
        fa1.m1851O(this, intent);
    }

    @Override // p000.fa1.AbstractC1418c
    /* renamed from: f */
    public String mo1818f() {
        return "com.flexaspect.android.everycallcontrol";
    }

    /* renamed from: h */
    public void m4414h() {
        if (Build.VERSION.SDK_INT <= 28) {
            PendingIntent activity = PendingIntent.getActivity(this, 123456, new Intent(this, MainActivity.class), 268435456);
            AlarmManager alarmManager = (AlarmManager) getSystemService("alarm");
            if (alarmManager != null) {
                alarmManager.set(1, System.currentTimeMillis() + 1000, activity);
            }
        } else {
            m4413i(getApplicationContext(), 1000L, 969);
        }
        new Handler(Looper.getMainLooper()).postDelayed(c61.f2159a, 500L);
    }

    /* renamed from: i */
    public void m4413i(Context context, long j, int i) {
        Intent intent = new Intent(this, MainActivity.class);
        intent.setFlags(268435456);
        PendingIntent activity = PendingIntent.getActivity(this, 0, intent, 134217728);
        z7.e eVar = new z7.e(this, "phone_default");
        eVar.F(2131231608);
        z7.c cVar = new z7.c();
        cVar.m(getString(2131822115));
        cVar.l(getString(2131822114));
        eVar.H(cVar);
        eVar.r(getString(2131822115));
        eVar.q(getString(2131822114));
        eVar.C(2);
        eVar.l("recommendation");
        eVar.v(activity, true);
        eVar.j(true);
        Notification c = eVar.c();
        Intent intent2 = new Intent(context, EventReceiver.class);
        intent2.setAction(EventReceiver.f3750c);
        intent2.putExtra(EventReceiver.f3748a, i);
        intent2.putExtra(EventReceiver.f3749b, c);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, i, intent2, 268435456);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        if (alarmManager != null) {
            alarmManager.set(2, elapsedRealtime + j, broadcast);
        }
    }

    /* renamed from: j */
    public void m4412j() {
        stopService(new Intent(this, CCAService.class));
        s71.m620c(this);
        r71.m710l();
        u71.m437f();
        v91.m351k();
        m4414h();
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ke1.m1401d(this);
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        registerReceiver(new ScreenLockReceiver(), intentFilter);
        j91.m1491y(3);
        j91.m1523A(3);
        if (!fa1.m1832r().booleanValue()) {
            j91.m1491y(7);
            j91.m1508h();
            j91.m1490z(new C0626a(this));
        }
        b91.m5713u(this, true);
        s71.m618e();
        w91.m277a();
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction(aa1.f215h);
        nf.b(this).c(this.f3659a, intentFilter2);
        if (Build.VERSION.SDK_INT >= 26) {
            h61.m1641g(this);
        }
    }

    @Override // android.app.Application
    public void onTerminate() {
        super.onTerminate();
    }
}
