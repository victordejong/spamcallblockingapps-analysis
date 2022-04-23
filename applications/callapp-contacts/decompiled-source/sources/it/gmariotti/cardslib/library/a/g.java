package it.gmariotti.cardslib.library.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import it.gmariotti.cardslib.library.a;
import it.gmariotti.cardslib.library.a.a.b;
import it.gmariotti.cardslib.library.view.CardGridView;
import it.gmariotti.cardslib.library.view.a.a;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/g.class */
public final class g extends b {

    /* renamed from: a  reason: collision with root package name */
    protected static String f36366a = "CardGridArrayAdapter";

    /* renamed from: b  reason: collision with root package name */
    protected CardGridView f36367b;

    public g(Context context, List<b> list) {
        super(context, list);
    }

    public final void a(CardGridView cardGridView) {
        this.f36367b = cardGridView;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        boolean z;
        LayoutInflater layoutInflater = (LayoutInflater) this.i.getSystemService("layout_inflater");
        b bVar = (b) getItem(i);
        View view2 = view;
        if (bVar != null) {
            int i2 = this.j;
            if (view == null) {
                view = layoutInflater.inflate(i2, viewGroup, false);
                z = false;
            } else {
                z = true;
            }
            a aVar = (a) view.findViewById(a.c.list_cardId);
            view2 = view;
            if (aVar != null) {
                aVar.setForceReplaceInnerLayout(b.equalsInnerLayout(aVar.getCard(), bVar));
                aVar.setRecycle(z);
                bVar.isSwipeable();
                bVar.setSwipeable(false);
                aVar.setCard(bVar);
                if (bVar.getCardHeader() != null) {
                    bVar.getCardHeader().d();
                }
                aVar.setOnTouchListener(null);
                view2 = view;
            }
        }
        return view2;
    }
}
