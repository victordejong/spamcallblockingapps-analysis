package it.gmariotti.cardslib.library.a.a;

import android.content.Context;
import android.widget.ArrayAdapter;
import it.gmariotti.cardslib.library.a;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/a/b.class */
public abstract class b extends ArrayAdapter<it.gmariotti.cardslib.library.a.b> {
    protected Context i;
    protected int j = a.e.list_card_layout;
    protected int k = 1;

    public b(Context context, List<it.gmariotti.cardslib.library.a.b> list) {
        super(context, 0, list);
        this.i = context;
    }

    public final void a(int i) {
        this.j = i;
    }

    @Override // android.widget.ArrayAdapter
    public Context getContext() {
        return this.i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return getItem(i).getType();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.k;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        it.gmariotti.cardslib.library.a.b item = getItem(i);
        return item.isClickable() || item.isLongClickable();
    }
}
