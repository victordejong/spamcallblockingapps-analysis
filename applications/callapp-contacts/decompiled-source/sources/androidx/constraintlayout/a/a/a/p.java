package androidx.constraintlayout.a.a.a;

import androidx.constraintlayout.a.a.d;
import androidx.constraintlayout.a.a.e;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/p.class */
public abstract class p implements d {

    /* renamed from: c  reason: collision with root package name */
    public int f1352c;

    /* renamed from: d  reason: collision with root package name */
    public e f1353d;
    m e;
    protected e.a f;
    public g g = new g(this);
    public int h = 0;
    public boolean i = false;
    public f j = new f(this);
    public f k = new f(this);
    protected int l = a.f1355a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.a.a.a.p$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/p$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f1354a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[d.a.values().length];
            f1354a = iArr;
            try {
                iArr[d.a.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1354a[d.a.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1354a[d.a.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1354a[d.a.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f1354a[d.a.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/p$a.class */
    static final class a extends Enum<a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f1355a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f1356b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f1357c = 3;

        /* renamed from: d  reason: collision with root package name */
        public static final int f1358d = 4;
        private static final /* synthetic */ int[] e = {1, 2, 3, 4};

        private a(String str, int i) {
        }

        public static int[] a() {
            return (int[]) e.clone();
        }
    }

    public p(e eVar) {
        this.f1353d = eVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static f a(d dVar) {
        d dVar2 = dVar.f;
        f fVar = null;
        if (dVar2 == null) {
            return null;
        }
        e eVar = dVar.f.f1366d;
        int i = AnonymousClass1.f1354a[dVar.f.e.ordinal()];
        if (i == 1) {
            fVar = eVar.i.j;
        } else if (i == 2) {
            fVar = eVar.i.k;
        } else if (i == 3) {
            fVar = eVar.j.j;
        } else if (i == 4) {
            fVar = eVar.j.f1341a;
        } else if (i == 5) {
            fVar = eVar.j.k;
        }
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static f a(d dVar, int i) {
        d dVar2 = dVar.f;
        f fVar = null;
        if (dVar2 == null) {
            return null;
        }
        e eVar = dVar.f.f1366d;
        p pVar = i == 0 ? eVar.i : eVar.j;
        int i2 = AnonymousClass1.f1354a[dVar.f.e.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 5) {
                        return fVar;
                    }
                }
            }
            fVar = pVar.k;
            return fVar;
        }
        fVar = pVar.j;
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(f fVar, f fVar2, int i) {
        fVar.l.add(fVar2);
        fVar.f = i;
        fVar2.k.add(fVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004e, code lost:
        if (r5 != r4) goto L_0x0051;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
        if (r5 != r4) goto L_0x0051;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(int r4, int r5) {
        /*
            r3 = this;
            r0 = r5
            if (r0 != 0) goto L_0x002c
            r0 = r3
            androidx.constraintlayout.a.a.e r0 = r0.f1353d
            int r0 = r0.s
            r6 = r0
            r0 = r3
            androidx.constraintlayout.a.a.e r0 = r0.f1353d
            int r0 = r0.r
            r1 = r4
            int r0 = java.lang.Math.max(r0, r1)
            r5 = r0
            r0 = r6
            if (r0 <= 0) goto L_0x0022
            r0 = r6
            r1 = r4
            int r0 = java.lang.Math.min(r0, r1)
            r5 = r0
        L_0x0022:
            r0 = r4
            r6 = r0
            r0 = r5
            r1 = r4
            if (r0 == r1) goto L_0x0053
            goto L_0x0051
        L_0x002c:
            r0 = r3
            androidx.constraintlayout.a.a.e r0 = r0.f1353d
            int r0 = r0.v
            r6 = r0
            r0 = r3
            androidx.constraintlayout.a.a.e r0 = r0.f1353d
            int r0 = r0.u
            r1 = r4
            int r0 = java.lang.Math.max(r0, r1)
            r5 = r0
            r0 = r6
            if (r0 <= 0) goto L_0x004a
            r0 = r6
            r1 = r4
            int r0 = java.lang.Math.min(r0, r1)
            r5 = r0
        L_0x004a:
            r0 = r4
            r6 = r0
            r0 = r5
            r1 = r4
            if (r0 == r1) goto L_0x0053
        L_0x0051:
            r0 = r5
            r6 = r0
        L_0x0053:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.a.a.p.a(int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(f fVar, f fVar2, int i, g gVar) {
        fVar.l.add(fVar2);
        fVar.l.add(this.g);
        fVar.h = i;
        fVar.i = gVar;
        fVar2.k.add(fVar);
        gVar.k.add(fVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(d dVar, d dVar2, int i) {
        f a2 = a(dVar);
        f a3 = a(dVar2);
        if (a2.j && a3.j) {
            int e = a2.g + dVar.e();
            int e2 = a3.g - dVar2.e();
            int i2 = e2 - e;
            if (!this.g.j && this.f == e.a.MATCH_CONSTRAINT) {
                int i3 = this.f1352c;
                if (i3 == 0) {
                    this.g.a(a(i2, i));
                } else if (i3 == 1) {
                    this.g.a(Math.min(a(this.g.m, i), i2));
                } else if (i3 == 2) {
                    e eVar = this.f1353d.S;
                    if (eVar != null) {
                        p pVar = i == 0 ? eVar.i : eVar.j;
                        if (pVar.g.j) {
                            e eVar2 = this.f1353d;
                            this.g.a(a((int) ((pVar.g.g * (i == 0 ? eVar2.t : eVar2.w)) + 0.5f), i));
                        }
                    }
                } else if (i3 == 3 && !(this.f1353d.i.f == e.a.MATCH_CONSTRAINT && this.f1353d.i.f1352c == 3 && this.f1353d.j.f == e.a.MATCH_CONSTRAINT && this.f1353d.j.f1352c == 3)) {
                    e eVar3 = this.f1353d;
                    p pVar2 = i == 0 ? eVar3.j : eVar3.i;
                    if (pVar2.g.j) {
                        float f = this.f1353d.V;
                        this.g.a(i == 1 ? (int) ((pVar2.g.g / f) + 0.5f) : (int) ((f * pVar2.g.g) + 0.5f));
                    }
                }
            }
            if (this.g.j) {
                if (this.g.g == i2) {
                    this.j.a(e);
                    this.k.a(e2);
                    return;
                }
                e eVar4 = this.f1353d;
                float f2 = i == 0 ? eVar4.ah : eVar4.ai;
                int i4 = e;
                int i5 = e2;
                if (a2 == a3) {
                    i4 = a2.g;
                    i5 = a3.g;
                    f2 = 0.5f;
                }
                this.j.a((int) (i4 + 0.5f + (((i5 - i4) - this.g.g) * f2)));
                this.k.a(this.j.g + this.g.g);
            }
        }
    }

    public abstract boolean a();

    public long b() {
        if (this.g.j) {
            return this.g.g;
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void c();

    @Override // androidx.constraintlayout.a.a.a.d
    public void d() {
    }

    public abstract void e();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void f();
}
