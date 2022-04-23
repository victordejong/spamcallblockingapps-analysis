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
    DragItemListener Q;
    DragItemCallback R;
    DragItemAdapter T;
    DragItem U;
    int W;
    boolean aa;
    boolean ab;
    private AutoScroller ad;
    private Drawable ae;
    private Drawable af;
    private boolean ag;
    private int ah;
    private float ai;
    private boolean aj;
    private boolean al;
    DragState S = DragState.DRAG_ENDED;
    long V = -1;
    private boolean ak = true;
    boolean ac = true;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemCallback.class */
    public interface DragItemCallback {
        boolean a(int i);

        boolean b(int i);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemListener.class */
    public interface DragItemListener {
        void a();

        void a(int i);

        void b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState.class */
    public enum DragState {
        DRAG_STARTED,
        DRAGGING,
        DRAG_ENDED
    }

    public DragItemRecyclerView(Context context) {
        super(context);
        k();
    }

    public DragItemRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        k();
    }

    public DragItemRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        k();
    }

    private View b(float f, float f2) {
        int childCount = getChildCount();
        if (f2 <= BitmapDescriptorFactory.HUE_RED && childCount > 0) {
            return getChildAt(0);
        }
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
    }

    static /* synthetic */ void e(DragItemRecyclerView dragItemRecyclerView) {
        dragItemRecyclerView.T.setDragItemId(-1L);
        dragItemRecyclerView.T.setDropTargetId(-1L);
        dragItemRecyclerView.T.notifyDataSetChanged();
        dragItemRecyclerView.S = DragState.DRAG_ENDED;
        DragItemListener dragItemListener = dragItemRecyclerView.Q;
        if (dragItemListener != null) {
            dragItemListener.b();
        }
        dragItemRecyclerView.V = -1L;
        dragItemRecyclerView.U.a();
        dragItemRecyclerView.setEnabled(true);
        dragItemRecyclerView.invalidate();
    }

    private boolean f(int i) {
        int i2;
        if (this.ag || (i2 = this.W) == -1 || i2 == i) {
            return false;
        }
        if (this.aa && i == 0) {
            return false;
        }
        if (this.ab && i == this.T.getItemCount() - 1) {
            return false;
        }
        DragItemCallback dragItemCallback = this.R;
        return dragItemCallback == null || dragItemCallback.b(i);
    }

    private void k() {
        this.ad = new AutoScroller(getContext(), this);
        this.ah = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        a(new RecyclerView.h() { // from class: com.callapp.contacts.activity.favorites.DragItemRecyclerView.1
            private void a(Canvas canvas, RecyclerView recyclerView, Drawable drawable) {
                if (!(DragItemRecyclerView.this.T == null || DragItemRecyclerView.this.T.getDropTargetId() == -1 || drawable == null)) {
                    for (int i = 0; i < recyclerView.getChildCount(); i++) {
                        View childAt = recyclerView.getChildAt(i);
                        int d2 = DragItemRecyclerView.d(childAt);
                        if (d2 != -1 && DragItemRecyclerView.this.T.getItemId(d2) == DragItemRecyclerView.this.T.getDropTargetId()) {
                            drawable.setBounds(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
                            drawable.draw(canvas);
                        }
                    }
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.h
            public final void a(Canvas canvas, RecyclerView recyclerView, RecyclerView.s sVar) {
                super.a(canvas, recyclerView, sVar);
                a(canvas, recyclerView, DragItemRecyclerView.this.af);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.h
            public final void b(Canvas canvas, RecyclerView recyclerView, RecyclerView.s sVar) {
                super.b(canvas, recyclerView, sVar);
                a(canvas, recyclerView, DragItemRecyclerView.this.ae);
            }
        }, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(float f, float f2) {
        if (this.S != DragState.DRAG_ENDED) {
            this.S = DragState.DRAGGING;
            this.W = this.T.a(this.V);
            this.U.a(f, f2);
            if (!this.ad.isAutoScrolling()) {
                i();
            }
            DragItemListener dragItemListener = this.Q;
            if (dragItemListener != null) {
                dragItemListener.a();
            }
            invalidate();
        }
    }

    @Override // com.callapp.contacts.activity.favorites.AutoScroller.AutoScrollListener
    public final void a(int i, int i2) {
        if (isDragging()) {
            scrollBy(i, i2);
            i();
            return;
        }
        this.ad.f12828a = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i() {
        /*
            Method dump skipped, instructions count: 702
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.favorites.DragItemRecyclerView.i():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isDragging() {
        return this.S != DragState.DRAG_ENDED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void j() {
        if (this.S != DragState.DRAG_ENDED) {
            this.ad.f12828a = false;
            setEnabled(false);
            if (this.al) {
                DragItemAdapter dragItemAdapter = this.T;
                int a2 = dragItemAdapter.a(dragItemAdapter.getDropTargetId());
                if (a2 != -1) {
                    this.T.a(this.W, a2);
                    this.W = a2;
                }
                this.T.setDropTargetId(-1L);
            }
            post(new Runnable() { // from class: com.callapp.contacts.activity.favorites.DragItemRecyclerView.2
                @Override // java.lang.Runnable
                public void run() {
                    DragItemRecyclerView dragItemRecyclerView = DragItemRecyclerView.this;
                    final RecyclerView.v e = dragItemRecyclerView.e(dragItemRecyclerView.W);
                    if (e != null) {
                        DragItemRecyclerView.this.getItemAnimator().c(e);
                        DragItem dragItem = DragItemRecyclerView.this.U;
                        View view = e.itemView;
                        AnimatorListenerAdapter animatorListenerAdapter = new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.favorites.DragItemRecyclerView.2.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                e.itemView.setAlpha(1.0f);
                                DragItemRecyclerView.e(DragItemRecyclerView.this);
                            }
                        };
                        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(dragItem, PropertyValuesHolder.ofFloat("X", dragItem.f12840c, (view.getX() - ((dragItem.f12838a.getMeasuredWidth() - view.getMeasuredWidth()) / 2)) + (dragItem.f12838a.getMeasuredWidth() / 2)), PropertyValuesHolder.ofFloat("Y", dragItem.f12841d, (view.getY() - ((dragItem.f12838a.getMeasuredHeight() - view.getMeasuredHeight()) / 2)) + (dragItem.f12838a.getMeasuredHeight() / 2)));
                        ofPropertyValuesHolder.setInterpolator(new DecelerateInterpolator());
                        ofPropertyValuesHolder.setDuration(250L);
                        ofPropertyValuesHolder.addListener(animatorListenerAdapter);
                        ofPropertyValuesHolder.start();
                        return;
                    }
                    DragItemRecyclerView.e(DragItemRecyclerView.this);
                }
            });
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.ak) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.ai = motionEvent.getY();
        } else if (action == 2 && Math.abs(motionEvent.getY() - this.ai) > this.ah * 0.5d) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.a aVar) {
        if (isInEditMode() || aVar == null || (aVar instanceof DragItemAdapter) || (aVar instanceof CallAppMoPubRecyclerAdapter)) {
            super.setAdapter(aVar);
            if (aVar instanceof DragItemAdapter) {
                this.T = (DragItemAdapter) aVar;
                return;
            }
            return;
        }
        throw new RuntimeException("Adapter must extend DragItemAdapter");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCanNotDragAboveTopItem(boolean z) {
        this.aa = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCanNotDragBelowBottomItem(boolean z) {
        this.ab = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        super.setClipToPadding(z);
        this.aj = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDisableReorderWhenDragging(boolean z) {
        this.al = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDragEnabled(boolean z) {
        this.ac = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDragItem(DragItem dragItem) {
        this.U = dragItem;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDragItemCallback(DragItemCallback dragItemCallback) {
        this.R = dragItemCallback;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDragItemListener(DragItemListener dragItemListener) {
        this.Q = dragItemListener;
    }

    public void setDropTargetDrawables(Drawable drawable, Drawable drawable2) {
        this.ae = drawable;
        this.af = drawable2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setLayoutManager(RecyclerView.i iVar) {
        super.setLayoutManager(iVar);
        if (!(iVar instanceof LinearLayoutManager)) {
            throw new RuntimeException("Layout must be an instance of LinearLayoutManager");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setScrollingEnabled(boolean z) {
        this.ak = z;
    }
}
