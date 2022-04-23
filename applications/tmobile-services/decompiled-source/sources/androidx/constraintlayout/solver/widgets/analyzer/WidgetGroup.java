package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.widgets.Chain;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/WidgetGroup.class */
public class WidgetGroup {

    /* renamed from: f */
    static int f2419f;

    /* renamed from: b */
    int f2421b;

    /* renamed from: c */
    int f2422c;

    /* renamed from: a */
    ArrayList<ConstraintWidget> f2420a = new ArrayList<>();

    /* renamed from: d */
    ArrayList<MeasureResult> f2423d = null;

    /* renamed from: e */
    private int f2424e = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult.class */
    public class MeasureResult {
        public MeasureResult(WidgetGroup widgetGroup, ConstraintWidget constraintWidget, LinearSystem linearSystem, int i) {
            new WeakReference(constraintWidget);
            linearSystem.m20477x(constraintWidget.f2214I);
            linearSystem.m20477x(constraintWidget.f2216J);
            linearSystem.m20477x(constraintWidget.f2218K);
            linearSystem.m20477x(constraintWidget.f2219L);
            linearSystem.m20477x(constraintWidget.f2220M);
        }
    }

    public WidgetGroup(int i) {
        this.f2421b = -1;
        this.f2422c = 0;
        int i2 = f2419f;
        f2419f = i2 + 1;
        this.f2421b = i2;
        this.f2422c = i;
    }

    /* renamed from: e */
    private String m20111e() {
        int i = this.f2422c;
        return i == 0 ? "Horizontal" : i == 1 ? "Vertical" : i == 2 ? "Both" : "Unknown";
    }

    /* renamed from: j */
    private int m20106j(LinearSystem linearSystem, ArrayList<ConstraintWidget> arrayList, int i) {
        int x;
        int x2;
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) arrayList.get(0).m20374L();
        linearSystem.m20501D();
        constraintWidgetContainer.mo20211g(linearSystem, false);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList.get(i2).mo20211g(linearSystem, false);
        }
        if (i == 0 && constraintWidgetContainer.f2296U0 > 0) {
            Chain.m20421b(constraintWidgetContainer, linearSystem, arrayList, 0);
        }
        if (i == 1 && constraintWidgetContainer.f2297V0 > 0) {
            Chain.m20421b(constraintWidgetContainer, linearSystem, arrayList, 1);
        }
        try {
            linearSystem.m20475z();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.f2423d = new ArrayList<>();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            this.f2423d.add(new MeasureResult(this, arrayList.get(i3), linearSystem, i));
        }
        if (i == 0) {
            x = linearSystem.m20477x(constraintWidgetContainer.f2214I);
            x2 = linearSystem.m20477x(constraintWidgetContainer.f2218K);
            linearSystem.m20501D();
        } else {
            x = linearSystem.m20477x(constraintWidgetContainer.f2216J);
            x2 = linearSystem.m20477x(constraintWidgetContainer.f2219L);
            linearSystem.m20501D();
        }
        return x2 - x;
    }

    /* renamed from: a */
    public boolean m20115a(ConstraintWidget constraintWidget) {
        if (this.f2420a.contains(constraintWidget)) {
            return false;
        }
        this.f2420a.add(constraintWidget);
        return true;
    }

    /* renamed from: b */
    public void m20114b(ArrayList<WidgetGroup> arrayList) {
        int size = this.f2420a.size();
        if (this.f2424e != -1 && size > 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                WidgetGroup widgetGroup = arrayList.get(i);
                if (this.f2424e == widgetGroup.f2421b) {
                    m20109g(this.f2422c, widgetGroup);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    /* renamed from: c */
    public int m20113c() {
        return this.f2421b;
    }

    /* renamed from: d */
    public int m20112d() {
        return this.f2422c;
    }

    /* renamed from: f */
    public int m20110f(LinearSystem linearSystem, int i) {
        if (this.f2420a.size() == 0) {
            return 0;
        }
        return m20106j(linearSystem, this.f2420a, i);
    }

    /* renamed from: g */
    public void m20109g(int i, WidgetGroup widgetGroup) {
        Iterator<ConstraintWidget> it = this.f2420a.iterator();
        while (it.hasNext()) {
            ConstraintWidget next = it.next();
            widgetGroup.m20115a(next);
            if (i == 0) {
                next.f2215I0 = widgetGroup.m20113c();
            } else {
                next.f2217J0 = widgetGroup.m20113c();
            }
        }
        this.f2424e = widgetGroup.f2421b;
    }

    /* renamed from: h */
    public void m20108h(boolean z) {
    }

    /* renamed from: i */
    public void m20107i(int i) {
        this.f2422c = i;
    }

    public String toString() {
        String str = m20111e() + " [" + this.f2421b + "] <";
        Iterator<ConstraintWidget> it = this.f2420a.iterator();
        while (it.hasNext()) {
            ConstraintWidget next = it.next();
            str = str + " " + next.m20313u();
        }
        return str + " >";
    }
}
