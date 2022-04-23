package p012b.p036g.p037a.p038i;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p012b.p036g.p037a.C0799e;
/* renamed from: b.g.a.i.e */
/* loaded from: classes-dex2jar.jar:b/g/a/i/e.class */
public class C0808e extends C0820o {

    /* renamed from: n0 */
    public C0818n f3808n0;

    /* renamed from: o0 */
    public int f3809o0;

    /* renamed from: p0 */
    public int f3810p0;

    /* renamed from: q0 */
    public int f3811q0;

    /* renamed from: r0 */
    public int f3812r0;

    /* renamed from: l0 */
    public boolean f3806l0 = false;

    /* renamed from: m0 */
    public C0799e f3807m0 = new C0799e();

    /* renamed from: s0 */
    public int f3813s0 = 0;

    /* renamed from: t0 */
    public int f3814t0 = 0;

    /* renamed from: u0 */
    public C0807d[] f3815u0 = new C0807d[4];

    /* renamed from: v0 */
    public C0807d[] f3816v0 = new C0807d[4];

    /* renamed from: w0 */
    public List<C0809f> f3817w0 = new ArrayList();

    /* renamed from: x0 */
    public boolean f3818x0 = false;

    /* renamed from: y0 */
    public boolean f3819y0 = false;

    /* renamed from: z0 */
    public boolean f3820z0 = false;

    /* renamed from: A0 */
    public int f3800A0 = 0;

    /* renamed from: B0 */
    public int f3801B0 = 0;

    /* renamed from: C0 */
    public int f3802C0 = 7;

    /* renamed from: D0 */
    public boolean f3803D0 = false;

    /* renamed from: E0 */
    public boolean f3804E0 = false;

    /* renamed from: F0 */
    public boolean f3805F0 = false;

    @Override // p012b.p036g.p037a.p038i.C0820o, androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: E */
    public void mo35837E() {
        this.f3807m0.m35933i();
        this.f3809o0 = 0;
        this.f3811q0 = 0;
        this.f3810p0 = 0;
        this.f3812r0 = 0;
        this.f3817w0.clear();
        this.f3803D0 = false;
        super.mo35837E();
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x041c  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0447  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x046c  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0504 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x031d  */
    @Override // p012b.p036g.p037a.p038i.C0820o
    /* renamed from: L */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo35834L() {
        /*
            Method dump skipped, instructions count: 1469
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p036g.p037a.p038i.C0808e.mo35834L():void");
    }

    /* renamed from: N */
    public int m35904N() {
        return this.f3802C0;
    }

    /* renamed from: O */
    public boolean m35903O() {
        return false;
    }

    /* renamed from: P */
    public boolean m35902P() {
        return this.f3805F0;
    }

    /* renamed from: Q */
    public boolean m35901Q() {
        return this.f3806l0;
    }

    /* renamed from: R */
    public boolean m35900R() {
        return this.f3804E0;
    }

    /* renamed from: S */
    public void m35899S() {
        if (!m35887u(8)) {
            mo35877a(this.f3802C0);
        }
        m35895W();
    }

    /* renamed from: T */
    public void m35898T() {
        int size = this.f3866k0.size();
        mo35913G();
        for (int i = 0; i < size; i++) {
            this.f3866k0.get(i).mo35913G();
        }
    }

    /* renamed from: U */
    public void m35897U() {
        m35898T();
        mo35877a(this.f3802C0);
    }

    /* renamed from: V */
    public final void m35896V() {
        this.f3813s0 = 0;
        this.f3814t0 = 0;
    }

    /* renamed from: W */
    public void m35895W() {
        C0815k d = mo35876a(ConstraintAnchor.Type.LEFT).m38801d();
        C0815k d2 = mo35876a(ConstraintAnchor.Type.TOP).m38801d();
        d.m35857a((C0815k) null, 0.0f);
        d2.m35857a((C0815k) null, 0.0f);
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: a */
    public void mo35877a(int i) {
        super.mo35877a(i);
        int size = this.f3866k0.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f3866k0.get(i2).mo35877a(i);
        }
    }

    /* renamed from: a */
    public void m35894a(ConstraintWidget constraintWidget, int i) {
        if (i == 0) {
            m35891d(constraintWidget);
        } else if (i == 1) {
            m35889e(constraintWidget);
        }
    }

    /* renamed from: a */
    public void m35893a(C0799e eVar, boolean[] zArr) {
        zArr[2] = false;
        mo35872c(eVar);
        int size = this.f3866k0.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.f3866k0.get(i);
            constraintWidget.mo35872c(eVar);
            if (constraintWidget.f886C[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.m38728t() < constraintWidget.m38725v()) {
                zArr[2] = true;
            }
            if (constraintWidget.f886C[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.m38748j() < constraintWidget.m38726u()) {
                zArr[2] = true;
            }
        }
    }

    /* renamed from: c */
    public void m35892c(boolean z) {
        this.f3806l0 = z;
    }

    /* renamed from: d */
    public final void m35891d(ConstraintWidget constraintWidget) {
        int i = this.f3813s0;
        C0807d[] dVarArr = this.f3816v0;
        if (i + 1 >= dVarArr.length) {
            this.f3816v0 = (C0807d[]) Arrays.copyOf(dVarArr, dVarArr.length * 2);
        }
        this.f3816v0[this.f3813s0] = new C0807d(constraintWidget, 0, m35901Q());
        this.f3813s0++;
    }

    /* renamed from: d */
    public boolean m35890d(C0799e eVar) {
        mo35875a(eVar);
        int size = this.f3866k0.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.f3866k0.get(i);
            if (constraintWidget instanceof C0808e) {
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.f886C;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.m38781a(ConstraintWidget.DimensionBehaviour.FIXED);
                }
                if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.m38770b(ConstraintWidget.DimensionBehaviour.FIXED);
                }
                constraintWidget.mo35875a(eVar);
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.m38781a(dimensionBehaviour);
                }
                if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.m38770b(dimensionBehaviour2);
                }
            } else {
                C0813i.m35861a(this, eVar, constraintWidget);
                constraintWidget.mo35875a(eVar);
            }
        }
        if (this.f3813s0 > 0) {
            C0806c.m35909a(this, eVar, 0);
        }
        if (this.f3814t0 <= 0) {
            return true;
        }
        C0806c.m35909a(this, eVar, 1);
        return true;
    }

    /* renamed from: e */
    public final void m35889e(ConstraintWidget constraintWidget) {
        int i = this.f3814t0;
        C0807d[] dVarArr = this.f3815u0;
        if (i + 1 >= dVarArr.length) {
            this.f3815u0 = (C0807d[]) Arrays.copyOf(dVarArr, dVarArr.length * 2);
        }
        this.f3815u0[this.f3814t0] = new C0807d(constraintWidget, 1, m35901Q());
        this.f3814t0++;
    }

    /* renamed from: f */
    public void m35888f(int i, int i2) {
        C0816l lVar;
        C0816l lVar2;
        if (!(this.f886C[0] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || (lVar2 = this.f914c) == null)) {
            lVar2.m35849a(i);
        }
        if (this.f886C[1] != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && (lVar = this.f916d) != null) {
            lVar.m35849a(i2);
        }
    }

    /* renamed from: u */
    public boolean m35887u(int i) {
        return (this.f3802C0 & i) == i;
    }

    /* renamed from: v */
    public void m35886v(int i) {
        this.f3802C0 = i;
    }
}
