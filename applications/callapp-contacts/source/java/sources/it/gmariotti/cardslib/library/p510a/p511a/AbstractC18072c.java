package it.gmariotti.cardslib.library.p510a.p511a;

import android.content.Context;
import android.database.Cursor;
import android.widget.CursorAdapter;
import it.gmariotti.cardslib.library.C18061a;
/* renamed from: it.gmariotti.cardslib.library.a.a.c */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/a/c.class */
public abstract class AbstractC18072c extends CursorAdapter {

    /* renamed from: e */
    protected Context f62989e;

    /* renamed from: f */
    protected int f62990f = C18061a.C18066e.list_card_layout;

    /* renamed from: g */
    protected int f62991g = 1;

    public AbstractC18072c(Context context, Cursor cursor, int i) {
        super(context, cursor, i);
        this.f62989e = context;
    }

    public AbstractC18072c(Context context, Cursor cursor, boolean z) {
        super(context, cursor, z);
        this.f62989e = context;
    }

    /* renamed from: a */
    public final void m4487a(int i) {
        this.f62990f = i;
    }
}
