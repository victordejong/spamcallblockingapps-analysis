package p012b.p036g.p037a.p038i;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
/* renamed from: b.g.a.i.n */
/* loaded from: classes-dex2jar.jar:b/g/a/i/n.class */
public class C0818n {

    /* renamed from: a */
    public int f3856a;

    /* renamed from: b */
    public int f3857b;

    /* renamed from: c */
    public int f3858c;

    /* renamed from: d */
    public int f3859d;

    /* renamed from: e */
    public ArrayList<C0819a> f3860e = new ArrayList<>();

    /* renamed from: b.g.a.i.n$a */
    /* loaded from: classes-dex2jar.jar:b/g/a/i/n$a.class */
    public static class C0819a {

        /* renamed from: a */
        public ConstraintAnchor f3861a;

        /* renamed from: b */
        public ConstraintAnchor f3862b;

        /* renamed from: c */
        public int f3863c;

        /* renamed from: d */
        public ConstraintAnchor.Strength f3864d;

        /* renamed from: e */
        public int f3865e;

        public C0819a(ConstraintAnchor constraintAnchor) {
            this.f3861a = constraintAnchor;
            this.f3862b = constraintAnchor.m38798g();
            this.f3863c = constraintAnchor.m38803b();
            this.f3864d = constraintAnchor.m38799f();
            this.f3865e = constraintAnchor.m38808a();
        }

        /* renamed from: a */
        public void m35839a(ConstraintWidget constraintWidget) {
            constraintWidget.mo35876a(this.f3861a.m38797h()).m38805a(this.f3862b, this.f3863c, this.f3864d, this.f3865e);
        }

        /* renamed from: b */
        public void m35838b(ConstraintWidget constraintWidget) {
            ConstraintAnchor a = constraintWidget.mo35876a(this.f3861a.m38797h());
            this.f3861a = a;
            if (a != null) {
                this.f3862b = a.m38798g();
                this.f3863c = this.f3861a.m38803b();
                this.f3864d = this.f3861a.m38799f();
                this.f3865e = this.f3861a.m38808a();
                return;
            }
            this.f3862b = null;
            this.f3863c = 0;
            this.f3864d = ConstraintAnchor.Strength.STRONG;
            this.f3865e = 0;
        }
    }

    public C0818n(ConstraintWidget constraintWidget) {
        this.f3856a = constraintWidget.m38724w();
        this.f3857b = constraintWidget.m38723x();
        this.f3858c = constraintWidget.m38728t();
        this.f3859d = constraintWidget.m38748j();
        ArrayList<ConstraintAnchor> c = constraintWidget.mo35873c();
        int size = c.size();
        for (int i = 0; i < size; i++) {
            this.f3860e.add(new C0819a(c.get(i)));
        }
    }

    /* renamed from: a */
    public void m35841a(ConstraintWidget constraintWidget) {
        constraintWidget.m38729s(this.f3856a);
        constraintWidget.m38727t(this.f3857b);
        constraintWidget.m38735p(this.f3858c);
        constraintWidget.m38751h(this.f3859d);
        int size = this.f3860e.size();
        for (int i = 0; i < size; i++) {
            this.f3860e.get(i).m35839a(constraintWidget);
        }
    }

    /* renamed from: b */
    public void m35840b(ConstraintWidget constraintWidget) {
        this.f3856a = constraintWidget.m38724w();
        this.f3857b = constraintWidget.m38723x();
        this.f3858c = constraintWidget.m38728t();
        this.f3859d = constraintWidget.m38748j();
        int size = this.f3860e.size();
        for (int i = 0; i < size; i++) {
            this.f3860e.get(i).m35838b(constraintWidget);
        }
    }
}
