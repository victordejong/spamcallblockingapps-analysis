package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.AbstractC0146j;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.menu.d */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/d.class */
public class C0135d extends BaseAdapter {

    /* renamed from: a */
    public C0136e f420a;

    /* renamed from: b */
    public int f421b = -1;

    /* renamed from: c */
    public boolean f422c;

    /* renamed from: d */
    public final boolean f423d;

    /* renamed from: e */
    public final LayoutInflater f424e;

    /* renamed from: f */
    public final int f425f;

    public C0135d(C0136e c0136e, LayoutInflater layoutInflater, boolean z, int i) {
        this.f423d = z;
        this.f424e = layoutInflater;
        this.f420a = c0136e;
        this.f425f = i;
        m8716a();
    }

    /* renamed from: a */
    public void m8716a() {
        C0136e c0136e = this.f420a;
        C0140g c0140g = c0136e.f448v;
        if (c0140g != null) {
            c0136e.m8709i();
            ArrayList<C0140g> arrayList = c0136e.f436j;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (arrayList.get(i) == c0140g) {
                    this.f421b = i;
                    return;
                }
            }
        }
        this.f421b = -1;
    }

    /* renamed from: b */
    public C0140g getItem(int i) {
        ArrayList<C0140g> arrayList;
        if (this.f423d) {
            C0136e c0136e = this.f420a;
            c0136e.m8709i();
            arrayList = c0136e.f436j;
        } else {
            arrayList = this.f420a.m8708l();
        }
        int i2 = this.f421b;
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
        ArrayList<C0140g> arrayList;
        if (this.f423d) {
            C0136e c0136e = this.f420a;
            c0136e.m8709i();
            arrayList = c0136e.f436j;
        } else {
            arrayList = this.f420a.m8708l();
        }
        return this.f421b < 0 ? arrayList.size() : arrayList.size() - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = this.f424e.inflate(this.f425f, viewGroup, false);
        }
        int i2 = getItem(i).f459b;
        int i3 = i - 1;
        int i4 = i3 >= 0 ? getItem(i3).f459b : i2;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view2;
        listMenuItemView.setGroupDividerEnabled(this.f420a.mo8675m() && i2 != i4);
        AbstractC0146j.AbstractC0147a abstractC0147a = (AbstractC0146j.AbstractC0147a) view2;
        if (this.f422c) {
            listMenuItemView.setForceShowIcon(true);
        }
        abstractC0147a.mo4552d(getItem(i), 0);
        return view2;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        m8716a();
        super.notifyDataSetChanged();
    }
}
