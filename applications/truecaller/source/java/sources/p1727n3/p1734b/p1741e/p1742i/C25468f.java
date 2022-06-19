package p1727n3.p1734b.p1741e.p1742i;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.util.ArrayList;
import p1727n3.p1734b.p1741e.p1742i.AbstractC25485n;
/* renamed from: n3.b.e.i.f */
/* loaded from: classes-dex2jar.jar:n3/b/e/i/f.class */
public class C25468f extends BaseAdapter {

    /* renamed from: a */
    public C25469g f71209a;

    /* renamed from: b */
    public int f71210b = -1;

    /* renamed from: c */
    public boolean f71211c;

    /* renamed from: d */
    public final boolean f71212d;

    /* renamed from: e */
    public final LayoutInflater f71213e;

    /* renamed from: f */
    public final int f71214f;

    public C25468f(C25469g c25469g, LayoutInflater layoutInflater, boolean z, int i) {
        this.f71212d = z;
        this.f71213e = layoutInflater;
        this.f71209a = c25469g;
        this.f71214f = i;
        m3486a();
    }

    /* renamed from: a */
    public void m3486a() {
        C25469g c25469g = this.f71209a;
        C25473i c25473i = c25469g.f71237v;
        if (c25473i != null) {
            c25469g.m3475i();
            ArrayList<C25473i> arrayList = c25469g.f71225j;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (arrayList.get(i) == c25473i) {
                    this.f71210b = i;
                    return;
                }
            }
        }
        this.f71210b = -1;
    }

    /* renamed from: b */
    public C25473i getItem(int i) {
        ArrayList<C25473i> arrayList;
        if (this.f71212d) {
            C25469g c25469g = this.f71209a;
            c25469g.m3475i();
            arrayList = c25469g.f71225j;
        } else {
            arrayList = this.f71209a.m3472l();
        }
        int i2 = this.f71210b;
        int i3 = i;
        if (i2 >= 0) {
            i3 = i;
            if (i >= i2) {
                i3 = i + 1;
            }
        }
        return arrayList.get(i3);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<C25473i> arrayList;
        if (this.f71212d) {
            C25469g c25469g = this.f71209a;
            c25469g.m3475i();
            arrayList = c25469g.f71225j;
        } else {
            arrayList = this.f71209a.m3472l();
        }
        return this.f71210b < 0 ? arrayList.size() : arrayList.size() - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = this.f71213e.inflate(this.f71214f, viewGroup, false);
        }
        int i2 = getItem(i).f71248b;
        int i3 = i - 1;
        int i4 = i3 >= 0 ? getItem(i3).f71248b : i2;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view2;
        listMenuItemView.setGroupDividerEnabled(this.f71209a.m3471m() && i2 != i4);
        AbstractC25485n.AbstractC25486a abstractC25486a = (AbstractC25485n.AbstractC25486a) view2;
        if (this.f71211c) {
            listMenuItemView.setForceShowIcon(true);
        }
        abstractC25486a.mo3410d(getItem(i), 0);
        return view2;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        m3486a();
        super.notifyDataSetChanged();
    }
}
