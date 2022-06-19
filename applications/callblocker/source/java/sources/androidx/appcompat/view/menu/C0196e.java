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
import androidx.appcompat.C0083a;
import androidx.appcompat.view.menu.AbstractC0214m;
import androidx.appcompat.view.menu.AbstractC0216n;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.menu.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/e.class */
public class C0196e implements AdapterView.OnItemClickListener, AbstractC0214m {

    /* renamed from: a */
    Context f753a;

    /* renamed from: b */
    LayoutInflater f754b;

    /* renamed from: c */
    C0199g f755c;

    /* renamed from: d */
    ExpandedMenuView f756d;

    /* renamed from: e */
    int f757e;

    /* renamed from: f */
    int f758f;

    /* renamed from: g */
    int f759g;

    /* renamed from: h */
    C0197a f760h;

    /* renamed from: i */
    private AbstractC0214m.AbstractC0215a f761i;

    /* renamed from: j */
    private int f762j;

    /* renamed from: androidx.appcompat.view.menu.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/e$a.class */
    public class C0197a extends BaseAdapter {

        /* renamed from: b */
        private int f764b = -1;

        public C0197a() {
            C0196e.this = r4;
            m21903a();
        }

        /* renamed from: a */
        public C0203i getItem(int i) {
            ArrayList<C0203i> m21853m = C0196e.this.f755c.m21853m();
            int i2 = C0196e.this.f757e + i;
            int i3 = i2;
            if (this.f764b >= 0) {
                i3 = i2;
                if (i2 >= this.f764b) {
                    i3 = i2 + 1;
                }
            }
            return m21853m.get(i3);
        }

        /* renamed from: a */
        void m21903a() {
            C0203i m21848s = C0196e.this.f755c.m21848s();
            if (m21848s != null) {
                ArrayList<C0203i> m21853m = C0196e.this.f755c.m21853m();
                int size = m21853m.size();
                for (int i = 0; i < size; i++) {
                    if (m21853m.get(i) == m21848s) {
                        this.f764b = i;
                        return;
                    }
                }
            }
            this.f764b = -1;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = C0196e.this.f755c.m21853m().size() - C0196e.this.f757e;
            if (this.f764b >= 0) {
                size--;
            }
            return size;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = C0196e.this.f754b.inflate(C0196e.this.f759g, viewGroup, false);
            }
            ((AbstractC0216n.AbstractC0217a) view).mo2909a(getItem(i), 0);
            return view;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            m21903a();
            super.notifyDataSetChanged();
        }
    }

    public C0196e(int i, int i2) {
        this.f759g = i;
        this.f758f = i2;
    }

    public C0196e(Context context, int i) {
        this(i, 0);
        this.f753a = context;
        this.f754b = LayoutInflater.from(this.f753a);
    }

    /* renamed from: a */
    public ListAdapter m21907a() {
        if (this.f760h == null) {
            this.f760h = new C0197a();
        }
        return this.f760h;
    }

    /* renamed from: a */
    public AbstractC0216n m21905a(ViewGroup viewGroup) {
        if (this.f756d == null) {
            this.f756d = (ExpandedMenuView) this.f754b.inflate(C0083a.C0090g.abc_expanded_menu_layout, viewGroup, false);
            if (this.f760h == null) {
                this.f760h = new C0197a();
            }
            this.f756d.setAdapter((ListAdapter) this.f760h);
            this.f756d.setOnItemClickListener(this);
        }
        return this.f756d;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3589a(Context context, C0199g c0199g) {
        if (this.f758f != 0) {
            this.f753a = new ContextThemeWrapper(context, this.f758f);
            this.f754b = LayoutInflater.from(this.f753a);
        } else if (this.f753a != null) {
            this.f753a = context;
            if (this.f754b == null) {
                this.f754b = LayoutInflater.from(this.f753a);
            }
        }
        this.f755c = c0199g;
        if (this.f760h != null) {
            this.f760h.notifyDataSetChanged();
        }
    }

    /* renamed from: a */
    public void m21906a(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        if (this.f756d != null) {
            this.f756d.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3588a(Parcelable parcelable) {
        m21904b((Bundle) parcelable);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3586a(C0199g c0199g, boolean z) {
        if (this.f761i != null) {
            this.f761i.mo21353a(c0199g, z);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3585a(AbstractC0214m.AbstractC0215a abstractC0215a) {
        this.f761i = abstractC0215a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3582a(boolean z) {
        if (this.f760h != null) {
            this.f760h.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public boolean mo3587a(C0199g c0199g, C0203i c0203i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public boolean mo3584a(SubMenuC0223r subMenuC0223r) {
        boolean z;
        if (!subMenuC0223r.hasVisibleItems()) {
            z = false;
        } else {
            new DialogInterface$OnClickListenerC0202h(subMenuC0223r).m21846a((IBinder) null);
            if (this.f761i != null) {
                this.f761i.mo21354a(subMenuC0223r);
            }
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public void m21904b(Bundle bundle) {
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.f756d.restoreHierarchyState(sparseParcelableArray);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: b */
    public boolean mo3581b() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: b */
    public boolean mo3580b(C0199g c0199g, C0203i c0203i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: c */
    public int mo3578c() {
        return this.f762j;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: f */
    public Parcelable mo3577f() {
        Bundle bundle;
        if (this.f756d == null) {
            bundle = null;
        } else {
            bundle = new Bundle();
            m21906a(bundle);
        }
        return bundle;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f755c.m21887a(this.f760h.getItem(i), this, 0);
    }
}
