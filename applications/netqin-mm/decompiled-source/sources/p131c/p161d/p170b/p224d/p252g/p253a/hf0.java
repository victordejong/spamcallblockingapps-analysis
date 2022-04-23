package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzqd;
import com.google.android.gms.internal.ads.zzqg;
/* renamed from: c.d.b.d.g.a.hf0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/hf0.class */
public final class hf0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f13460a;

    /* renamed from: b */
    public final /* synthetic */ int f13461b;

    /* renamed from: c */
    public final /* synthetic */ int f13462c;

    /* renamed from: d */
    public final /* synthetic */ float f13463d;

    /* renamed from: e */
    public final /* synthetic */ zzqg f13464e;

    public hf0(zzqg zzqgVar, int i, int i2, int i3, float f) {
        this.f13464e = zzqgVar;
        this.f13460a = i;
        this.f13461b = i2;
        this.f13462c = i3;
        this.f13463d = f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzqd zzqdVar;
        zzqdVar = this.f13464e.f28857b;
        zzqdVar.mo11568a(this.f13460a, this.f13461b, this.f13462c, this.f13463d);
    }
}
