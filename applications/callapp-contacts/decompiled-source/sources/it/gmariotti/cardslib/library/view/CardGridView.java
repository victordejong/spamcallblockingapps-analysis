package it.gmariotti.cardslib.library.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import it.gmariotti.cardslib.library.a;
import it.gmariotti.cardslib.library.a.g;
import it.gmariotti.cardslib.library.a.h;
import it.gmariotti.cardslib.library.view.a.a;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardGridView.class */
public class CardGridView extends GridView implements a.AbstractC0600a {

    /* renamed from: a  reason: collision with root package name */
    protected static String f36407a = "CardGridView";

    /* renamed from: b  reason: collision with root package name */
    protected g f36408b;

    /* renamed from: c  reason: collision with root package name */
    protected h f36409c;

    /* renamed from: d  reason: collision with root package name */
    protected int f36410d = a.e.list_card_layout;

    public CardGridView(Context context) {
        super(context);
        a((AttributeSet) null, 0);
    }

    public CardGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet, 0);
    }

    public CardGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(attributeSet, i);
    }

    private void a(AttributeSet attributeSet, int i) {
        this.f36410d = a.e.list_card_layout;
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, a.g.card_options, i, i);
        try {
            this.f36410d = obtainStyledAttributes.getResourceId(a.g.card_options_list_card_layout_resourceID, this.f36410d);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @Override // it.gmariotti.cardslib.library.view.a.a.AbstractC0600a
    public final void a(it.gmariotti.cardslib.library.view.a.a aVar, View view) {
        Log.w(f36407a, "Don't use this kind of animation in a grid");
    }

    @Override // it.gmariotti.cardslib.library.view.a.a.AbstractC0600a
    public final void b(it.gmariotti.cardslib.library.view.a.a aVar, View view) {
        Log.w(f36407a, "Don't use this kind of animation in a grid");
    }

    @Override // android.widget.GridView, android.widget.AbsListView
    public void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof g) {
            setAdapter((g) listAdapter);
        } else if (listAdapter instanceof h) {
            setAdapter((h) listAdapter);
        } else {
            Log.w(f36407a, "You are using a generic adapter. Pay attention: your adapter has to call cardGridArrayAdapter#getView method.");
            super.setAdapter(listAdapter);
        }
    }

    public void setAdapter(g gVar) {
        super.setAdapter((ListAdapter) gVar);
        gVar.a(this.f36410d);
        gVar.a(this);
        this.f36408b = gVar;
    }

    public void setAdapter(h hVar) {
        super.setAdapter((ListAdapter) hVar);
        hVar.a(this.f36410d);
        hVar.a(this);
        this.f36409c = hVar;
    }

    public void setExternalAdapter(ListAdapter listAdapter, g gVar) {
        setAdapter(listAdapter);
        this.f36408b = gVar;
        gVar.a(this);
        this.f36408b.a(this.f36410d);
    }

    public void setExternalAdapter(ListAdapter listAdapter, h hVar) {
        setAdapter(listAdapter);
        this.f36409c = hVar;
        hVar.a(this);
        this.f36409c.a(this.f36410d);
    }
}
