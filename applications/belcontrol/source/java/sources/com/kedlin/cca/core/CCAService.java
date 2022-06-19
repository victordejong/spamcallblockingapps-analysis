package com.kedlin.cca.core;

import android.app.AlarmManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.SystemClock;
import android.text.TextUtils;
import com.flexaspect.android.everycallcontrol.ui.activities.MainActivity;
import com.kedlin.cca.core.sync.ServerSync;
import com.kedlin.cca.p007ui.CCAEActivity;
import p000.fa1;
import p000.q71;
import p000.r71;
import p000.ra1;
import z7;
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/CCAService.class */
public class CCAService extends ContactSyncService implements ra1.AbstractC1647e {

    /* renamed from: d */
    public HandlerThread f3679d;

    /* renamed from: f */
    public Handler f3680f;

    /* renamed from: g */
    public boolean f3681g = false;

    /* renamed from: h */
    public sa1 f3682h = null;

    /* renamed from: j */
    public ra1.AbstractC1648f f3683j = null;

    /* renamed from: k */
    public static final String f3663k = CCAService.class.getName() + ".CATEGORY_WAKEUP";

    /* renamed from: l */
    public static final String f3664l = CCAService.class.getName() + ".CATEGORY_PLACE_CALL";

    /* renamed from: m */
    public static final String f3665m = CCAService.class.getName() + ".CATEGORY_SETTINGS_CHANGED";

    /* renamed from: n */
    public static final String f3666n = CCAService.class.getName() + ".CATEGORY_CONTENT_BLOCKED";

    /* renamed from: o */
    public static final String f3667o = CCAService.class.getName() + ".CATEGORY_CONTENT_MISSED";

    /* renamed from: p */
    public static final String f3668p = CCAService.class.getName() + ".CATEGORY_CALL_PURCHASE";

    /* renamed from: q */
    public static final String f3669q = CCAService.class.getName() + ".CATEGORY_WIDGET_ACTION";

    /* renamed from: r */
    public static final String f3670r = CCAService.class.getName() + ".CATEGORY_CALL_SUPPORT";

    /* renamed from: s */
    public static final String f3671s = CCAService.class.getName() + ".CATEGORY_SHOW_ATTORNEY";

    /* renamed from: t */
    public static final String f3672t = CCAService.class.getName() + ".CATEGORY_CC_DISABLED_REMINDER";

    /* renamed from: u */
    public static final String f3673u = CCAService.class.getName() + ".EXTRA_PHONE_NUMBER";

    /* renamed from: v */
    public static final String f3674v = CCAService.class.getName() + ".EXTRA_TEXT";

    /* renamed from: w */
    public static final String f3675w = CCAService.class.getName() + ".EXTRA_REASON";

    /* renamed from: x */
    public static final String f3676x = CCAService.class.getName() + ".EXTRA_COMMUNITY_TYPE";

    /* renamed from: y */
    public static final String f3677y = CCAService.class.getName() + ".EXTRA_CONTENT_TYPE";

    /* renamed from: z */
    public static final String f3678z = CCAService.class.getName() + ".EXTRA_DISPLAY_NAME";

    /* renamed from: A */
    public static final String f3660A = CCAService.class.getName() + ".EXTRA_PURCHASE_ORIGIN";

    /* renamed from: B */
    public static final String f3661B = CCAService.class.getName() + ".EXTRA_WIDGET_ACTION";

    /* renamed from: C */
    public static final String f3662C = CCAService.class.getName() + ".EXTRA_ATTORNEY_URL";

    /* renamed from: com.kedlin.cca.core.CCAService$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/CCAService$a.class */
    public class RunnableC0628a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Intent f3684a;

