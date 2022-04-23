package it.gmariotti.cardslib.library.a;

import android.content.Context;
import android.database.Cursor;
import it.gmariotti.cardslib.library.a.a.c;
import it.gmariotti.cardslib.library.view.CardGridView;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/h.class */
public abstract class h extends c {

    /* renamed from: a  reason: collision with root package name */
    protected static String f36368a = "CardGridCursorAdapter";

    /* renamed from: b  reason: collision with root package name */
    protected CardGridView f36369b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f36370c = false;

    public h(Context context) {
        super(context, (Cursor) null, 0);
    }

    protected h(Context context, Cursor cursor, int i) {
        super(context, cursor, i);
    }

    protected h(Context context, Cursor cursor, boolean z) {
        super(context, cursor, z);
    }

    public final void a(CardGridView cardGridView) {
        this.f36369b = cardGridView;
    }
}
