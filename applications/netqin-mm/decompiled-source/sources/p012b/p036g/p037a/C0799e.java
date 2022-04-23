package p012b.p036g.p037a;

import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.Arrays;
import java.util.HashMap;
/* renamed from: b.g.a.e */
/* loaded from: classes-dex2jar.jar:b/g/a/e.class */
public class C0799e {

    /* renamed from: p */
    public static int f3734p = 1000;

    /* renamed from: q */
    public static C0801f f3735q;

    /* renamed from: c */
    public AbstractC0800a f3738c;

    /* renamed from: f */
    public C0796b[] f3741f;

    /* renamed from: l */
    public final C0797c f3747l;

    /* renamed from: o */
    public final AbstractC0800a f3750o;

    /* renamed from: a */
    public int f3736a = 0;

    /* renamed from: b */
    public HashMap<String, SolverVariable> f3737b = null;

    /* renamed from: d */
    public int f3739d = 32;

    /* renamed from: e */
    public int f3740e = 32;

    /* renamed from: g */
    public boolean f3742g = false;

    /* renamed from: h */
    public boolean[] f3743h = new boolean[32];

    /* renamed from: i */
    public int f3744i = 1;

    /* renamed from: j */
    public int f3745j = 0;

    /* renamed from: k */
    public int f3746k = 32;

    /* renamed from: m */
    public SolverVariable[] f3748m = new SolverVariable[f3734p];

    /* renamed from: n */
    public int f3749n = 0;

    /* renamed from: b.g.a.e$a */
    /* loaded from: classes-dex2jar.jar:b/g/a/e$a.class */
    public interface AbstractC0800a {
        /* renamed from: a */
        SolverVariable mo35929a(C0799e eVar, boolean[] zArr);

        /* renamed from: a */
        void mo35931a(SolverVariable solverVariable);

        /* renamed from: a */
        void mo35930a(AbstractC0800a aVar);

        void clear();

        SolverVariable getKey();
    }

    public C0799e() {
        this.f3741f = null;
        this.f3741f = new C0796b[32];
        m35934h();
        C0797c cVar = new C0797c();
        this.f3747l = cVar;
        this.f3738c = new C0798d(cVar);
        this.f3750o = new C0796b(this.f3747l);
    }

    /* renamed from: a */
    public static C0796b m35950a(C0799e eVar, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, float f, boolean z) {
        C0796b c = eVar.m35942c();
        if (z) {
            eVar.m35945b(c);
        }
        c.m35979a(solverVariable, solverVariable2, solverVariable3, f);
        return c;
    }

    /* renamed from: j */
    public static C0801f m35932j() {
        return f3735q;
    }

    /* renamed from: a */
    public final int m35952a(AbstractC0800a aVar) throws Exception {
        boolean z;
        int i;
        int i2 = 0;
        while (true) {
            if (i2 >= this.f3745j) {
                z = false;
                break;
            }
            C0796b[] bVarArr = this.f3741f;
            if (bVarArr[i2].f3726a.f869g != SolverVariable.Type.UNRESTRICTED && bVarArr[i2].f3727b < 0.0f) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            boolean z2 = false;
            i = 0;
            while (!z2) {
                C0801f fVar = f3735q;
                if (fVar != null) {
                    fVar.f3762k++;
                }
                int i3 = i + 1;
                float f = Float.MAX_VALUE;
                int i4 = -1;
                int i5 = -1;
                int i6 = 0;
                for (int i7 = 0; i7 < this.f3745j; i7++) {
                    C0796b bVar = this.f3741f[i7];
                    if (bVar.f3726a.f869g == SolverVariable.Type.UNRESTRICTED) {
                        f = f;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                    } else if (bVar.f3730e) {
                        f = f;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                    } else {
                        f = f;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                        if (bVar.f3727b < 0.0f) {
                            int i8 = 1;
                            while (true) {
                                f = f;
                                i4 = i4;
                                i5 = i5;
                                i6 = i6;
                                if (i8 < this.f3744i) {
                                    SolverVariable solverVariable = this.f3747l.f3733c[i8];
                                    float b = bVar.f3729d.m35985b(solverVariable);
                                    if (b <= 0.0f) {
                                        f = f;
                                        i4 = i4;
                                        i5 = i5;
                                        i6 = i6;
                                    } else {
                                        int i9 = 0;
                                        int i10 = i5;
                                        while (true) {
                                            f = f;
                                            i4 = i4;
                                            i5 = i10;
                                            i6 = i6;
                                            if (i9 < 7) {
                                                float f2 = solverVariable.f868f[i9] / b;
                                                if (f2 >= f || i9 != i6) {
                                                    i6 = i6;
                                                    if (i9 <= i6) {
                                                        i9++;
                                                    }
                                                }
                                                i10 = i8;
                                                i6 = i9;
                                                f = f2;
                                                i4 = i7;
                                                i9++;
                                            }
                                        }
                                    }
                                    i8++;
                                }
                            }
                        }
                    }
                }
                if (i4 != -1) {
                    C0796b bVar2 = this.f3741f[i4];
                    bVar2.f3726a.f865c = -1;
                    C0801f fVar2 = f3735q;
                    if (fVar2 != null) {
                        fVar2.f3761j++;
                    }
                    bVar2.m35965d(this.f3747l.f3733c[i5]);
                    SolverVariable solverVariable2 = bVar2.f3726a;
                    solverVariable2.f865c = i4;
                    solverVariable2.m38809c(bVar2);
                } else {
                    z2 = true;
                }
                if (i3 > this.f3744i / 2) {
                    z2 = true;
                }
                i = i3;
            }
        } else {
            i = 0;
        }
        return i;
    }