        public RunnableC0628a(CCAService cCAService, Intent intent) {
            this.f3684a = intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            p71.m943c().mo1225a(this.f3684a);
        }
    }

    /* renamed from: com.kedlin.cca.core.CCAService$b */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/CCAService$b.class */
    public enum EnumC0629b {
        NORMAL(2131231611, 2131820747),
        NOT_RUNNING(2131231609, 2131820743),
        BLOCKED(2131231608, 2131820733),
        MISSED(2131231608, 2131820733),
        EMERGENCY(2131231610, 2131820746);
        

        /* renamed from: a */
        public int f3691a;

        /* renamed from: b */
        public int f3692b;

        EnumC0629b(int i, int i2) {
            this.f3691a = i2;
            this.f3692b = i;
        }

        /* renamed from: a */
        public int m4405a() {
            return this.f3692b;
        }

        /* renamed from: b */
        public int m4404b() {
            return this.f3691a;
        }
    }

    static {
        String str = CCAService.class.getName() + ".EXTRA_CCH_ID_SUPPORT";
    }

    /* renamed from: e */
    public static void m4411e(Context context) {
        ((NotificationManager) context.getSystemService("notification")).cancel(2);
    }

    @Override // p000.ra1.AbstractC1647e
    /* renamed from: a */
    public ra1.AbstractC1648f mo646a() {
        if (this.f3683j == null) {
            this.f3683j = oe1.m1075l();
        }
        return this.f3683j;
    }

    @Override // android.app.Service, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(ke1.m1401d(context));
    }

    /* renamed from: f */
    public final void m4410f(String str) {
        Intent intent = new Intent(this, CCAService.class);
        intent.addCategory(f3672t);
        PendingIntent service = PendingIntent.getService(this, 1, intent, 134217728);
        z7.e eVar = new z7.e(this, "cca_service");
        eVar.F(EnumC0629b.BLOCKED.m4405a());
        eVar.r(getString(2131820745));
        eVar.q(getString(2131820744, new Object[]{str}));
        eVar.p(service);
        z7.c cVar = new z7.c();
        cVar.m(getString(2131820745));
        cVar.l(getString(2131820744, new Object[]{str}));
        eVar.H(cVar);
        if (Build.VERSION.SDK_INT >= 26) {
            startForeground(3, eVar.c());
        } else {
            ((NotificationManager) getApplication().getSystemService("notification")).notify(3, eVar.c());
        }
    }

    /* renamed from: g */
    public final void m4409g(EnumC0629b enumC0629b) {
        m4408h(enumC0629b, null, null, q71.EnumC1618e.CALL, -1, 0, null);
    }

    /* renamed from: h */
    public final void m4408h(EnumC0629b enumC0629b, String str, String str2, q71.EnumC1618e enumC1618e, int i, int i2, String str3) {
        PendingIntent pendingIntent;
        String string = getResources().getString(i61.app_name);
        EnumC0629b enumC0629b2 = EnumC0629b.BLOCKED;
        if ((enumC0629b == enumC0629b2 || enumC0629b == EnumC0629b.MISSED) && enumC1618e == q71.EnumC1618e.CALL) {
            Intent intent = new Intent(this, CCAService.class);
            intent.setAction("android.intent.action.VIEW");
            intent.addCategory(enumC0629b == enumC0629b2 ? f3666n : f3667o);
            intent.putExtra(f3677y, enumC1618e.ordinal());
            intent.putExtra("com.kedlin.cca.extra.MISSEDCALLNAMESUGGESTIONTIMESTAMP", System.currentTimeMillis());
            if (str != null) {
                intent.putExtra(f3673u, str);
            }
            if (-1 != i) {
                intent.putExtra(f3675w, i);
            }
            if (i2 != 0) {
                intent.putExtra(f3676x, i2);
            }
            if (str3 != null) {
                intent.putExtra(f3678z, str3);
            }
            pendingIntent = PendingIntent.getService(this, 0, intent, 134217728);
        } else {
            Intent intent2 = new Intent(this, MainActivity.class);
            intent2.putExtra(f3677y, enumC1618e.ordinal());
            pendingIntent = PendingIntent.getActivity(this, 1, intent2, 134217728);
        }
        z7.e eVar = new z7.e(this, "cca_service");
        eVar.F(enumC0629b.m4405a());
        eVar.r(string);
        eVar.q(TextUtils.isEmpty(str2) ? getResources().getString(enumC0629b.m4404b()) : str2);
        eVar.p(pendingIntent);
        if (enumC0629b == enumC0629b2 || enumC0629b == EnumC0629b.MISSED) {
            String str4 = str2;
            if (TextUtils.isEmpty(str2)) {
                str4 = getResources().getString(enumC0629b.m4404b());
            }
            eVar.I(str4);
            if (!r71.EnumC1638a.f7979q.m695a()) {
                if (Build.VERSION.SDK_INT >= 26) {
                    startForeground(2, eVar.c());
                    return;
                } else {
                    ((NotificationManager) getApplication().getSystemService("notification")).notify(2, eVar.c());
                    return;
                }
            }
        }
        eVar.A(true);
        if (r71.EnumC1638a.f7976p.m695a() || Build.VERSION.SDK_INT >= 26) {
            startForeground(1, eVar.c());
        } else {
            stopForeground(true);
        }
    }

    /* renamed from: i */
    public void m4407i(int i) {
        m4406j(getString(i));
    }

    /* renamed from: j */
    public void m4406j(String str) {
        AlarmManager alarmManager = (AlarmManager) getSystemService("alarm");
        Intent intent = new Intent("com.kedlin.cca.receivers.IntentToServiceTransportReceiver.ACTION_TRANSPORT");
        intent.addCategory(f3672t);
        intent.putExtra(f3675w, str);
        alarmManager.set(0, System.currentTimeMillis() + 7200000, PendingIntent.getBroadcast(getApplicationContext(), 2, intent, 0));
    }

    @Override // com.kedlin.cca.core.ContactSyncService, android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        if (r71.m709m().length == 0 || !r71.EnumC1638a.f7907L0.m695a()) {
            stopSelf();
            return;
        }
        super.onCreate();
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            fa1.m1842h("cca_service", "Call Control Background Service", false);
            if (fa1.m1829u()) {
                fa1.m1842h("cca_message", "Call Control Messages", true);
            }
        }
        if (i >= 24) {
            sa1 sa1Var = new sa1();
            this.f3682h = sa1Var;
            sa1Var.m602b(getApplicationContext());
        }
        m4409g(r71.EnumC1638a.f7942d.m695a() ? EnumC0629b.NORMAL : EnumC0629b.NOT_RUNNING);
        j91.m1522B("CCA");
        o91.m1131c();
        ra1.m650g(this);
        HandlerThread handlerThread = new HandlerThread("cca_service_worker_thread", 10);
        this.f3679d = handlerThread;
        handlerThread.start();
        this.f3680f = new Handler(this.f3679d.getLooper());
        fa1.C1420e.m1798q(this);
        i91.m1590x();
        o71.m1147m();
        u71.m443G();
        if (!r71.EnumC1638a.f7920S.m695a()) {
            aa1.m7298n();
        }
        z91.m40s();
        ServerSync.m4356l();
        try {
            PushListenerService.m4390b();
        } catch (Throwable th) {
        }
    }

    @Override // com.kedlin.cca.core.ContactSyncService, android.app.Service
    public void onDestroy() {
        sa1 sa1Var;
        aa1.m7296p();
        z91.m38u();
        if (Build.VERSION.SDK_INT >= 24 && (sa1Var = this.f3682h) != null) {
            sa1Var.m603a(getApplicationContext());
        }
        if (!r71.m724L()) {
            fa1.C1420e.m1797r(this);
            stopForeground(true);
            this.f3679d.quit();
            this.f3680f = null;
            w91.m269i();
            j91.m1520D("CCA", false);
        }
        super.onDestroy();
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x0394, code lost:
        if (p000.r71.EnumC1638a.f7942d.m695a() != false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0397, code lost:
        r15 = com.kedlin.cca.core.CCAService.EnumC0629b.NORMAL;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x039f, code lost:
        r15 = com.kedlin.cca.core.CCAService.EnumC0629b.NOT_RUNNING;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0508, code lost:
        if (p000.r71.EnumC1638a.f7942d.m695a() != false) goto L111;
     */
    /* JADX WARN: Removed duplicated region for block: B:66:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0246  */
    @Override // com.kedlin.cca.core.ContactSyncService, android.app.Service
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int onStartCommand(android.content.Intent r11, int r12, int r13) {
        /*
            Method dump skipped, instructions count: 1294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kedlin.cca.core.CCAService.onStartCommand(android.content.Intent, int, int):int");
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        if (Build.VERSION.SDK_INT < 23) {
            Intent intent2 = new Intent(this, CCAEActivity.class);
            intent2.addFlags(268435456);
            startActivity(intent2);
            return;
        }
        AlarmManager alarmManager = (AlarmManager) getSystemService("alarm");
        Intent intent3 = new Intent("com.kedlin.cca.receivers.IntentToServiceTransportReceiver.ACTION_TRANSPORT");
        intent.addCategory(f3663k);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setAction("android.intent.action.MAIN");
        intent3.addFlags(268435456);
        alarmManager.set(2, SystemClock.elapsedRealtime() + 500, PendingIntent.getBroadcast(getApplicationContext(), 1, intent3, 0));
    }
}
