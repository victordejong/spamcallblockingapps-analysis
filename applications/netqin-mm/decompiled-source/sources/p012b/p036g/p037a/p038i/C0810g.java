package p012b.p036g.p037a.p038i;

import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
import p012b.p036g.p037a.C0799e;
/* renamed from: b.g.a.i.g */
/* loaded from: classes-dex2jar.jar:b/g/a/i/g.class */
public class C0810g extends ConstraintWidget {

    /* renamed from: k0 */
    public float f3832k0 = -1.0f;

    /* renamed from: l0 */
    public int f3833l0 = -1;

    /* renamed from: m0 */
    public int f3834m0 = -1;

    /* renamed from: n0 */
    public ConstraintAnchor f3835n0 = this.f938t;

    /* renamed from: o0 */
    public int f3836o0 = 0;

    /* renamed from: p0 */
    public boolean f3837p0 = false;

    /* renamed from: b.g.a.i.g$a */
    /* loaded from: classes-dex2jar.jar:b/g/a/i/g$a.class */
    public static /* synthetic */ class C0811a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3838a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f3838a = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3838a[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3838a[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3838a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f3838a[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f3838a[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f3838a[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f3838a[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f3838a[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    public C0810g() {
        new C0814j();
        this.f885B.clear();
        this.f885B.add(this.f3835n0);
        int length = this.f884A.length;
        for (int i = 0; i < length; i++) {
            this.f884A[i] = this.f3835n0;
        }
    }

    /* renamed from: K */
    public int m35878K() {
        return this.f3836o0;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: a */
    public ConstraintAnchor mo35876a(ConstraintAnchor.Type type) {
        switch (C0811a.f3838a[type.ordinal()]) {
            case 1:
            case 2:
                if (this.f3836o0 == 1) {
                    return this.f3835n0;
                }
                break;
            case 3:
            case 4:
                if (this.f3836o0 == 0) {
                    return this.f3835n0;
                }
                break;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
        }
        throw new AssertionError(type.name());
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: a */
    public void mo35877a(int i) {
        ConstraintWidget l = m38744l();
        if (l != null) {
            if (m35878K() == 1) {
                this.f938t.m38801d().m35859a(1, l.f938t.m38801d(), 0);
                this.f940v.m38801d().m35859a(1, l.f938t.m38801d(), 0);
                if (this.f3833l0 != -1) {
                    this.f937s.m38801d().m35859a(1, l.f937s.m38801d(), this.f3833l0);
                    this.f939u.m38801d().m35859a(1, l.f937s.m38801d(), this.f3833l0);
                } else if (this.f3834m0 != -1) {
                    this.f937s.m38801d().m35859a(1, l.f939u.m38801d(), -this.f3834m0);
                    this.f939u.m38801d().m35859a(1, l.f939u.m38801d(), -this.f3834m0);
                } else if (this.f3832k0 != -1.0f && l.m38746k() == ConstraintWidget.DimensionBehaviour.FIXED) {
                    int i2 = (int) (l.f888E * this.f3832k0);
                    this.f937s.m38801d().m35859a(1, l.f937s.m38801d(), i2);
                    this.f939u.m38801d().m35859a(1, l.f937s.m38801d(), i2);
                }
            } else {
                this.f937s.m38801d().m35859a(1, l.f937s.m38801d(), 0);
                this.f939u.m38801d().m35859a(1, l.f937s.m38801d(), 0);
                if (this.f3833l0 != -1) {
                    this.f938t.m38801d().m35859a(1, l.f938t.m38801d(), this.f3833l0);
                    this.f940v.m38801d().m35859a(1, l.f938t.m38801d(), this.f3833l0);
                } else if (this.f3834m0 != -1) {
                    this.f938t.m38801d().m35859a(1, l.f940v.m38801d(), -this.f3834m0);
                    this.f940v.m38801d().m35859a(1, l.f940v.m38801d(), -this.f3834m0);
                } else if (this.f3832k0 != -1.0f && l.m38732r() == ConstraintWidget.DimensionBehaviour.FIXED) {
                    int i3 = (int) (l.f889F * this.f3832k0);
                    this.f938t.m38801d().m35859a(1, l.f938t.m38801d(), i3);
                    this.f940v.m38801d().m35859a(1, l.f938t.m38801d(), i3);
                }
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: a */
    public void mo35875a(C0799e eVar) {
        C0808e eVar2 = (C0808e) m38744l();
        if (eVar2 != null) {
            ConstraintAnchor a = eVar2.mo35876a(ConstraintAnchor.Type.LEFT);
            ConstraintAnchor a2 = eVar2.mo35876a(ConstraintAnchor.Type.RIGHT);
            ConstraintWidget constraintWidget = this.f887D;
            boolean z = true;
            z = constraintWidget != null && constraintWidget.f886C[0] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (this.f3836o0 == 0) {
                a = eVar2.mo35876a(ConstraintAnchor.Type.TOP);
                a2 = eVar2.mo35876a(ConstraintAnchor.Type.BOTTOM);
                ConstraintWidget constraintWidget2 = this.f887D;
                if (constraintWidget2 == null || constraintWidget2.f886C[1] != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    z = false;
                }
            }
            if (this.f3833l0 != -1) {
                SolverVariable a3 = eVar.m35949a(this.f3835n0);
                eVar.m35958a(a3, eVar.m35949a(a), this.f3833l0, 6);
                if (z) {
                    eVar.m35947b(eVar.m35949a(a2), a3, 0, 5);
                }
            } else if (this.f3834m0 != -1) {
                SolverVariable a4 = eVar.m35949a(this.f3835n0);
                SolverVariable a5 = eVar.m35949a(a2);
                eVar.m35958a(a4, a5, -this.f3834m0, 6);
                if (z) {
                    eVar.m35947b(a4, eVar.m35949a(a), 0, 5);
                    eVar.m35947b(a5, a4, 0, 5);
                }
            } else if (this.f3832k0 != -1.0f) {
                eVar.m35954a(C0799e.m35950a(eVar, eVar.m35949a(this.f3835n0), eVar.m35949a(a), eVar.m35949a(a2), this.f3832k0, this.f3837p0));
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: b */
    public boolean mo35874b() {
        return true;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: c */
    public ArrayList<ConstraintAnchor> mo35873c() {
        return this.f885B;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: c */
    public void mo35872c(C0799e eVar) {
        if (m38744l() != null) {
            int b = eVar.m35943b(this.f3835n0);
            if (this.f3836o0 == 1) {
                m38729s(b);
                m38727t(0);
                m38751h(m38744l().m38748j());
                m38735p(0);
                return;
            }
            m38729s(0);
            m38727t(b);
            m38735p(m38744l().m38728t());
            m38751h(0);
        }
    }

    /* renamed from: e */
    public void m35871e(float f) {
        if (f > -1.0f) {
            this.f3832k0 = f;
            this.f3833l0 = -1;
            this.f3834m0 = -1;
        }
    }

    /* renamed from: u */
    public void m35870u(int i) {
        if (i > -1) {
            this.f3832k0 = -1.0f;
            this.f3833l0 = i;
            this.f3834m0 = -1;
        }
    }

    /* renamed from: v */
    public void m35869v(int i) {
        if (i > -1) {
            this.f3832k0 = -1.0f;
            this.f3833l0 = -1;
            this.f3834m0 = i;
        }
    }

    /* renamed from: w */
    public void m35868w(int i) {
        if (this.f3836o0 != i) {
            this.f3836o0 = i;
            this.f885B.clear();
            if (this.f3836o0 == 1) {
                this.f3835n0 = this.f937s;
            } else {
                this.f3835n0 = this.f938t;
            }
            this.f885B.add(this.f3835n0);
            int length = this.f884A.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.f884A[i2] = this.f3835n0;
            }
        }
    }
}
