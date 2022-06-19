package androidx.appcompat.view.menu;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.AbstractC0099n;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/e$a.class */
class e$a extends BaseAdapter {

    /* renamed from: b */
    private int f316b = -1;

    /* renamed from: c */
    final /* synthetic */ e f317c;

    public e$a(e eVar) {
        this.f317c = eVar;
        m14845a();
    }

    /* renamed from: a */
    void m14845a() {
        i x = this.f317c.d.x();
        if (x != null) {
            ArrayList B = this.f317c.d.B();
            int size = B.size();
            for (int i = 0; i < size; i++) {
                if (((i) B.get(i)) == x) {
                    this.f316b = i;
                    return;
                }
            }
        }
        this.f316b = -1;
    }

    /* renamed from: b */
    public i getItem(int i) {
        ArrayList B = this.f317c.d.B();
        int i2 = i + this.f317c.f;
        int i3 = this.f316b;
        int i4 = i2;
        if (i3 >= 0) {
            i4 = i2;
            if (i2 >= i3) {
                i4 = i2 + 1;
            }
        }
        return (i) B.get(i4);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        int size = this.f317c.d.B().size() - this.f317c.f;
        return this.f316b < 0 ? size : size - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            e eVar = this.f317c;
            view2 = eVar.c.inflate(eVar.h, viewGroup, false);
        }
        ((AbstractC0099n.AbstractC0100a) view2).m14807f(getItem(i), 0);
        return view2;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        m14845a();
        super.notifyDataSetChanged();
    }
}
