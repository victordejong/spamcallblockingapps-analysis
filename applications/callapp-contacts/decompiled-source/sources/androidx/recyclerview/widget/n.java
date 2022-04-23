package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/n.class */
public abstract class n extends RecyclerView.f {
    public boolean l = true;

    public abstract boolean a(RecyclerView.v vVar);

    public abstract boolean a(RecyclerView.v vVar, int i, int i2, int i3, int i4);

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public final boolean a(RecyclerView.v vVar, RecyclerView.f.b bVar, RecyclerView.f.b bVar2) {
        int i = bVar.f5339a;
        int i2 = bVar.f5340b;
        View view = vVar.itemView;
        int left = bVar2 == null ? view.getLeft() : bVar2.f5339a;
        int top = bVar2 == null ? view.getTop() : bVar2.f5340b;
        if (vVar.isRemoved() || (i == left && i2 == top)) {
            return a(vVar);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return a(vVar, i, i2, left, top);
    }

    public abstract boolean a(RecyclerView.v vVar, RecyclerView.v vVar2, int i, int i2, int i3, int i4);

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public final boolean a(RecyclerView.v vVar, RecyclerView.v vVar2, RecyclerView.f.b bVar, RecyclerView.f.b bVar2) {
        int i;
        int i2;
        int i3 = bVar.f5339a;
        int i4 = bVar.f5340b;
        if (vVar2.c()) {
            i2 = bVar.f5339a;
            i = bVar.f5340b;
        } else {
            i2 = bVar2.f5339a;
            i = bVar2.f5340b;
        }
        return a(vVar, vVar2, i3, i4, i2, i);
    }

    public abstract boolean b(RecyclerView.v vVar);

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public final boolean b(RecyclerView.v vVar, RecyclerView.f.b bVar, RecyclerView.f.b bVar2) {
        return (bVar == null || (bVar.f5339a == bVar2.f5339a && bVar.f5340b == bVar2.f5340b)) ? b(vVar) : a(vVar, bVar.f5339a, bVar.f5340b, bVar2.f5339a, bVar2.f5340b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public final boolean c(RecyclerView.v vVar, RecyclerView.f.b bVar, RecyclerView.f.b bVar2) {
        if (bVar.f5339a != bVar2.f5339a || bVar.f5340b != bVar2.f5340b) {
            return a(vVar, bVar.f5339a, bVar.f5340b, bVar2.f5339a, bVar2.f5340b);
        }
        f(vVar);
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public final boolean g(RecyclerView.v vVar) {
        return !this.l || vVar.isInvalid();
    }
}
