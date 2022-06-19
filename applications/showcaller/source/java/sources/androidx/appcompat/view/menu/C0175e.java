package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.AbstractC0193m;
import androidx.appcompat.view.menu.AbstractC0195n;
import java.util.ArrayList;
import p020b.p021a.C1429g;
/* renamed from: androidx.appcompat.view.menu.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/e.class */
public class C0175e implements AbstractC0193m, AdapterView.OnItemClickListener {

    /* renamed from: d */
    Context f611d;

    /* renamed from: e */
    LayoutInflater f612e;

    /* renamed from: f */
    C0178g f613f;

    /* renamed from: g */
    ExpandedMenuView f614g;

    /* renamed from: h */
    int f615h;

    /* renamed from: i */
    int f616i;

    /* renamed from: j */
    int f617j;

    /* renamed from: k */
    private AbstractC0193m.AbstractC0194a f618k;

    /* renamed from: l */
    C0176a f619l;

    /* renamed from: m */
    private int f620m;

    /* renamed from: androidx.appcompat.view.menu.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/e$a.class */
    public class C0176a extends BaseAdapter {

        /* renamed from: d */
        private int f621d = -1;

        public C0176a() {
            C0175e.this = r4;
            m35420a();
        }

        /* renamed from: a */
        void m35420a() {
            C0182i m35368x = C0175e.this.f613f.m35368x();
            if (m35368x != null) {
                ArrayList<C0182i> m35413B = C0175e.this.f613f.m35413B();
                int size = m35413B.size();
                for (int i = 0; i < size; i++) {
                    if (m35413B.get(i) == m35368x) {
                        this.f621d = i;
                        return;
                    }
                }
            }
            this.f621d = -1;
        }

        /* renamed from: b */
        public C0182i getItem(int i) {
            ArrayList<C0182i> m35413B = C0175e.this.f613f.m35413B();
            int i2 = i + C0175e.this.f615h;
            int i3 = this.f621d;
            int i4 = i2;
            if (i3 >= 0) {
                i4 = i2;
                if (i2 >= i3) {
                    i4 = i2 + 1;
                }
            }
            return m35413B.get(i4);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = C0175e.this.f613f.m35413B().size() - C0175e.this.f615h;
            return this.f621d < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = view;
            if (view == null) {
                C0175e c0175e = C0175e.this;
                view2 = c0175e.f612e.inflate(c0175e.f617j, viewGroup, false);
            }
            ((AbstractC0195n.AbstractC0196a) view2).mo4640e(getItem(i), 0);
            return view2;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            m35420a();
            super.notifyDataSetChanged();
        }
    }

    public C0175e(int i, int i2) {
        this.f617j = i;
        this.f616i = i2;
    }

    public C0175e(Context context, int i) {
        this(i, 0);
        this.f611d = context;
        this.f612e = LayoutInflater.from(context);
    }

    /* renamed from: a */
    public ListAdapter m35424a() {
        if (this.f619l == null) {
            this.f619l = new C0176a();
        }
        return this.f619l;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: b */
    public void mo4537b(C0178g c0178g, boolean z) {
        AbstractC0193m.AbstractC0194a abstractC0194a = this.f618k;
        if (abstractC0194a != null) {
            abstractC0194a.mo35224b(c0178g, z);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: c */
    public void mo4536c(boolean z) {
        C0176a c0176a = this.f619l;
        if (c0176a != null) {
            c0176a.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: d */
    public boolean mo4535d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: e */
    public boolean mo4534e(C0178g c0178g, C0182i c0182i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: f */
    public boolean mo4533f(C0178g c0178g, C0182i c0182i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: g */
    public void mo35315g(AbstractC0193m.AbstractC0194a abstractC0194a) {
        this.f618k = abstractC0194a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    public int getId() {
        return this.f620m;
    }

    /* renamed from: h */
    public AbstractC0195n m35423h(ViewGroup viewGroup) {
        if (this.f614g == null) {
            this.f614g = (ExpandedMenuView) this.f612e.inflate(C1429g.abc_expanded_menu_layout, viewGroup, false);
            if (this.f619l == null) {
                this.f619l = new C0176a();
            }
            this.f614g.setAdapter((ListAdapter) this.f619l);
            this.f614g.setOnItemClickListener(this);
        }
        return this.f614g;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: i */
    public void mo4531i(Context context, C0178g c0178g) {
        if (this.f616i != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, this.f616i);
            this.f611d = contextThemeWrapper;
            this.f612e = LayoutInflater.from(contextThemeWrapper);
        } else if (this.f611d != null) {
            this.f611d = context;
            if (this.f612e == null) {
                this.f612e = LayoutInflater.from(context);
            }
        }
        this.f613f = c0178g;
        C0176a c0176a = this.f619l;
        if (c0176a != null) {
            c0176a.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: j */
    public void mo4530j(Parcelable parcelable) {
        m35422k((Bundle) parcelable);
    }

    /* renamed from: k */
    public void m35422k(Bundle bundle) {
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.f614g.restoreHierarchyState(sparseParcelableArray);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: l */
    public boolean mo4528l(SubMenuC0202r subMenuC0202r) {
        if (!subMenuC0202r.hasVisibleItems()) {
            return false;
        }
        new DialogInterface$OnKeyListenerC0181h(subMenuC0202r).m35364d(null);
        AbstractC0193m.AbstractC0194a abstractC0194a = this.f618k;
        if (abstractC0194a == null) {
            return true;
        }
        abstractC0194a.mo35223c(subMenuC0202r);
        return true;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: m */
    public Parcelable mo4527m() {
        if (this.f614g == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        m35421n(bundle);
        return bundle;
    }

    /* renamed from: n */
    public void m35421n(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.f614g;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f613f.m35405O(this.f619l.getItem(i), this, 0);
    }
}
