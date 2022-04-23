package com.callapp.contacts.widget.recyclerviewext;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.content.b;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.contact.cards.framework.ContactCard;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import it.gmariotti.cardslib.library.a.b;
import it.gmariotti.cardslib.library.a.k;
import it.gmariotti.cardslib.library.view.a.a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/recyclerviewext/CardRecyclerView.class */
public class CardRecyclerView extends it.gmariotti.cardslib.library.recyclerview.view.CardRecyclerView {
    public boolean Q;
    public AutoScroller R;
    public OnAutoScrollEventsListener S;
    private boolean W;
    private final Paint aa;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller.class */
    public class AutoScroller implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private long f16844b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f16845c = true;

        /* renamed from: d  reason: collision with root package name */
        private int f16846d;

        /* renamed from: com.callapp.contacts.widget.recyclerviewext.CardRecyclerView$AutoScroller$1  reason: invalid class name */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1.class */
        class AnonymousClass1 extends RecyclerView.m {
            AnonymousClass1() {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.m
            public final void a(final RecyclerView recyclerView, int i) {
                super.a(recyclerView, i);
                if (i == 0) {
                    recyclerView.b(this);
                    CardRecyclerView.this.postDelayed(new Runnable() { // from class: com.callapp.contacts.widget.recyclerviewext.CardRecyclerView.AutoScroller.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            recyclerView.a(new RecyclerView.m() { // from class: com.callapp.contacts.widget.recyclerviewext.CardRecyclerView.AutoScroller.1.1.1
                                @Override // androidx.recyclerview.widget.RecyclerView.m
                                public final void a(RecyclerView recyclerView2, int i2) {
                                    super.a(recyclerView2, i2);
                                    if (i2 == 0) {
                                        recyclerView2.b(this);
                                        if (!AutoScroller.this.f16845c || AutoScroller.this.f16844b != 2) {
                                            CardRecyclerView.this.W = false;
                                            CardRecyclerView.this.R = null;
                                            if (CardRecyclerView.this.S != null) {
                                                CardRecyclerView.this.S.b();
                                                return;
                                            }
                                            return;
                                        }
                                        AutoScroller.this.f16845c = false;
                                        CardRecyclerView.this.postDelayed(AutoScroller.this, 4000L);
                                    }
                                }
                            });
                            CardRecyclerView.this.d(AutoScroller.this.f16845c ? CardRecyclerView.this.getAdapter().getItemCount() - 1 : 0);
                        }
                    }, 4000L);
                }
            }
        }

        public AutoScroller(long j, int i) {
            this.f16844b = j;
            this.f16846d = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            CardRecyclerView cardRecyclerView;
            if (!CardRecyclerView.this.isUserTouchedItOrItsChildrenOnce() && CardRecyclerView.this.getAdapter() != null) {
                CardRecyclerView.this.W = true;
                if (this.f16845c && CardRecyclerView.this.S != null) {
                    CardRecyclerView.this.S.a();
                }
                if (this.f16846d > 0) {
                    CardRecyclerView.this.a(new AnonymousClass1());
                    cardRecyclerView = CardRecyclerView.this;
                    i = this.f16846d;
                } else {
                    CardRecyclerView.this.a(new RecyclerView.m() { // from class: com.callapp.contacts.widget.recyclerviewext.CardRecyclerView.AutoScroller.2
                        @Override // androidx.recyclerview.widget.RecyclerView.m
                        public final void a(RecyclerView recyclerView, int i2) {
                            super.a(recyclerView, i2);
                            if (i2 == 0) {
                                recyclerView.b(this);
                                if (!AutoScroller.this.f16845c || AutoScroller.this.f16844b != 2) {
                                    CardRecyclerView.this.W = false;
                                    CardRecyclerView.this.R = null;
                                    if (CardRecyclerView.this.S != null) {
                                        CardRecyclerView.this.S.b();
                                        return;
                                    }
                                    return;
                                }
                                AutoScroller.this.f16845c = false;
                                CardRecyclerView.this.postDelayed(AutoScroller.this, 4000L);
                            }
                        }
                    });
                    cardRecyclerView = CardRecyclerView.this;
                    i = this.f16845c ? cardRecyclerView.getAdapter().getItemCount() - 1 : 0;
                }
                cardRecyclerView.d(i);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/recyclerviewext/CardRecyclerView$OnAutoScrollEventsListener.class */
    public interface OnAutoScrollEventsListener {
        void a();

        void b();
    }

    public CardRecyclerView(Context context) {
        this(context, null);
    }

    public CardRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CardRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.Q = false;
        Paint paint = new Paint();
        this.aa = paint;
        paint.setColor(b.c(getContext(), 2131100114));
        paint.setStrokeWidth(Activities.a(1.0f));
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
    }

    private static View a(a aVar) {
        k viewToClickToExpand;
        View c2;
        it.gmariotti.cardslib.library.a.b card = aVar.getCard();
        if (card == null || (viewToClickToExpand = card.getViewToClickToExpand()) == null || (c2 = viewToClickToExpand.c()) == null) {
            return null;
        }
        return c2;
    }

    @Override // it.gmariotti.cardslib.library.recyclerview.view.CardRecyclerView, it.gmariotti.cardslib.library.view.a.a.AbstractC0600a
    public final void a(a aVar, View view) {
        boolean z;
        b.d onExpandAnimatorEndListener;
        RecyclerView.a adapter;
        ContactCard contactCard = (ContactCard) aVar.getCard();
        if (contactCard != null) {
            contactCard.getOnExpandAnimatorStartListener();
            z = contactCard.isAllowedExpandAnimation();
        } else {
            z = true;
        }
        if (z) {
            super.a(aVar, view);
        } else {
            view.setVisibility(0);
            view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            ViewUtils.g(view, view.getMeasuredHeight());
            aVar.setExpanded(true);
            int c2 = (aVar == null || getLayoutManager() == null) ? -1 : RecyclerView.i.c((View) aVar);
            if (!(c2 == -1 || (adapter = getAdapter()) == null)) {
                adapter.notifyItemChanged(c2);
            }
            if (!(contactCard == null || (onExpandAnimatorEndListener = contactCard.getOnExpandAnimatorEndListener()) == null)) {
                onExpandAnimatorEndListener.a();
            }
            if (contactCard.isCardVisibleOnScreen() && !isUserTouchedItOrItsChildrenOnce() && !this.W) {
                b(0);
            }
        }
        if (a(aVar) != null) {
            CallappAnimationUtils.a(aVar.getCard().getViewToClickToExpand().c(), 0, 180);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void a_(int i, int i2) {
    }

    @Override // it.gmariotti.cardslib.library.recyclerview.view.CardRecyclerView, it.gmariotti.cardslib.library.view.a.a.AbstractC0600a
    public final void b(a aVar, View view) {
        it.gmariotti.cardslib.library.a.b card = aVar.getCard();
        if (card != null) {
            card.getOnCollapseAnimatorStartListener();
        }
        super.b(aVar, view);
        if (a(aVar) != null) {
            CallappAnimationUtils.a(aVar.getCard().getViewToClickToExpand().c(), 180, 0);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        canvas.drawLine(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), BitmapDescriptorFactory.HUE_RED, this.aa);
    }

    public final void i() {
        if (this.R != null) {
            e();
            removeCallbacks(this.R);
            this.W = false;
            this.R = null;
        }
    }

    public boolean isAutoScrolling() {
        return this.W;
    }

    public boolean isUserTouchedItOrItsChildrenOnce() {
        return this.Q;
    }

    public final void j() {
        i();
        this.S = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.Q = true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setToInitialState() {
        b(0);
        this.Q = false;
    }
}
