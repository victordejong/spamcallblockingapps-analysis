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
import it.gmariotti.cardslib.library.a.b;
import it.gmariotti.cardslib.library.recyclerview.a;
import it.gmariotti.cardslib.library.recyclerview.a.a;
import it.gmariotti.cardslib.library.view.a.a;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView.class */
public class CardRecyclerView extends RecyclerView implements a.AbstractC0600a {
    protected it.gmariotti.cardslib.library.recyclerview.a.a T;
    protected int U = a.b.list_card_layout;
    protected int[] V;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a.class */
    public static final class a {
        private a() {
        }

        public static ValueAnimator a(final View view, int i, int i2) {
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

        static /* synthetic */ View a(View view, RecyclerView recyclerView) {
            r0 = (View) view.getParent();
            View view2 = view;
            while (view2 != recyclerView) {
                view2 = (View) view2.getParent();
            }
            return view2;
        }

        public static void a(RecyclerView recyclerView, int i) {
            if (recyclerView instanceof CardRecyclerView) {
                CardRecyclerView cardRecyclerView = (CardRecyclerView) recyclerView;
                if (cardRecyclerView.T != null) {
                    cardRecyclerView.T.notifyItemChanged(i);
                }
            }
        }
    }

    public CardRecyclerView(Context context) {
        super(context);
        a(context, (AttributeSet) null, 0);
    }

    public CardRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet, 0);
    }

    public CardRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet, i);
    }

    private void a(Context context, AttributeSet attributeSet, int i) {
        this.U = a.b.list_card_layout;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, a.c.card_options, i, i);
        try {
            this.U = obtainStyledAttributes.getResourceId(a.c.card_options_list_card_layout_resourceID, this.U);
            int resourceId = obtainStyledAttributes.getResourceId(a.c.card_options_list_card_layout_resourceIDs, 0);
            if (resourceId > 0) {
                TypedArray obtainTypedArray = context.getResources().obtainTypedArray(resourceId);
                if (obtainTypedArray != null) {
                    this.V = new int[obtainTypedArray.length()];
                    for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                        this.V[i2] = obtainTypedArray.getResourceId(i2, a.b.list_card_layout);
                    }
                }
                obtainTypedArray.recycle();
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void a(final it.gmariotti.cardslib.library.view.a.a aVar, View view) {
        view.setVisibility(0);
        View view2 = (View) view.getParent();
        view.measure(View.MeasureSpec.makeMeasureSpec((view2.getMeasuredWidth() - view2.getPaddingLeft()) - view2.getPaddingRight(), BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW), View.MeasureSpec.makeMeasureSpec(0, 0));
        ValueAnimator a2 = a.a(view, 0, view.getMeasuredHeight());
        a2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(view) { // from class: it.gmariotti.cardslib.library.recyclerview.view.CardRecyclerView.a.2

            /* renamed from: a  reason: collision with root package name */
            final int f36393a;

            /* renamed from: b  reason: collision with root package name */
            final int f36394b;

            /* renamed from: c  reason: collision with root package name */
            final View f36395c;
            final /* synthetic */ View e;

            {
                this.e = view;
                this.f36393a = RecyclerView.this.getHeight();
                this.f36394b = RecyclerView.this.getPaddingBottom();
                this.f36395c = a.a(view, RecyclerView.this);
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int bottom;
                int top;
                if (RecyclerView.this.getLayoutManager().f() && (bottom = this.f36395c.getBottom()) > this.f36393a && (top = this.f36395c.getTop()) > 0) {
                    RecyclerView.this.a_(0, Math.min((bottom - this.f36393a) + this.f36394b + 4, top));
                }
            }
        });
        a2.addListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.recyclerview.view.CardRecyclerView.a.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                it.gmariotti.cardslib.library.view.a.a.this.setExpanded(true);
                RecyclerView recyclerView = this;
                recyclerView.getLayoutManager();
                a.a(recyclerView, RecyclerView.i.c((View) it.gmariotti.cardslib.library.view.a.a.this));
                b card = it.gmariotti.cardslib.library.view.a.a.this.getCard();
                if (card.getOnExpandAnimatorEndListener() != null) {
                    card.getOnExpandAnimatorEndListener().a();
                }
            }
        });
        a2.start();
    }

    public void b(final it.gmariotti.cardslib.library.view.a.a aVar, final View view) {
        ValueAnimator a2 = a.a(view, view.getHeight(), 0);
        a2.addListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.recyclerview.view.CardRecyclerView.a.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                view.setVisibility(8);
                aVar.setExpanded(false);
                RecyclerView recyclerView = this;
                recyclerView.getLayoutManager();
                a.a(recyclerView, RecyclerView.i.c((View) aVar));
                b card = aVar.getCard();
                if (card.getOnCollapseAnimatorEndListener() != null) {
                    card.getOnCollapseAnimatorEndListener().a();
                }
            }
        });
        a2.start();
    }

    public void setAdapter(it.gmariotti.cardslib.library.recyclerview.a.a aVar) {
        super.setAdapter((RecyclerView.a) aVar);
        aVar.setRowLayoutId(this.U);
        aVar.setRowLayoutIds(this.V);
        aVar.setCardRecyclerView(this);
        this.T = aVar;
        setRecyclerListener(new RecyclerView.p() { // from class: it.gmariotti.cardslib.library.recyclerview.view.CardRecyclerView.1
            @Override // androidx.recyclerview.widget.RecyclerView.p
            public final void a(RecyclerView.v vVar) {
                if (vVar instanceof a.C0599a) {
                    ((a.C0599a) vVar).s = true;
                }
            }
        });
    }
}
