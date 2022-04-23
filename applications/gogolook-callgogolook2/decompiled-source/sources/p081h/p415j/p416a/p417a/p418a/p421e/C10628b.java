package p081h.p415j.p416a.p417a.p418a.p421e;

import android.annotation.SuppressLint;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.NonNull;
import p081h.p415j.p416a.p417a.p418a.p420d.C10626i;
/* renamed from: h.j.a.a.a.e.b */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/e/b.class */
public class C10628b {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: f */
    public static C10628b f24204f = new C10628b();

    /* renamed from: a */
    public Context f24205a;

    /* renamed from: b */
    public BroadcastReceiver f24206b;

    /* renamed from: c */
    public boolean f24207c;

    /* renamed from: d */
    public boolean f24208d;

    /* renamed from: e */
    public AbstractC10630b f24209e;

    /* renamed from: h.j.a.a.a.e.b$a */
    /* loaded from: classes2-dex2jar.jar:h/j/a/a/a/e/b$a.class */
    public class C10629a extends BroadcastReceiver {
        public C10629a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            KeyguardManager keyguardManager;
            if (intent != null) {
                if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                    C10628b.this.m11143a(true);
                } else if ("android.intent.action.USER_PRESENT".equals(intent.getAction()) || ("android.intent.action.SCREEN_ON".equals(intent.getAction()) && (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) != null && !keyguardManager.inKeyguardRestrictedInputMode())) {
                    C10628b.this.m11143a(false);
                }
            }
        }
    }

    /* renamed from: h.j.a.a.a.e.b$b */
    /* loaded from: classes2-dex2jar.jar:h/j/a/a/a/e/b$b.class */
    public interface AbstractC10630b {
        /* renamed from: a */
        void mo11117a(boolean z);
    }

    /* renamed from: g */
    public static C10628b m11137g() {
        return f24204f;
    }

    /* renamed from: a */
    public void m11147a() {
        m11140d();
        this.f24207c = true;
        m11138f();
    }

    /* renamed from: a */
    public void m11146a(@NonNull Context context) {
        this.f24205a = context.getApplicationContext();
    }

    /* renamed from: a */
    public void m11145a(AbstractC10630b bVar) {
        this.f24209e = bVar;
    }

    /* renamed from: a */
    public final void m11143a(boolean z) {
        if (this.f24208d != z) {
            this.f24208d = z;
            if (this.f24207c) {
                m11138f();
                AbstractC10630b bVar = this.f24209e;
                if (bVar != null) {
                    bVar.mo11117a(m11141c());
                }
            }
        }
    }

    /* renamed from: b */
    public void m11142b() {
        m11139e();
        this.f24207c = false;
        this.f24208d = false;
        this.f24209e = null;
    }

    /* renamed from: c */
    public boolean m11141c() {
        return !this.f24208d;
    }

    /* renamed from: d */
    public final void m11140d() {
        this.f24206b = new C10629a();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.f24205a.registerReceiver(this.f24206b, intentFilter);
    }

    /* renamed from: e */
    public final void m11139e() {
        BroadcastReceiver broadcastReceiver;
        Context context = this.f24205a;
        if (context != null && (broadcastReceiver = this.f24206b) != null) {
            context.unregisterReceiver(broadcastReceiver);
            this.f24206b = null;
        }
    }

    /* renamed from: f */
    public final void m11138f() {
        boolean z = this.f24208d;
        for (C10626i iVar : C10627a.m11148d().m11154a()) {
            iVar.m11157j().m11066a(!z);
        }
    }
}
