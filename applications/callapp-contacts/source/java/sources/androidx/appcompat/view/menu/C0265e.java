package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.C0142a;
import androidx.appcompat.app.DialogInterfaceC0196c;
import androidx.appcompat.view.menu.AbstractC0283m;
import androidx.appcompat.view.menu.AbstractC0285n;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.menu.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/e.class */
public final class C0265e implements AdapterView.OnItemClickListener, AbstractC0283m {

    /* renamed from: a */
    Context f863a;

    /* renamed from: b */
    LayoutInflater f864b;

    /* renamed from: c */
    C0268g f865c;

    /* renamed from: d */
    ExpandedMenuView f866d;

    /* renamed from: e */
    int f867e;

    /* renamed from: f */
    int f868f;

    /* renamed from: g */
    int f869g;

    /* renamed from: h */
    public AbstractC0283m.AbstractC0284a f870h;

    /* renamed from: i */
    C0266a f871i;

    /* renamed from: j */
    private int f872j;

    /* renamed from: androidx.appcompat.view.menu.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/e$a.class */
    public final class C0266a extends BaseAdapter {

        /* renamed from: b */
        private int f874b = -1;

        public C0266a() {
            C0265e.this = r4;
            m46112a();
        }

        /* renamed from: a */
        private void m46112a() {
            C0272i c0272i = C0265e.this.f865c.f892j;
            if (c0272i != null) {
                ArrayList<C0272i> m46082k = C0265e.this.f865c.m46082k();
                int size = m46082k.size();
                for (int i = 0; i < size; i++) {
                    if (m46082k.get(i) == c0272i) {
                        this.f874b = i;
                        return;
                    }
                }
            }
            this.f874b = -1;
        }

        /* renamed from: a */
        public final C0272i getItem(int i) {
            ArrayList<C0272i> m46082k = C0265e.this.f865c.m46082k();
            int i2 = i + C0265e.this.f867e;
            int i3 = this.f874b;
            int i4 = i2;
            if (i3 >= 0) {
                i4 = i2;
                if (i2 >= i3) {
                    i4 = i2 + 1;
                }
            }
            return m46082k.get(i4);
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            int size = C0265e.this.f865c.m46082k().size() - C0265e.this.f867e;
            return this.f874b < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = view;
            if (view == null) {
                view2 = C0265e.this.f864b.inflate(C0265e.this.f869g, viewGroup, false);
            }
            ((AbstractC0285n.AbstractC0286a) view2).mo10612a(getItem(i));
            return view2;
        }

        @Override // android.widget.BaseAdapter
        public final void notifyDataSetChanged() {
            m46112a();
            super.notifyDataSetChanged();
        }
    }

    public C0265e(int i, int i2) {
        this.f869g = i;
        this.f868f = i2;
    }

    public C0265e(Context context, int i) {
        this(i, 0);
        this.f863a = context;
        this.f864b = LayoutInflater.from(context);
    }

    /* renamed from: a */
    public final AbstractC0285n m46114a(ViewGroup viewGroup) {
        if (this.f866d == null) {
            this.f866d = (ExpandedMenuView) this.f864b.inflate(C0142a.C0149g.abc_expanded_menu_layout, viewGroup, false);
            if (this.f871i == null) {
                this.f871i = new C0266a();
            }
            this.f866d.setAdapter((ListAdapter) this.f871i);
            this.f866d.setOnItemClickListener(this);
        }
        return this.f866d;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10549a(Context context, C0268g c0268g) {
        if (this.f868f != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, this.f868f);
            this.f863a = contextThemeWrapper;
            this.f864b = LayoutInflater.from(contextThemeWrapper);
        } else if (this.f863a != null) {
            this.f863a = context;
            if (this.f864b == null) {
                this.f864b = LayoutInflater.from(context);
            }
        }
        this.f865c = c0268g;
        C0266a c0266a = this.f871i;
        if (c0266a != null) {
            c0266a.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10546a(Parcelable parcelable) {
        SparseArray<Parcelable> sparseParcelableArray = ((Bundle) parcelable).getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.f866d.restoreHierarchyState(sparseParcelableArray);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10545a(C0268g c0268g, boolean z) {
        AbstractC0283m.AbstractC0284a abstractC0284a = this.f870h;
        if (abstractC0284a != null) {
            abstractC0284a.mo45990a(c0268g, z);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10543a(AbstractC0283m.AbstractC0284a abstractC0284a) {
        this.f870h = abstractC0284a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10541a(boolean z) {
        C0266a c0266a = this.f871i;
        if (c0266a != null) {
            c0266a.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final boolean mo10551a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final boolean mo10542a(SubMenuC0292r subMenuC0292r) {
        if (!subMenuC0292r.hasVisibleItems()) {
            return false;
        }
        DialogInterface$OnClickListenerC0271h dialogInterface$OnClickListenerC0271h = new DialogInterface$OnClickListenerC0271h(subMenuC0292r);
        C0268g c0268g = dialogInterface$OnClickListenerC0271h.f908a;
        DialogInterfaceC0196c.C0197a c0197a = new DialogInterfaceC0196c.C0197a(c0268g.f883a);
        dialogInterface$OnClickListenerC0271h.f910c = new C0265e(c0197a.getContext(), C0142a.C0149g.abc_list_menu_item_layout);
        dialogInterface$OnClickListenerC0271h.f910c.f870h = dialogInterface$OnClickListenerC0271h;
        dialogInterface$OnClickListenerC0271h.f908a.m46100a(dialogInterface$OnClickListenerC0271h.f910c);
        c0197a.f515a.f380w = dialogInterface$OnClickListenerC0271h.f910c.m46113c();
        c0197a.f515a.f381x = dialogInterface$OnClickListenerC0271h;
        View view = c0268g.f890h;
        if (view != null) {
            c0197a.f515a.f364g = view;
        } else {
            c0197a.f515a.f361d = c0268g.f889g;
            c0197a.setTitle(c0268g.f888f);
        }
        c0197a.f515a.f378u = dialogInterface$OnClickListenerC0271h;
        dialogInterface$OnClickListenerC0271h.f909b = c0197a.create();
        dialogInterface$OnClickListenerC0271h.f909b.setOnDismissListener(dialogInterface$OnClickListenerC0271h);
        WindowManager.LayoutParams attributes = dialogInterface$OnClickListenerC0271h.f909b.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        dialogInterface$OnClickListenerC0271h.f909b.show();
        AbstractC0283m.AbstractC0284a abstractC0284a = this.f870h;
        if (abstractC0284a == null) {
            return true;
        }
        abstractC0284a.mo45991a(subMenuC0292r);
        return true;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: b */
    public final int mo10540b() {
        return this.f872j;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: b */
    public final boolean mo10537b(C0272i c0272i) {
        return false;
    }

    /* renamed from: c */
    public final ListAdapter m46113c() {
        if (this.f871i == null) {
            this.f871i = new C0266a();
        }
        return this.f871i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: c */
    public final boolean mo10533c(C0272i c0272i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: f */
    public final Parcelable mo10530f() {
        if (this.f866d == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.f866d;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        return bundle;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f865c.m46102a(this.f871i.getItem(i), this, 0);
    }
}
