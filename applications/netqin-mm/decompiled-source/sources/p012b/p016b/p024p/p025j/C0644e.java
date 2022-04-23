package p012b.p016b.p024p.p025j;

import android.content.Context;
import android.os.IBinder;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.ExpandedMenuView;
import java.util.ArrayList;
import p012b.p016b.C0580g;
import p012b.p016b.p024p.p025j.AbstractC0662m;
import p012b.p016b.p024p.p025j.AbstractC0664n;
/* renamed from: b.b.p.j.e */
/* loaded from: classes-dex2jar.jar:b/b/p/j/e.class */
public class C0644e implements AbstractC0662m, AdapterView.OnItemClickListener {

    /* renamed from: a */
    public Context f3211a;

    /* renamed from: b */
    public LayoutInflater f3212b;

    /* renamed from: c */
    public C0647g f3213c;

    /* renamed from: d */
    public ExpandedMenuView f3214d;

    /* renamed from: e */
    public int f3215e;

    /* renamed from: f */
    public int f3216f;

    /* renamed from: g */
    public int f3217g;

    /* renamed from: h */
    public AbstractC0662m.AbstractC0663a f3218h;

    /* renamed from: i */
    public C0645a f3219i;

    /* renamed from: b.b.p.j.e$a */
    /* loaded from: classes-dex2jar.jar:b/b/p/j/e$a.class */
    public class C0645a extends BaseAdapter {

        /* renamed from: a */
        public int f3220a = -1;

        public C0645a() {
            m36628a();
        }

        /* renamed from: a */
        public void m36628a() {
            C0651i f = C0644e.this.f3213c.m36588f();
            if (f != null) {
                ArrayList<C0651i> j = C0644e.this.f3213c.m36583j();
                int size = j.size();
                for (int i = 0; i < size; i++) {
                    if (j.get(i) == f) {
                        this.f3220a = i;
                        return;
                    }
                }
            }
            this.f3220a = -1;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = C0644e.this.f3213c.m36583j().size() - C0644e.this.f3215e;
            return this.f3220a < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        public C0651i getItem(int i) {
            ArrayList<C0651i> j = C0644e.this.f3213c.m36583j();
            int i2 = i + C0644e.this.f3215e;
            int i3 = this.f3220a;
            int i4 = i2;
            if (i3 >= 0) {
                i4 = i2;
                if (i2 >= i3) {
                    i4 = i2 + 1;
                }
            }
            return j.get(i4);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = view;
            if (view == null) {
                C0644e eVar = C0644e.this;
                view2 = eVar.f3212b.inflate(eVar.f3217g, viewGroup, false);
            }
            ((AbstractC0664n.AbstractC0665a) view2).mo36519a(getItem(i), 0);
            return view2;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            m36628a();
            super.notifyDataSetChanged();
        }
    }

    public C0644e(int i, int i2) {
        this.f3217g = i;
        this.f3216f = i2;
    }

    public C0644e(Context context, int i) {
        this(i, 0);
        this.f3211a = context;
        this.f3212b = LayoutInflater.from(context);
    }

    /* renamed from: a */
    public ListAdapter m36630a() {
        if (this.f3219i == null) {
            this.f3219i = new C0645a();
        }
        return this.f3219i;
    }

    /* renamed from: a */
    public AbstractC0664n m36629a(ViewGroup viewGroup) {
        if (this.f3214d == null) {
            this.f3214d = (ExpandedMenuView) this.f3212b.inflate(C0580g.abc_expanded_menu_layout, viewGroup, false);
            if (this.f3219i == null) {
                this.f3219i = new C0645a();
            }
            this.f3214d.setAdapter((ListAdapter) this.f3219i);
            this.f3214d.setOnItemClickListener(this);
        }
        return this.f3214d;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public void mo36525a(Context context, C0647g gVar) {
        if (this.f3216f != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, this.f3216f);
            this.f3211a = contextThemeWrapper;
            this.f3212b = LayoutInflater.from(contextThemeWrapper);
        } else if (this.f3211a != null) {
            this.f3211a = context;
            if (this.f3212b == null) {
                this.f3212b = LayoutInflater.from(context);
            }
        }
        this.f3213c = gVar;
        C0645a aVar = this.f3219i;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public void mo36512a(C0647g gVar, boolean z) {
        AbstractC0662m.AbstractC0663a aVar = this.f3218h;
        if (aVar != null) {
            aVar.mo36521a(gVar, z);
        }
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public void mo36511a(AbstractC0662m.AbstractC0663a aVar) {
        this.f3218h = aVar;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public void mo36509a(boolean z) {
        C0645a aVar = this.f3219i;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public boolean mo36524a(C0647g gVar, C0651i iVar) {
        return false;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public boolean mo36510a(SubMenuC0671r rVar) {
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        new DialogInterface$OnKeyListenerC0650h(rVar).m36573a((IBinder) null);
        AbstractC0662m.AbstractC0663a aVar = this.f3218h;
        if (aVar == null) {
            return true;
        }
        aVar.mo36522a(rVar);
        return true;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: b */
    public boolean mo36508b() {
        return false;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: b */
    public boolean mo36523b(C0647g gVar, C0651i iVar) {
        return false;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f3213c.m36612a(this.f3219i.getItem(i), this, 0);
    }
}