    /* renamed from: a */
    public final int m35951a(AbstractC0800a aVar, boolean z) {
        C0801f fVar = f3735q;
        if (fVar != null) {
            fVar.f3759h++;
        }
        for (int i = 0; i < this.f3744i; i++) {
            this.f3743h[i] = false;
        }
        boolean z2 = false;
        int i2 = 0;
        while (!z2) {
            C0801f fVar2 = f3735q;
            if (fVar2 != null) {
                fVar2.f3760i++;
            }
            int i3 = i2 + 1;
            if (i3 >= this.f3744i * 2) {
                return i3;
            }
            if (aVar.getKey() != null) {
                this.f3743h[aVar.getKey().f864b] = true;
            }
            SolverVariable a = aVar.mo35929a(this, this.f3743h);
            if (a != null) {
                boolean[] zArr = this.f3743h;
                int i4 = a.f864b;
                if (zArr[i4]) {
                    return i3;
                }
                zArr[i4] = true;
            }
            if (a != null) {
                float f = Float.MAX_VALUE;
                int i5 = -1;
                for (int i6 = 0; i6 < this.f3745j; i6++) {
                    C0796b bVar = this.f3741f[i6];
                    if (bVar.f3726a.f869g == SolverVariable.Type.UNRESTRICTED) {
                        f = f;
                        i5 = i5;
                    } else if (bVar.f3730e) {
                        f = f;
                        i5 = i5;
                    } else {
                        f = f;
                        i5 = i5;
                        if (bVar.m35973b(a)) {
                            float b = bVar.f3729d.m35985b(a);
                            f = f;
                            i5 = i5;
                            if (b < 0.0f) {
                                float f2 = (-bVar.f3727b) / b;
                                f = f;
                                i5 = i5;
                                if (f2 < f) {
                                    i5 = i6;
                                    f = f2;
                                }
                            }
                        }
                    }
                }
                if (i5 > -1) {
                    C0796b bVar2 = this.f3741f[i5];
                    bVar2.f3726a.f865c = -1;
                    C0801f fVar3 = f3735q;
                    if (fVar3 != null) {
                        fVar3.f3761j++;
                    }
                    bVar2.m35965d(a);
                    SolverVariable solverVariable = bVar2.f3726a;
                    solverVariable.f865c = i5;
                    solverVariable.m38809c(bVar2);
                    i2 = i3;
                }
            }
            z2 = true;
            i2 = i3;
        }
        return i2;
    }

    /* renamed from: a */
    public SolverVariable m35962a(int i, String str) {
        C0801f fVar = f3735q;
        if (fVar != null) {
            fVar.f3763l++;
        }
        if (this.f3744i + 1 >= this.f3740e) {
            m35936f();
        }
        SolverVariable a = m35961a(SolverVariable.Type.ERROR, str);
        int i2 = this.f3736a + 1;
        this.f3736a = i2;
        this.f3744i++;
        a.f864b = i2;
        a.f866d = i;
        this.f3747l.f3733c[i2] = a;
        this.f3738c.mo35931a(a);
        return a;
    }

