package it.gmariotti.cardslib.library.p510a;

import android.content.Context;
import android.database.Cursor;
import it.gmariotti.cardslib.library.p510a.p511a.AbstractC18072c;
import it.gmariotti.cardslib.library.view.CardGridView;
/* renamed from: it.gmariotti.cardslib.library.a.h */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/h.class */
public abstract class AbstractC18091h extends AbstractC18072c {

    /* renamed from: a */
    protected static String f63018a = "CardGridCursorAdapter";

    /* renamed from: b */
    protected CardGridView f63019b;

    /* renamed from: c */
    private boolean f63020c = false;

    public AbstractC18091h(Context context) {
        super(context, (Cursor) null, 0);
    }

    protected AbstractC18091h(Context context, Cursor cursor, int i) {
        super(context, cursor, i);
    }

    protected AbstractC18091h(Context context, Cursor cursor, boolean z) {
        super(context, cursor, z);
    }

    /* renamed from: a */
    public final void m4467a(CardGridView cardGridView) {
        this.f63019b = cardGridView;
    }
}
