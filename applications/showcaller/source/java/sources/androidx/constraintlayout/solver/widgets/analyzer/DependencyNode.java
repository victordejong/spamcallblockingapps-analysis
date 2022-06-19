package androidx.constraintlayout.solver.widgets.analyzer;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/DependencyNode.class */
public class DependencyNode implements AbstractC0477d {

    /* renamed from: d */
    WidgetRun f2192d;

    /* renamed from: f */
    int f2194f;

    /* renamed from: g */
    public int f2195g;

    /* renamed from: a */
    public AbstractC0477d f2189a = null;

    /* renamed from: b */
    public boolean f2190b = false;

    /* renamed from: c */
    public boolean f2191c = false;

    /* renamed from: e */
    Type f2193e = Type.UNKNOWN;

    /* renamed from: h */
    int f2196h = 1;

    /* renamed from: i */
    C0479f f2197i = null;

    /* renamed from: j */
    public boolean f2198j = false;

    /* renamed from: k */
    List<AbstractC0477d> f2199k = new ArrayList();

    /* renamed from: l */
    List<DependencyNode> f2200l = new ArrayList();

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type.class */
    public enum Type {
        UNKNOWN,
        HORIZONTAL_DIMENSION,
        VERTICAL_DIMENSION,
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        BASELINE
    }

    public DependencyNode(WidgetRun widgetRun) {
        this.f2192d = widgetRun;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.AbstractC0477d
    /* renamed from: a */
    public void mo33892a(AbstractC0477d abstractC0477d) {
        for (DependencyNode dependencyNode : this.f2200l) {
            if (!dependencyNode.f2198j) {
                return;
            }
        }
        this.f2191c = true;
        AbstractC0477d abstractC0477d2 = this.f2189a;
        if (abstractC0477d2 != null) {
            abstractC0477d2.mo33892a(this);
        }
        if (this.f2190b) {
            this.f2192d.mo33892a(this);
            return;
        }
        DependencyNode dependencyNode2 = null;
        int i = 0;
        for (DependencyNode dependencyNode3 : this.f2200l) {
            if (!(dependencyNode3 instanceof C0479f)) {
                i++;
                dependencyNode2 = dependencyNode3;
            }
        }
        if (dependencyNode2 != null && i == 1 && dependencyNode2.f2198j) {
            C0479f c0479f = this.f2197i;
            if (c0479f != null) {
                if (!c0479f.f2198j) {
                    return;
                }
                this.f2194f = this.f2196h * c0479f.f2195g;
            }
            mo33914d(dependencyNode2.f2195g + this.f2194f);
        }
        AbstractC0477d abstractC0477d3 = this.f2189a;
        if (abstractC0477d3 == null) {
            return;
        }
        abstractC0477d3.mo33892a(this);
    }

    /* renamed from: b */
    public void m33949b(AbstractC0477d abstractC0477d) {
        this.f2199k.add(abstractC0477d);
        if (this.f2198j) {
            abstractC0477d.mo33892a(abstractC0477d);
        }
    }

    /* renamed from: c */
    public void m33948c() {
        this.f2200l.clear();
        this.f2199k.clear();
        this.f2198j = false;
        this.f2195g = 0;
        this.f2191c = false;
        this.f2190b = false;
    }

    /* renamed from: d */
    public void mo33914d(int i) {
        if (this.f2198j) {
            return;
        }
        this.f2198j = true;
        this.f2195g = i;
        for (AbstractC0477d abstractC0477d : this.f2199k) {
            abstractC0477d.mo33892a(abstractC0477d);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2192d.f2211b.m33970u());
        sb.append(":");
        sb.append(this.f2193e);
        sb.append("(");
        sb.append(this.f2198j ? Integer.valueOf(this.f2195g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.f2200l.size());
        sb.append(":d=");
        sb.append(this.f2199k.size());
        sb.append(">");
        return sb.toString();
    }
}
