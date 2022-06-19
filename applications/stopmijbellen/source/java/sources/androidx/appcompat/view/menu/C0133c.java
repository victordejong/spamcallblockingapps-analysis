package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.DialogC0122b;
import androidx.appcompat.view.menu.AbstractC0144i;
import androidx.appcompat.view.menu.AbstractC0146j;
import java.util.ArrayList;
import java.util.Objects;
import me.zhanghai.android.materialprogressbar.C3681R;
/* renamed from: androidx.appcompat.view.menu.c */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/c.class */
public class C0133c implements AbstractC0144i, AdapterView.OnItemClickListener {

    /* renamed from: a */
    public Context f412a;

    /* renamed from: b */
    public LayoutInflater f413b;

    /* renamed from: c */
    public C0136e f414c;

    /* renamed from: d */
    public ExpandedMenuView f415d;

    /* renamed from: e */
    public AbstractC0144i.AbstractC0145a f416e;

    /* renamed from: f */
    public C0134a f417f;

    /* renamed from: androidx.appcompat.view.menu.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/c$a.class */
    public class C0134a extends BaseAdapter {

        /* renamed from: a */
        public int f418a = -1;

        public C0134a() {
            C0133c.this = r4;
            m8718a();
        }

        /* renamed from: a */
        public void m8718a() {
            C0136e c0136e = C0133c.this.f414c;
            C0140g c0140g = c0136e.f448v;
            if (c0140g != null) {
                c0136e.m8709i();
                ArrayList<C0140g> arrayList = c0136e.f436j;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    if (arrayList.get(i) == c0140g) {
                        this.f418a = i;
                        return;
                    }
                }
            }
            this.f418a = -1;
        }

        /* renamed from: b */
        public C0140g getItem(int i) {
            C0136e c0136e = C0133c.this.f414c;
            c0136e.m8709i();
            ArrayList<C0140g> arrayList = c0136e.f436j;
            Objects.requireNonNull(C0133c.this);
            int i2 = i + 0;
            int i3 = this.f418a;
            int i4 = i2;
            if (i3 >= 0) {
                i4 = i2;
                if (i2 >= i3) {
                    i4 = i2 + 1;
                }
            }
            return arrayList.get(i4);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            C0136e c0136e = C0133c.this.f414c;
            c0136e.m8709i();
            int size = c0136e.f436j.size();
            Objects.requireNonNull(C0133c.this);
            int i = size + 0;
            return this.f418a < 0 ? i : i - 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = view;
            if (view == null) {
                view2 = C0133c.this.f413b.inflate(C3681R.layout.abc_list_menu_item_layout, viewGroup, false);
            }
            ((AbstractC0146j.AbstractC0147a) view2).mo4552d(getItem(i), 0);
            return view2;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            m8718a();
            super.notifyDataSetChanged();
        }
    }

    public C0133c(Context context, int i) {
        this.f412a = context;
        this.f413b = LayoutInflater.from(context);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: a */
    public void mo717a(C0136e c0136e, boolean z) {
        AbstractC0144i.AbstractC0145a abstractC0145a = this.f416e;
        if (abstractC0145a != null) {
            abstractC0145a.mo3279a(c0136e, z);
        }
    }

    /* renamed from: b */
    public ListAdapter m8719b() {
        if (this.f417f == null) {
            this.f417f = new C0134a();
        }
        return this.f417f;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: c */
    public void mo715c(Context context, C0136e c0136e) {
        if (this.f412a != null) {
            this.f412a = context;
            if (this.f413b == null) {
                this.f413b = LayoutInflater.from(context);
            }
        }
        this.f414c = c0136e;
        C0134a c0134a = this.f417f;
        if (c0134a != null) {
            c0134a.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: d */
    public void mo714d(Parcelable parcelable) {
        SparseArray<Parcelable> sparseParcelableArray = ((Bundle) parcelable).getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.f415d.restoreHierarchyState(sparseParcelableArray);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: e */
    public boolean mo713e(SubMenuC0151l subMenuC0151l) {
        if (!subMenuC0151l.hasVisibleItems()) {
            return false;
        }
        DialogInterface$OnKeyListenerC0139f dialogInterface$OnKeyListenerC0139f = new DialogInterface$OnKeyListenerC0139f(subMenuC0151l);
        DialogC0122b.C0123a c0123a = new DialogC0122b.C0123a(subMenuC0151l.f427a);
        C0133c c0133c = new C0133c(c0123a.f334a.f317a, C3681R.layout.abc_list_menu_item_layout);
        dialogInterface$OnKeyListenerC0139f.f453c = c0133c;
        c0133c.f416e = dialogInterface$OnKeyListenerC0139f;
        C0136e c0136e = dialogInterface$OnKeyListenerC0139f.f451a;
        c0136e.m8713b(c0133c, c0136e.f427a);
        ListAdapter m8719b = dialogInterface$OnKeyListenerC0139f.f453c.m8719b();
        AlertController.C0118b c0118b = c0123a.f334a;
        c0118b.f325i = m8719b;
        c0118b.f326j = dialogInterface$OnKeyListenerC0139f;
        View view = subMenuC0151l.f441o;
        if (view != null) {
            c0118b.f321e = view;
        } else {
            c0118b.f319c = subMenuC0151l.f440n;
            c0118b.f320d = subMenuC0151l.f439m;
        }
        c0118b.f324h = dialogInterface$OnKeyListenerC0139f;
        DialogC0122b m8726a = c0123a.m8726a();
        dialogInterface$OnKeyListenerC0139f.f452b = m8726a;
        m8726a.setOnDismissListener(dialogInterface$OnKeyListenerC0139f);
        WindowManager.LayoutParams attributes = dialogInterface$OnKeyListenerC0139f.f452b.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        dialogInterface$OnKeyListenerC0139f.f452b.show();
        AbstractC0144i.AbstractC0145a abstractC0145a = this.f416e;
        if (abstractC0145a == null) {
            return true;
        }
        abstractC0145a.mo3278b(subMenuC0151l);
        return true;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: g */
    public void mo711g(boolean z) {
        C0134a c0134a = this.f417f;
        if (c0134a != null) {
            c0134a.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    public int getId() {
        return 0;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: h */
    public boolean mo710h() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: i */
    public Parcelable mo709i() {
        if (this.f415d == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.f415d;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: j */
    public boolean mo708j(C0136e c0136e, C0140g c0140g) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: k */
    public boolean mo707k(C0136e c0136e, C0140g c0140g) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: l */
    public void mo8681l(AbstractC0144i.AbstractC0145a abstractC0145a) {
        this.f416e = abstractC0145a;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f414c.m8706r(this.f417f.getItem(i), this, 0);
    }
}
