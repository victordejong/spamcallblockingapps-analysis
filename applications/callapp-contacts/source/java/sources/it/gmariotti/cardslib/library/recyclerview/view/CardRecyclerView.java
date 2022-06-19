package it.gmariotti.cardslib.library.recyclerview.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import it.gmariotti.cardslib.library.p510a.C18073b;
import it.gmariotti.cardslib.library.recyclerview.C18108a;
import it.gmariotti.cardslib.library.recyclerview.p513a.AbstractC18112a;
import it.gmariotti.cardslib.library.view.p514a.AbstractC18152a;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView.class */
public class CardRecyclerView extends RecyclerView implements AbstractC18152a.AbstractC18153a {

    /* renamed from: T */
    protected AbstractC18112a f63054T;

    /* renamed from: U */
    protected int f63055U = C18108a.C18110b.list_card_layout;

    /* renamed from: V */
    protected int[] f63056V;

    /* renamed from: it.gmariotti.cardslib.library.recyclerview.view.CardRecyclerView$a */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a.class */
    public static final class C18116a {
        private C18116a() {
        }

        /* renamed from: a */
        public static ValueAnimator m4430a(final View view, int i, int i2) {
            ValueAnimator ofInt = ValueAnimator.ofInt(i, i2);
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: it.gmariotti.cardslib.library.recyclerview.view.CardRecyclerView.a.4
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
        static /* synthetic */ View m4429a(View view, RecyclerView recyclerView) {
            View view2 = view;
            View view3 = (View) view.getParent();
            while (true) {
                View view4 = view3;
                View view5 = view2;
                view2 = view4;
                if (view2 != recyclerView) {
                    view3 = (View) view2.getParent();
                } else {
                    return view5;
                }
            }
        }

        /* renamed from: a */
        public static void m4428a(RecyclerView recyclerView, int i) {
            if (recyclerView instanceof CardRecyclerView) {
                CardRecyclerView cardRecyclerView = (CardRecyclerView) recyclerView;
                if (cardRecyclerView.f63054T == null) {
                    return;
                }
                cardRecyclerView.f63054T.notifyItemChanged(i);
            }
        }
    }

    public CardRecyclerView(Context context) {
        super(context);
        m4432a(context, (AttributeSet) null, 0);
    }

    public CardRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4432a(context, attributeSet, 0);
    }

    public CardRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m4432a(context, attributeSet, i);
    }

    /* renamed from: a */
    private void m4432a(Context context, AttributeSet attributeSet, int i) {
        this.f63055U = C18108a.C18110b.list_card_layout;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C18108a.C18111c.card_options, i, i);
        try {
            this.f63055U = obtainStyledAttributes.getResourceId(C18108a.C18111c.card_options_list_card_layout_resourceID, this.f63055U);
            int resourceId = obtainStyledAttributes.getResourceId(C18108a.C18111c.card_options_list_card_layout_resourceIDs, 0);
            if (resourceId > 0) {
                TypedArray obtainTypedArray = context.getResources().obtainTypedArray(resourceId);
                if (obtainTypedArray != null) {
                    this.f63056V = new int[obtainTypedArray.length()];
                    for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                        this.f63056V[i2] = obtainTypedArray.getResourceId(i2, C18108a.C18110b.list_card_layout);
                    }
                }
                obtainTypedArray.recycle();
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: a */
    public void mo4379a(final AbstractC18152a abstractC18152a, View view) {
        view.setVisibility(0);
        View view2 = (View) view.getParent();
        view.measure(View.MeasureSpec.makeMeasureSpec((view2.getMeasuredWidth() - view2.getPaddingLeft()) - view2.getPaddingRight(), BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW), View.MeasureSpec.makeMeasureSpec(0, 0));
        ValueAnimator m4430a = C18116a.m4430a(view, 0, view.getMeasuredHeight());
        m4430a.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(view) { // from class: it.gmariotti.cardslib.library.recyclerview.view.CardRecyclerView.a.2

            /* renamed from: a */
            final int f63061a;

            /* renamed from: b */
            final int f63062b;

            /* renamed from: c */
            final View f63063c;

            /* renamed from: e */
            final /* synthetic */ View f63065e;

            {
                RecyclerView.this = this;
                this.f63065e = view;
                this.f63061a = this.getHeight();
                this.f63062b = this.getPaddingBottom();
                this.f63063c = C18116a.m4429a(view, this);
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int bottom;
                int top;
                if (!RecyclerView.this.getLayoutManager().mo31643f() || (bottom = this.f63063c.getBottom()) <= this.f63061a || (top = this.f63063c.getTop()) <= 0) {
                    return;
                }
                RecyclerView.this.mo26354a_(0, Math.min((bottom - this.f63061a) + this.f63062b + 4, top));
            }
        });
        m4430a.addListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.recyclerview.view.CardRecyclerView.a.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                abstractC18152a.setExpanded(true);
                RecyclerView recyclerView = this;
                recyclerView.getLayoutManager();
                C18116a.m4428a(recyclerView, RecyclerView.AbstractC2637i.m40366c((View) abstractC18152a));
                C18073b card = abstractC18152a.getCard();
                if (card.getOnExpandAnimatorEndListener() != null) {
                    card.getOnExpandAnimatorEndListener().mo4484a();
                }
            }
        });
        m4430a.start();
    }

    /* renamed from: b */
    public void mo4378b(final AbstractC18152a abstractC18152a, final View view) {
        ValueAnimator m4430a = C18116a.m4430a(view, view.getHeight(), 0);
        m4430a.addListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.recyclerview.view.CardRecyclerView.a.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                view.setVisibility(8);
                abstractC18152a.setExpanded(false);
                RecyclerView recyclerView = this;
                recyclerView.getLayoutManager();
                C18116a.m4428a(recyclerView, RecyclerView.AbstractC2637i.m40366c((View) abstractC18152a));
                C18073b card = abstractC18152a.getCard();
                if (card.getOnCollapseAnimatorEndListener() != null) {
                    card.getOnCollapseAnimatorEndListener().mo4485a();
                }
            }
        });
        m4430a.start();
    }

    public void setAdapter(AbstractC18112a abstractC18112a) {
        super.setAdapter((RecyclerView.AbstractC2626a) abstractC18112a);
        abstractC18112a.setRowLayoutId(this.f63055U);
        abstractC18112a.setRowLayoutIds(this.f63056V);
        abstractC18112a.setCardRecyclerView(this);
        this.f63054T = abstractC18112a;
        setRecyclerListener(new RecyclerView.AbstractC2649p() { // from class: it.gmariotti.cardslib.library.recyclerview.view.CardRecyclerView.1
            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2649p
            /* renamed from: a */
            public final void mo4431a(RecyclerView.AbstractC2657v abstractC2657v) {
                if (abstractC2657v instanceof AbstractC18112a.C18113a) {
                    ((AbstractC18112a.C18113a) abstractC2657v).f63052s = true;
                }
            }
        });
    }
}
