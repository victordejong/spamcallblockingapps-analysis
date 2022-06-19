package org.mistergroup.shouldianswer.components.stickyheaders;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import kotlin.p073a.C1600g;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
/* renamed from: org.mistergroup.shouldianswer.components.stickyheaders.a */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/stickyheaders/a.class */
public class C2334a extends RecyclerView.AbstractC0945a<C2342h> {

    /* renamed from: a */
    public static final C2335a f6618a = new C2335a(null);

    /* renamed from: b */
    private ArrayList<C2340f> f6619b;

    /* renamed from: c */
    private final SparseBooleanArray f6620c = new SparseBooleanArray();

    /* renamed from: d */
    private SparseArray<C2341g> f6621d = new SparseArray<>();

    /* renamed from: e */
    private final SparseIntArray f6622e = new SparseIntArray();

    /* renamed from: f */
    private int f6623f;

    /* renamed from: org.mistergroup.shouldianswer.components.stickyheaders.a$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/stickyheaders/a$a.class */
    public static final class C2335a {
        private C2335a() {
        }

        public /* synthetic */ C2335a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final int m1544a(int i) {
            return i & 255;
        }

        /* renamed from: b */
        public final int m1543b(int i) {
            return (i >> 8) & 255;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.components.stickyheaders.a$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/stickyheaders/a$b.class */
    public static final class C2336b extends C2342h {
    }

    /* renamed from: org.mistergroup.shouldianswer.components.stickyheaders.a$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/stickyheaders/a$c.class */
    public static final class C2337c extends C2342h {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2337c(View view) {
            super(view);
            C1694h.m3117b(view, "itemView");
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.components.stickyheaders.a$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/stickyheaders/a$d.class */
    public static class C2338d extends C2342h {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2338d(View view) {
            super(view);
            C1694h.m3117b(view, "itemView");
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.components.stickyheaders.a$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/stickyheaders/a$e.class */
    public static class C2339e extends C2342h {

        /* renamed from: a */
        private int f6624a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2339e(View view) {
            super(view);
            C1694h.m3117b(view, "itemView");
        }

        /* renamed from: a */
        public final int m1542a() {
            return this.f6624a;
        }

        /* renamed from: a */
        public final void m1541a(int i) {
            this.f6624a = i;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.components.stickyheaders.a$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/stickyheaders/a$f.class */
    public static final class C2340f {

        /* renamed from: a */
        private int f6625a;

        /* renamed from: b */
        private int f6626b;

        /* renamed from: c */
        private int f6627c;

        /* renamed from: d */
        private boolean f6628d;

        /* renamed from: e */
        private boolean f6629e;

        /* renamed from: a */
        public final int m1540a() {
            return this.f6625a;
        }

        /* renamed from: a */
        public final void m1539a(int i) {
            this.f6625a = i;
        }

        /* renamed from: a */
        public final void m1538a(boolean z) {
            this.f6628d = z;
        }

        /* renamed from: b */
        public final int m1537b() {
            return this.f6626b;
        }

        /* renamed from: b */
        public final void m1536b(int i) {
            this.f6626b = i;
        }

        /* renamed from: b */
        public final void m1535b(boolean z) {
            this.f6629e = z;
        }

        /* renamed from: c */
        public final int m1534c() {
            return this.f6627c;
        }

        /* renamed from: c */
        public final void m1533c(int i) {
            this.f6627c = i;
        }

        /* renamed from: d */
        public final boolean m1532d() {
            return this.f6628d;
        }

        /* renamed from: e */
        public final boolean m1531e() {
            return this.f6629e;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.components.stickyheaders.a$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/stickyheaders/a$g.class */
    public static final class C2341g {

        /* renamed from: a */
        private SparseBooleanArray f6630a = new SparseBooleanArray();

        /* renamed from: a */
        public final SparseBooleanArray m1530a() {
            return this.f6630a;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.components.stickyheaders.a$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/stickyheaders/a$h.class */
    public static class C2342h extends RecyclerView.AbstractC0977w {

        /* renamed from: a */
        private int f6631a;

        /* renamed from: b */
        private int f6632b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2342h(View view) {
            super(view);
            C1694h.m3117b(view, "itemView");
        }

        /* renamed from: b */
        public final int m1529b() {
            return this.f6631a;
        }

        /* renamed from: b */
        public final void m1528b(int i) {
            this.f6631a = i;
        }

        /* renamed from: c */
        public final void m1527c(int i) {
            this.f6632b = i;
        }
    }

    /* renamed from: a */
    private final void m1575a(int i, int i2, int i3) {
        C2341g m1546l = m1546l(i);
        SparseBooleanArray clone = m1546l.m1530a().clone();
        C1694h.m3122a((Object) clone, "sectionSelectionState.items.clone()");
        m1546l.m1530a().clear();
        int size = clone.size();
        for (int i4 = 0; i4 < size; i4++) {
            int keyAt = clone.keyAt(i4);
            if (i3 >= 0 || keyAt < i2 || keyAt >= i2 - i3) {
                int i5 = keyAt >= i2 ? keyAt + i3 : keyAt;
                if (clone.get(keyAt)) {
                    m1546l.m1530a().put(i5, true);
                }
            }
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m1568a(C2334a c2334a, int i, int i2, int i3, Object obj) {
        if (obj == null) {
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = 0;
            }
            c2334a.m1552g(i, i2);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateSectionIndices");
    }

    /* renamed from: a */
    static /* synthetic */ void m1567a(C2334a c2334a, int i, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 1) != 0) {
                i = 0;
            }
            c2334a.m1545m(i);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateSectionsAdapterPosition");
    }

    /* renamed from: b */
    private final void m1564b(C2340f c2340f, int i) {
        c2340f.m1538a(mo411b(i));
        c2340f.m1535b(mo406d(i));
        c2340f.m1536b(mo426a(i));
        c2340f.m1533c(m1551h(i) ? 0 : c2340f.m1537b());
        if (c2340f.m1532d()) {
            c2340f.m1533c(c2340f.m1534c() + 2);
        }
        if (c2340f.m1531e()) {
            c2340f.m1533c(c2340f.m1534c() + 1);
        }
    }

    /* renamed from: f */
    private final int m1554f(int i, int i2) {
        if (this.f6619b == null) {
            m1563c();
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException("sectionIndex " + i + " < 0");
        }
        ArrayList<C2340f> arrayList = this.f6619b;
        if (arrayList == null) {
            C1694h.m3124a();
        }
        if (i < arrayList.size()) {
            ArrayList<C2340f> arrayList2 = this.f6619b;
            if (arrayList2 == null) {
                C1694h.m3124a();
            }
            C2340f c2340f = arrayList2.get(i);
            C1694h.m3122a((Object) c2340f, "this.sections!![sectionIndex]");
            return i2 + c2340f.m1540a();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("sectionIndex ");
        sb.append(i);
        sb.append(" >= sections.size (");
        ArrayList<C2340f> arrayList3 = this.f6619b;
        if (arrayList3 == null) {
            C1694h.m3124a();
        }
        sb.append(arrayList3.size());
        sb.append(")");
        throw new IndexOutOfBoundsException(sb.toString());
    }

    /* renamed from: g */
    private final void m1552g(int i, int i2) {
        ArrayList<C2340f> arrayList = this.f6619b;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        int m1540a = arrayList.get(i).m1540a();
        int a = C1600g.m3201a((List) arrayList);
        if (i > a) {
            return;
        }
        while (true) {
            C2340f c2340f = arrayList.get(i);
            C1694h.m3122a((Object) c2340f, "sections[s]");
            C2340f c2340f2 = c2340f;
            int m1534c = c2340f2.m1534c();
            while (i2 < m1534c) {
                this.f6622e.put(m1540a + i2, i);
                i2++;
            }
            i2 = 0;
            m1540a += c2340f2.m1534c();
            if (i == a) {
                return;
            }
            i++;
        }
    }

    /* renamed from: h */
    private final void m1550h(int i, int i2) {
        SparseBooleanArray clone = this.f6620c.clone();
        C1694h.m3122a((Object) clone, "collapsedSections.clone()");
        this.f6620c.clear();
        int size = clone.size();
        for (int i3 = 0; i3 < size; i3++) {
            int keyAt = clone.keyAt(i3);
            if (i2 >= 0 || keyAt != i) {
                this.f6620c.put(keyAt >= i ? keyAt + i2 : keyAt, clone.get(keyAt));
            }
        }
        SparseArray<C2341g> clone2 = this.f6621d.clone();
        C1694h.m3122a((Object) clone2, "selectionStateBySection.clone()");
        this.f6621d.clear();
        int size2 = clone2.size();
        for (int i4 = 0; i4 < size2; i4++) {
            int keyAt2 = clone2.keyAt(i4);
            if (i2 >= 0 || keyAt2 != i) {
                this.f6621d.put(keyAt2 >= i ? keyAt2 + i2 : keyAt2, clone2.get(keyAt2));
            }
        }
    }

    /* renamed from: l */
    private final C2341g m1546l(int i) {
        C2341g c2341g = this.f6621d.get(i);
        if (c2341g != null) {
            return c2341g;
        }
        C2341g c2341g2 = new C2341g();
        this.f6621d.put(i, c2341g2);
        return c2341g2;
    }

    /* renamed from: m */
    private final void m1545m(int i) {
        ArrayList<C2340f> arrayList = this.f6619b;
        int i2 = 0;
        if (arrayList != null) {
            int i3 = 0;
            if (i > 0) {
                C2340f c2340f = arrayList.get(i - 1);
                C1694h.m3122a((Object) c2340f, "sections[sectionStartIndex - 1]");
                C2340f c2340f2 = c2340f;
                i3 = c2340f2.m1534c() + c2340f2.m1540a();
            }
            int size = arrayList.size();
            int i4 = i;
            int i5 = i3;
            while (true) {
                i2 = i5;
                if (i4 >= size) {
                    break;
                }
                C2340f c2340f3 = arrayList.get(i4);
                C1694h.m3122a((Object) c2340f3, "sections[s]");
                C2340f c2340f4 = c2340f3;
                c2340f4.m1539a(i5);
                i5 += c2340f4.m1534c();
                i4++;
            }
        }
        this.f6623f = i2;
    }

    /* renamed from: a */
    public int mo427a() {
        return 0;
    }

    /* renamed from: a */
    public int mo426a(int i) {
        return 0;
    }

    /* renamed from: a */
    public int mo425a(int i, int i2) {
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004c, code lost:
        if (r6 == 1) goto L10;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m1571a(org.mistergroup.shouldianswer.components.stickyheaders.C2334a.C2340f r5, int r6) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "section"
            kotlin.p081e.p083b.C1694h.m3117b(r0, r1)
            r0 = r5
            boolean r0 = r0.m1532d()
            r7 = r0
            r0 = 3
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L3a
            r0 = r5
            boolean r0 = r0.m1531e()
            if (r0 == 0) goto L3a
            r0 = r6
            if (r0 != 0) goto L20
            goto L45
        L20:
            r0 = r6
            r1 = 1
            if (r0 != r1) goto L2a
        L25:
            r0 = 1
            r6 = r0
            goto L6b
        L2a:
            r0 = r6
            r1 = r5
            int r1 = r1.m1534c()
            r2 = 1
            int r1 = r1 - r2
            if (r0 != r1) goto L69
            r0 = r8
            r6 = r0
            goto L6b
        L3a:
            r0 = r5
            boolean r0 = r0.m1532d()
            if (r0 == 0) goto L52
            r0 = r6
            if (r0 != 0) goto L4a
        L45:
            r0 = 0
            r6 = r0
            goto L6b
        L4a:
            r0 = r6
            r1 = 1
            if (r0 != r1) goto L69
            goto L25
        L52:
            r0 = r5
            boolean r0 = r0.m1531e()
            if (r0 == 0) goto L69
            r0 = r6
            r1 = r5
            int r1 = r1.m1534c()
            r2 = 1
            int r1 = r1 - r2
            if (r0 != r1) goto L69
            r0 = r8
            r6 = r0
            goto L6b
        L69:
            r0 = 2
            r6 = r0
        L6b:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.components.stickyheaders.C2334a.m1571a(org.mistergroup.shouldianswer.components.stickyheaders.a$f, int):int");
    }

    /* renamed from: a */
    public final C2337c m1574a(ViewGroup viewGroup) {
        C1694h.m3117b(viewGroup, "parent");
        View view = new View(viewGroup.getContext());
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        return new C2337c(view);
    }

    /* renamed from: a */
    public C2339e mo424a(ViewGroup viewGroup, int i) {
        C1694h.m3117b(viewGroup, "parent");
        return null;
    }

    /* renamed from: a */
    public final void m1573a(C2336b c2336b, int i, int i2) {
        C1694h.m3117b(c2336b, "viewHolder");
    }

    /* renamed from: a */
    public final void m1572a(C2337c c2337c, int i) {
        C1694h.m3117b(c2337c, "viewHolder");
    }

    /* renamed from: a */
    public void mo416a(C2338d c2338d, int i, int i2) {
        C1694h.m3117b(c2338d, "viewHolder");
    }

    /* renamed from: a */
    public void mo415a(C2339e c2339e, int i, int i2, int i3) {
        C1694h.m3117b(c2339e, "viewHolder");
    }

    /* renamed from: a */
    public void onBindViewHolder(C2342h c2342h, int i) {
        C2340f c2340f;
        C1694h.m3117b(c2342h, "holder");
        int m1555f = m1555f(i);
        c2342h.m1528b(m1555f);
        ArrayList<C2340f> arrayList = this.f6619b;
        c2342h.m1527c((arrayList == null || (c2340f = arrayList.get(m1555f)) == null) ? 0 : c2340f.m1537b());
        m1569a(c2342h, m1555f, i);
        int m1544a = f6618a.m1544a(c2342h.getItemViewType());
        int m1543b = f6618a.m1543b(c2342h.getItemViewType());
        if (m1544a == 0) {
            mo416a((C2338d) c2342h, m1555f, m1543b);
        } else if (m1544a == 1) {
            m1572a((C2337c) c2342h, m1555f);
        } else if (m1544a == 2) {
            C2339e c2339e = (C2339e) c2342h;
            int m1565b = m1565b(m1555f, i);
            c2339e.m1541a(m1565b);
            mo415a(c2339e, m1555f, m1565b, m1543b);
        } else if (m1544a == 3) {
            m1573a((C2336b) c2342h, m1555f, m1543b);
        } else {
            throw new IllegalArgumentException("unrecognized viewType: " + m1544a + " does not correspond to TYPE_ITEM, TYPE_HEADER, TYPE_GHOST_HEADER or TYPE_FOOTER");
        }
    }

    /* renamed from: a */
    public final void m1569a(C2342h c2342h, int i, int i2) {
        C1694h.m3117b(c2342h, "holder");
        View view = c2342h.itemView;
        C1694h.m3122a((Object) view, "holder.itemView");
        view.setTag(2131362296, c2342h);
    }

    /* renamed from: b */
    public final int m1565b(int i, int i2) {
        if (this.f6619b == null) {
            m1563c();
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException("sectionIndex " + i + " < 0");
        }
        ArrayList<C2340f> arrayList = this.f6619b;
        if (arrayList == null) {
            C1694h.m3124a();
        }
        if (i >= arrayList.size()) {
            StringBuilder sb = new StringBuilder();
            sb.append("sectionIndex ");
            sb.append(i);
            sb.append(" >= sections.size (");
            ArrayList<C2340f> arrayList2 = this.f6619b;
            if (arrayList2 == null) {
                C1694h.m3124a();
            }
            sb.append(arrayList2.size());
            sb.append(")");
            throw new IndexOutOfBoundsException(sb.toString());
        }
        ArrayList<C2340f> arrayList3 = this.f6619b;
        if (arrayList3 == null) {
            C1694h.m3124a();
        }
        C2340f c2340f = arrayList3.get(i);
        C1694h.m3122a((Object) c2340f, "this.sections!![sectionIndex]");
        C2340f c2340f2 = c2340f;
        int m1540a = i2 - c2340f2.m1540a();
        if (m1540a <= c2340f2.m1534c()) {
            int i3 = m1540a;
            if (c2340f2.m1532d()) {
                i3 = m1540a - 2;
            }
            return i3;
        }
        throw new IndexOutOfBoundsException("adapterPosition: " + i2 + " is beyond sectionIndex: " + i + " length: " + c2340f2.m1534c());
    }

    /* renamed from: b */
    public C2338d mo410b(ViewGroup viewGroup, int i) {
        C1694h.m3117b(viewGroup, "parent");
        return null;
    }

    /* renamed from: b */
    public final void m1566b() {
        m1563c();
        notifyDataSetChanged();
        this.f6620c.clear();
        this.f6621d.clear();
    }

    /* renamed from: b */
    public boolean mo411b(int i) {
        return false;
    }

    /* renamed from: c */
    public final int m1562c(int i) {
        return 0;
    }

    /* renamed from: c */
    public final C2336b m1560c(ViewGroup viewGroup, int i) {
        C1694h.m3117b(viewGroup, "parent");
        return null;
    }

    /* renamed from: c */
    public final void m1563c() {
        int mo427a = mo427a();
        ArrayList<C2340f> arrayList = new ArrayList<>(mo427a);
        this.f6619b = arrayList;
        for (int i = 0; i < mo427a; i++) {
            C2340f c2340f = new C2340f();
            m1564b(c2340f, i);
            arrayList.add(c2340f);
        }
        m1567a(this, 0, 1, (Object) null);
        m1568a(this, 0, 0, 3, null);
    }

    /* renamed from: c */
    public final void m1561c(int i, int i2) {
        ArrayList<C2340f> arrayList = this.f6619b;
        if (arrayList == null) {
            m1563c();
            m1566b();
            return;
        }
        C2340f c2340f = arrayList.get(i);
        C1694h.m3122a((Object) c2340f, "sections[sectionIndex]");
        C2340f c2340f2 = c2340f;
        if (i2 < c2340f2.m1537b()) {
            int i3 = i2;
            if (c2340f2.m1532d()) {
                i3 = i2 + 2;
            }
            notifyItemChanged(c2340f2.m1540a() + i3);
            return;
        }
        throw new IndexOutOfBoundsException("itemIndex adapterPosition: " + i2 + " exceeds sectionIndex numberOfItems: " + c2340f2.m1537b());
    }

    /* renamed from: d */
    public C2342h onCreateViewHolder(ViewGroup viewGroup, int i) {
        C1694h.m3117b(viewGroup, "parent");
        int m1544a = f6618a.m1544a(i);
        int m1543b = f6618a.m1543b(i);
        if (m1544a == 0) {
            C2338d mo410b = mo410b(viewGroup, m1543b);
            if (mo410b == null) {
                C1694h.m3124a();
            }
            return mo410b;
        } else if (m1544a == 1) {
            return m1574a(viewGroup);
        } else {
            if (m1544a == 2) {
                C2339e mo424a = mo424a(viewGroup, m1543b);
                if (mo424a == null) {
                    C1694h.m3124a();
                }
                return mo424a;
            } else if (m1544a == 3) {
                C2336b m1560c = m1560c(viewGroup, m1543b);
                if (m1560c == null) {
                    C1694h.m3124a();
                }
                return m1560c;
            } else {
                throw new IndexOutOfBoundsException("unrecognized viewType: " + i + " does not correspond to TYPE_ITEM, TYPE_HEADER or TYPE_FOOTER");
            }
        }
    }

    /* renamed from: d */
    public final void m1559d(int i, int i2) {
        ArrayList<C2340f> arrayList = this.f6619b;
        if (arrayList == null) {
            m1563c();
            m1566b();
        } else {
            C2340f c2340f = arrayList.get(i);
            C1694h.m3122a((Object) c2340f, "sections[sectionIndex]");
            C2340f c2340f2 = c2340f;
            c2340f2.m1536b(c2340f2.m1537b() + 1);
            c2340f2.m1533c(c2340f2.m1534c() + 1);
            ArrayList<C2340f> arrayList2 = arrayList;
            if (i == C1600g.m3201a((List) arrayList2)) {
                this.f6623f++;
            } else {
                int i3 = i + 1;
                int a = C1600g.m3201a((List) arrayList2);
                if (i3 <= a) {
                    while (true) {
                        m1545m(i3);
                        if (i3 == a) {
                            break;
                        }
                        i3++;
                    }
                }
            }
            m1568a(this, i, 0, 2, null);
            notifyItemInserted(c2340f2.m1540a() + (c2340f2.m1532d() ? i2 + 2 : i2));
        }
        m1575a(i, i2, 1);
    }

    /* renamed from: d */
    public boolean mo406d(int i) {
        return false;
    }

    /* renamed from: e */
    public final int m1557e(int i) {
        return 0;
    }

    /* renamed from: e */
    public final void m1556e(int i, int i2) {
        if (this.f6619b == null) {
            m1563c();
            m1566b();
        } else {
            m1563c();
            ArrayList<C2340f> arrayList = this.f6619b;
            if (arrayList == null) {
                C1694h.m3124a();
            }
            C2340f c2340f = arrayList.get(i);
            C1694h.m3122a((Object) c2340f, "this.sections!![sectionIndex]");
            C2340f c2340f2 = c2340f;
            notifyItemRemoved(c2340f2.m1540a() + (c2340f2.m1532d() ? i2 + 2 : i2));
        }
        m1575a(i, i2, -1);
    }

    /* renamed from: f */
    public final int m1555f(int i) {
        int i2 = this.f6623f;
        if (this.f6619b == null) {
            m1563c();
        }
        if (i2 == 0) {
            return -1;
        }
        if (i >= 0 && i < i2) {
            return this.f6622e.get(i);
        }
        throw new IndexOutOfBoundsException("adapterPosition " + i + " is not in range of items represented by adapter");
    }

    /* renamed from: g */
    public final int m1553g(int i) {
        return mo411b(i) ? m1554f(i, 0) : -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public int getItemCount() {
        if (this.f6619b == null) {
            m1563c();
        }
        return this.f6623f;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public int getItemViewType(int i) {
        if (this.f6619b == null) {
            m1563c();
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException("adapterPosition (" + i + ") cannot be < 0");
        } else if (i >= this.f6623f) {
            throw new IndexOutOfBoundsException("adapterPosition (" + i + ")  cannot be > getItemCount() (" + getItemCount() + ')');
        } else {
            int m1555f = m1555f(i);
            ArrayList<C2340f> arrayList = this.f6619b;
            if (arrayList == null) {
                C1694h.m3124a();
            }
            C2340f c2340f = arrayList.get(m1555f);
            C1694h.m3122a((Object) c2340f, "this.sections!![sectionIndex]");
            C2340f c2340f2 = c2340f;
            int m1540a = i - c2340f2.m1540a();
            int m1571a = m1571a(c2340f2, m1540a);
            int i2 = 0;
            if (m1571a == 0) {
                i2 = m1562c(m1555f);
                if (i2 < 0 || i2 > 255) {
                    throw new IllegalArgumentException("Custom header view type (" + i2 + ") must be in range [0,255]");
                }
            } else if (m1571a == 2) {
                int i3 = m1540a;
                if (c2340f2.m1532d()) {
                    i3 = m1540a - 2;
                }
                i2 = mo425a(m1555f, i3);
                if (i2 < 0 || i2 > 255) {
                    throw new IllegalArgumentException("Custom item view type (" + i2 + ") must be in range [0,255]");
                }
            } else if (m1571a == 3) {
                i2 = m1557e(m1555f);
                if (i2 < 0 || i2 > 255) {
                    throw new IllegalArgumentException("Custom footer view type (" + i2 + ") must be in range [0,255]");
                }
            }
            return ((i2 & 255) << 8) | (m1571a & 255);
        }
    }

    /* renamed from: h */
    public final boolean m1551h(int i) {
        return this.f6620c.get(i, false);
    }

    /* renamed from: i */
    public final void m1549i(int i) {
        ArrayList<C2340f> arrayList = this.f6619b;
        if (arrayList == null) {
            m1563c();
            m1566b();
        } else {
            C2340f c2340f = new C2340f();
            m1564b(c2340f, i);
            arrayList.add(i, c2340f);
            m1545m(i);
            m1568a(this, i, 0, 2, null);
            notifyItemRangeInserted(c2340f.m1540a(), c2340f.m1534c());
        }
        m1550h(i, 1);
    }

    /* renamed from: j */
    public final void m1548j(int i) {
        ArrayList<C2340f> arrayList = this.f6619b;
        if (arrayList == null) {
            m1563c();
            m1566b();
        } else {
            if (arrayList == null) {
                C1694h.m3124a();
            }
            C2340f c2340f = arrayList.get(i);
            C1694h.m3122a((Object) c2340f, "this.sections!![sectionIndex]");
            C2340f c2340f2 = c2340f;
            m1563c();
            notifyItemRangeRemoved(c2340f2.m1540a(), c2340f2.m1534c());
        }
        m1550h(i, -1);
    }

    /* renamed from: k */
    public final int m1547k(int i) {
        return f6618a.m1544a(getItemViewType(i));
    }
}
