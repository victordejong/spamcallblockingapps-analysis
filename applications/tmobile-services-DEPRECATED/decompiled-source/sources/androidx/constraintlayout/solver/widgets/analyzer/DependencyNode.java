package androidx.constraintlayout.solver.widgets.analyzer;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/DependencyNode.class */
public class DependencyNode implements Dependency {

    /* renamed from: d */
    WidgetRun f2399d;

    /* renamed from: f */
    int f2401f;

    /* renamed from: g */
    public int f2402g;

    /* renamed from: a */
    public Dependency f2396a = null;

    /* renamed from: b */
    public boolean f2397b = false;

    /* renamed from: c */
    public boolean f2398c = false;

    /* renamed from: e */
    Type f2400e = Type.UNKNOWN;

    /* renamed from: h */
    int f2403h = 1;

    /* renamed from: i */
    DimensionDependency f2404i = null;

    /* renamed from: j */
    public boolean f2405j = false;

    /* renamed from: k */
    List<Dependency> f2406k = new ArrayList();

    /* renamed from: l */
    List<DependencyNode> f2407l = new ArrayList();

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type.class */
    enum Type {
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
        this.f2399d = widgetRun;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.Dependency
    /* renamed from: a */
    public void mo20105a(Dependency dependency) {
        for (DependencyNode dependencyNode : this.f2407l) {
            if (!dependencyNode.f2405j) {
                return;
            }
        }
        this.f2398c = true;
        Dependency dependency2 = this.f2396a;
        if (dependency2 != null) {
            dependency2.mo20105a(this);
        }
        if (this.f2397b) {
            this.f2399d.mo20105a(this);
            return;
        }
        DependencyNode dependencyNode2 = null;
        int i = 0;
        for (DependencyNode dependencyNode3 : this.f2407l) {
            if (!(dependencyNode3 instanceof DimensionDependency)) {
                i++;
                dependencyNode2 = dependencyNode3;
            }
        }
        if (dependencyNode2 != null && i == 1 && dependencyNode2.f2405j) {
            DimensionDependency dimensionDependency = this.f2404i;
            if (dimensionDependency != null) {
                if (dimensionDependency.f2405j) {
                    this.f2401f = this.f2403h * dimensionDependency.f2402g;
                } else {
                    return;
                }
            }
            mo20138d(dependencyNode2.f2402g + this.f2401f);
        }
        Dependency dependency3 = this.f2396a;
        if (dependency3 != null) {
            dependency3.mo20105a(this);
        }
    }

    /* renamed from: b */
    public void m20140b(Dependency dependency) {
        this.f2406k.add(dependency);
        if (this.f2405j) {
            dependency.mo20105a(dependency);
        }
    }

    /* renamed from: c */
    public void m20139c() {
        this.f2407l.clear();
        this.f2406k.clear();
        this.f2405j = false;
        this.f2402g = 0;
        this.f2398c = false;
        this.f2397b = false;
    }

    /* renamed from: d */
    public void mo20138d(int i) {
        if (!this.f2405j) {
            this.f2405j = true;
            this.f2402g = i;
            for (Dependency dependency : this.f2406k) {
                dependency.mo20105a(dependency);
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2399d.f2426b.m20313u());
        sb.append(":");
        sb.append(this.f2400e);
        sb.append("(");
        sb.append(this.f2405j ? Integer.valueOf(this.f2402g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.f2407l.size());
        sb.append(":d=");
        sb.append(this.f2406k.size());
        sb.append(">");
        return sb.toString();
    }
}
