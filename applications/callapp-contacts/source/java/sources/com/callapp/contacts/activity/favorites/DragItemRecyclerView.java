package com.callapp.contacts.activity.favorites;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.base.CallAppMoPubRecyclerAdapter;
import com.callapp.contacts.activity.favorites.AutoScroller;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragItemRecyclerView.class */
public class DragItemRecyclerView extends RecyclerView implements AutoScroller.AutoScrollListener {

    /* renamed from: Q */
    DragItemListener f22964Q;

    /* renamed from: R */
    DragItemCallback f22965R;

    /* renamed from: T */
    DragItemAdapter f22967T;

    /* renamed from: U */
    DragItem f22968U;

    /* renamed from: W */
    int f22970W;

    /* renamed from: aa */
    boolean f22971aa;

    /* renamed from: ab */
    boolean f22972ab;

    /* renamed from: ad */
    private AutoScroller f22974ad;

    /* renamed from: ae */
    private Drawable f22975ae;

    /* renamed from: af */
    private Drawable f22976af;

    /* renamed from: ag */
    private boolean f22977ag;

    /* renamed from: ah */
    private int f22978ah;

    /* renamed from: ai */
    private float f22979ai;

    /* renamed from: aj */
    private boolean f22980aj;

    /* renamed from: al */
    private boolean f22982al;

    /* renamed from: S */
    DragState f22966S = DragState.DRAG_ENDED;

    /* renamed from: V */
    long f22969V = -1;

    /* renamed from: ak */
    private boolean f22981ak = true;

    /* renamed from: ac */
    boolean f22973ac = true;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemCallback.class */
    public interface DragItemCallback {
        /* renamed from: a */
        boolean mo30280a(int i);

        /* renamed from: b */
        boolean mo30279b(int i);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemListener.class */
    public interface DragItemListener {
        /* renamed from: a */
        void mo30283a();

        /* renamed from: a */
        void mo30282a(int i);

        /* renamed from: b */
        void mo30281b();
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState.class */
    public enum DragState {
        DRAG_STARTED,
        DRAGGING,
        DRAG_ENDED
    }

    public DragItemRecyclerView(Context context) {
        super(context);
        m30292k();
    }

    public DragItemRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        m30292k();
    }

    public DragItemRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m30292k();
    }

    /* renamed from: b */
    private View m30301b(float f, float f2) {
        int childCount = getChildCount();
        if (f2 > BitmapDescriptorFactory.HUE_RED || childCount <= 0) {
            while (true) {
                childCount--;
                if (childCount < 0) {
                    return null;
                }
                View childAt = getChildAt(childCount);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                if (f >= childAt.getLeft() - marginLayoutParams.leftMargin && f <= childAt.getRight() + marginLayoutParams.rightMargin && f2 >= childAt.getTop() - marginLayoutParams.topMargin && f2 <= childAt.getBottom() + marginLayoutParams.bottomMargin) {
                    return childAt;
                }
            }
        } else {
            return getChildAt(0);
        }
    }

    /* renamed from: e */
    static /* synthetic */ void m30297e(DragItemRecyclerView dragItemRecyclerView) {
        dragItemRecyclerView.f22967T.setDragItemId(-1L);
        dragItemRecyclerView.f22967T.setDropTargetId(-1L);
        dragItemRecyclerView.f22967T.notifyDataSetChanged();
        dragItemRecyclerView.f22966S = DragState.DRAG_ENDED;
        DragItemListener dragItemListener = dragItemRecyclerView.f22964Q;
        if (dragItemListener != null) {
            dragItemListener.mo30281b();
        }
        dragItemRecyclerView.f22969V = -1L;
        dragItemRecyclerView.f22968U.m30311a();
        dragItemRecyclerView.setEnabled(true);
        dragItemRecyclerView.invalidate();
    }

    /* renamed from: f */
    private boolean m30296f(int i) {
        int i2;
        if (this.f22977ag || (i2 = this.f22970W) == -1 || i2 == i) {
            return false;
        }
        if (this.f22971aa && i == 0) {
            return false;
        }
        if (this.f22972ab && i == this.f22967T.getItemCount() - 1) {
            return false;
        }
        DragItemCallback dragItemCallback = this.f22965R;
        return dragItemCallback == null || dragItemCallback.mo30279b(i);
    }

