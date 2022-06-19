package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.AbstractC0195n;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.menu.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/f.class */
public class C0177f extends BaseAdapter {

    /* renamed from: d */
    C0178g f623d;

    /* renamed from: e */
    private int f624e = -1;

    /* renamed from: f */
    private boolean f625f;

    /* renamed from: g */
    private final boolean f626g;

    /* renamed from: h */
    private final LayoutInflater f627h;

    /* renamed from: i */
    private final int f628i;

    public C0177f(C0178g c0178g, LayoutInflater layoutInflater, boolean z, int i) {
        this.f626g = z;
        this.f627h = layoutInflater;
        this.f623d = c0178g;
        this.f628i = i;
        m35418a();
    }

    /* renamed from: a */
    void m35418a() {
        C0182i m35368x = this.f623d.m35368x();
        if (m35368x != null) {
            ArrayList<C0182i> m35413B = this.f623d.m35413B();
            int size = m35413B.size();
            for (int i = 0; i < size; i++) {
                if (m35413B.get(i) == m35368x) {
                    this.f624e = i;
                    return;
                }
            }
        }
        this.f624e = -1;
    }

    /* renamed from: b */
    public C0178g m35417b() {
        return this.f623d;
    }

    /* renamed from: c */
    public C0182i getItem(int i) {
        ArrayList<C0182i> m35413B = this.f626g ? this.f623d.m35413B() : this.f623d.m35409G();
        int i2 = this.f624e;
        int i3 = i;
        if (i2 >= 0) {
            i3 = i;
            if (i >= i2) {
                i3 = i + 1;
            }
        }
        return m35413B.get(i3);
    }

    /* renamed from: d */
    public void m35415d(boolean z) {
        this.f625f = z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<C0182i> m35413B = this.f626g ? this.f623d.m35413B() : this.f623d.m35409G();
        return this.f624e < 0 ? m35413B.size() : m35413B.size() - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = this.f627h.inflate(this.f628i, viewGroup, false);
        }
        int groupId = getItem(i).getGroupId();
        int i2 = i - 1;
        int groupId2 = i2 >= 0 ? getItem(i2).getGroupId() : groupId;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view2;
        listMenuItemView.setGroupDividerEnabled(this.f623d.mo35305H() && groupId != groupId2);
        AbstractC0195n.AbstractC0196a abstractC0196a = (AbstractC0195n.AbstractC0196a) view2;
        if (this.f625f) {
            listMenuItemView.setForceShowIcon(true);
        }
        abstractC0196a.mo4640e(getItem(i), 0);
        return view2;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        m35418a();
        super.notifyDataSetChanged();
    }
}
