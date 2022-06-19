package it.gmariotti.cardslib.library.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import it.gmariotti.cardslib.library.C18061a;
import it.gmariotti.cardslib.library.p510a.AbstractC18091h;
import it.gmariotti.cardslib.library.p510a.C18090g;
import it.gmariotti.cardslib.library.view.p514a.AbstractC18152a;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardGridView.class */
public class CardGridView extends GridView implements AbstractC18152a.AbstractC18153a {

    /* renamed from: a */
    protected static String f63082a = "CardGridView";

    /* renamed from: b */
    protected C18090g f63083b;

    /* renamed from: c */
    protected AbstractC18091h f63084c;

    /* renamed from: d */
    protected int f63085d = C18061a.C18066e.list_card_layout;

    public CardGridView(Context context) {
        super(context);
        m4421a((AttributeSet) null, 0);
    }

    public CardGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4421a(attributeSet, 0);
    }

    public CardGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m4421a(attributeSet, i);
    }

    /* renamed from: a */
    private void m4421a(AttributeSet attributeSet, int i) {
        this.f63085d = C18061a.C18066e.list_card_layout;
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, C18061a.C18068g.card_options, i, i);
        try {
            this.f63085d = obtainStyledAttributes.getResourceId(C18061a.C18068g.card_options_list_card_layout_resourceID, this.f63085d);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a.AbstractC18153a
    /* renamed from: a */
    public final void mo4379a(AbstractC18152a abstractC18152a, View view) {
        Log.w(f63082a, "Don't use this kind of animation in a grid");
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a.AbstractC18153a
    /* renamed from: b */
    public final void mo4378b(AbstractC18152a abstractC18152a, View view) {
        Log.w(f63082a, "Don't use this kind of animation in a grid");
    }

    @Override // android.widget.GridView, android.widget.AbsListView
    public void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof C18090g) {
            setAdapter((C18090g) listAdapter);
        } else if (listAdapter instanceof AbstractC18091h) {
            setAdapter((AbstractC18091h) listAdapter);
        } else {
            Log.w(f63082a, "You are using a generic adapter. Pay attention: your adapter has to call cardGridArrayAdapter#getView method.");
            super.setAdapter(listAdapter);
        }
    }

    public void setAdapter(C18090g c18090g) {
        super.setAdapter((ListAdapter) c18090g);
        c18090g.m4488a(this.f63085d);
        c18090g.m4468a(this);
        this.f63083b = c18090g;
    }

    public void setAdapter(AbstractC18091h abstractC18091h) {
        super.setAdapter((ListAdapter) abstractC18091h);
        abstractC18091h.m4487a(this.f63085d);
        abstractC18091h.m4467a(this);
        this.f63084c = abstractC18091h;
    }

    public void setExternalAdapter(ListAdapter listAdapter, C18090g c18090g) {
        setAdapter(listAdapter);
        this.f63083b = c18090g;
        c18090g.m4468a(this);
        this.f63083b.m4488a(this.f63085d);
    }

    public void setExternalAdapter(ListAdapter listAdapter, AbstractC18091h abstractC18091h) {
        setAdapter(listAdapter);
        this.f63084c = abstractC18091h;
        abstractC18091h.m4467a(this);
        this.f63084c.m4487a(this.f63085d);
    }
}
