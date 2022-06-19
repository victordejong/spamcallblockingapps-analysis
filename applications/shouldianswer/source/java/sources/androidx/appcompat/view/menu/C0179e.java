package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.C0051a;
import androidx.appcompat.view.menu.AbstractC0197m;
import androidx.appcompat.view.menu.AbstractC0199n;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.menu.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/e.class */
public class C0179e implements AdapterView.OnItemClickListener, AbstractC0197m {

    /* renamed from: a */
    Context f701a;

    /* renamed from: b */
    LayoutInflater f702b;

    /* renamed from: c */
    C0182g f703c;

    /* renamed from: d */
    ExpandedMenuView f704d;

    /* renamed from: e */
    int f705e;

    /* renamed from: f */
    int f706f;

    /* renamed from: g */
    int f707g;

    /* renamed from: h */
    C0180a f708h;

    /* renamed from: i */
    private AbstractC0197m.AbstractC0198a f709i;

    /* renamed from: j */
    private int f710j;

    /* renamed from: androidx.appcompat.view.menu.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/e$a.class */
    public class C0180a extends BaseAdapter {

        /* renamed from: b */
        private int f712b = -1;

        public C0180a() {
            C0179e.this = r4;
            m7572a();
        }

        /* renamed from: a */
        public C0186i getItem(int i) {
            ArrayList<C0186i> nonActionItems = C0179e.this.f703c.getNonActionItems();
            int i2 = i + C0179e.this.f705e;
            int i3 = this.f712b;
            int i4 = i2;
            if (i3 >= 0) {
                i4 = i2;
                if (i2 >= i3) {
                    i4 = i2 + 1;
                }
            }
            return nonActionItems.get(i4);
        }

        /* renamed from: a */
        void m7572a() {
            C0186i expandedItem = C0179e.this.f703c.getExpandedItem();
            if (expandedItem != null) {
                ArrayList<C0186i> nonActionItems = C0179e.this.f703c.getNonActionItems();
                int size = nonActionItems.size();
                for (int i = 0; i < size; i++) {
                    if (nonActionItems.get(i) == expandedItem) {
                        this.f712b = i;
                        return;
                    }
                }
            }
            this.f712b = -1;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = C0179e.this.f703c.getNonActionItems().size() - C0179e.this.f705e;
            return this.f712b < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = view;
            if (view == null) {
                view2 = C0179e.this.f702b.inflate(C0179e.this.f707g, viewGroup, false);
            }
            ((AbstractC0199n.AbstractC0200a) view2).initialize(getItem(i), 0);
            return view2;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            m7572a();
            super.notifyDataSetChanged();
        }
    }

    public C0179e(int i, int i2) {
        this.f707g = i;
        this.f706f = i2;
    }

    public C0179e(Context context, int i) {
        this(i, 0);
        this.f701a = context;
        this.f702b = LayoutInflater.from(this.f701a);
    }

    /* renamed from: a */
    public ListAdapter m7576a() {
        if (this.f708h == null) {
            this.f708h = new C0180a();
        }
        return this.f708h;
    }

    /* renamed from: a */
    public AbstractC0199n m7574a(ViewGroup viewGroup) {
        if (this.f704d == null) {
            this.f704d = (ExpandedMenuView) this.f702b.inflate(C0051a.C0058g.abc_expanded_menu_layout, viewGroup, false);
            if (this.f708h == null) {
                this.f708h = new C0180a();
            }
            this.f704d.setAdapter((ListAdapter) this.f708h);
            this.f704d.setOnItemClickListener(this);
        }
        return this.f704d;
    }

    /* renamed from: a */
    public void m7575a(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.f704d;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
    }

    /* renamed from: b */
    public void m7573b(Bundle bundle) {
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.f704d.restoreHierarchyState(sparseParcelableArray);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public boolean collapseItemActionView(C0182g c0182g, C0186i c0186i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public boolean expandItemActionView(C0182g c0182g, C0186i c0186i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public int getId() {
        return this.f710j;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void initForMenu(Context context, C0182g c0182g) {
        int i = this.f706f;
        if (i != 0) {
            this.f701a = new ContextThemeWrapper(context, i);
            this.f702b = LayoutInflater.from(this.f701a);
        } else if (this.f701a != null) {
            this.f701a = context;
            if (this.f702b == null) {
                this.f702b = LayoutInflater.from(this.f701a);
            }
        }
        this.f703c = c0182g;
        C0180a c0180a = this.f708h;
        if (c0180a != null) {
            c0180a.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void onCloseMenu(C0182g c0182g, boolean z) {
        AbstractC0197m.AbstractC0198a abstractC0198a = this.f709i;
        if (abstractC0198a != null) {
            abstractC0198a.mo7435a(c0182g, z);
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f703c.performItemAction(this.f708h.getItem(i), this, 0);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void onRestoreInstanceState(Parcelable parcelable) {
        m7573b((Bundle) parcelable);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public Parcelable onSaveInstanceState() {
        if (this.f704d == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        m7575a(bundle);
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public boolean onSubMenuSelected(SubMenuC0206r subMenuC0206r) {
        if (!subMenuC0206r.hasVisibleItems()) {
            return false;
        }
        new DialogInterface$OnClickListenerC0185h(subMenuC0206r).m7565a((IBinder) null);
        AbstractC0197m.AbstractC0198a abstractC0198a = this.f709i;
        if (abstractC0198a == null) {
            return true;
        }
        abstractC0198a.mo7436a(subMenuC0206r);
        return true;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void setCallback(AbstractC0197m.AbstractC0198a abstractC0198a) {
        this.f709i = abstractC0198a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void updateMenuView(boolean z) {
        C0180a c0180a = this.f708h;
        if (c0180a != null) {
            c0180a.notifyDataSetChanged();
        }
    }
}
