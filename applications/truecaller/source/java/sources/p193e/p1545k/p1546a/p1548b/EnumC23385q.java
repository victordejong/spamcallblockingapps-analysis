package p193e.p1545k.p1546a.p1548b;

import p193e.p1545k.p1546a.p1548b.p1549a0.AbstractC23356h;
/* renamed from: e.k.a.b.q */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/q.class */
public enum EnumC23385q implements AbstractC23356h {
    DUPLICATE_PROPERTIES(false),
    SCALARS_AS_OBJECTS(false),
    UNTYPED_SCALARS(false);
    

    /* renamed from: a */
    public final boolean f64718a;

    /* renamed from: b */
    public final int f64719b = 1 << ordinal();

    EnumC23385q(boolean z) {
        this.f64718a = z;
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1549a0.AbstractC23356h
    /* renamed from: a */
    public int mo7193a() {
        return this.f64719b;
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1549a0.AbstractC23356h
    /* renamed from: c */
    public boolean mo7192c() {
        return this.f64718a;
    }
}
