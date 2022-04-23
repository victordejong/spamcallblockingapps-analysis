package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzdra;
/* renamed from: c.d.b.d.g.a.xy */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/xy.class */
public final class C4232xy {

    /* renamed from: a */
    public final long f16071a;

    /* renamed from: c */
    public long f16073c;

    /* renamed from: b */
    public final zzdra f16072b = new zzdra();

    /* renamed from: d */
    public int f16074d = 0;

    /* renamed from: e */
    public int f16075e = 0;

    /* renamed from: f */
    public int f16076f = 0;

    public C4232xy() {
        long b = zzp.m17962j().mo17091b();
        this.f16071a = b;
        this.f16073c = b;
    }

    /* renamed from: a */
    public final long m26152a() {
        return this.f16071a;
    }

    /* renamed from: b */
    public final long m26151b() {
        return this.f16073c;
    }

    /* renamed from: c */
    public final int m26150c() {
        return this.f16074d;
    }

    /* renamed from: d */
    public final String m26149d() {
        return "Created: " + this.f16071a + " Last accessed: " + this.f16073c + " Accesses: " + this.f16074d + "\nEntries retrieved: Valid: " + this.f16075e + " Stale: " + this.f16076f;
    }

    /* renamed from: e */
    public final void m26148e() {
        this.f16073c = zzp.m17962j().mo17091b();
        this.f16074d++;
    }

    /* renamed from: f */
    public final void m26147f() {
        this.f16075e++;
        this.f16072b.f27765a = true;
    }

    /* renamed from: g */
    public final void m26146g() {
        this.f16076f++;
        this.f16072b.f27766b++;
    }

    /* renamed from: h */
    public final zzdra m26145h() {
        zzdra zzdraVar = (zzdra) this.f16072b.clone();
        zzdra zzdraVar2 = this.f16072b;
        zzdraVar2.f27765a = false;
        zzdraVar2.f27766b = 0;
        return zzdraVar;
    }
}
