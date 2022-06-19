package it.gmariotti.cardslib.library.p510a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import it.gmariotti.cardslib.library.C18061a;
import it.gmariotti.cardslib.library.p510a.p511a.AbstractC18071b;
import it.gmariotti.cardslib.library.view.CardGridView;
import it.gmariotti.cardslib.library.view.p514a.AbstractC18152a;
import java.util.List;
/* renamed from: it.gmariotti.cardslib.library.a.g */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/g.class */
public final class C18090g extends AbstractC18071b {

    /* renamed from: a */
    protected static String f63016a = "CardGridArrayAdapter";

    /* renamed from: b */
    protected CardGridView f63017b;

    public C18090g(Context context, List<C18073b> list) {
        super(context, list);
    }

    /* renamed from: a */
    public final void m4468a(CardGridView cardGridView) {
        this.f63017b = cardGridView;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        boolean z;
        LayoutInflater layoutInflater = (LayoutInflater) this.f62986i.getSystemService("layout_inflater");
        C18073b c18073b = (C18073b) getItem(i);
        View view2 = view;
        if (c18073b != null) {
            int i2 = this.f62987j;
            if (view == null) {
                view = layoutInflater.inflate(i2, viewGroup, false);
                z = false;
            } else {
                z = true;
            }
            AbstractC18152a abstractC18152a = (AbstractC18152a) view.findViewById(C18061a.C18064c.list_cardId);
            view2 = view;
            if (abstractC18152a != null) {
                abstractC18152a.setForceReplaceInnerLayout(C18073b.equalsInnerLayout(abstractC18152a.getCard(), c18073b));
                abstractC18152a.setRecycle(z);
                c18073b.isSwipeable();
                c18073b.setSwipeable(false);
                abstractC18152a.setCard(c18073b);
                if (c18073b.getCardHeader() != null) {
                    c18073b.getCardHeader().m4462d();
                }
                abstractC18152a.setOnTouchListener(null);
                view2 = view;
            }
        }
        return view2;
    }
}
