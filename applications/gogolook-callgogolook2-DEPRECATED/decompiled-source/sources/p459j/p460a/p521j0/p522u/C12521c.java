package p459j.p460a.p521j0.p522u;

import android.content.Context;
import android.os.Looper;
import android.telephony.SubscriptionManager;
import androidx.annotation.RequiresApi;
import gogolook.callgogolook2.MyApplication;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C14080m2;
@RequiresApi(api = 22)
/* renamed from: j.a.j0.u.c */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/c.class */
public class C12521c {

    /* renamed from: a */
    public Context f28219a;

    /* renamed from: b */
    public SubscriptionManager f28220b;

    /* renamed from: c */
    public int f28221c;

    /* renamed from: j.a.j0.u.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/c$a.class */
    public class C12522a extends SubscriptionManager.OnSubscriptionsChangedListener {
        public C12522a() {
        }

        @Override // android.telephony.SubscriptionManager.OnSubscriptionsChangedListener
        public void onSubscriptionsChanged() {
            C12521c.this.m5947b();
        }
    }

    /* renamed from: j.a.j0.u.c$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/c$b.class */
    public static class C12523b {

        /* renamed from: a */
        public static volatile C12521c f28223a = new C12521c(null);
    }

    public C12521c() {
        this.f28221c = 0;
        this.f28219a = MyApplication.m29013o();
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        this.f28220b = SubscriptionManager.from(this.f28219a);
        this.f28220b.addOnSubscriptionsChangedListener(new C12522a());
        m5947b();
    }

    public /* synthetic */ C12521c(C12522a aVar) {
        this();
    }

    /* renamed from: c */
    public static C12521c m5946c() {
        return C12523b.f28223a;
    }

    /* renamed from: a */
    public int m5949a() {
        return this.f28221c;
    }

    /* renamed from: b */
    public final void m5947b() {
        if (C13878a3.m3200r()) {
            try {
                this.f28221c = this.f28220b.getActiveSubscriptionInfoCount();
            } catch (SecurityException e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
    }
}
