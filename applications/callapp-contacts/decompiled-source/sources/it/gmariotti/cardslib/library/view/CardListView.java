package it.gmariotti.cardslib.library.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import it.gmariotti.cardslib.library.a;
import it.gmariotti.cardslib.library.a.b;
import it.gmariotti.cardslib.library.a.c;
import it.gmariotti.cardslib.library.a.d;
import it.gmariotti.cardslib.library.view.a.a;
import it.gmariotti.cardslib.library.view.listener.e;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardListView.class */
public class CardListView extends ListView implements a.AbstractC0600a {

    /* renamed from: a  reason: collision with root package name */
    protected static String f36411a = "CardListView";

    /* renamed from: b  reason: collision with root package name */
    protected c f36412b;

    /* renamed from: c  reason: collision with root package name */
    protected d f36413c;

    /* renamed from: d  reason: collision with root package name */
    protected e f36414d;
    protected int e = a.e.list_card_layout;

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardListView$a.class */
    static final class a {
        private a() {
        }

        public static ValueAnimator a(final View view, int i, int i2) {
            ValueAnimator ofInt = ValueAnimator.ofInt(i, i2);
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: it.gmariotti.cardslib.library.view.CardListView.a.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    layoutParams.height = intValue;
                    view.setLayoutParams(layoutParams);
                }
            });
            return ofInt;
        }

        static /* synthetic */ View a(View view, AbsListView absListView) {
            r0 = (View) view.getParent();
            View view2 = view;
            while (view2 != absListView) {
                view2 = (View) view2.getParent();
            }
            return view2;
        }

        public static void a(AbsListView absListView) {
            if (absListView instanceof CardListView) {
                CardListView cardListView = (CardListView) absListView;
                if (cardListView.f36412b != null) {
                    cardListView.f36412b.notifyDataSetChanged();
                }
            }
        }
    }

    public CardListView(Context context) {
        super(context);
        a((AttributeSet) null, 0);
    }

    public CardListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet, 0);
    }

    public CardListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(attributeSet, i);
    }

    private void a(AttributeSet attributeSet, int i) {
        b(attributeSet, i);
        setDividerHeight(0);
    }

    private void b(AttributeSet attributeSet, int i) {
        this.e = a.e.list_card_layout;
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, a.g.card_options, i, i);
        try {
            this.e = obtainStyledAttributes.getResourceId(a.g.card_options_list_card_layout_resourceID, this.e);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public final AbsListView.OnScrollListener a() {
        return this.f36414d;
    }

    @Override // it.gmariotti.cardslib.library.view.a.a.AbstractC0600a
    public final void a(final it.gmariotti.cardslib.library.view.a.a aVar, View view) {
        d dVar = this.f36413c;
        if (dVar != null ? dVar.a(aVar) : true) {
            view.setVisibility(0);
            View view2 = (View) view.getParent();
            view.measure(View.MeasureSpec.makeMeasureSpec((view2.getMeasuredWidth() - view2.getPaddingLeft()) - view2.getPaddingRight(), BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW), View.MeasureSpec.makeMeasureSpec(0, 0));
            ValueAnimator a2 = a.a(view, 0, view.getMeasuredHeight());
            a2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this, view) { // from class: it.gmariotti.cardslib.library.view.CardListView.a.2

                /* renamed from: a  reason: collision with root package name */
                final int f36418a;

                /* renamed from: b  reason: collision with root package name */
                final int f36419b;

                /* renamed from: c  reason: collision with root package name */
                final View f36420c;

                /* renamed from: d  reason: collision with root package name */
                final /* synthetic */ AbsListView f36421d;
                final /* synthetic */ View e;

                {
                    this.f36421d = this;
                    this.e = view;
                    this.f36418a = this.getHeight();
                    this.f36419b = this.getPaddingBottom();
                    this.f36420c = a.a(view, this);
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    int top;
                    int bottom = this.f36420c.getBottom();
                    if (bottom > this.f36418a && (top = this.f36420c.getTop()) > 0) {
                        this.f36421d.smoothScrollBy(Math.min((bottom - this.f36418a) + this.f36419b, top), 0);
                    }
                }
            });
            a2.addListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.CardListView.a.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    it.gmariotti.cardslib.library.view.a.a.this.setExpanded(true);
                    a.a(this);
                    b card = it.gmariotti.cardslib.library.view.a.a.this.getCard();
                    if (card.getOnExpandAnimatorEndListener() != null) {
                        card.getOnExpandAnimatorEndListener().a();
                    }
                }
            });
            a2.start();
        }
        d dVar2 = this.f36413c;
        if (dVar2 != null) {
            dVar2.c(aVar);
        }
    }

    @Override // it.gmariotti.cardslib.library.view.a.a.AbstractC0600a
    public final void b(final it.gmariotti.cardslib.library.view.a.a aVar, final View view) {
        d dVar = this.f36413c;
        if (dVar != null ? dVar.b(aVar) : true) {
            ValueAnimator a2 = a.a(view, view.getHeight(), 0);
            a2.addListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.CardListView.a.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    view.setVisibility(8);
                    aVar.setExpanded(false);
                    a.a(this);
                    b card = aVar.getCard();
                    if (card.getOnCollapseAnimatorEndListener() != null) {
                        card.getOnCollapseAnimatorEndListener().a();
                    }
                }
            });
            a2.start();
        }
        d dVar2 = this.f36413c;
        if (dVar2 != null) {
            dVar2.d(aVar);
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView
    public void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof c) {
            setAdapter((c) listAdapter);
        } else if (listAdapter instanceof d) {
            setAdapter((d) listAdapter);
        } else {
            Log.w(f36411a, "You are using a generic adapter. Pay attention: your adapter has to call cardArrayAdapter#getView method");
            super.setAdapter(listAdapter);
        }
    }

    public void setAdapter(c cVar) {
        super.setAdapter((ListAdapter) cVar);
        cVar.a(this.e);
        cVar.a(this);
        this.f36412b = cVar;
    }

    public void setAdapter(d dVar) {
        super.setAdapter((ListAdapter) dVar);
        dVar.a(this.e);
        dVar.a(this);
        this.f36413c = dVar;
    }

    public void setExternalAdapter(ListAdapter listAdapter, c cVar) {
        setAdapter(listAdapter);
        this.f36412b = cVar;
        cVar.a(this);
        this.f36412b.a(this.e);
    }

    public void setExternalAdapter(ListAdapter listAdapter, d dVar) {
        setAdapter(listAdapter);
        this.f36413c = dVar;
        dVar.a(this);
        this.f36413c.a(this.e);
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        super.setOnScrollListener(onScrollListener);
        if (onScrollListener instanceof e) {
            this.f36414d = (e) onScrollListener;
        }
    }
}
