package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.AbstractC0285n;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.menu.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/f.class */
public final class C0267f extends BaseAdapter {

    /* renamed from: a */
    public C0268g f875a;

    /* renamed from: b */
    boolean f876b;

    /* renamed from: c */
    private int f877c = -1;

    /* renamed from: d */
    private final boolean f878d;

    /* renamed from: e */
    private final LayoutInflater f879e;

    /* renamed from: f */
    private final int f880f;

    public C0267f(C0268g c0268g, LayoutInflater layoutInflater, boolean z, int i) {
        this.f878d = z;
        this.f879e = layoutInflater;
        this.f875a = c0268g;
        this.f880f = i;
        m46110a();
    }

    /* renamed from: a */
    private void m46110a() {
        C0272i c0272i = this.f875a.f892j;
        if (c0272i != null) {
            ArrayList<C0272i> m46082k = this.f875a.m46082k();
            int size = m46082k.size();
            for (int i = 0; i < size; i++) {
                if (m46082k.get(i) == c0272i) {
                    this.f877c = i;
                    return;
                }
            }
        }
        this.f877c = -1;
    }

    /* renamed from: a */
    public final C0272i getItem(int i) {
        ArrayList<C0272i> m46082k = this.f878d ? this.f875a.m46082k() : this.f875a.m46084i();
        int i2 = this.f877c;
        int i3 = i;
        if (i2 >= 0) {
            i3 = i;
            if (i >= i2) {
                i3 = i + 1;
            }
        }
        return m46082k.get(i3);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList<C0272i> m46082k = this.f878d ? this.f875a.m46082k() : this.f875a.m46084i();
        return this.f877c < 0 ? m46082k.size() : m46082k.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = this.f879e.inflate(this.f880f, viewGroup, false);
        }
        int groupId = getItem(i).getGroupId();
        int i2 = i - 1;
        int groupId2 = i2 >= 0 ? getItem(i2).getGroupId() : groupId;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view2;
        boolean z = false;
        if (this.f875a.mo46038b()) {
            z = false;
            if (groupId != groupId2) {
                z = true;
            }
        }
        listMenuItemView.setGroupDividerEnabled(z);
        AbstractC0285n.AbstractC0286a abstractC0286a = (AbstractC0285n.AbstractC0286a) view2;
        if (this.f876b) {
            listMenuItemView.setForceShowIcon(true);
        }
        abstractC0286a.mo10612a(getItem(i));
        return view2;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        m46110a();
        super.notifyDataSetChanged();
    }
}
