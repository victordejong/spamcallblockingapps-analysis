package p193e.p1577m.p1578a.p1596c.p1636q1;

import p193e.p1577m.p1578a.p1596c.C24652o0;
import p193e.p1577m.p1578a.p1596c.C24854v;
/* renamed from: e.m.a.c.q1.y */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/y.class */
public final class C24806y implements AbstractC24791p {

    /* renamed from: a */
    public final AbstractC24776f f69526a;

    /* renamed from: b */
    public boolean f69527b;

    /* renamed from: c */
    public long f69528c;

    /* renamed from: d */
    public long f69529d;

    /* renamed from: e */
    public C24652o0 f69530e = C24652o0.f69035e;

    public C24806y(AbstractC24776f abstractC24776f) {
        this.f69526a = abstractC24776f;
    }

    /* renamed from: a */
    public void m4504a(long j) {
        this.f69528c = j;
        if (this.f69527b) {
            this.f69529d = this.f69526a.mo4502a();
        }
    }

    /* renamed from: b */
    public void m4503b() {
        if (!this.f69527b) {
            this.f69529d = this.f69526a.mo4502a();
            this.f69527b = true;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24791p
    public C24652o0 getPlaybackParameters() {
        return this.f69530e;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24791p
    /* renamed from: r */
    public long mo4348r() {
        ?? r0 = this.f69528c;
        char c = r0;
        if (this.f69527b) {
            long mo4502a = this.f69526a.mo4502a() - this.f69529d;
            C24652o0 c24652o0 = this.f69530e;
            c = c24652o0.f69036a == 1.0f ? r0 + C24854v.m4383a(mo4502a) : r0 + (mo4502a * c24652o0.f69039d);
        }
        return c;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24791p
    /* renamed from: t */
    public void mo4347t(C24652o0 c24652o0) {
        if (this.f69527b) {
            m4504a(mo4348r());
        }
        this.f69530e = c24652o0;
    }
}
