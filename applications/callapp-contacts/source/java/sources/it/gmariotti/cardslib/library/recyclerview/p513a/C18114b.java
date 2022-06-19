package it.gmariotti.cardslib.library.recyclerview.p513a;

import android.content.Context;
import it.gmariotti.cardslib.library.p510a.C18073b;
import java.util.ArrayList;
import java.util.List;
/* renamed from: it.gmariotti.cardslib.library.recyclerview.a.b */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/recyclerview/a/b.class */
public class C18114b extends AbstractC18112a {

    /* renamed from: f */
    protected List<C18073b> f63053f;

    public C18114b(Context context, List<C18073b> list) {
        super(context);
        if (list != null) {
            this.f63053f = list;
        } else {
            this.f63053f = new ArrayList();
        }
    }

    /* renamed from: a */
    public final void m4435a(int i, C18073b c18073b) {
        this.f63053f.add(i, c18073b);
        notifyItemInserted(i);
    }

    /* renamed from: a */
    public final boolean m4434a(C18073b c18073b) {
        return this.f63053f.contains(c18073b);
    }

    /* renamed from: b */
    public final boolean m4433b(C18073b c18073b) {
        boolean remove = this.f63053f.remove(c18073b);
        notifyDataSetChanged();
        return remove;
    }

    @Override // it.gmariotti.cardslib.library.recyclerview.p513a.AbstractC18112a
    public C18073b getItem(int i) {
        return this.f63053f.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemCount() {
        return this.f63053f.size();
    }
}
