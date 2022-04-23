package androidx.constraintlayout.a.a;

import androidx.constraintlayout.a.a.d;
import androidx.constraintlayout.a.a.e;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/h.class */
public final class h extends e {
    private boolean aK;

    /* renamed from: a  reason: collision with root package name */
    protected float f1386a = -1.0f;

    /* renamed from: b  reason: collision with root package name */
    protected int f1387b = -1;

    /* renamed from: c  reason: collision with root package name */
    protected int f1388c = -1;

    /* renamed from: d  reason: collision with root package name */
    public d f1389d = this.I;
    public int aI = 0;
    private int aJ = 0;

    /* renamed from: androidx.constraintlayout.a.a.h$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/h$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f1390a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[d.a.values().length];
            f1390a = iArr;
            try {
                iArr[d.a.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1390a[d.a.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1390a[d.a.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1390a[d.a.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f1390a[d.a.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f1390a[d.a.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f1390a[d.a.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f1390a[d.a.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f1390a[d.a.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    public h() {
        this.Q.clear();
        this.Q.add(this.f1389d);
        int length = this.P.length;
        for (int i = 0; i < length; i++) {
            this.P[i] = this.f1389d;
        }
    }

    @Override // androidx.constraintlayout.a.a.e
    public final d a(d.a aVar) {
        switch (AnonymousClass1.f1390a[aVar.ordinal()]) {
            case 1:
            case 2:
                if (this.aI == 1) {
                    return this.f1389d;
                }
                break;
            case 3:
            case 4:
                if (this.aI == 0) {
                    return this.f1389d;
                }
                break;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
        }
        throw new AssertionError(aVar.name());
    }

    public final void a(float f) {
        if (f > -1.0f) {
            this.f1386a = f;
            this.f1387b = -1;
            this.f1388c = -1;
        }
    }

    @Override // androidx.constraintlayout.a.a.e
    public final void a(e eVar, HashMap<e, e> hashMap) {
        super.a(eVar, hashMap);
        h hVar = (h) eVar;
        this.f1386a = hVar.f1386a;
        this.f1387b = hVar.f1387b;
        this.f1388c = hVar.f1388c;
        o(hVar.aI);
    }

    @Override // androidx.constraintlayout.a.a.e
    public final void a(androidx.constraintlayout.a.d dVar, boolean z) {
        f fVar = (f) this.S;
        if (fVar != null) {
            d a2 = fVar.a(d.a.LEFT);
            d a3 = fVar.a(d.a.RIGHT);
            boolean z2 = true;
            z2 = this.S != null && this.S.R[0] == e.a.WRAP_CONTENT;
            if (this.aI == 0) {
                a2 = fVar.a(d.a.TOP);
                a3 = fVar.a(d.a.BOTTOM);
                if (this.S == null || this.S.R[1] != e.a.WRAP_CONTENT) {
                    z2 = false;
                }
            }
            if (this.aK && this.f1389d.f1365c) {
                androidx.constraintlayout.a.h a4 = dVar.a(this.f1389d);
                dVar.a(a4, this.f1389d.c());
                if (this.f1387b != -1) {
                    if (z2) {
                        dVar.a(dVar.a(a3), a4, 0, 5);
                    }
                } else if (this.f1388c != -1 && z2) {
                    androidx.constraintlayout.a.h a5 = dVar.a(a3);
                    dVar.a(a4, dVar.a(a2), 0, 5);
                    dVar.a(a5, a4, 0, 5);
                }
                this.aK = false;
            } else if (this.f1387b != -1) {
                androidx.constraintlayout.a.h a6 = dVar.a(this.f1389d);
                dVar.c(a6, dVar.a(a2), this.f1387b, 8);
                if (z2) {
                    dVar.a(dVar.a(a3), a6, 0, 5);
                }
            } else if (this.f1388c != -1) {
                androidx.constraintlayout.a.h a7 = dVar.a(this.f1389d);
                androidx.constraintlayout.a.h a8 = dVar.a(a3);
                dVar.c(a7, a8, -this.f1388c, 8);
                if (z2) {
                    dVar.a(a7, dVar.a(a2), 0, 5);
                    dVar.a(a8, a7, 0, 5);
                }
            } else if (this.f1386a != -1.0f) {
                dVar.a(androidx.constraintlayout.a.d.a(dVar, dVar.a(this.f1389d), dVar.a(a3), this.f1386a));
            }
        }
    }

    @Override // androidx.constraintlayout.a.a.e
    public final boolean a() {
        return true;
    }

    @Override // androidx.constraintlayout.a.a.e
    public final void b(boolean z) {
        if (this.S != null) {
            int b2 = androidx.constraintlayout.a.d.b(this.f1389d);
            if (this.aI == 1) {
                e(b2);
                f(0);
                h(this.S.p());
                g(0);
                return;
            }
            e(0);
            f(b2);
            g(this.S.o());
            h(0);
        }
    }

    @Override // androidx.constraintlayout.a.a.e
    public final boolean b() {
        return this.aK;
    }

    @Override // androidx.constraintlayout.a.a.e
    public final boolean c() {
        return this.aK;
    }

    public final float d() {
        return this.f1386a;
    }

    public final int e() {
        return this.f1387b;
    }

    public final int f() {
        return this.f1388c;
    }

    public final void o(int i) {
        if (this.aI != i) {
            this.aI = i;
            this.Q.clear();
            if (this.aI == 1) {
                this.f1389d = this.H;
            } else {
                this.f1389d = this.I;
            }
            this.Q.add(this.f1389d);
            int length = this.P.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.P[i2] = this.f1389d;
            }
        }
    }

    public final void p(int i) {
        if (i >= 0) {
            this.f1386a = -1.0f;
            this.f1387b = i;
            this.f1388c = -1;
        }
    }

    public final void q(int i) {
        if (i >= 0) {
            this.f1386a = -1.0f;
            this.f1387b = -1;
            this.f1388c = i;
        }
    }

    public final void r(int i) {
        this.f1389d.a(i);
        this.aK = true;
    }
}
