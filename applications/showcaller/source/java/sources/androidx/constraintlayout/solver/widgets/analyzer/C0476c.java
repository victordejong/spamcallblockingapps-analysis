package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.C0493d;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.constraintlayout.solver.widgets.analyzer.c */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/c.class */
public class C0476c extends WidgetRun {

    /* renamed from: k */
    ArrayList<WidgetRun> f2242k = new ArrayList<>();

    /* renamed from: l */
    private int f2243l;

    public C0476c(ConstraintWidget constraintWidget, int i) {
        super(constraintWidget);
        this.f2215f = i;
        m33931q();
    }

    /* renamed from: q */
    private void m33931q() {
        ConstraintWidget constraintWidget = this.f2211b;
        ConstraintWidget m34029M = constraintWidget.m34029M(this.f2215f);
        while (true) {
            ConstraintWidget constraintWidget2 = m34029M;
            if (constraintWidget2 == null) {
                break;
            }
            constraintWidget = constraintWidget2;
            m34029M = constraintWidget2.m34029M(this.f2215f);
        }
        this.f2211b = constraintWidget;
        this.f2242k.add(constraintWidget.m34025O(this.f2215f));
        ConstraintWidget m34033K = constraintWidget.m34033K(this.f2215f);
        while (true) {
            ConstraintWidget constraintWidget3 = m34033K;
            if (constraintWidget3 == null) {
                break;
            }
            this.f2242k.add(constraintWidget3.m34025O(this.f2215f));
            m34033K = constraintWidget3.m34033K(this.f2215f);
        }
        Iterator<WidgetRun> it = this.f2242k.iterator();
        while (it.hasNext()) {
            WidgetRun next = it.next();
            int i = this.f2215f;
            if (i == 0) {
                next.f2211b.f2132d = this;
            } else if (i == 1) {
                next.f2211b.f2134e = this;
            }
        }
        if ((this.f2215f == 0 && ((C0493d) this.f2211b.m34031L()).m33869C1()) && this.f2242k.size() > 1) {
            ArrayList<WidgetRun> arrayList = this.f2242k;
            this.f2211b = arrayList.get(arrayList.size() - 1).f2211b;
        }
        this.f2243l = this.f2215f == 0 ? this.f2211b.m34053A() : this.f2211b.m34021Q();
    }

    /* renamed from: r */
    private ConstraintWidget m33930r() {
        for (int i = 0; i < this.f2242k.size(); i++) {
            WidgetRun widgetRun = this.f2242k.get(i);
            if (widgetRun.f2211b.m34015T() != 8) {
                return widgetRun.f2211b;
            }
        }
        return null;
    }

    /* renamed from: s */
    private ConstraintWidget m33929s() {
        for (int size = this.f2242k.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = this.f2242k.get(size);
            if (widgetRun.f2211b.m34015T() != 8) {
                return widgetRun.f2211b;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:118:0x039d, code lost:
        if (r19 != r9) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x03f9, code lost:
        if (r19 != r9) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x03fc, code lost:
        r27 = r16 + 1;
        r26 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0406, code lost:
        r0.f2214e.mo33914d(r26);
        r16 = r27;
     */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun, androidx.constraintlayout.solver.widgets.analyzer.AbstractC0477d
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo33892a(androidx.constraintlayout.solver.widgets.analyzer.AbstractC0477d r5) {
        /*
            Method dump skipped, instructions count: 2466
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.C0476c.mo33892a(androidx.constraintlayout.solver.widgets.analyzer.d):void");
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: d */
    public void mo33891d() {
        Iterator<WidgetRun> it = this.f2242k.iterator();
        while (it.hasNext()) {
            it.next().mo33891d();
        }
        int size = this.f2242k.size();
        if (size < 1) {
            return;
        }
        ConstraintWidget constraintWidget = this.f2242k.get(0).f2211b;
        ConstraintWidget constraintWidget2 = this.f2242k.get(size - 1).f2211b;
        if (this.f2215f == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.f2108K;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.f2112M;
            DependencyNode m33943i = m33943i(constraintAnchor, 0);
            int m34069f = constraintAnchor.m34069f();
            ConstraintWidget m33930r = m33930r();
            if (m33930r != null) {
                m34069f = m33930r.f2108K.m34069f();
            }
            if (m33943i != null) {
                m33947b(this.f2217h, m33943i, m34069f);
            }
            DependencyNode m33943i2 = m33943i(constraintAnchor2, 0);
            int m34069f2 = constraintAnchor2.m34069f();
            ConstraintWidget m33929s = m33929s();
            if (m33929s != null) {
                m34069f2 = m33929s.f2112M.m34069f();
            }
            if (m33943i2 != null) {
                m33947b(this.f2218i, m33943i2, -m34069f2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.f2110L;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.f2114N;
            DependencyNode m33943i3 = m33943i(constraintAnchor3, 1);
            int m34069f3 = constraintAnchor3.m34069f();
            ConstraintWidget m33930r2 = m33930r();
            if (m33930r2 != null) {
                m34069f3 = m33930r2.f2110L.m34069f();
            }
            if (m33943i3 != null) {
                m33947b(this.f2217h, m33943i3, m34069f3);
            }
            DependencyNode m33943i4 = m33943i(constraintAnchor4, 1);
            int m34069f4 = constraintAnchor4.m34069f();
            ConstraintWidget m33929s2 = m33929s();
            if (m33929s2 != null) {
                m34069f4 = m33929s2.f2114N.m34069f();
            }
            if (m33943i4 != null) {
                m33947b(this.f2218i, m33943i4, -m34069f4);
            }
        }
        this.f2217h.f2189a = this;
        this.f2218i.f2189a = this;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: e */
    public void mo33890e() {
        for (int i = 0; i < this.f2242k.size(); i++) {
            this.f2242k.get(i).mo33890e();
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: f */
    public void mo33889f() {
        this.f2212c = null;
        Iterator<WidgetRun> it = this.f2242k.iterator();
        while (it.hasNext()) {
            it.next().mo33889f();
        }
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: j */
    public long mo33932j() {
        WidgetRun widgetRun;
        int size = this.f2242k.size();
        char c = 0;
        for (int i = 0; i < size; i++) {
            c = c + widgetRun.f2217h.f2194f + this.f2242k.get(i).mo33932j() + widgetRun.f2218i.f2194f;
        }
        return c;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: m */
    public boolean mo33888m() {
        int size = this.f2242k.size();
        for (int i = 0; i < size; i++) {
            if (!this.f2242k.get(i).mo33888m()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ChainRun ");
        sb.append(this.f2215f == 0 ? "horizontal : " : "vertical : ");
        String sb2 = sb.toString();
        Iterator<WidgetRun> it = this.f2242k.iterator();
        while (it.hasNext()) {
            WidgetRun next = it.next();
            sb2 = ((sb2 + "<") + next) + "> ";
        }
        return sb2;
    }
}
