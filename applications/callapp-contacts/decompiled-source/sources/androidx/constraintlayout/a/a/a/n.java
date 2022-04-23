package androidx.constraintlayout.a.a.a;

import androidx.constraintlayout.a.a.a.f;
import androidx.constraintlayout.a.a.a.p;
import androidx.constraintlayout.a.a.d;
import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.a.a.i;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/n.class */
public final class n extends p {

    /* renamed from: a  reason: collision with root package name */
    public f f1341a = new f(this);

    /* renamed from: b  reason: collision with root package name */
    g f1342b = null;

    /* renamed from: androidx.constraintlayout.a.a.a.n$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/n$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f1343a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002c -> B:16:0x001d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0028 -> B:12:0x0013). Please submit an issue!!! */
        static {
            int[] iArr = new int[p.a.a().length];
            f1343a = iArr;
            try {
                iArr[p.a.f1356b - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1343a[p.a.f1357c - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1343a[p.a.f1358d - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public n(e eVar) {
        super(eVar);
        this.j.e = f.a.TOP;
        this.k.e = f.a.BOTTOM;
        this.f1341a.e = f.a.BASELINE;
        this.h = 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.a.a.a.p
    public final boolean a() {
        return this.f != e.a.MATCH_CONSTRAINT || this.f1353d.p == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.a.a.a.p
    public final void c() {
        this.e = null;
        this.j.a();
        this.k.a();
        this.f1341a.a();
        this.g.a();
        this.i = false;
    }

    @Override // androidx.constraintlayout.a.a.a.p, androidx.constraintlayout.a.a.a.d
    public final void d() {
        int i;
        float f;
        float f2;
        float f3;
        if (AnonymousClass1.f1343a[this.l - 1] != 3) {
            if (this.g.f1332c && !this.g.j && this.f == e.a.MATCH_CONSTRAINT) {
                int i2 = this.f1353d.p;
                if (i2 == 2) {
                    e eVar = this.f1353d.S;
                    if (eVar != null && eVar.j.g.j) {
                        this.g.a((int) ((eVar.j.g.g * this.f1353d.w) + 0.5f));
                    }
                } else if (i2 == 3 && this.f1353d.i.g.j) {
                    int u = this.f1353d.u();
                    if (u == -1) {
                        f3 = this.f1353d.i.g.g;
                        f2 = this.f1353d.V;
                    } else if (u == 0) {
                        f = this.f1353d.i.g.g * this.f1353d.V;
                        i = (int) (f + 0.5f);
                        this.g.a(i);
                    } else if (u != 1) {
                        i = 0;
                        this.g.a(i);
                    } else {
                        f3 = this.f1353d.i.g.g;
                        f2 = this.f1353d.V;
                    }
                    f = f3 / f2;
                    i = (int) (f + 0.5f);
                    this.g.a(i);
                }
            }
            if (this.j.f1332c && this.k.f1332c) {
                if (this.j.j && this.k.j && this.g.j) {
                    return;
                }
                if (this.g.j || this.f != e.a.MATCH_CONSTRAINT || this.f1353d.o != 0 || this.f1353d.x()) {
                    if (!this.g.j && this.f == e.a.MATCH_CONSTRAINT && this.f1352c == 1 && this.j.l.size() > 0 && this.k.l.size() > 0) {
                        int i3 = (this.k.l.get(0).g + this.k.f) - (this.j.l.get(0).g + this.j.f);
                        if (i3 < this.g.m) {
                            this.g.a(i3);
                        } else {
                            this.g.a(this.g.m);
                        }
                    }
                    if (this.g.j && this.j.l.size() > 0 && this.k.l.size() > 0) {
                        f fVar = this.j.l.get(0);
                        f fVar2 = this.k.l.get(0);
                        int i4 = fVar.g + this.j.f;
                        int i5 = fVar2.g + this.k.f;
                        float f4 = this.f1353d.ai;
                        if (fVar == fVar2) {
                            i4 = fVar.g;
                            i5 = fVar2.g;
                            f4 = 0.5f;
                        }
                        this.j.a((int) (i4 + 0.5f + (((i5 - i4) - this.g.g) * f4)));
                        this.k.a(this.j.g + this.g.g);
                        return;
                    }
                    return;
                }
                f fVar3 = this.j.l.get(0);
                f fVar4 = this.k.l.get(0);
                int i6 = fVar3.g + this.j.f;
                int i7 = fVar4.g + this.k.f;
                this.j.a(i6);
                this.k.a(i7);
                this.g.a(i7 - i6);
                return;
            }
            return;
        }
        a(this.f1353d.I, this.f1353d.K, 1);
    }

    @Override // androidx.constraintlayout.a.a.a.p
    public final void e() {
        if (this.j.j) {
            this.f1353d.f(this.j.g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.a.a.a.p
    public final void f() {
        e eVar;
        e eVar2;
        if (this.f1353d.e) {
            this.g.a(this.f1353d.p());
        }
        if (!this.g.j) {
            this.f = this.f1353d.R[1];
            if (this.f1353d.C) {
                this.f1342b = new a(this);
            }
            if (this.f != e.a.MATCH_CONSTRAINT) {
                if (this.f == e.a.MATCH_PARENT && (eVar2 = this.f1353d.S) != null && eVar2.R[1] == e.a.FIXED) {
                    int p = eVar2.p();
                    int e = this.f1353d.I.e();
                    int e2 = this.f1353d.K.e();
                    a(this.j, eVar2.j.j, this.f1353d.I.e());
                    a(this.k, eVar2.j.k, -this.f1353d.K.e());
                    this.g.a((p - e) - e2);
                    return;
                } else if (this.f == e.a.FIXED) {
                    this.g.a(this.f1353d.p());
                }
            }
        } else if (this.f == e.a.MATCH_PARENT && (eVar = this.f1353d.S) != null && eVar.R[1] == e.a.FIXED) {
            a(this.j, eVar.j.j, this.f1353d.I.e());
            a(this.k, eVar.j.k, -this.f1353d.K.e());
            return;
        }
        if (!this.g.j || !this.f1353d.e) {
            if (this.g.j || this.f != e.a.MATCH_CONSTRAINT) {
                this.g.a(this);
            } else {
                int i = this.f1353d.p;
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
                } else if (i == 3 && !this.f1353d.x() && this.f1353d.o != 3) {
                    g gVar2 = this.f1353d.i.g;
                    this.g.l.add(gVar2);
                    gVar2.k.add(this.g);
                    this.g.f1331b = true;
                    this.g.k.add(this.j);
                    this.g.k.add(this.k);
                }
            }
            if (this.f1353d.P[2].f != null && this.f1353d.P[3].f != null) {
                if (this.f1353d.x()) {
                    this.j.f = this.f1353d.P[2].e();
                    this.k.f = -this.f1353d.P[3].e();
                } else {
                    f a2 = a(this.f1353d.P[2]);
                    f a3 = a(this.f1353d.P[3]);
                    a2.a(this);
                    a3.a(this);
                    this.l = p.a.f1358d;
                }
                if (this.f1353d.C) {
                    a(this.f1341a, this.j, 1, this.f1342b);
                }
            } else if (this.f1353d.P[2].f != null) {
                f a4 = a(this.f1353d.P[2]);
                if (a4 != null) {
                    a(this.j, a4, this.f1353d.P[2].e());
                    a(this.k, this.j, 1, this.g);
                    if (this.f1353d.C) {
                        a(this.f1341a, this.j, 1, this.f1342b);
                    }
                    if (this.f == e.a.MATCH_CONSTRAINT && this.f1353d.V > BitmapDescriptorFactory.HUE_RED && this.f1353d.i.f == e.a.MATCH_CONSTRAINT) {
                        this.f1353d.i.g.k.add(this.g);
                        this.g.l.add(this.f1353d.i.g);
                        this.g.f1330a = this;
                    }
                }
            } else if (this.f1353d.P[3].f != null) {
                f a5 = a(this.f1353d.P[3]);
                if (a5 != null) {
                    a(this.k, a5, -this.f1353d.P[3].e());
                    a(this.j, this.k, -1, this.g);
                    if (this.f1353d.C) {
                        a(this.f1341a, this.j, 1, this.f1342b);
                    }
                }
            } else if (this.f1353d.P[4].f != null) {
                f a6 = a(this.f1353d.P[4]);
                if (a6 != null) {
                    a(this.f1341a, a6, 0);
                    a(this.j, this.f1341a, -1, this.f1342b);
                    a(this.k, this.j, 1, this.g);
                }
            } else if (!(this.f1353d instanceof i) && this.f1353d.S != null) {
                a(this.j, this.f1353d.S.j.j, this.f1353d.n());
                a(this.k, this.j, 1, this.g);
                if (this.f1353d.C) {
                    a(this.f1341a, this.j, 1, this.f1342b);
                }
                if (this.f == e.a.MATCH_CONSTRAINT && this.f1353d.V > BitmapDescriptorFactory.HUE_RED && this.f1353d.i.f == e.a.MATCH_CONSTRAINT) {
                    this.f1353d.i.g.k.add(this.g);
                    this.g.l.add(this.f1353d.i.g);
                    this.g.f1330a = this;
                }
            }
            if (this.g.l.size() == 0) {
                this.g.f1332c = true;
            }
        } else if (this.f1353d.P[2].f != null && this.f1353d.P[3].f != null) {
            if (this.f1353d.x()) {
                this.j.f = this.f1353d.P[2].e();
                this.k.f = -this.f1353d.P[3].e();
            } else {
                f a7 = a(this.f1353d.P[2]);
                if (a7 != null) {
                    a(this.j, a7, this.f1353d.P[2].e());
                }
                f a8 = a(this.f1353d.P[3]);
                if (a8 != null) {
                    a(this.k, a8, -this.f1353d.P[3].e());
                }
                this.j.f1331b = true;
                this.k.f1331b = true;
            }
            if (this.f1353d.C) {
                a(this.f1341a, this.j, this.f1353d.ad);
            }
        } else if (this.f1353d.P[2].f != null) {
            f a9 = a(this.f1353d.P[2]);
            if (a9 != null) {
                a(this.j, a9, this.f1353d.P[2].e());
                a(this.k, this.j, this.g.g);
                if (this.f1353d.C) {
                    a(this.f1341a, this.j, this.f1353d.ad);
                }
            }
        } else if (this.f1353d.P[3].f != null) {
            f a10 = a(this.f1353d.P[3]);
            if (a10 != null) {
                a(this.k, a10, -this.f1353d.P[3].e());
                a(this.j, this.k, -this.g.g);
            }
            if (this.f1353d.C) {
                a(this.f1341a, this.j, this.f1353d.ad);
            }
        } else if (this.f1353d.P[4].f != null) {
            f a11 = a(this.f1353d.P[4]);
            if (a11 != null) {
                a(this.f1341a, a11, 0);
                a(this.j, this.f1341a, -this.f1353d.ad);
                a(this.k, this.j, this.g.g);
            }
        } else if (!(this.f1353d instanceof i) && this.f1353d.S != null && this.f1353d.a(d.a.CENTER).f == null) {
            a(this.j, this.f1353d.S.j.j, this.f1353d.n());
            a(this.k, this.j, this.g.g);
            if (this.f1353d.C) {
                a(this.f1341a, this.j, this.f1353d.ad);
            }
        }
    }

    public final void g() {
        this.i = false;
        this.j.a();
        this.j.j = false;
        this.k.a();
        this.k.j = false;
        this.f1341a.a();
        this.f1341a.j = false;
        this.g.j = false;
    }

    public final String toString() {
        return "VerticalRun " + this.f1353d.al;
    }
}
