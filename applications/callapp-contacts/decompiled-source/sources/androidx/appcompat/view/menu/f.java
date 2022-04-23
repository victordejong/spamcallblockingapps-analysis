package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.n;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/f.class */
public final class f extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    public g f804a;

    /* renamed from: b  reason: collision with root package name */
    boolean f805b;

    /* renamed from: c  reason: collision with root package name */
    private int f806c = -1;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f807d;
    private final LayoutInflater e;
    private final int f;

    public f(g gVar, LayoutInflater layoutInflater, boolean z, int i) {
        this.f807d = z;
        this.e = layoutInflater;
        this.f804a = gVar;
        this.f = i;
        a();
    }

    private void a() {
        i iVar = this.f804a.j;
        if (iVar != null) {
            ArrayList<i> k = this.f804a.k();
            int size = k.size();
            for (int i = 0; i < size; i++) {
                if (k.get(i) == iVar) {
                    this.f806c = i;
                    return;
                }
            }
        }
        this.f806c = -1;
    }

    /* renamed from: a */
    public final i getItem(int i) {
        ArrayList<i> k = this.f807d ? this.f804a.k() : this.f804a.i();
        int i2 = this.f806c;
        int i3 = i;
        if (i2 >= 0) {
            i3 = i;
            if (i >= i2) {
                i3 = i + 1;
            }
        }
        return k.get(i3);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList<i> k = this.f807d ? this.f804a.k() : this.f804a.i();
        return this.f806c < 0 ? k.size() : k.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = this.e.inflate(this.f, viewGroup, false);
        }
        int groupId = getItem(i).getGroupId();
        int i2 = i - 1;
        int groupId2 = i2 >= 0 ? getItem(i2).getGroupId() : groupId;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view2;
        boolean z = false;
        if (this.f804a.b()) {
            z = false;
            if (groupId != groupId2) {
                z = true;
            }
        }
        listMenuItemView.setGroupDividerEnabled(z);
        n.a aVar = (n.a) view2;
        if (this.f805b) {
            listMenuItemView.setForceShowIcon(true);
        }
        aVar.a(getItem(i));
        return view2;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
