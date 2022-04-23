package it.gmariotti.cardslib.library.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.ListAdapter;
import it.gmariotti.cardslib.library.a;
import it.gmariotti.cardslib.library.a.f;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardExpandableListView.class */
public class CardExpandableListView extends ExpandableListView {

    /* renamed from: a  reason: collision with root package name */
    protected static String f36404a = "CardExpandableListView";

    /* renamed from: b  reason: collision with root package name */
    protected f f36405b;

    /* renamed from: c  reason: collision with root package name */
    protected int f36406c = a.e.list_card_layout;

    public CardExpandableListView(Context context) {
        super(context);
        a(null, 0);
    }

    public CardExpandableListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet, 0);
    }

    public CardExpandableListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(attributeSet, i);
    }

    private void a(AttributeSet attributeSet, int i) {
        b(attributeSet, i);
        setDividerHeight(0);
    }

    private void b(AttributeSet attributeSet, int i) {
        this.f36406c = a.e.list_card_layout;
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, a.g.card_options, i, i);
        try {
            this.f36406c = obtainStyledAttributes.getResourceId(a.g.card_options_list_card_layout_resourceID, this.f36406c);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.widget.ExpandableListView, android.widget.ListView, android.widget.AbsListView
    public void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof f) {
            setAdapter(listAdapter);
            return;
        }
        Log.w(f36404a, "You are using a generic adapter. Pay attention: your adapter has to call cardArrayAdapter#getView method");
        super.setAdapter(listAdapter);
    }

    public void setAdapter(f fVar) {
        super.setAdapter((ExpandableListAdapter) fVar);
        fVar.a(this.f36406c);
        fVar.a(this);
        this.f36405b = fVar;
    }
}
