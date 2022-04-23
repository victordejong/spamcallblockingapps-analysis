package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdqd;
/* renamed from: c.d.b.d.g.a.sy */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/sy.class */
public final class C4047sy {

    /* renamed from: a */
    public final zzdqd f15325a = new zzdqd();

    /* renamed from: b */
    public int f15326b;

    /* renamed from: c */
    public int f15327c;

    /* renamed from: d */
    public int f15328d;

    /* renamed from: e */
    public int f15329e;

    /* renamed from: f */
    public int f15330f;

    /* renamed from: a */
    public final void m26337a() {
        this.f15328d++;
    }

    /* renamed from: b */
    public final void m26336b() {
        this.f15329e++;
    }

    /* renamed from: c */
    public final void m26335c() {
        this.f15326b++;
        this.f15325a.f27720a = true;
    }

    /* renamed from: d */
    public final void m26334d() {
        this.f15327c++;
        this.f15325a.f27721b = true;
    }

    /* renamed from: e */
    public final void m26333e() {
        this.f15330f++;
    }

    /* renamed from: f */
    public final zzdqd m26332f() {
        zzdqd zzdqdVar = (zzdqd) this.f15325a.clone();
        zzdqd zzdqdVar2 = this.f15325a;
        zzdqdVar2.f27720a = false;
        zzdqdVar2.f27721b = false;
        return zzdqdVar;
    }

    /* renamed from: g */
    public final String m26331g() {
        return "\n\tPool does not exist: " + this.f15328d + "\n\tNew pools created: " + this.f15326b + "\n\tPools removed: " + this.f15327c + "\n\tEntries added: " + this.f15330f + "\n\tNo entries retrieved: " + this.f15329e + "\n";
    }
}
