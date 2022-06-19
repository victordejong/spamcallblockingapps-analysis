package it.gmariotti.cardslib.library.prototypes;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewPropertyAnimator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import it.gmariotti.cardslib.library.C18061a;
import it.gmariotti.cardslib.library.p510a.C18073b;
import it.gmariotti.cardslib.library.prototypes.CardWithList;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener.class */
public class SwipeDismissListItemViewTouchListener implements View.OnTouchListener {
    private View itemView;
    private long mAnimationTime;
    private DismissCallbacks mCallbacks;
    private int mDownPosition;
    private View mDownView;
    private float mDownX;
    private float mDownY;
    private CardWithList.ListObject mListObject;
    private LinearListView mListView;
    private int mMaxFlingVelocity;
    private int mMinFlingVelocity;
    private boolean mPaused;
    private int mSlop;
    private boolean mSwiping;
    private int mSwipingSlop;
    private float mTranslationX;
    private VelocityTracker mVelocityTracker;
    private int mViewWidth = 1;
    private int swipeDistanceDivisor;

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$DismissCallbacks.class */
    public interface DismissCallbacks {
        boolean canDismiss(int i, C18073b c18073b, CardWithList.ListObject listObject);

        void onDismiss(LinearListView linearListView, int i, boolean z);
    }

    public SwipeDismissListItemViewTouchListener(LinearListView linearListView, DismissCallbacks dismissCallbacks) {
        this.swipeDistanceDivisor = 2;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(linearListView.getContext());
        this.mSlop = viewConfiguration.getScaledTouchSlop();
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity() * 16;
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mAnimationTime = linearListView.getContext().getResources().getInteger(17694720);
        this.mListView = linearListView;
        this.mCallbacks = dismissCallbacks;
        this.swipeDistanceDivisor = linearListView.getContext().getResources().getInteger(C18061a.C18065d.list_card_swipe_distance_divisor);
    }

