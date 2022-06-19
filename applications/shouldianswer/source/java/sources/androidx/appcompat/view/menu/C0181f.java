package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.AbstractC0199n;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.menu.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/f.class */
public class C0181f extends BaseAdapter {

    /* renamed from: a */
    C0182g f713a;

    /* renamed from: b */
    private int f714b = -1;

    /* renamed from: c */
    private boolean f715c;

    /* renamed from: d */
    private final boolean f716d;

    /* renamed from: e */
    private final LayoutInflater f717e;

    /* renamed from: f */
    private final int f718f;

    public C0181f(C0182g c0182g, LayoutInflater layoutInflater, boolean z, int i) {
        this.f716d = z;
        this.f717e = layoutInflater;
        this.f713a = c0182g;
        this.f718f = i;
        m7567b();
    }

    /* renamed from: a */
    public C0182g m7570a() {
        return this.f713a;
    }

    /* renamed from: a */
    public C0186i getItem(int i) {
        ArrayList<C0186i> nonActionItems = this.f716d ? this.f713a.getNonActionItems() : this.f713a.getVisibleItems();
        int i2 = this.f714b;
        int i3 = i;
        if (i2 >= 0) {
            i3 = i;
            if (i >= i2) {
                i3 = i + 1;
            }
        }
        return nonActionItems.get(i3);
    }

    /* renamed from: a */
    public void m7568a(boolean z) {
        this.f715c = z;
    }

    /* renamed from: b */
    void m7567b() {
        C0186i expandedItem = this.f713a.getExpandedItem();
        if (expandedItem != null) {
            ArrayList<C0186i> nonActionItems = this.f713a.getNonActionItems();
            int size = nonActionItems.size();
            for (int i = 0; i < size; i++) {
                if (nonActionItems.get(i) == expandedItem) {
                    this.f714b = i;
                    return;
                }
            }
        }
        this.f714b = -1;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<C0186i> nonActionItems = this.f716d ? this.f713a.getNonActionItems() : this.f713a.getVisibleItems();
        return this.f714b < 0 ? nonActionItems.size() : nonActionItems.size() - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = this.f717e.inflate(this.f718f, viewGroup, false);
        }
        int groupId = getItem(i).getGroupId();
        int i2 = i - 1;
        int groupId2 = i2 >= 0 ? getItem(i2).getGroupId() : groupId;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view2;
        listMenuItemView.setGroupDividerEnabled(this.f713a.isGroupDividerEnabled() && groupId != groupId2);
        AbstractC0199n.AbstractC0200a abstractC0200a = (AbstractC0199n.AbstractC0200a) view2;
        if (this.f715c) {
            listMenuItemView.setForceShowIcon(true);
        }
        abstractC0200a.initialize(getItem(i), 0);
        return view2;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        m7567b();
        super.notifyDataSetChanged();
    }
}