    /* renamed from: k */
    private void m30292k() {
        this.f22974ad = new AutoScroller(getContext(), this);
        this.f22978ah = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        m40480a(new RecyclerView.AbstractC2636h() { // from class: com.callapp.contacts.activity.favorites.DragItemRecyclerView.1
            /* renamed from: a */
            private void m30291a(Canvas canvas, RecyclerView recyclerView, Drawable drawable) {
                if (DragItemRecyclerView.this.f22967T == null || DragItemRecyclerView.this.f22967T.getDropTargetId() == -1 || drawable == null) {
                    return;
                }
                for (int i = 0; i < recyclerView.getChildCount(); i++) {
                    View childAt = recyclerView.getChildAt(i);
                    int d = DragItemRecyclerView.m40447d(childAt);
                    if (d != -1 && DragItemRecyclerView.this.f22967T.getItemId(d) == DragItemRecyclerView.this.f22967T.getDropTargetId()) {
                        drawable.setBounds(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
                        drawable.draw(canvas);
                    }
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2636h
            /* renamed from: a */
            public final void mo30290a(Canvas canvas, RecyclerView recyclerView, RecyclerView.C2654s c2654s) {
                super.mo30290a(canvas, recyclerView, c2654s);
                m30291a(canvas, recyclerView, DragItemRecyclerView.this.f22976af);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2636h
            /* renamed from: b */
            public final void mo10834b(Canvas canvas, RecyclerView recyclerView, RecyclerView.C2654s c2654s) {
                super.mo10834b(canvas, recyclerView, c2654s);
                m30291a(canvas, recyclerView, DragItemRecyclerView.this.f22975ae);
            }
        }, -1);
    }

    /* renamed from: a */
    public final void m30304a(float f, float f2) {
        if (this.f22966S == DragState.DRAG_ENDED) {
            return;
        }
        this.f22966S = DragState.DRAGGING;
        this.f22970W = this.f22967T.m30307a(this.f22969V);
        this.f22968U.m30310a(f, f2);
        if (!this.f22974ad.isAutoScrolling()) {
            m30294i();
        }
        DragItemListener dragItemListener = this.f22964Q;
        if (dragItemListener != null) {
            dragItemListener.mo30283a();
        }
        invalidate();
    }

    @Override // com.callapp.contacts.activity.favorites.AutoScroller.AutoScrollListener
    /* renamed from: a */
    public final void mo30303a(int i, int i2) {
        if (!isDragging()) {
            this.f22974ad.f22932a = false;
            return;
        }
        scrollBy(i, i2);
        m30294i();
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02a6  */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m30294i() {
        /*
            Method dump skipped, instructions count: 702
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.favorites.DragItemRecyclerView.m30294i():void");
    }

    public boolean isDragging() {
        return this.f22966S != DragState.DRAG_ENDED;
    }

    /* renamed from: j */
    public final void m30293j() {
        if (this.f22966S == DragState.DRAG_ENDED) {
            return;
        }
        this.f22974ad.f22932a = false;
        setEnabled(false);
        if (this.f22982al) {
            DragItemAdapter dragItemAdapter = this.f22967T;
            int m30307a = dragItemAdapter.m30307a(dragItemAdapter.getDropTargetId());
            if (m30307a != -1) {
                this.f22967T.m30308a(this.f22970W, m30307a);
                this.f22970W = m30307a;
            }
            this.f22967T.setDropTargetId(-1L);
        }
        post(new Runnable() { // from class: com.callapp.contacts.activity.favorites.DragItemRecyclerView.2
            @Override // java.lang.Runnable
            public void run() {
                DragItemRecyclerView dragItemRecyclerView = DragItemRecyclerView.this;
                final RecyclerView.AbstractC2657v e = dragItemRecyclerView.m40444e(dragItemRecyclerView.f22970W);
                if (e == null) {
                    DragItemRecyclerView.m30297e(DragItemRecyclerView.this);
                    return;
                }
                DragItemRecyclerView.this.getItemAnimator().mo40109c(e);
                DragItem dragItem = DragItemRecyclerView.this.f22968U;
                View view = e.itemView;
                AnimatorListenerAdapter animatorListenerAdapter = new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.favorites.DragItemRecyclerView.2.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        e.itemView.setAlpha(1.0f);
                        DragItemRecyclerView.m30297e(DragItemRecyclerView.this);
                    }
                };
                ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(dragItem, PropertyValuesHolder.ofFloat("X", dragItem.f22946c, (view.getX() - ((dragItem.f22944a.getMeasuredWidth() - view.getMeasuredWidth()) / 2)) + (dragItem.f22944a.getMeasuredWidth() / 2)), PropertyValuesHolder.ofFloat("Y", dragItem.f22947d, (view.getY() - ((dragItem.f22944a.getMeasuredHeight() - view.getMeasuredHeight()) / 2)) + (dragItem.f22944a.getMeasuredHeight() / 2)));
                ofPropertyValuesHolder.setInterpolator(new DecelerateInterpolator());
                ofPropertyValuesHolder.setDuration(250L);
                ofPropertyValuesHolder.addListener(animatorListenerAdapter);
                ofPropertyValuesHolder.start();
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.f22981ak) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f22979ai = motionEvent.getY();
        } else if (action == 2 && Math.abs(motionEvent.getY() - this.f22979ai) > this.f22978ah * 0.5d) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.AbstractC2626a abstractC2626a) {
        if (isInEditMode() || abstractC2626a == null || (abstractC2626a instanceof DragItemAdapter) || (abstractC2626a instanceof CallAppMoPubRecyclerAdapter)) {
            super.setAdapter(abstractC2626a);
            if (!(abstractC2626a instanceof DragItemAdapter)) {
                return;
            }
            this.f22967T = (DragItemAdapter) abstractC2626a;
            return;
        }
        throw new RuntimeException("Adapter must extend DragItemAdapter");
    }

    public void setCanNotDragAboveTopItem(boolean z) {
        this.f22971aa = z;
    }

    public void setCanNotDragBelowBottomItem(boolean z) {
        this.f22972ab = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        super.setClipToPadding(z);
        this.f22980aj = z;
    }

    public void setDisableReorderWhenDragging(boolean z) {
        this.f22982al = z;
    }

    public void setDragEnabled(boolean z) {
        this.f22973ac = z;
    }

    public void setDragItem(DragItem dragItem) {
        this.f22968U = dragItem;
    }

    public void setDragItemCallback(DragItemCallback dragItemCallback) {
        this.f22965R = dragItemCallback;
    }

    public void setDragItemListener(DragItemListener dragItemListener) {
        this.f22964Q = dragItemListener;
    }

    public void setDropTargetDrawables(Drawable drawable, Drawable drawable2) {
        this.f22975ae = drawable;
        this.f22976af = drawable2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setLayoutManager(RecyclerView.AbstractC2637i abstractC2637i) {
        super.setLayoutManager(abstractC2637i);
        if (abstractC2637i instanceof LinearLayoutManager) {
            return;
        }
        throw new RuntimeException("Layout must be an instance of LinearLayoutManager");
    }

    public void setScrollingEnabled(boolean z) {
        this.f22981ak = z;
    }
}
