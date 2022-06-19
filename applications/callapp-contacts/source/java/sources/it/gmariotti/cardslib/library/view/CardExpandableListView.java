package it.gmariotti.cardslib.library.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.ListAdapter;
import it.gmariotti.cardslib.library.C18061a;
import it.gmariotti.cardslib.library.p510a.C18088f;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardExpandableListView.class */
public class CardExpandableListView extends ExpandableListView {

    /* renamed from: a */
    protected static String f63079a = "CardExpandableListView";

    /* renamed from: b */
    protected C18088f f63080b;

    /* renamed from: c */
    protected int f63081c = C18061a.C18066e.list_card_layout;

    public CardExpandableListView(Context context) {
        super(context);
        m4423a(null, 0);
    }

    public CardExpandableListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4423a(attributeSet, 0);
    }

    public CardExpandableListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m4423a(attributeSet, i);
    }

    /* renamed from: a */
    private void m4423a(AttributeSet attributeSet, int i) {
        m4422b(attributeSet, i);
        setDividerHeight(0);
    }

    /* renamed from: b */
    private void m4422b(AttributeSet attributeSet, int i) {
        this.f63081c = C18061a.C18066e.list_card_layout;
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, C18061a.C18068g.card_options, i, i);
        try {
            this.f63081c = obtainStyledAttributes.getResourceId(C18061a.C18068g.card_options_list_card_layout_resourceID, this.f63081c);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.widget.ExpandableListView, android.widget.ListView, android.widget.AbsListView
    public void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof C18088f) {
            setAdapter(listAdapter);
            return;
        }
        Log.w(f63079a, "You are using a generic adapter. Pay attention: your adapter has to call cardArrayAdapter#getView method");
        super.setAdapter(listAdapter);
    }

    public void setAdapter(C18088f c18088f) {
        super.setAdapter((ExpandableListAdapter) c18088f);
        c18088f.m4471a(this.f63081c);
        c18088f.m4470a(this);
        this.f63080b = c18088f;
    }
}
