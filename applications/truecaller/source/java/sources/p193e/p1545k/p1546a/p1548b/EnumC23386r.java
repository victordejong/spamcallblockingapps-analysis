package p193e.p1545k.p1546a.p1548b;

import p193e.p1545k.p1546a.p1548b.p1549a0.AbstractC23356h;
/* renamed from: e.k.a.b.r */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/r.class */
public enum EnumC23386r implements AbstractC23356h {
    CAN_WRITE_BINARY_NATIVELY(false),
    CAN_WRITE_FORMATTED_NUMBERS(false);
    

    /* renamed from: a */
    public final boolean f64723a;

    /* renamed from: b */
    public final int f64724b = 1 << ordinal();

    EnumC23386r(boolean z) {
        this.f64723a = z;
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1549a0.AbstractC23356h
    /* renamed from: a */
    public int mo7193a() {
        return this.f64724b;
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1549a0.AbstractC23356h
    /* renamed from: c */
    public boolean mo7192c() {
        return this.f64723a;
    }
}
