package p131c.p372f.p373a.p374a.p375a;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.integralads.avid.library.inmobi.session.internal.InternalAvidAdSession;
import p131c.p372f.p373a.p374a.p375a.p380l.C6425a;
/* renamed from: c.f.a.a.a.e */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/e.class */
public class C6407e {

    /* renamed from: f */
    public static C6407e f20079f = new C6407e();

    /* renamed from: a */
    public Context f20080a;

    /* renamed from: b */
    public BroadcastReceiver f20081b;

    /* renamed from: c */
    public boolean f20082c;

    /* renamed from: d */
    public boolean f20083d;

    /* renamed from: e */
    public AbstractC6409b f20084e;

    /* renamed from: c.f.a.a.a.e$a */
    /* loaded from: classes2-dex2jar.jar:c/f/a/a/a/e$a.class */
    public class C6408a extends BroadcastReceiver {
        public C6408a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            KeyguardManager keyguardManager;
            if (intent != null) {
                if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                    C6407e.this.m20950a(true);
                } else if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                    C6407e.this.m20950a(false);
                } else if ("android.intent.action.SCREEN_ON".equals(intent.getAction()) && (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) != null && !keyguardManager.inKeyguardRestrictedInputMode()) {
                    C6407e.this.m20950a(false);
                }
            }
        }
    }

    /* renamed from: c.f.a.a.a.e$b */
    /* loaded from: classes2-dex2jar.jar:c/f/a/a/a/e$b.class */
    public interface AbstractC6409b {
        void onAppStateChanged(boolean z);
    }

    /* renamed from: g */
    public static C6407e m20944g() {
        return f20079f;
    }

    /* renamed from: a */
    public void m20953a(Context context) {
        m20945f();
        this.f20080a = context;
        m20948c();
    }

    /* renamed from: a */
    public void m20952a(AbstractC6409b bVar) {
        this.f20084e = bVar;
    }

    /* renamed from: a */
    public final void m20950a(boolean z) {
        if (this.f20083d != z) {
            this.f20083d = z;
            if (this.f20082c) {
                m20949b();
                AbstractC6409b bVar = this.f20084e;
                if (bVar != null) {
                    bVar.onAppStateChanged(m20954a());
                }
            }
        }
    }

    /* renamed from: a */
    public boolean m20954a() {
        return !this.f20083d;
    }

    /* renamed from: b */
    public final void m20949b() {
        boolean z = this.f20083d;
        for (InternalAvidAdSession internalAvidAdSession : C6425a.m20900d().m20906a()) {
            internalAvidAdSession.m5451b(!z);
        }
    }

    /* renamed from: c */
    public final void m20948c() {
        this.f20081b = new C6408a();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.f20080a.registerReceiver(this.f20081b, intentFilter);
    }

    /* renamed from: d */
    public void m20947d() {
        this.f20082c = true;
        m20949b();
    }

    /* renamed from: e */
    public void m20946e() {
        m20945f();
        this.f20080a = null;
        this.f20082c = false;
        this.f20083d = false;
        this.f20084e = null;
    }

    /* renamed from: f */
    public final void m20945f() {
        BroadcastReceiver broadcastReceiver;
        Context context = this.f20080a;
        if (context != null && (broadcastReceiver = this.f20081b) != null) {
            context.unregisterReceiver(broadcastReceiver);
            this.f20081b = null;
        }
    }
}
