package p1727n3.p1734b.p1741e.p1742i;

import android.content.Context;
import android.graphics.drawable.Drawable;
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
import androidx.appcompat.C0032R;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.view.menu.ExpandedMenuView;
import java.util.ArrayList;
import java.util.Objects;
import n3.b.a.g;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1734b.p1741e.p1742i.AbstractC25483m;
import p1727n3.p1734b.p1741e.p1742i.AbstractC25485n;
/* renamed from: n3.b.e.i.e */
/* loaded from: classes-dex2jar.jar:n3/b/e/i/e.class */
public class C25466e implements AbstractC25483m, AdapterView.OnItemClickListener {

    /* renamed from: a */
    public Context f71200a;

    /* renamed from: b */
    public LayoutInflater f71201b;

    /* renamed from: c */
    public C25469g f71202c;

    /* renamed from: d */
    public ExpandedMenuView f71203d;

    /* renamed from: e */
    public int f71204e;

    /* renamed from: f */
    public AbstractC25483m.AbstractC25484a f71205f;

    /* renamed from: g */
    public C25467a f71206g;

    /* renamed from: n3.b.e.i.e$a */
    /* loaded from: classes-dex2jar.jar:n3/b/e/i/e$a.class */
    public class C25467a extends BaseAdapter {

        /* renamed from: a */
        public int f71207a = -1;

        public C25467a() {
            C25466e.this = r4;
            m3488a();
        }

        /* renamed from: a */
        public void m3488a() {
            C25469g c25469g = C25466e.this.f71202c;
            C25473i c25473i = c25469g.f71237v;
            if (c25473i != null) {
                c25469g.m3475i();
                ArrayList<C25473i> arrayList = c25469g.f71225j;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    if (arrayList.get(i) == c25473i) {
                        this.f71207a = i;
                        return;
                    }
                }
            }
            this.f71207a = -1;
        }

        /* renamed from: b */
        public C25473i getItem(int i) {
            C25469g c25469g = C25466e.this.f71202c;
            c25469g.m3475i();
            ArrayList<C25473i> arrayList = c25469g.f71225j;
            Objects.requireNonNull(C25466e.this);
            int i2 = i + 0;
            int i3 = this.f71207a;
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
            C25469g c25469g = C25466e.this.f71202c;
            c25469g.m3475i();
            int size = c25469g.f71225j.size();
            Objects.requireNonNull(C25466e.this);
            int i = size + 0;
            return this.f71207a < 0 ? i : i - 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = view;
            if (view == null) {
                C25466e c25466e = C25466e.this;
                view2 = c25466e.f71201b.inflate(c25466e.f71204e, viewGroup, false);
            }
            ((AbstractC25485n.AbstractC25486a) view2).mo3410d(getItem(i), 0);
            return view2;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            m3488a();
            super.notifyDataSetChanged();
        }
    }

    public C25466e(Context context, int i) {
        this.f71204e = i;
        this.f71200a = context;
        this.f71201b = LayoutInflater.from(context);
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
    /* renamed from: a */
    public void mo3423a(C25469g c25469g, boolean z) {
        AbstractC25483m.AbstractC25484a abstractC25484a = this.f71205f;
        if (abstractC25484a != null) {
            abstractC25484a.mo3413a(c25469g, z);
        }
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
    /* renamed from: b */
    public boolean mo3422b(C25469g c25469g, C25473i c25473i) {
        return false;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
    /* renamed from: c */
    public Parcelable mo3421c() {
        if (this.f71203d == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.f71203d;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        return bundle;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
    /* renamed from: d */
    public void mo3420d(boolean z) {
        C25467a c25467a = this.f71206g;
        if (c25467a != null) {
            c25467a.notifyDataSetChanged();
        }
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
    /* renamed from: e */
    public boolean mo3419e() {
        return false;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
    /* renamed from: f */
    public boolean mo3418f(C25469g c25469g, C25473i c25473i) {
        return false;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
    /* renamed from: g */
    public void mo3417g(Context context, C25469g c25469g) {
        if (this.f71200a != null) {
            this.f71200a = context;
            if (this.f71201b == null) {
                this.f71201b = LayoutInflater.from(context);
            }
        }
        this.f71202c = c25469g;
        C25467a c25467a = this.f71206g;
        if (c25467a != null) {
            c25467a.notifyDataSetChanged();
        }
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
    public int getId() {
        return 0;
    }

    /* renamed from: h */
    public ListAdapter m3489h() {
        if (this.f71206g == null) {
            this.f71206g = new C25467a();
        }
        return this.f71206g;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
    /* renamed from: i */
    public void mo3416i(AbstractC25483m.AbstractC25484a abstractC25484a) {
        this.f71205f = abstractC25484a;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
    /* renamed from: j */
    public void mo3415j(Parcelable parcelable) {
        SparseArray<Parcelable> sparseParcelableArray = ((Bundle) parcelable).getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.f71203d.restoreHierarchyState(sparseParcelableArray);
        }
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
    /* renamed from: k */
    public boolean mo3414k(r rVar) {
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        DialogInterface$OnKeyListenerC25472h dialogInterface$OnKeyListenerC25472h = new DialogInterface$OnKeyListenerC25472h(rVar);
        g$a g_a = new g$a(rVar.f71216a);
        C25466e c25466e = new C25466e(g_a.f70854a.f151a, C0032R.layout.abc_list_menu_item_layout);
        dialogInterface$OnKeyListenerC25472h.f71242c = c25466e;
        c25466e.f71205f = dialogInterface$OnKeyListenerC25472h;
        C25469g c25469g = dialogInterface$OnKeyListenerC25472h.f71240a;
        c25469g.m3482b(c25466e, c25469g.f71216a);
        g_a.m3667b(dialogInterface$OnKeyListenerC25472h.f71242c.m3489h(), dialogInterface$OnKeyListenerC25472h);
        View view = rVar.f71230o;
        if (view != null) {
            g_a.f70854a.f155e = view;
        } else {
            Drawable drawable = rVar.f71229n;
            AlertController.C0037b c0037b = g_a.f70854a;
            c0037b.f153c = drawable;
            c0037b.f154d = rVar.f71228m;
        }
        g_a.f70854a.f166p = dialogInterface$OnKeyListenerC25472h;
        g m3668a = g_a.m3668a();
        dialogInterface$OnKeyListenerC25472h.f71241b = m3668a;
        m3668a.setOnDismissListener(dialogInterface$OnKeyListenerC25472h);
        WindowManager.LayoutParams attributes = dialogInterface$OnKeyListenerC25472h.f71241b.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        dialogInterface$OnKeyListenerC25472h.f71241b.show();
        AbstractC25483m.AbstractC25484a abstractC25484a = this.f71205f;
        if (abstractC25484a == null) {
            return true;
        }
        abstractC25484a.mo3412b(rVar);
        return true;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f71202c.m3465s(this.f71206g.getItem(i), this, 0);
    }
}
