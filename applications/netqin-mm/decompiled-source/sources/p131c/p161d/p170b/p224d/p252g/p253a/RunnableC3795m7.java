package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzbdh;
/* renamed from: c.d.b.d.g.a.m7 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/m7.class */
public final class RunnableC3795m7 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ boolean f14020a;

    /* renamed from: b */
    public final /* synthetic */ zzbdh f14021b;

    public RunnableC3795m7(zzbdh zzbdhVar, boolean z) {
        this.f14021b = zzbdhVar;
        this.f14020a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f14021b.m15793b("windowVisibilityChanged", "isVisible", String.valueOf(this.f14020a));
    }
}
