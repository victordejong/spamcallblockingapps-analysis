package p081h.p093b.p099c.p100a.p101j;

import android.text.TextUtils;
import p081h.p093b.p099c.p100a.C5607h;
/* renamed from: h.b.c.a.j.e */
/* loaded from: classes-dex2jar.jar:h/b/c/a/j/e.class */
public class C5613e implements AbstractC5609a {

    /* renamed from: a */
    public final CharSequence f14025a;

    /* renamed from: b */
    public final CharSequence f14026b;

    /* renamed from: c */
    public final long f14027c;

    /* renamed from: d */
    public final Long f14028d;

    /* renamed from: e */
    public final String f14029e;

    /* renamed from: f */
    public final long f14030f;

    /* renamed from: g */
    public final C5607h f14031g;

    /* renamed from: h */
    public boolean f14032h = false;

    /* renamed from: i */
    public CharSequence f14033i;

    public C5613e(C5607h hVar) {
        this.f14025a = hVar.m25023g();
        this.f14026b = hVar.m25027c().trim();
        this.f14027c = hVar.m25039a();
        this.f14028d = hVar.m25024f();
        this.f14029e = hVar.m25021i();
        this.f14030f = hVar.m25030b();
        this.f14031g = hVar;
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    /* renamed from: a */
    public void mo25011a(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f14033i = str;
        } else {
            this.f14033i = str.trim();
        }
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    /* renamed from: b */
    public long mo25010b() {
        return this.f14027c;
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    /* renamed from: c */
    public String mo25009c() {
        return this.f14029e;
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    /* renamed from: d */
    public C5607h mo25008d() {
        return this.f14031g;
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    /* renamed from: e */
    public Long mo25007e() {
        return this.f14028d;
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    /* renamed from: f */
    public CharSequence mo25006f() {
        return !TextUtils.isEmpty(this.f14033i) ? this.f14033i : this.f14031g.m25027c();
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    /* renamed from: g */
    public long mo25005g() {
        return this.f14030f;
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    public CharSequence getValue() {
        return this.f14026b;
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    public boolean isSelected() {
        return this.f14032h;
    }

    public String toString() {
        return ((Object) this.f14025a) + " <" + ((Object) this.f14026b) + ">";
    }
}
