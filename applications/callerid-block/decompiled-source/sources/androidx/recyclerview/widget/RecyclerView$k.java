package androidx.recyclerview.widget;

import android.view.View;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$k.class */
public abstract class RecyclerView$k {

    /* renamed from: a */
    private AbstractC0412b f2215a = null;

    /* renamed from: b */
    private ArrayList<AbstractC0411a> f2216b = new ArrayList<>();

    /* renamed from: c */
    private long f2217c = 120;

    /* renamed from: d */
    private long f2218d = 120;

    /* renamed from: e */
    private long f2219e = 250;

    /* renamed from: f */
    private long f2220f = 250;

    /* renamed from: androidx.recyclerview.widget.RecyclerView$k$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$k$a.class */
    public interface AbstractC0411a {
        /* renamed from: a */
        void m12748a();
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$k$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$k$b.class */
    interface AbstractC0412b {
        /* renamed from: a */
        void m12747a(RecyclerView$a0 recyclerView$a0);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$k$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$k$c.class */
    public static class C0413c {

        /* renamed from: a */
        public int f2221a;

        /* renamed from: b */
        public int f2222b;

        /* renamed from: a */
        public C0413c m12746a(RecyclerView$a0 recyclerView$a0) {
            m12745b(recyclerView$a0, 0);
            return this;
        }

        /* renamed from: b */
        public C0413c m12745b(RecyclerView$a0 recyclerView$a0, int i) {
            View view = recyclerView$a0.f2195a;
            this.f2221a = view.getLeft();
            this.f2222b = view.getTop();
            view.getRight();
            view.getBottom();
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static int m12766e(RecyclerView$a0 recyclerView$a0) {
        int i = recyclerView$a0.f2204j & 14;
        if (recyclerView$a0.m12782t()) {
            return 4;
        }
        int i2 = i;
        if ((i & 4) == 0) {
            int n = recyclerView$a0.m12788n();
            int j = recyclerView$a0.m12792j();
            i2 = i;
            if (n != -1) {
                i2 = i;
                if (j != -1) {
                    i2 = i;
                    if (n != j) {
                        i2 = i | 2048;
                    }
                }
            }
        }
        return i2;
    }

    /* renamed from: a */
    public abstract boolean m12770a(RecyclerView$a0 recyclerView$a0, C0413c cVar, C0413c cVar2);

    /* renamed from: b */
    public abstract boolean m12769b(RecyclerView$a0 recyclerView$a0, RecyclerView$a0 recyclerView$a02, C0413c cVar, C0413c cVar2);

    /* renamed from: c */
    public abstract boolean m12768c(RecyclerView$a0 recyclerView$a0, C0413c cVar, C0413c cVar2);

    /* renamed from: d */
    public abstract boolean m12767d(RecyclerView$a0 recyclerView$a0, C0413c cVar, C0413c cVar2);

    /* renamed from: f */
    public abstract boolean m12765f(RecyclerView$a0 recyclerView$a0);

    /* renamed from: g */
    public boolean m12764g(RecyclerView$a0 recyclerView$a0, List<Object> list) {
        return m12765f(recyclerView$a0);
    }

    /* renamed from: h */
    public final void m12763h(RecyclerView$a0 recyclerView$a0) {
        m12753r(recyclerView$a0);
        AbstractC0412b bVar = this.f2215a;
        if (bVar != null) {
            bVar.m12747a(recyclerView$a0);
        }
    }

    /* renamed from: i */
    public final void m12762i() {
        int size = this.f2216b.size();
        for (int i = 0; i < size; i++) {
            this.f2216b.get(i).m12748a();
        }
        this.f2216b.clear();
    }

    /* renamed from: j */
    public abstract void m12761j(RecyclerView$a0 recyclerView$a0);

    /* renamed from: k */
    public abstract void m12760k();

    /* renamed from: l */
    public long m12759l() {
        return this.f2217c;
    }

    /* renamed from: m */
    public long m12758m() {
        return this.f2220f;
    }

    /* renamed from: n */
    public long m12757n() {
        return this.f2219e;
    }

    /* renamed from: o */
    public long m12756o() {
        return this.f2218d;
    }

    /* renamed from: p */
    public abstract boolean m12755p();

    /* renamed from: q */
    public C0413c m12754q() {
        return new C0413c();
    }

    /* renamed from: r */
    public void m12753r(RecyclerView$a0 recyclerView$a0) {
    }

    /* renamed from: s */
    public C0413c m12752s(RecyclerView$x recyclerView$x, RecyclerView$a0 recyclerView$a0) {
        C0413c q = m12754q();
        q.m12746a(recyclerView$a0);
        return q;
    }

    /* renamed from: t */
    public C0413c m12751t(RecyclerView$x recyclerView$x, RecyclerView$a0 recyclerView$a0, int i, List<Object> list) {
        C0413c q = m12754q();
        q.m12746a(recyclerView$a0);
        return q;
    }

    /* renamed from: u */
    public abstract void m12750u();

    /* renamed from: v */
    void m12749v(AbstractC0412b bVar) {
        this.f2215a = bVar;
    }
}
