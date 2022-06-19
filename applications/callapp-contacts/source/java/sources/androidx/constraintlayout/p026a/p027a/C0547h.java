package androidx.constraintlayout.p026a.p027a;

import androidx.constraintlayout.p026a.C0557d;
import androidx.constraintlayout.p026a.C0567h;
import androidx.constraintlayout.p026a.p027a.C0538d;
import androidx.constraintlayout.p026a.p027a.C0541e;
import java.util.HashMap;
/* renamed from: androidx.constraintlayout.a.a.h */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/h.class */
public final class C0547h extends C0541e {

    /* renamed from: aK */
    private boolean f2210aK;

    /* renamed from: a */
    protected float f2207a = -1.0f;

    /* renamed from: b */
    protected int f2211b = -1;

    /* renamed from: c */
    protected int f2212c = -1;

    /* renamed from: d */
    public C0538d f2213d = this.f2050I;

    /* renamed from: aI */
    public int f2208aI = 0;

    /* renamed from: aJ */
    private int f2209aJ = 0;

    /* renamed from: androidx.constraintlayout.a.a.h$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/h$1.class */
    static final /* synthetic */ class C05481 {

        /* renamed from: a */
        static final /* synthetic */ int[] f2214a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[C0538d.EnumC0540a.values().length];
            f2214a = iArr;
            try {
                iArr[C0538d.EnumC0540a.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2214a[C0538d.EnumC0540a.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2214a[C0538d.EnumC0540a.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2214a[C0538d.EnumC0540a.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2214a[C0538d.EnumC0540a.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f2214a[C0538d.EnumC0540a.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2214a[C0538d.EnumC0540a.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f2214a[C0538d.EnumC0540a.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f2214a[C0538d.EnumC0540a.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    public C0547h() {
        this.f2058Q.clear();
        this.f2058Q.add(this.f2213d);
        int length = this.f2057P.length;
        for (int i = 0; i < length; i++) {
            this.f2057P[i] = this.f2213d;
        }
    }

    @Override // androidx.constraintlayout.p026a.p027a.C0541e
    /* renamed from: a */
    public final C0538d mo45193a(C0538d.EnumC0540a enumC0540a) {
        switch (C05481.f2214a[enumC0540a.ordinal()]) {
            case 1:
            case 2:
                if (this.f2208aI == 1) {
                    return this.f2213d;
                }
                break;
            case 3:
            case 4:
                if (this.f2208aI == 0) {
                    return this.f2213d;
                }
                break;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
        }
        throw new AssertionError(enumC0540a.name());
    }

    /* renamed from: a */
    public final void m45194a(float f) {
        if (f > -1.0f) {
            this.f2207a = f;
            this.f2211b = -1;
            this.f2212c = -1;
        }
    }

    @Override // androidx.constraintlayout.p026a.p027a.C0541e
    /* renamed from: a */
    public final void mo45180a(C0541e c0541e, HashMap<C0541e, C0541e> hashMap) {
        super.mo45180a(c0541e, hashMap);
        C0547h c0547h = (C0547h) c0541e;
        this.f2207a = c0547h.f2207a;
        this.f2211b = c0547h.f2211b;
        this.f2212c = c0547h.f2212c;
        m45185o(c0547h.f2208aI);
    }

    @Override // androidx.constraintlayout.p026a.p027a.C0541e
    /* renamed from: a */
    public final void mo45192a(C0557d c0557d, boolean z) {
        C0544f c0544f = (C0544f) this.f2060S;
        if (c0544f == null) {
            return;
        }
        C0538d a = c0544f.mo45193a(C0538d.EnumC0540a.LEFT);
        C0538d a2 = c0544f.mo45193a(C0538d.EnumC0540a.RIGHT);
        boolean z2 = this.f2060S != null && this.f2060S.f2059R[0] == C0541e.EnumC0543a.WRAP_CONTENT;
        if (this.f2208aI == 0) {
            a = c0544f.mo45193a(C0538d.EnumC0540a.TOP);
            a2 = c0544f.mo45193a(C0538d.EnumC0540a.BOTTOM);
            z2 = this.f2060S != null && this.f2060S.f2059R[1] == C0541e.EnumC0543a.WRAP_CONTENT;
        }
        if (this.f2210aK && this.f2213d.f2033c) {
            C0567h m45138a = c0557d.m45138a(this.f2213d);
            c0557d.m45142a(m45138a, this.f2213d.m45303c());
            if (this.f2211b != -1) {
                if (z2) {
                    c0557d.m45140a(c0557d.m45138a(a2), m45138a, 0, 5);
                }
            } else if (this.f2212c != -1 && z2) {
                C0567h m45138a2 = c0557d.m45138a(a2);
                c0557d.m45140a(m45138a, c0557d.m45138a(a), 0, 5);
                c0557d.m45140a(m45138a2, m45138a, 0, 5);
            }
            this.f2210aK = false;
        } else if (this.f2211b != -1) {
            C0567h m45138a3 = c0557d.m45138a(this.f2213d);
            c0557d.m45131c(m45138a3, c0557d.m45138a(a), this.f2211b, 8);
            if (!z2) {
                return;
            }
            c0557d.m45140a(c0557d.m45138a(a2), m45138a3, 0, 5);
        } else if (this.f2212c == -1) {
            if (this.f2207a == -1.0f) {
                return;
            }
            c0557d.m45147a(C0557d.m45144a(c0557d, c0557d.m45138a(this.f2213d), c0557d.m45138a(a2), this.f2207a));
        } else {
            C0567h m45138a4 = c0557d.m45138a(this.f2213d);
            C0567h m45138a5 = c0557d.m45138a(a2);
            c0557d.m45131c(m45138a4, m45138a5, -this.f2212c, 8);
            if (!z2) {
                return;
            }
            c0557d.m45140a(m45138a4, c0557d.m45138a(a), 0, 5);
            c0557d.m45140a(m45138a5, m45138a4, 0, 5);
        }
    }

    @Override // androidx.constraintlayout.p026a.p027a.C0541e
    /* renamed from: a */
    public final boolean mo45195a() {
        return true;
    }

    @Override // androidx.constraintlayout.p026a.p027a.C0541e
    /* renamed from: b */
    public final void mo45190b(boolean z) {
        if (this.f2060S == null) {
            return;
        }
        int m45133b = C0557d.m45133b(this.f2213d);
        if (this.f2208aI == 1) {
            m45276e(m45133b);
            m45274f(0);
            m45269h(this.f2060S.m45255p());
            m45271g(0);
            return;
        }
        m45276e(0);
        m45274f(m45133b);
        m45271g(this.f2060S.m45257o());
        m45269h(0);
    }

    @Override // androidx.constraintlayout.p026a.p027a.C0541e
    /* renamed from: b */
    public final boolean mo45191b() {
        return this.f2210aK;
    }

    @Override // androidx.constraintlayout.p026a.p027a.C0541e
    /* renamed from: c */
    public final boolean mo45189c() {
        return this.f2210aK;
    }

    /* renamed from: d */
    public final float m45188d() {
        return this.f2207a;
    }

    /* renamed from: e */
    public final int m45187e() {
        return this.f2211b;
    }

    /* renamed from: f */
    public final int m45186f() {
        return this.f2212c;
    }

    /* renamed from: o */
    public final void m45185o(int i) {
        if (this.f2208aI == i) {
            return;
        }
        this.f2208aI = i;
        this.f2058Q.clear();
        if (this.f2208aI == 1) {
            this.f2213d = this.f2049H;
        } else {
            this.f2213d = this.f2050I;
        }
        this.f2058Q.add(this.f2213d);
        int length = this.f2057P.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.f2057P[i2] = this.f2213d;
        }
    }

    /* renamed from: p */
    public final void m45184p(int i) {
        if (i >= 0) {
            this.f2207a = -1.0f;
            this.f2211b = i;
            this.f2212c = -1;
        }
    }

    /* renamed from: q */
    public final void m45183q(int i) {
        if (i >= 0) {
            this.f2207a = -1.0f;
            this.f2211b = -1;
            this.f2212c = i;
        }
    }

    /* renamed from: r */
    public final void m45182r(int i) {
        this.f2213d.m45310a(i);
        this.f2210aK = true;
    }
}
