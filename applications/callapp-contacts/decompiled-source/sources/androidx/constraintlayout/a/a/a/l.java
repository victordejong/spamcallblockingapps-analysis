package androidx.constraintlayout.a.a.a;

import androidx.constraintlayout.a.a.a.f;
import androidx.constraintlayout.a.a.a.p;
import androidx.constraintlayout.a.a.d;
import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.a.a.i;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/l.class */
public final class l extends p {

    /* renamed from: a  reason: collision with root package name */
    private static int[] f1335a = new int[2];

    /* renamed from: androidx.constraintlayout.a.a.a.l$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/l$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f1336a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002c -> B:16:0x001d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0028 -> B:12:0x0013). Please submit an issue!!! */
        static {
            int[] iArr = new int[p.a.a().length];
            f1336a = iArr;
            try {
                iArr[p.a.f1356b - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1336a[p.a.f1357c - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1336a[p.a.f1358d - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public l(e eVar) {
        super(eVar);
        this.j.e = f.a.LEFT;
        this.k.e = f.a.RIGHT;
        this.h = 0;
    }

    private static void a(int[] iArr, int i, int i2, int i3, int i4, float f, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i5 == -1) {
            int i8 = (int) ((i7 * f) + 0.5f);
            int i9 = (int) ((i6 / f) + 0.5f);
            if (i8 <= i6) {
                iArr[0] = i8;
                iArr[1] = i7;
            } else if (i9 <= i7) {
                iArr[0] = i6;
                iArr[1] = i9;
            }
        } else if (i5 == 0) {
            iArr[0] = (int) ((i7 * f) + 0.5f);
            iArr[1] = i7;
        } else if (i5 == 1) {
            iArr[0] = i6;
            iArr[1] = (int) ((i6 * f) + 0.5f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.a.a.a.p
    public final boolean a() {
        return this.f != e.a.MATCH_CONSTRAINT || this.f1353d.o == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.a.a.a.p
    public final void c() {
        this.e = null;
        this.j.a();
        this.k.a();
        this.g.a();
        this.i = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x050f, code lost:
        if (r0 != 1) goto L_0x05e5;
     */
    @Override // androidx.constraintlayout.a.a.a.p, androidx.constraintlayout.a.a.a.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d() {
        /*
            Method dump skipped, instructions count: 2065
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.a.a.l.d():void");
    }

    @Override // androidx.constraintlayout.a.a.a.p
    public final void e() {
        if (this.j.j) {
            this.f1353d.e(this.j.g);
        }
    }

    @Override // androidx.constraintlayout.a.a.a.p
    final void f() {
        e eVar;
        e eVar2;
        if (this.f1353d.e) {
            this.g.a(this.f1353d.o());
        }
        if (!this.g.j) {
            this.f = this.f1353d.R[0];
            if (this.f != e.a.MATCH_CONSTRAINT) {
                if (this.f == e.a.MATCH_PARENT && (((eVar2 = this.f1353d.S) != null && eVar2.R[0] == e.a.FIXED) || eVar2.R[0] == e.a.MATCH_PARENT)) {
                    int o = eVar2.o();
                    int e = this.f1353d.H.e();
                    int e2 = this.f1353d.J.e();
                    a(this.j, eVar2.i.j, this.f1353d.H.e());
                    a(this.k, eVar2.i.k, -this.f1353d.J.e());
                    this.g.a((o - e) - e2);
                    return;
                } else if (this.f == e.a.FIXED) {
                    this.g.a(this.f1353d.o());
                }
            }
        } else if (this.f == e.a.MATCH_PARENT && (((eVar = this.f1353d.S) != null && eVar.R[0] == e.a.FIXED) || eVar.R[0] == e.a.MATCH_PARENT)) {
            a(this.j, eVar.i.j, this.f1353d.H.e());
            a(this.k, eVar.i.k, -this.f1353d.J.e());
            return;
        }
        if (!this.g.j || !this.f1353d.e) {
            if (this.f == e.a.MATCH_CONSTRAINT) {
                int i = this.f1353d.o;
                if (i == 2) {
                    e eVar3 = this.f1353d.S;
                    if (eVar3 != null) {
                        g gVar = eVar3.j.g;
                        this.g.l.add(gVar);
                        gVar.k.add(this.g);
                        this.g.f1331b = true;
                        this.g.k.add(this.j);
                        this.g.k.add(this.k);
                    }
                } else if (i == 3) {
                    if (this.f1353d.p == 3) {
                        this.j.f1330a = this;
                        this.k.f1330a = this;
                        this.f1353d.j.j.f1330a = this;
                        this.f1353d.j.k.f1330a = this;
                        this.g.f1330a = this;
                        if (this.f1353d.x()) {
                            this.g.l.add(this.f1353d.j.g);
                            this.f1353d.j.g.k.add(this.g);
                            this.f1353d.j.g.f1330a = this;
                            this.g.l.add(this.f1353d.j.j);
                            this.g.l.add(this.f1353d.j.k);
                            this.f1353d.j.j.k.add(this.g);
                            this.f1353d.j.k.k.add(this.g);
                        } else if (this.f1353d.w()) {
                            this.f1353d.j.g.l.add(this.g);
                            this.g.k.add(this.f1353d.j.g);
                        } else {
                            this.f1353d.j.g.l.add(this.g);
                        }
                    } else {
                        g gVar2 = this.f1353d.j.g;
                        this.g.l.add(gVar2);
                        gVar2.k.add(this.g);
                        this.f1353d.j.j.k.add(this.g);
                        this.f1353d.j.k.k.add(this.g);
                        this.g.f1331b = true;
                        this.g.k.add(this.j);
                        this.g.k.add(this.k);
                        this.j.l.add(this.g);
                        this.k.l.add(this.g);
                    }
                }
            }
            if (this.f1353d.P[0].f == null || this.f1353d.P[1].f == null) {
                if (this.f1353d.P[0].f != null) {
                    f a2 = a(this.f1353d.P[0]);
                    if (a2 != null) {
                        a(this.j, a2, this.f1353d.P[0].e());
                        a(this.k, this.j, 1, this.g);
                    }
                } else if (this.f1353d.P[1].f != null) {
                    f a3 = a(this.f1353d.P[1]);
                    if (a3 != null) {
                        a(this.k, a3, -this.f1353d.P[1].e());
                        a(this.j, this.k, -1, this.g);
                    }
                } else if (!(this.f1353d instanceof i) && this.f1353d.S != null) {
                    a(this.j, this.f1353d.S.i.j, this.f1353d.m());
                    a(this.k, this.j, 1, this.g);
                }
            } else if (this.f1353d.w()) {
                this.j.f = this.f1353d.P[0].e();
                this.k.f = -this.f1353d.P[1].e();
            } else {
                f a4 = a(this.f1353d.P[0]);
                f a5 = a(this.f1353d.P[1]);
                a4.a(this);
                a5.a(this);
                this.l = p.a.f1358d;
            }
        } else if (this.f1353d.P[0].f == null || this.f1353d.P[1].f == null) {
            if (this.f1353d.P[0].f != null) {
                f a6 = a(this.f1353d.P[0]);
                if (a6 != null) {
                    a(this.j, a6, this.f1353d.P[0].e());
                    a(this.k, this.j, this.g.g);
                }
            } else if (this.f1353d.P[1].f != null) {
                f a7 = a(this.f1353d.P[1]);
                if (a7 != null) {
                    a(this.k, a7, -this.f1353d.P[1].e());
                    a(this.j, this.k, -this.g.g);
                }
            } else if (!(this.f1353d instanceof i) && this.f1353d.S != null && this.f1353d.a(d.a.CENTER).f == null) {
                a(this.j, this.f1353d.S.i.j, this.f1353d.m());
                a(this.k, this.j, this.g.g);
            }
        } else if (this.f1353d.w()) {
            this.j.f = this.f1353d.P[0].e();
            this.k.f = -this.f1353d.P[1].e();
        } else {
            f a8 = a(this.f1353d.P[0]);
            if (a8 != null) {
                a(this.j, a8, this.f1353d.P[0].e());
            }
            f a9 = a(this.f1353d.P[1]);
            if (a9 != null) {
                a(this.k, a9, -this.f1353d.P[1].e());
            }
            this.j.f1331b = true;
            this.k.f1331b = true;
        }
    }

    public final void g() {
        this.i = false;
        this.j.a();
        this.j.j = false;
        this.k.a();
        this.k.j = false;
        this.g.j = false;
    }

    public final String toString() {
        return "HorizontalRun " + this.f1353d.al;
    }
}
