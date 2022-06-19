package p122i2;

import com.google.android.gms.internal.play_billing.zzu;
/* renamed from: i2.k */
/* loaded from: classes-dex2jar.jar:i2/k.class */
public final /* synthetic */ class RunnableC3075k implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f10410a;

    /* renamed from: b */
    public final /* synthetic */ Object f10411b;

    public /* synthetic */ RunnableC3075k(Object obj, int i) {
        this.f10410a = i;
        this.f10411b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10410a) {
            case 0:
                ServiceConnectionC3077m serviceConnectionC3077m = (ServiceConnectionC3077m) this.f10411b;
                serviceConnectionC3077m.f10416d.f3210a = 0;
                serviceConnectionC3077m.f10416d.f3215f = null;
                serviceConnectionC3077m.m2658a(C3078n.f10429m);
                return;
            default:
                ((AbstractC3071g) this.f10411b).mo155b(C3078n.f10429m, zzu.zzh());
                return;
        }
    }
}
