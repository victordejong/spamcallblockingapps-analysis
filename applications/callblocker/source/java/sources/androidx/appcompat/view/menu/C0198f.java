package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.AbstractC0216n;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.menu.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/f.class */
public class C0198f extends BaseAdapter {

    /* renamed from: a */
    C0199g f765a;

    /* renamed from: b */
    private int f766b = -1;

    /* renamed from: c */
    private boolean f767c;

    /* renamed from: d */
    private final boolean f768d;

    /* renamed from: e */
    private final LayoutInflater f769e;

    /* renamed from: f */
    private final int f770f;

    public C0198f(C0199g c0199g, LayoutInflater layoutInflater, boolean z, int i) {
        this.f768d = z;
        this.f769e = layoutInflater;
        this.f765a = c0199g;
        this.f770f = i;
        m21898b();
    }

    /* renamed from: a */
    public C0199g m21901a() {
        return this.f765a;
    }

    /* renamed from: a */
    public C0203i getItem(int i) {
        ArrayList<C0203i> m21853m = this.f768d ? this.f765a.m21853m() : this.f765a.m21856j();
        int i2 = i;
        if (this.f766b >= 0) {
            i2 = i;
            if (i >= this.f766b) {
                i2 = i + 1;
            }
        }
        return m21853m.get(i2);
    }

    /* renamed from: a */
    public void m21899a(boolean z) {
        this.f767c = z;
    }

    /* renamed from: b */
    void m21898b() {
        C0203i m21848s = this.f765a.m21848s();
        if (m21848s != null) {
            ArrayList<C0203i> m21853m = this.f765a.m21853m();
            int size = m21853m.size();
            for (int i = 0; i < size; i++) {
                if (m21853m.get(i) == m21848s) {
                    this.f766b = i;
                    return;
                }
            }
        }
        this.f766b = -1;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<C0203i> m21853m = this.f768d ? this.f765a.m21853m() : this.f765a.m21856j();
        return this.f766b < 0 ? m21853m.size() : m21853m.size() - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f769e.inflate(this.f770f, viewGroup, false);
        }
        int groupId = getItem(i).getGroupId();
        ((ListMenuItemView) view).setGroupDividerEnabled(this.f765a.mo21786b() && groupId != (i - 1 >= 0 ? getItem(i - 1).getGroupId() : groupId));
        AbstractC0216n.AbstractC0217a abstractC0217a = (AbstractC0216n.AbstractC0217a) view;
        if (this.f767c) {
            ((ListMenuItemView) view).setForceShowIcon(true);
        }
        abstractC0217a.mo2909a(getItem(i), 0);
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        m21898b();
        super.notifyDataSetChanged();
    }
}
