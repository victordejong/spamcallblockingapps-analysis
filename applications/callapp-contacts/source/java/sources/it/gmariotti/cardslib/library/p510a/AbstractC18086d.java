package it.gmariotti.cardslib.library.p510a;

import android.content.Context;
import android.database.Cursor;
import it.gmariotti.cardslib.library.p510a.p511a.AbstractC18072c;
import it.gmariotti.cardslib.library.view.CardListView;
import it.gmariotti.cardslib.library.view.p514a.AbstractC18152a;
import java.util.ArrayList;
import java.util.List;
/* renamed from: it.gmariotti.cardslib.library.a.d */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/d.class */
public abstract class AbstractC18086d extends AbstractC18072c {

    /* renamed from: a */
    protected static String f63003a = "CardCursorAdapter";

    /* renamed from: b */
    protected CardListView f63004b;

    /* renamed from: d */
    protected boolean f63006d = false;

    /* renamed from: c */
    protected final List<String> f63005c = new ArrayList();

    public AbstractC18086d(Context context) {
        super(context, (Cursor) null, 0);
    }

    protected AbstractC18086d(Context context, Cursor cursor, int i) {
        super(context, cursor, i);
    }

    protected AbstractC18086d(Context context, Cursor cursor, boolean z) {
        super(context, cursor, z);
    }

    /* renamed from: a */
    public final void m4477a(CardListView cardListView) {
        this.f63004b = cardListView;
    }

    /* renamed from: a */
    public final boolean m4476a(AbstractC18152a abstractC18152a) {
        C18073b card = abstractC18152a.getCard();
        if (card != null) {
            return !this.f63005c.contains(card.getId());
        }
        return false;
    }

    /* renamed from: b */
    public final boolean m4475b(AbstractC18152a abstractC18152a) {
        C18073b card = abstractC18152a.getCard();
        if (card != null) {
            return this.f63005c.contains(card.getId());
        }
        return false;
    }

    /* renamed from: c */
    public final void m4474c(AbstractC18152a abstractC18152a) {
        C18073b card = abstractC18152a.getCard();
        if (card == null || card == null) {
            return;
        }
        String id = card.getId();
        List<String> list = this.f63005c;
        if (list == null || list.contains(id)) {
            return;
        }
        this.f63005c.add(id);
    }

    /* renamed from: d */
    public final void m4473d(AbstractC18152a abstractC18152a) {
        C18073b card = abstractC18152a.getCard();
        if (card == null || card == null) {
            return;
        }
        String id = card.getId();
        List<String> list = this.f63005c;
        if (list == null || !list.contains(id)) {
            return;
        }
        this.f63005c.remove(id);
    }
}
