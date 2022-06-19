package com.callapp.contacts.widget.recyclerviewext;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.content.C0790b;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.contact.cards.framework.ContactCard;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import it.gmariotti.cardslib.library.p510a.C18073b;
import it.gmariotti.cardslib.library.p510a.C18099k;
import it.gmariotti.cardslib.library.view.p514a.AbstractC18152a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/recyclerviewext/CardRecyclerView.class */
public class CardRecyclerView extends it.gmariotti.cardslib.library.recyclerview.view.CardRecyclerView {

    /* renamed from: Q */
    public boolean f29317Q;

    /* renamed from: R */
    public AutoScroller f29318R;

    /* renamed from: S */
    public OnAutoScrollEventsListener f29319S;

    /* renamed from: W */
    private boolean f29320W;

    /* renamed from: aa */
    private final Paint f29321aa;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller.class */
    public class AutoScroller implements Runnable {

        /* renamed from: b */
        private long f29323b;

        /* renamed from: c */
        private boolean f29324c = true;

        /* renamed from: d */
        private int f29325d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.callapp.contacts.widget.recyclerviewext.CardRecyclerView$AutoScroller$1 */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1.class */
        public class C81711 extends RecyclerView.AbstractC2645m {
            C81711() {
                AutoScroller.this = r4;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
            /* renamed from: a */
            public final void mo10833a(final RecyclerView recyclerView, int i) {
                super.mo10833a(recyclerView, i);
                if (i == 0) {
                    recyclerView.m40459b(this);
                    CardRecyclerView.this.postDelayed(new Runnable() { // from class: com.callapp.contacts.widget.recyclerviewext.CardRecyclerView.AutoScroller.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            recyclerView.m40478a(new RecyclerView.AbstractC2645m() { // from class: com.callapp.contacts.widget.recyclerviewext.CardRecyclerView.AutoScroller.1.1.1
                                @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
                                /* renamed from: a */
                                public final void mo10833a(RecyclerView recyclerView2, int i2) {
                                    super.mo10833a(recyclerView2, i2);
                                    if (i2 == 0) {
                                        recyclerView2.m40459b(this);
                                        if (AutoScroller.this.f29324c && AutoScroller.this.f29323b == 2) {
                                            AutoScroller.this.f29324c = false;
                                            CardRecyclerView.this.postDelayed(AutoScroller.this, 4000L);
                                            return;
                                        }
                                        CardRecyclerView.this.f29320W = false;
                                        CardRecyclerView.this.f29318R = null;
                                        if (CardRecyclerView.this.f29319S == null) {
                                            return;
                                        }
                                        CardRecyclerView.this.f29319S.mo26346b();
                                    }
                                }
                            });
                            CardRecyclerView.this.m40449d(AutoScroller.this.f29324c ? CardRecyclerView.this.getAdapter().getItemCount() - 1 : 0);
                        }
                    }, 4000L);
                }
            }
        }

        public AutoScroller(long j, int i) {
            CardRecyclerView.this = r5;
            this.f29323b = j;
            this.f29325d = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            CardRecyclerView cardRecyclerView;
            if (CardRecyclerView.this.isUserTouchedItOrItsChildrenOnce() || CardRecyclerView.this.getAdapter() == null) {
                return;
            }
            CardRecyclerView.this.f29320W = true;
            if (this.f29324c && CardRecyclerView.this.f29319S != null) {
                CardRecyclerView.this.f29319S.mo26347a();
            }
            if (this.f29325d > 0) {
                CardRecyclerView.this.m40478a(new C81711());
                cardRecyclerView = CardRecyclerView.this;
                i = this.f29325d;
            } else {
                CardRecyclerView.this.m40478a(new RecyclerView.AbstractC2645m() { // from class: com.callapp.contacts.widget.recyclerviewext.CardRecyclerView.AutoScroller.2
                    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
                    /* renamed from: a */
                    public final void mo10833a(RecyclerView recyclerView, int i2) {
                        super.mo10833a(recyclerView, i2);
                        if (i2 == 0) {
                            recyclerView.m40459b(this);
                            if (AutoScroller.this.f29324c && AutoScroller.this.f29323b == 2) {
                                AutoScroller.this.f29324c = false;
                                CardRecyclerView.this.postDelayed(AutoScroller.this, 4000L);
                                return;
                            }
                            CardRecyclerView.this.f29320W = false;
                            CardRecyclerView.this.f29318R = null;
                            if (CardRecyclerView.this.f29319S == null) {
                                return;
                            }
                            CardRecyclerView.this.f29319S.mo26346b();
                        }
                    }
                });
                cardRecyclerView = CardRecyclerView.this;
                i = this.f29324c ? cardRecyclerView.getAdapter().getItemCount() - 1 : 0;
            }
            cardRecyclerView.m40449d(i);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/recyclerviewext/CardRecyclerView$OnAutoScrollEventsListener.class */
    public interface OnAutoScrollEventsListener {
        /* renamed from: a */
        void mo26347a();

        /* renamed from: b */
        void mo26346b();
    }

    public CardRecyclerView(Context context) {
        this(context, null);
    }

    public CardRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CardRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f29317Q = false;
        Paint paint = new Paint();
        this.f29321aa = paint;
        paint.setColor(C0790b.m44492c(getContext(), 2131100114));
        paint.setStrokeWidth(Activities.m27699a(1.0f));
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
    }

    /* renamed from: a */
    private static View m26355a(AbstractC18152a abstractC18152a) {
        C18099k viewToClickToExpand;
        View m4444c;
        C18073b card = abstractC18152a.getCard();
        if (card == null || (viewToClickToExpand = card.getViewToClickToExpand()) == null || (m4444c = viewToClickToExpand.m4444c()) == null) {
            return null;
        }
        return m4444c;
    }

    @Override // it.gmariotti.cardslib.library.recyclerview.view.CardRecyclerView, it.gmariotti.cardslib.library.view.p514a.AbstractC18152a.AbstractC18153a
    /* renamed from: a */
    public final void mo4379a(AbstractC18152a abstractC18152a, View view) {
        boolean z;
        C18073b.AbstractC18077d onExpandAnimatorEndListener;
        RecyclerView.AbstractC2626a adapter;
        ContactCard contactCard = (ContactCard) abstractC18152a.getCard();
        if (contactCard != null) {
            contactCard.getOnExpandAnimatorStartListener();
            z = contactCard.isAllowedExpandAnimation();
        } else {
            z = true;
        }
        if (z) {
            super.mo4379a(abstractC18152a, view);
        } else {
            view.setVisibility(0);
            view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            ViewUtils.m27287g(view, view.getMeasuredHeight());
            abstractC18152a.setExpanded(true);
            int m40366c = (abstractC18152a == null || getLayoutManager() == null) ? -1 : RecyclerView.AbstractC2637i.m40366c((View) abstractC18152a);
            if (m40366c != -1 && (adapter = getAdapter()) != null) {
                adapter.notifyItemChanged(m40366c);
            }
            if (contactCard != null && (onExpandAnimatorEndListener = contactCard.getOnExpandAnimatorEndListener()) != null) {
                onExpandAnimatorEndListener.mo4484a();
            }
            if (contactCard.isCardVisibleOnScreen() && !isUserTouchedItOrItsChildrenOnce() && !this.f29320W) {
                m40464b(0);
            }
        }
        if (m26355a(abstractC18152a) != null) {
            CallappAnimationUtils.m27185a(abstractC18152a.getCard().getViewToClickToExpand().m4444c(), 0, 180);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    /* renamed from: a_ */
    public final void mo26354a_(int i, int i2) {
    }

    @Override // it.gmariotti.cardslib.library.recyclerview.view.CardRecyclerView, it.gmariotti.cardslib.library.view.p514a.AbstractC18152a.AbstractC18153a
    /* renamed from: b */
    public final void mo4378b(AbstractC18152a abstractC18152a, View view) {
        C18073b card = abstractC18152a.getCard();
        if (card != null) {
            card.getOnCollapseAnimatorStartListener();
        }
        super.mo4378b(abstractC18152a, view);
        if (m26355a(abstractC18152a) != null) {
            CallappAnimationUtils.m27185a(abstractC18152a.getCard().getViewToClickToExpand().m4444c(), 180, 0);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        canvas.drawLine(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), BitmapDescriptorFactory.HUE_RED, this.f29321aa);
    }

    /* renamed from: i */
    public final void m26352i() {
        if (this.f29318R != null) {
            m40445e();
            removeCallbacks(this.f29318R);
            this.f29320W = false;
            this.f29318R = null;
        }
    }

    public boolean isAutoScrolling() {
        return this.f29320W;
    }

    public boolean isUserTouchedItOrItsChildrenOnce() {
        return this.f29317Q;
    }

    /* renamed from: j */
    public final void m26351j() {
        m26352i();
        this.f29319S = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m26351j();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f29317Q = true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setToInitialState() {
        m40464b(0);
        this.f29317Q = false;
    }
}
