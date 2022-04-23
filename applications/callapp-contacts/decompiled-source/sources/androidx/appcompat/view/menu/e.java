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
import androidx.appcompat.a;
import androidx.appcompat.app.c;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/e.class */
public final class e implements AdapterView.OnItemClickListener, m {

    /* renamed from: a  reason: collision with root package name */
    Context f798a;

    /* renamed from: b  reason: collision with root package name */
    LayoutInflater f799b;

    /* renamed from: c  reason: collision with root package name */
    g f800c;

    /* renamed from: d  reason: collision with root package name */
    ExpandedMenuView f801d;
    int e;
    int f;
    int g;
    public m.a h;
    a i;
    private int j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/e$a.class */
    public final class a extends BaseAdapter {

        /* renamed from: b  reason: collision with root package name */
        private int f803b = -1;

        public a() {
            a();
        }

        private void a() {
            i iVar = e.this.f800c.j;
            if (iVar != null) {
                ArrayList<i> k = e.this.f800c.k();
                int size = k.size();
                for (int i = 0; i < size; i++) {
                    if (k.get(i) == iVar) {
                        this.f803b = i;
                        return;
                    }
                }
            }
            this.f803b = -1;
        }

        /* renamed from: a */
        public final i getItem(int i) {
            ArrayList<i> k = e.this.f800c.k();
            int i2 = i + e.this.e;
            int i3 = this.f803b;
            int i4 = i2;
            if (i3 >= 0) {
                i4 = i2;
                if (i2 >= i3) {
                    i4 = i2 + 1;
                }
            }
            return k.get(i4);
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            int size = e.this.f800c.k().size() - e.this.e;
            return this.f803b < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = view;
            if (view == null) {
                view2 = e.this.f799b.inflate(e.this.g, viewGroup, false);
            }
            ((n.a) view2).a(getItem(i));
            return view2;
        }

        @Override // android.widget.BaseAdapter
        public final void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }

    public e(int i, int i2) {
        this.g = i;
        this.f = i2;
    }

    public e(Context context, int i) {
        this(i, 0);
        this.f798a = context;
        this.f799b = LayoutInflater.from(context);
    }

    public final n a(ViewGroup viewGroup) {
        if (this.f801d == null) {
            this.f801d = (ExpandedMenuView) this.f799b.inflate(a.g.abc_expanded_menu_layout, viewGroup, false);
            if (this.i == null) {
                this.i = new a();
            }
            this.f801d.setAdapter((ListAdapter) this.i);
            this.f801d.setOnItemClickListener(this);
        }
        return this.f801d;
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(Context context, g gVar) {
        if (this.f != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, this.f);
            this.f798a = contextThemeWrapper;
            this.f799b = LayoutInflater.from(contextThemeWrapper);
        } else if (this.f798a != null) {
            this.f798a = context;
            if (this.f799b == null) {
                this.f799b = LayoutInflater.from(context);
            }
        }
        this.f800c = gVar;
        a aVar = this.i;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(Parcelable parcelable) {
        SparseArray<Parcelable> sparseParcelableArray = ((Bundle) parcelable).getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.f801d.restoreHierarchyState(sparseParcelableArray);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(g gVar, boolean z) {
        m.a aVar = this.h;
        if (aVar != null) {
            aVar.a(gVar, z);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(m.a aVar) {
        this.h = aVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(boolean z) {
        a aVar = this.i;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public final boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public final boolean a(r rVar) {
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        h hVar = new h(rVar);
        g gVar = hVar.f812a;
        c.a aVar = new c.a(gVar.f808a);
        hVar.f814c = new e(aVar.getContext(), a.g.abc_list_menu_item_layout);
        hVar.f814c.h = hVar;
        hVar.f812a.a(hVar.f814c);
        aVar.f649a.w = hVar.f814c.c();
        aVar.f649a.x = hVar;
        View view = gVar.h;
        if (view != null) {
            aVar.f649a.g = view;
        } else {
            aVar.f649a.f590d = gVar.g;
            aVar.setTitle(gVar.f);
        }
        aVar.f649a.u = hVar;
        hVar.f813b = aVar.create();
        hVar.f813b.setOnDismissListener(hVar);
        WindowManager.LayoutParams attributes = hVar.f813b.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        hVar.f813b.show();
        m.a aVar2 = this.h;
        if (aVar2 == null) {
            return true;
        }
        aVar2.a(rVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.m
    public final int b() {
        return this.j;
    }

    @Override // androidx.appcompat.view.menu.m
    public final boolean b(i iVar) {
        return false;
    }

    public final ListAdapter c() {
        if (this.i == null) {
            this.i = new a();
        }
        return this.i;
    }

    @Override // androidx.appcompat.view.menu.m
    public final boolean c(i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public final Parcelable f() {
        if (this.f801d == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.f801d;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        return bundle;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f800c.a(this.i.getItem(i), this, 0);
    }
}
