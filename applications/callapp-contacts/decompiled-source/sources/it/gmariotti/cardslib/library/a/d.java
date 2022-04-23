package it.gmariotti.cardslib.library.a;

import android.content.Context;
import android.database.Cursor;
import it.gmariotti.cardslib.library.a.a.c;
import it.gmariotti.cardslib.library.view.CardListView;
import it.gmariotti.cardslib.library.view.a.a;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/d.class */
public abstract class d extends c {

    /* renamed from: a  reason: collision with root package name */
    protected static String f36355a = "CardCursorAdapter";

    /* renamed from: b  reason: collision with root package name */
    protected CardListView f36356b;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f36358d = false;

    /* renamed from: c  reason: collision with root package name */
    protected final List<String> f36357c = new ArrayList();

    public d(Context context) {
        super(context, (Cursor) null, 0);
    }

    protected d(Context context, Cursor cursor, int i) {
        super(context, cursor, i);
    }

    protected d(Context context, Cursor cursor, boolean z) {
        super(context, cursor, z);
    }

    public final void a(CardListView cardListView) {
        this.f36356b = cardListView;
    }

    public final boolean a(a aVar) {
        b card = aVar.getCard();
        if (card == null) {
            return false;
        }
        return !this.f36357c.contains(card.getId());
    }

    public final boolean b(a aVar) {
        b card = aVar.getCard();
        if (card == null) {
            return false;
        }
        return this.f36357c.contains(card.getId());
    }

    public final void c(a aVar) {
        b card = aVar.getCard();
        if (card != null && card != null) {
            String id = card.getId();
            List<String> list = this.f36357c;
            if (list != null && !list.contains(id)) {
                this.f36357c.add(id);
            }
        }
    }

    public final void d(a aVar) {
        b card = aVar.getCard();
        if (card != null && card != null) {
            String id = card.getId();
            List<String> list = this.f36357c;
            if (list != null && list.contains(id)) {
                this.f36357c.remove(id);
            }
        }
    }
}
