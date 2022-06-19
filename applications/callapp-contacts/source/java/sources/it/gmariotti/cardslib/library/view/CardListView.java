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
import it.gmariotti.cardslib.library.C18061a;
import it.gmariotti.cardslib.library.p510a.AbstractC18086d;
import it.gmariotti.cardslib.library.p510a.C18073b;
import it.gmariotti.cardslib.library.p510a.C18083c;
import it.gmariotti.cardslib.library.view.listener.C18199e;
import it.gmariotti.cardslib.library.view.p514a.AbstractC18152a;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardListView.class */
public class CardListView extends ListView implements AbstractC18152a.AbstractC18153a {

    /* renamed from: a */
    protected static String f63086a = "CardListView";

    /* renamed from: b */
    protected C18083c f63087b;

    /* renamed from: c */
    protected AbstractC18086d f63088c;

    /* renamed from: d */
    protected C18199e f63089d;

    /* renamed from: e */
    protected int f63090e = C18061a.C18066e.list_card_layout;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: it.gmariotti.cardslib.library.view.CardListView$a */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardListView$a.class */
    public static final class C18121a {
        private C18121a() {
        }

        /* renamed from: a */
        public static ValueAnimator m4417a(final View view, int i, int i2) {
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

        /* renamed from: a */
        static /* synthetic */ View m4416a(View view, AbsListView absListView) {
            View view2 = view;
            View view3 = (View) view.getParent();
            while (true) {
                View view4 = view3;
                View view5 = view2;
                view2 = view4;
                if (view2 != absListView) {
                    view3 = (View) view2.getParent();
                } else {
                    return view5;
                }
            }
        }

        /* renamed from: a */
        public static void m4415a(AbsListView absListView) {
            if (absListView instanceof CardListView) {
                CardListView cardListView = (CardListView) absListView;
                if (cardListView.f63087b == null) {
                    return;
                }
                cardListView.f63087b.notifyDataSetChanged();
            }
        }
    }

    public CardListView(Context context) {
        super(context);
        m4419a((AttributeSet) null, 0);
    }

    public CardListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4419a(attributeSet, 0);
    }

    public CardListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m4419a(attributeSet, i);
    }

    /* renamed from: a */
    private void m4419a(AttributeSet attributeSet, int i) {
        m4418b(attributeSet, i);
        setDividerHeight(0);
    }

    /* renamed from: b */
    private void m4418b(AttributeSet attributeSet, int i) {
        this.f63090e = C18061a.C18066e.list_card_layout;
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, C18061a.C18068g.card_options, i, i);
        try {
            this.f63090e = obtainStyledAttributes.getResourceId(C18061a.C18068g.card_options_list_card_layout_resourceID, this.f63090e);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: a */
    public final AbsListView.OnScrollListener m4420a() {
        return this.f63089d;
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a.AbstractC18153a
    /* renamed from: a */
    public final void mo4379a(final AbstractC18152a abstractC18152a, View view) {
        AbstractC18086d abstractC18086d = this.f63088c;
        if (abstractC18086d != null ? abstractC18086d.m4476a(abstractC18152a) : true) {
            view.setVisibility(0);
            View view2 = (View) view.getParent();
            view.measure(View.MeasureSpec.makeMeasureSpec((view2.getMeasuredWidth() - view2.getPaddingLeft()) - view2.getPaddingRight(), BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW), View.MeasureSpec.makeMeasureSpec(0, 0));
            ValueAnimator m4417a = C18121a.m4417a(view, 0, view.getMeasuredHeight());
            m4417a.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this, view) { // from class: it.gmariotti.cardslib.library.view.CardListView.a.2

                /* renamed from: a */
                final int f63094a;

                /* renamed from: b */
                final int f63095b;

                /* renamed from: c */
                final View f63096c;

                /* renamed from: d */
                final /* synthetic */ AbsListView f63097d;

                /* renamed from: e */
                final /* synthetic */ View f63098e;

                {
                    this.f63097d = this;
                    this.f63098e = view;
                    this.f63094a = this.getHeight();
                    this.f63095b = this.getPaddingBottom();
                    this.f63096c = C18121a.m4416a(view, this);
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    int top;
                    int bottom = this.f63096c.getBottom();
                    if (bottom <= this.f63094a || (top = this.f63096c.getTop()) <= 0) {
                        return;
                    }
                    this.f63097d.smoothScrollBy(Math.min((bottom - this.f63094a) + this.f63095b, top), 0);
                }
            });
            m4417a.addListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.CardListView.a.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    abstractC18152a.setExpanded(true);
                    C18121a.m4415a(this);
                    C18073b card = abstractC18152a.getCard();
                    if (card.getOnExpandAnimatorEndListener() != null) {
                        card.getOnExpandAnimatorEndListener().mo4484a();
                    }
                }
            });
            m4417a.start();
        }
        AbstractC18086d abstractC18086d2 = this.f63088c;
        if (abstractC18086d2 != null) {
            abstractC18086d2.m4474c(abstractC18152a);
        }
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a.AbstractC18153a
    /* renamed from: b */
    public final void mo4378b(final AbstractC18152a abstractC18152a, final View view) {
        AbstractC18086d abstractC18086d = this.f63088c;
        if (abstractC18086d != null ? abstractC18086d.m4475b(abstractC18152a) : true) {
            ValueAnimator m4417a = C18121a.m4417a(view, view.getHeight(), 0);
            m4417a.addListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.CardListView.a.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    view.setVisibility(8);
                    abstractC18152a.setExpanded(false);
                    C18121a.m4415a(this);
                    C18073b card = abstractC18152a.getCard();
                    if (card.getOnCollapseAnimatorEndListener() != null) {
                        card.getOnCollapseAnimatorEndListener().mo4485a();
                    }
                }
            });
            m4417a.start();
        }
        AbstractC18086d abstractC18086d2 = this.f63088c;
        if (abstractC18086d2 != null) {
            abstractC18086d2.m4473d(abstractC18152a);
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView
    public void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof C18083c) {
            setAdapter((C18083c) listAdapter);
        } else if (listAdapter instanceof AbstractC18086d) {
            setAdapter((AbstractC18086d) listAdapter);
        } else {
            Log.w(f63086a, "You are using a generic adapter. Pay attention: your adapter has to call cardArrayAdapter#getView method");
            super.setAdapter(listAdapter);
        }
    }

    public void setAdapter(C18083c c18083c) {
        super.setAdapter((ListAdapter) c18083c);
        c18083c.m4488a(this.f63090e);
        c18083c.m4480a(this);
        this.f63087b = c18083c;
    }

    public void setAdapter(AbstractC18086d abstractC18086d) {
        super.setAdapter((ListAdapter) abstractC18086d);
        abstractC18086d.m4487a(this.f63090e);
        abstractC18086d.m4477a(this);
        this.f63088c = abstractC18086d;
    }

    public void setExternalAdapter(ListAdapter listAdapter, C18083c c18083c) {
        setAdapter(listAdapter);
        this.f63087b = c18083c;
        c18083c.m4480a(this);
        this.f63087b.m4488a(this.f63090e);
    }

    public void setExternalAdapter(ListAdapter listAdapter, AbstractC18086d abstractC18086d) {
        setAdapter(listAdapter);
        this.f63088c = abstractC18086d;
        abstractC18086d.m4477a(this);
        this.f63088c.m4487a(this.f63090e);
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        super.setOnScrollListener(onScrollListener);
        if (onScrollListener instanceof C18199e) {
            this.f63089d = (C18199e) onScrollListener;
        }
    }
}
