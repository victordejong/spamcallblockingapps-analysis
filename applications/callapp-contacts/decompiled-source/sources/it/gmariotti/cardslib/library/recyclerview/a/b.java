package it.gmariotti.cardslib.library.recyclerview.a;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/recyclerview/a/b.class */
public class b extends a {
    protected List<it.gmariotti.cardslib.library.a.b> f;

    public b(Context context, List<it.gmariotti.cardslib.library.a.b> list) {
        super(context);
        if (list != null) {
            this.f = list;
        } else {
            this.f = new ArrayList();
        }
    }

    public final void a(int i, it.gmariotti.cardslib.library.a.b bVar) {
        this.f.add(i, bVar);
        notifyItemInserted(i);
    }

    public final boolean a(it.gmariotti.cardslib.library.a.b bVar) {
        return this.f.contains(bVar);
    }

    public final boolean b(it.gmariotti.cardslib.library.a.b bVar) {
        boolean remove = this.f.remove(bVar);
        notifyDataSetChanged();
        return remove;
    }

    @Override // it.gmariotti.cardslib.library.recyclerview.a.a
    public it.gmariotti.cardslib.library.a.b getItem(int i) {
        return this.f.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int getItemCount() {
        return this.f.size();
    }
}