    private void dismiss(final View view, final int i, final boolean z) {
        if (view == null) {
            this.mCallbacks.onDismiss(this.mListView, i, z);
            return;
        }
        ViewPropertyAnimator animate = view.animate();
        int i2 = this.mViewWidth;
        if (!z) {
            i2 = -i2;
        }
        animate.translationX(i2).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(this.mAnimationTime).setListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.prototypes.SwipeDismissListItemViewTouchListener.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SwipeDismissListItemViewTouchListener.this.finalizeDismiss(view, i, z);
            }
        });
    }

    public void finalizeDismiss(View view, int i, boolean z) {
        this.mCallbacks.onDismiss(this.mListView, i, z);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        int i;
        boolean z3;
        if (this.mViewWidth < 2) {
            this.mViewWidth = this.mListView.getWidth();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (this.mPaused) {
                return false;
            }
            if (this.mSwiping) {
                return true;
            }
            Rect rect = new Rect();
            int childCount = this.mListView.getChildCount();
            int[] iArr = new int[2];
            this.mListView.getLocationOnScreen(iArr);
            int rawX = (int) motionEvent.getRawX();
            int i2 = iArr[0];
            int rawY = (int) motionEvent.getRawY();
            int i3 = iArr[1];
            int i4 = 0;
            while (true) {
                if (i4 >= childCount + 0) {
                    break;
                }
                View childAt = this.mListView.getChildAt(i4);
                childAt.getHitRect(rect);
                if (rect.contains(rawX - i2, rawY - i3)) {
                    this.mDownView = childAt;
                    break;
                }
                i4++;
            }
            if (this.mDownView != null) {
                this.mDownX = motionEvent.getRawX();
                this.mDownY = motionEvent.getRawY();
                this.mDownPosition = this.mListView.getPositionForView(this.mDownView);
                CardWithList.ListObject item = this.mListView.getAdapter().getItem(this.mDownPosition);
                if (this.mCallbacks.canDismiss(this.mDownPosition, item.getParentCard(), item)) {
                    VelocityTracker obtain = VelocityTracker.obtain();
                    this.mVelocityTracker = obtain;
                    obtain.addMovement(motionEvent);
                } else {
                    this.mDownView = null;
                }
            }
            view.onTouchEvent(motionEvent);
            return false;
        } else if (actionMasked != 1) {
            if (actionMasked != 2) {
                if (actionMasked != 3 || this.mVelocityTracker == null) {
                    return false;
                }
                View view2 = this.mDownView;
                if (view2 != null) {
                    view2.animate().translationX(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(this.mAnimationTime).setListener(null);
                }
                this.mVelocityTracker.recycle();
                this.mVelocityTracker = null;
                this.mDownX = BitmapDescriptorFactory.HUE_RED;
                this.mDownY = BitmapDescriptorFactory.HUE_RED;
                this.mDownView = null;
                this.mDownPosition = -1;
                this.mSwiping = false;
                return false;
            }
            VelocityTracker velocityTracker = this.mVelocityTracker;
            if (velocityTracker == null || this.mPaused) {
                return false;
            }
            velocityTracker.addMovement(motionEvent);
            float rawX2 = motionEvent.getRawX() - this.mDownX;
            float rawY2 = motionEvent.getRawY();
            float f = this.mDownY;
            if (Math.abs(rawX2) > this.mSlop && Math.abs(rawY2 - f) < Math.abs(rawX2) / 2.0f) {
                this.mSwiping = true;
                this.mSwipingSlop = rawX2 > BitmapDescriptorFactory.HUE_RED ? this.mSlop : -this.mSlop;
                this.mDownView.getParent().requestDisallowInterceptTouchEvent(true);
                this.mListView.requestDisallowInterceptTouchEvent(true);
                MotionEvent obtain2 = MotionEvent.obtain(motionEvent);
                obtain2.setAction((motionEvent.getActionIndex() << 8) | 3);
                this.mDownView.onTouchEvent(obtain2);
                obtain2.recycle();
            }
            if (!this.mSwiping) {
                return false;
            }
            this.mDownView.setTranslationX(rawX2 - this.mSwipingSlop);
            return true;
        } else if (this.mVelocityTracker == null) {
            return false;
        } else {
            float rawX3 = motionEvent.getRawX() - this.mDownX;
            this.mVelocityTracker.addMovement(motionEvent);
            this.mVelocityTracker.computeCurrentVelocity(1000);
            float xVelocity = this.mVelocityTracker.getXVelocity();
            float abs = Math.abs(xVelocity);
            float abs2 = Math.abs(this.mVelocityTracker.getYVelocity());
            if (Math.abs(rawX3) > this.mViewWidth / this.swipeDistanceDivisor) {
                z = rawX3 > BitmapDescriptorFactory.HUE_RED;
                z2 = true;
            } else {
                if (this.mMinFlingVelocity > abs || abs > this.mMaxFlingVelocity || abs2 >= abs || !this.mSwiping) {
                    z3 = false;
                } else {
                    z2 = ((xVelocity > BitmapDescriptorFactory.HUE_RED ? 1 : (xVelocity == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) < 0) == ((rawX3 > BitmapDescriptorFactory.HUE_RED ? 1 : (rawX3 == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) < 0);
                    z3 = z2;
                    if (this.mVelocityTracker.getXVelocity() > BitmapDescriptorFactory.HUE_RED) {
                        z = true;
                    }
                }
                z = false;
                z2 = z3;
            }
            if (!z2 || (i = this.mDownPosition) == -1) {
                this.mDownView.animate().translationX(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(this.mAnimationTime).setListener(null);
            } else {
                dismiss(this.mDownView, i, z);
            }
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
            this.mDownX = BitmapDescriptorFactory.HUE_RED;
            this.mDownY = BitmapDescriptorFactory.HUE_RED;
            this.mDownView = null;
            this.mDownPosition = -1;
            if (this.mSwiping) {
                this.mSwiping = false;
                return true;
            }
            this.mSwiping = false;
            return false;
        }
    }
}
