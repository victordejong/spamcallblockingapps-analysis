package it.gmariotti.cardslib.library.a.a;

import android.content.Context;
import android.database.Cursor;
import android.widget.CursorAdapter;
import it.gmariotti.cardslib.library.a;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/a/c.class */
public abstract class c extends CursorAdapter {
    protected Context e;
    protected int f = a.e.list_card_layout;
    protected int g = 1;

    public c(Context context, Cursor cursor, int i) {
        super(context, cursor, i);
        this.e = context;
    }

    public c(Context context, Cursor cursor, boolean z) {
        super(context, cursor, z);
        this.e = context;
    }

    public final void a(int i) {
        this.f = i;
    }
}
