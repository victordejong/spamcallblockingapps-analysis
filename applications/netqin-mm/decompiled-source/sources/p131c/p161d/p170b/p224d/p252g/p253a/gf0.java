package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzqd;
import com.google.android.gms.internal.ads.zzqg;
/* renamed from: c.d.b.d.g.a.gf0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/gf0.class */
public final class gf0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f13202a;

    /* renamed from: b */
    public final /* synthetic */ long f13203b;

    /* renamed from: c */
    public final /* synthetic */ long f13204c;

    /* renamed from: d */
    public final /* synthetic */ zzqg f13205d;

    public gf0(zzqg zzqgVar, String str, long j, long j2) {
        this.f13205d = zzqgVar;
        this.f13202a = str;
        this.f13203b = j;
        this.f13204c = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzqd zzqdVar;
        zzqdVar = this.f13205d.f28857b;
        zzqdVar.mo11564a(this.f13202a, this.f13203b, this.f13204c);
    }
}
