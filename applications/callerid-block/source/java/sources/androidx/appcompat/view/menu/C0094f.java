package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.AbstractC0099n;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.menu.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/f.class */
public class C0094f extends BaseAdapter {

    /* renamed from: b */
    g f318b;

    /* renamed from: c */
    private int f319c = -1;

    /* renamed from: d */
    private boolean f320d;

    /* renamed from: e */
    private final boolean f321e;

    /* renamed from: f */
    private final LayoutInflater f322f;

    /* renamed from: g */
    private final int f323g;

    public C0094f(g gVar, LayoutInflater layoutInflater, boolean z, int i) {
        this.f321e = z;
        this.f322f = layoutInflater;
        this.f318b = gVar;
        this.f323g = i;
        m14843a();
    }

    /* renamed from: a */
    void m14843a() {
        i x = this.f318b.x();
        if (x != null) {
            ArrayList B = this.f318b.B();
            int size = B.size();
            for (int i = 0; i < size; i++) {
                if (((i) B.get(i)) == x) {
                    this.f319c = i;
                    return;
                }
            }
        }
        this.f319c = -1;
    }

    /* renamed from: b */
    public g m14842b() {
        return this.f318b;
    }

    /* renamed from: c */
    public i getItem(int i) {
        ArrayList B = this.f321e ? this.f318b.B() : this.f318b.G();
        int i2 = this.f319c;
        int i3 = i;
        if (i2 >= 0) {
            i3 = i;
            if (i >= i2) {
                i3 = i + 1;
            }
        }
        return (i) B.get(i3);
    }

    /* renamed from: d */
    public void m14840d(boolean z) {
        this.f320d = z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList B = this.f321e ? this.f318b.B() : this.f318b.G();
        int i = this.f319c;
        int size = B.size();
        return i < 0 ? size : size - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = this.f322f.inflate(this.f323g, viewGroup, false);
        }
        int groupId = getItem(i).getGroupId();
        int i2 = i - 1;
        int groupId2 = i2 >= 0 ? getItem(i2).getGroupId() : groupId;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view2;
        listMenuItemView.setGroupDividerEnabled(this.f318b.H() && groupId != groupId2);
        AbstractC0099n.AbstractC0100a abstractC0100a = (AbstractC0099n.AbstractC0100a) view2;
        if (this.f320d) {
            listMenuItemView.setForceShowIcon(true);
        }
        abstractC0100a.m14807f(getItem(i), 0);
        return view2;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        m14843a();
        super.notifyDataSetChanged();
    }
}
