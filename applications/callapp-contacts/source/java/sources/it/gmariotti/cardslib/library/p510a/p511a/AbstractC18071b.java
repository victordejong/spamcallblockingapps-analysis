package it.gmariotti.cardslib.library.p510a.p511a;

import android.content.Context;
import android.widget.ArrayAdapter;
import it.gmariotti.cardslib.library.C18061a;
import it.gmariotti.cardslib.library.p510a.C18073b;
import java.util.List;
/* renamed from: it.gmariotti.cardslib.library.a.a.b */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/a/b.class */
public abstract class AbstractC18071b extends ArrayAdapter<C18073b> {

    /* renamed from: i */
    protected Context f62986i;

    /* renamed from: j */
    protected int f62987j = C18061a.C18066e.list_card_layout;

    /* renamed from: k */
    protected int f62988k = 1;

    public AbstractC18071b(Context context, List<C18073b> list) {
        super(context, 0, list);
        this.f62986i = context;
    }

    /* renamed from: a */
    public final void m4488a(int i) {
        this.f62987j = i;
    }

    @Override // android.widget.ArrayAdapter
    public Context getContext() {
        return this.f62986i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return getItem(i).getType();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.f62988k;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        C18073b item = getItem(i);
        return item.isClickable() || item.isLongClickable();
    }
}