    /* renamed from: a */
    public final SolverVariable m35961a(SolverVariable.Type type, String str) {
        SolverVariable solverVariable;
        SolverVariable b = this.f3747l.f3732b.mo35926b();
        if (b == null) {
            SolverVariable solverVariable2 = new SolverVariable(type, str);
            solverVariable2.m38813a(type, str);
            solverVariable = solverVariable2;
        } else {
            b.m38814a();
            b.m38813a(type, str);
            solverVariable = b;
        }
        int i = this.f3749n;
        int i2 = f3734p;
        if (i >= i2) {
            int i3 = i2 * 2;
            f3734p = i3;
            this.f3748m = (SolverVariable[]) Arrays.copyOf(this.f3748m, i3);
        }
        SolverVariable[] solverVariableArr = this.f3748m;
        int i4 = this.f3749n;
        this.f3749n = i4 + 1;
        solverVariableArr[i4] = solverVariable;
        return solverVariable;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005e, code lost:
        if (r4.f3747l.f3733c[r0] == null) goto L_0x0061;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.constraintlayout.solver.SolverVariable m35949a(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0008
            r0 = 0
            return r0
        L_0x0008:
            r0 = r4
            int r0 = r0.f3744i
            r1 = 1
            int r0 = r0 + r1
            r1 = r4
            int r1 = r1.f3740e
            if (r0 < r1) goto L_0x0019
            r0 = r4
            r0.m35936f()
        L_0x0019:
            r0 = r5
            boolean r0 = r0 instanceof androidx.constraintlayout.solver.widgets.ConstraintAnchor
            if (r0 == 0) goto L_0x009f
            r0 = r5
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = (androidx.constraintlayout.solver.widgets.ConstraintAnchor) r0
            r7 = r0
            r0 = r7
            androidx.constraintlayout.solver.SolverVariable r0 = r0.m38800e()
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            if (r0 != 0) goto L_0x003d
            r0 = r7
            r1 = r4
            b.g.a.c r1 = r1.f3747l
            r0.m38804a(r1)
            r0 = r7
            androidx.constraintlayout.solver.SolverVariable r0 = r0.m38800e()
            r5 = r0
        L_0x003d:
            r0 = r5
            int r0 = r0.f864b
            r8 = r0
            r0 = r8
            r1 = -1
            if (r0 == r1) goto L_0x0061
            r0 = r8
            r1 = r4
            int r1 = r1.f3736a
            if (r0 > r1) goto L_0x0061
            r0 = r5
            r6 = r0
            r0 = r4
            b.g.a.c r0 = r0.f3747l
            androidx.constraintlayout.solver.SolverVariable[] r0 = r0.f3733c
            r1 = r8
            r0 = r0[r1]
            if (r0 != 0) goto L_0x009f
        L_0x0061:
            r0 = r5
            int r0 = r0.f864b
            r1 = -1
            if (r0 == r1) goto L_0x006d
            r0 = r5
            r0.m38814a()
        L_0x006d:
            r0 = r4
            int r0 = r0.f3736a
            r1 = 1
            int r0 = r0 + r1
            r8 = r0
            r0 = r4
            r1 = r8
            r0.f3736a = r1
            r0 = r4
            r1 = r4
            int r1 = r1.f3744i
            r2 = 1
            int r1 = r1 + r2
            r0.f3744i = r1
            r0 = r5
            r1 = r8
            r0.f864b = r1
            r0 = r5
            androidx.constraintlayout.solver.SolverVariable$Type r1 = androidx.constraintlayout.solver.SolverVariable.Type.UNRESTRICTED
            r0.f869g = r1
            r0 = r4
            b.g.a.c r0 = r0.f3747l
            androidx.constraintlayout.solver.SolverVariable[] r0 = r0.f3733c
            r1 = r8
            r2 = r5
            r0[r1] = r2
            r0 = r5
            r6 = r0
        L_0x009f:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p036g.p037a.C0799e.m35949a(java.lang.Object):androidx.constraintlayout.solver.SolverVariable");
    }

    /* renamed from: a */
    public C0796b m35958a(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        C0796b c = m35942c();
        c.m35981a(solverVariable, solverVariable2, i);
        if (i2 != 6) {
            c.m35975a(this, i2);
        }
        m35954a(c);
        return c;
    }

    /* renamed from: a */
    public final void m35963a() {
        for (int i = 0; i < this.f3745j; i++) {
            C0796b bVar = this.f3741f[i];
            bVar.f3726a.f867e = bVar.f3727b;
        }
    }

    /* renamed from: a */
    public void m35960a(SolverVariable solverVariable, int i) {
        int i2 = solverVariable.f865c;
        if (i2 != -1) {
            C0796b bVar = this.f3741f[i2];
            if (bVar.f3730e) {
                bVar.f3727b = i;
            } else if (bVar.f3729d.f3715a == 0) {
                bVar.f3730e = true;
                bVar.f3727b = i;
            } else {
                C0796b c = m35942c();
                c.m35967c(solverVariable, i);
                m35954a(c);
            }
        } else {
            C0796b c2 = m35942c();
            c2.m35972b(solverVariable, i);
            m35954a(c2);
        }
    }

    /* renamed from: a */
    public void m35959a(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2, int i3) {
        C0796b c = m35942c();
        c.m35980a(solverVariable, solverVariable2, i, f, solverVariable3, solverVariable4, i2);
        if (i3 != 6) {
            c.m35975a(this, i3);
        }
        m35954a(c);
    }

    /* renamed from: a */
    public void m35957a(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f, int i) {
        C0796b c = m35942c();
        c.m35977a(solverVariable, solverVariable2, solverVariable3, solverVariable4, f);
        if (i != 6) {
            c.m35975a(this, i);
        }
        m35954a(c);
    }

    /* renamed from: a */
    public void m35956a(SolverVariable solverVariable, SolverVariable solverVariable2, boolean z) {
        C0796b c = m35942c();
        SolverVariable d = m35939d();
        d.f866d = 0;
        c.m35978a(solverVariable, solverVariable2, d, 0);
        if (z) {
            m35953a(c, (int) (c.f3729d.m35985b(d) * (-1.0f)), 1);
        }
        m35954a(c);
    }

    /* renamed from: a */
    public void m35955a(ConstraintWidget constraintWidget, ConstraintWidget constraintWidget2, float f, int i) {
        SolverVariable a = m35949a(constraintWidget.mo35876a(ConstraintAnchor.Type.LEFT));
        SolverVariable a2 = m35949a(constraintWidget.mo35876a(ConstraintAnchor.Type.TOP));
        SolverVariable a3 = m35949a(constraintWidget.mo35876a(ConstraintAnchor.Type.RIGHT));
        SolverVariable a4 = m35949a(constraintWidget.mo35876a(ConstraintAnchor.Type.BOTTOM));
        SolverVariable a5 = m35949a(constraintWidget2.mo35876a(ConstraintAnchor.Type.LEFT));
        SolverVariable a6 = m35949a(constraintWidget2.mo35876a(ConstraintAnchor.Type.TOP));
        SolverVariable a7 = m35949a(constraintWidget2.mo35876a(ConstraintAnchor.Type.RIGHT));
        SolverVariable a8 = m35949a(constraintWidget2.mo35876a(ConstraintAnchor.Type.BOTTOM));
        C0796b c = m35942c();
        double d = f;
        double sin = Math.sin(d);
        double d2 = i;
        Double.isNaN(d2);
        c.m35970b(a2, a4, a6, a8, (float) (sin * d2));
        m35954a(c);
        C0796b c2 = m35942c();
        double cos = Math.cos(d);
        Double.isNaN(d2);
        c2.m35970b(a, a3, a5, a7, (float) (cos * d2));
        m35954a(c2);
    }

    /* renamed from: a */
    public void m35954a(C0796b bVar) {
        SolverVariable c;
        if (bVar != null) {
            C0801f fVar = f3735q;
            if (fVar != null) {
                fVar.f3757f++;
                if (bVar.f3730e) {
                    fVar.f3758g++;
                }
            }
            if (this.f3745j + 1 >= this.f3746k || this.f3744i + 1 >= this.f3740e) {
                m35936f();
            }
            boolean z = false;
            if (!bVar.f3730e) {
                m35938d(bVar);
                if (!bVar.m35969c()) {
                    bVar.m35984a();
                    if (bVar.m35976a(this)) {
                        SolverVariable b = m35948b();
                        bVar.f3726a = b;
                        m35940c(bVar);
                        this.f3750o.mo35930a(bVar);
                        m35951a(this.f3750o, true);
                        z = true;
                        if (b.f865c == -1) {
                            if (bVar.f3726a == b && (c = bVar.m35968c(b)) != null) {
                                C0801f fVar2 = f3735q;
                                if (fVar2 != null) {
                                    fVar2.f3761j++;
                                }
                                bVar.m35965d(c);
                            }
                            if (!bVar.f3730e) {
                                bVar.f3726a.m38809c(bVar);
                            }
                            this.f3745j--;
                            z = true;
                        }
                    } else {
                        z = false;
                    }
                    if (!bVar.m35974b()) {
                        return;
                    }
                } else {
                    return;
                }
            }
            if (!z) {
                m35940c(bVar);
            }
        }
    }

    /* renamed from: a */
    public void m35953a(C0796b bVar, int i, int i2) {
        bVar.m35982a(m35962a(i2, (String) null), i);
    }

    /* renamed from: b */
    public int m35943b(Object obj) {
        SolverVariable e = ((ConstraintAnchor) obj).m38800e();
        if (e != null) {
            return (int) (e.f867e + 0.5f);
        }
        return 0;
    }

    /* renamed from: b */
    public SolverVariable m35948b() {
        C0801f fVar = f3735q;
        if (fVar != null) {
            fVar.f3765n++;
        }
        if (this.f3744i + 1 >= this.f3740e) {
            m35936f();
        }
        SolverVariable a = m35961a(SolverVariable.Type.SLACK, (String) null);
        int i = this.f3736a + 1;
        this.f3736a = i;
        this.f3744i++;
        a.f864b = i;
        this.f3747l.f3733c[i] = a;
        return a;
    }

    /* renamed from: b */
    public void m35947b(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        C0796b c = m35942c();
        SolverVariable d = m35939d();
        d.f866d = 0;
        c.m35978a(solverVariable, solverVariable2, d, i);
        if (i2 != 6) {
            m35953a(c, (int) (c.f3729d.m35985b(d) * (-1.0f)), i2);
        }
        m35954a(c);
    }

    /* renamed from: b */
    public void m35946b(SolverVariable solverVariable, SolverVariable solverVariable2, boolean z) {
        C0796b c = m35942c();
        SolverVariable d = m35939d();
        d.f866d = 0;
        c.m35971b(solverVariable, solverVariable2, d, 0);
        if (z) {
            m35953a(c, (int) (c.f3729d.m35985b(d) * (-1.0f)), 1);
        }
        m35954a(c);
    }

    /* renamed from: b */
    public final void m35945b(C0796b bVar) {
        bVar.m35975a(this, 0);
    }

    /* renamed from: b */
    public void m35944b(AbstractC0800a aVar) throws Exception {
        C0801f fVar = f3735q;
        if (fVar != null) {
            fVar.f3770s++;
            fVar.f3771t = Math.max(fVar.f3771t, this.f3744i);
            C0801f fVar2 = f3735q;
            fVar2.f3772u = Math.max(fVar2.f3772u, this.f3745j);
        }
        m35938d((C0796b) aVar);
        m35952a(aVar);
        m35951a(aVar, false);
        m35963a();
    }

    /* renamed from: c */
    public C0796b m35942c() {
        C0796b b = this.f3747l.f3731a.mo35926b();
        if (b == null) {
            b = new C0796b(this.f3747l);
        } else {
            b.m35966d();
        }
        SolverVariable.m38811b();
        return b;
    }

    /* renamed from: c */
    public void m35941c(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        C0796b c = m35942c();
        SolverVariable d = m35939d();
        d.f866d = 0;
        c.m35971b(solverVariable, solverVariable2, d, i);
        if (i2 != 6) {
            m35953a(c, (int) (c.f3729d.m35985b(d) * (-1.0f)), i2);
        }
        m35954a(c);
    }

    /* renamed from: c */
    public final void m35940c(C0796b bVar) {
        C0796b[] bVarArr = this.f3741f;
        int i = this.f3745j;
        if (bVarArr[i] != null) {
            this.f3747l.f3731a.mo35928a(bVarArr[i]);
        }
        C0796b[] bVarArr2 = this.f3741f;
        int i2 = this.f3745j;
        bVarArr2[i2] = bVar;
        SolverVariable solverVariable = bVar.f3726a;
        solverVariable.f865c = i2;
        this.f3745j = i2 + 1;
        solverVariable.m38809c(bVar);
    }

    /* renamed from: d */
    public SolverVariable m35939d() {
        C0801f fVar = f3735q;
        if (fVar != null) {
            fVar.f3764m++;
        }
        if (this.f3744i + 1 >= this.f3740e) {
            m35936f();
        }
        SolverVariable a = m35961a(SolverVariable.Type.SLACK, (String) null);
        int i = this.f3736a + 1;
        this.f3736a = i;
        this.f3744i++;
        a.f864b = i;
        this.f3747l.f3733c[i] = a;
        return a;
    }

    /* renamed from: d */
    public final void m35938d(C0796b bVar) {
        if (this.f3745j > 0) {
            bVar.f3729d.m35990a(bVar, this.f3741f);
            if (bVar.f3729d.f3715a == 0) {
                bVar.f3730e = true;
            }
        }
    }

    /* renamed from: e */
    public C0797c m35937e() {
        return this.f3747l;
    }

    /* renamed from: f */
    public final void m35936f() {
        int i = this.f3739d * 2;
        this.f3739d = i;
        this.f3741f = (C0796b[]) Arrays.copyOf(this.f3741f, i);
        C0797c cVar = this.f3747l;
        cVar.f3733c = (SolverVariable[]) Arrays.copyOf(cVar.f3733c, this.f3739d);
        int i2 = this.f3739d;
        this.f3743h = new boolean[i2];
        this.f3740e = i2;
        this.f3746k = i2;
        C0801f fVar = f3735q;
        if (fVar != null) {
            fVar.f3755d++;
            fVar.f3766o = Math.max(fVar.f3766o, i2);
            C0801f fVar2 = f3735q;
            fVar2.f3751A = fVar2.f3766o;
        }
    }

    /* renamed from: g */
    public void m35935g() throws Exception {
        C0801f fVar = f3735q;
        if (fVar != null) {
            fVar.f3756e++;
        }
        if (this.f3742g) {
            C0801f fVar2 = f3735q;
            if (fVar2 != null) {
                fVar2.f3768q++;
            }
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= this.f3745j) {
                    z = true;
                    break;
                } else if (!this.f3741f[i].f3730e) {
                    break;
                } else {
                    i++;
                }
            }
            if (!z) {
                m35944b(this.f3738c);
                return;
            }
            C0801f fVar3 = f3735q;
            if (fVar3 != null) {
                fVar3.f3767p++;
            }
            m35963a();
            return;
        }
        m35944b(this.f3738c);
    }

    /* renamed from: h */
    public final void m35934h() {
        int i = 0;
        while (true) {
            C0796b[] bVarArr = this.f3741f;
            if (i < bVarArr.length) {
                C0796b bVar = bVarArr[i];
                if (bVar != null) {
                    this.f3747l.f3731a.mo35928a(bVar);
                }
                this.f3741f[i] = null;
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: i */
    public void m35933i() {
        C0797c cVar;
        int i = 0;
        while (true) {
            cVar = this.f3747l;
            SolverVariable[] solverVariableArr = cVar.f3733c;
            if (i >= solverVariableArr.length) {
                break;
            }
            SolverVariable solverVariable = solverVariableArr[i];
            if (solverVariable != null) {
                solverVariable.m38814a();
            }
            i++;
        }
        cVar.f3732b.mo35927a(this.f3748m, this.f3749n);
        this.f3749n = 0;
        Arrays.fill(this.f3747l.f3733c, (Object) null);
        HashMap<String, SolverVariable> hashMap = this.f3737b;
        if (hashMap != null) {
            hashMap.clear();
        }
        this.f3736a = 0;
        this.f3738c.clear();
        this.f3744i = 1;
        for (int i2 = 0; i2 < this.f3745j; i2++) {
            this.f3741f[i2].f3728c = false;
        }
        m35934h();
        this.f3745j = 0;
    }
}
