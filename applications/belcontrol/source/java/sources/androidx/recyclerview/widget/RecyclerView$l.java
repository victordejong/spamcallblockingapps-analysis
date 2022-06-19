package androidx.recyclerview.widget;

import android.view.View;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l.class */
public abstract class RecyclerView$l {

    /* renamed from: a */
    public AbstractC0180b f1349a = null;

    /* renamed from: b */
    public ArrayList<AbstractC0179a> f1350b = new ArrayList<>();

    /* renamed from: c */
    public long f1351c = 120;

    /* renamed from: d */
    public long f1352d = 120;

    /* renamed from: e */
    public long f1353e = 250;

    /* renamed from: f */
    public long f1354f = 250;

    /* renamed from: androidx.recyclerview.widget.RecyclerView$l$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l$a.class */
    public interface AbstractC0179a {
        /* renamed from: a */
        void m6183a();
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$l$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l$b.class */
    public interface AbstractC0180b {
        /* renamed from: a */
        void m6182a(RecyclerView$b0 recyclerView$b0);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$l$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l$c.class */
    public static class C0181c {

        /* renamed from: a */
        public int f1355a;

        /* renamed from: b */
        public int f1356b;

        /* renamed from: a */
        public C0181c m6181a(RecyclerView$b0 recyclerView$b0) {
            m6180b(recyclerView$b0, 0);
            return this;
        }

        /* renamed from: b */
        public C0181c m6180b(RecyclerView$b0 recyclerView$b0, int i) {
            View view = recyclerView$b0.itemView;
            this.f1355a = view.getLeft();
            this.f1356b = view.getTop();
            view.getRight();
            view.getBottom();
            return this;
        }
    }

    /* renamed from: e */
    public static int m6201e(RecyclerView$b0 recyclerView$b0) {
        int i = recyclerView$b0.mFlags & 14;
        if (recyclerView$b0.isInvalid()) {
            return 4;
        }
        int i2 = i;
        if ((i & 4) == 0) {
            int oldPosition = recyclerView$b0.getOldPosition();
            int adapterPosition = recyclerView$b0.getAdapterPosition();
            i2 = i;
            if (oldPosition != -1) {
                i2 = i;
                if (adapterPosition != -1) {
                    i2 = i;
                    if (oldPosition != adapterPosition) {
                        i2 = i | 2048;
                    }
                }
            }
        }
        return i2;
    }

    /* renamed from: a */
    public abstract boolean m6205a(RecyclerView$b0 recyclerView$b0, C0181c c0181c, C0181c c0181c2);

    /* renamed from: b */
    public abstract boolean m6204b(RecyclerView$b0 recyclerView$b0, RecyclerView$b0 recyclerView$b02, C0181c c0181c, C0181c c0181c2);

    /* renamed from: c */
    public abstract boolean m6203c(RecyclerView$b0 recyclerView$b0, C0181c c0181c, C0181c c0181c2);

    /* renamed from: d */
    public abstract boolean m6202d(RecyclerView$b0 recyclerView$b0, C0181c c0181c, C0181c c0181c2);

    /* renamed from: f */
    public abstract boolean m6200f(RecyclerView$b0 recyclerView$b0);

    /* renamed from: g */
    public boolean m6199g(RecyclerView$b0 recyclerView$b0, List<Object> list) {
        return m6200f(recyclerView$b0);
    }

    /* renamed from: h */
    public final void m6198h(RecyclerView$b0 recyclerView$b0) {
        m6188r(recyclerView$b0);
        AbstractC0180b abstractC0180b = this.f1349a;
        if (abstractC0180b != null) {
            abstractC0180b.m6182a(recyclerView$b0);
        }
    }

    /* renamed from: i */
    public final void m6197i() {
        int size = this.f1350b.size();
        for (int i = 0; i < size; i++) {
            this.f1350b.get(i).m6183a();
        }
        this.f1350b.clear();
    }

    /* renamed from: j */
    public abstract void m6196j(RecyclerView$b0 recyclerView$b0);

    /* renamed from: k */
    public abstract void m6195k();

    /* renamed from: l */
    public long m6194l() {
        return this.f1351c;
    }

    /* renamed from: m */
    public long m6193m() {
        return this.f1354f;
    }

    /* renamed from: n */
    public long m6192n() {
        return this.f1353e;
    }

    /* renamed from: o */
    public long m6191o() {
        return this.f1352d;
    }

    /* renamed from: p */
    public abstract boolean m6190p();

    /* renamed from: q */
    public C0181c m6189q() {
        return new C0181c();
    }

    /* renamed from: r */
    public void m6188r(RecyclerView$b0 recyclerView$b0) {
    }

    /* renamed from: s */
    public C0181c m6187s(RecyclerView$y recyclerView$y, RecyclerView$b0 recyclerView$b0) {
        C0181c m6189q = m6189q();
        m6189q.m6181a(recyclerView$b0);
        return m6189q;
    }

    /* renamed from: t */
    public C0181c m6186t(RecyclerView$y recyclerView$y, RecyclerView$b0 recyclerView$b0, int i, List<Object> list) {
        C0181c m6189q = m6189q();
        m6189q.m6181a(recyclerView$b0);
        return m6189q;
    }

    /* renamed from: u */
    public abstract void m6185u();

    /* renamed from: v */
    public void m6184v(AbstractC0180b abstractC0180b) {
        this.f1349a = abstractC0180b;
    }
}
