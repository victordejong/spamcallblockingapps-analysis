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
import it.gmariotti.cardslib.library.a;
import it.gmariotti.cardslib.library.a.b;
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
        boolean canDismiss(int i, b bVar, CardWithList.ListObject listObject);

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
        this.swipeDistanceDivisor = linearListView.getContext().getResources().getInteger(a.d.list_card_swipe_distance_divisor);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void finalizeDismiss(View view, int i, boolean z) {
        this.mCallbacks.onDismiss(this.mListView, i, z);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        int i;
        if (this.mViewWidth < 2) {
            this.mViewWidth = this.mListView.getWidth();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    VelocityTracker velocityTracker = this.mVelocityTracker;
                    if (velocityTracker == null || this.mPaused) {
                        return false;
                    }
                    velocityTracker.addMovement(motionEvent);
                    float rawX = motionEvent.getRawX() - this.mDownX;
                    float rawY = motionEvent.getRawY();
                    float f = this.mDownY;
                    if (Math.abs(rawX) > this.mSlop && Math.abs(rawY - f) < Math.abs(rawX) / 2.0f) {
                        this.mSwiping = true;
                        this.mSwipingSlop = rawX > BitmapDescriptorFactory.HUE_RED ? this.mSlop : -this.mSlop;
                        this.mDownView.getParent().requestDisallowInterceptTouchEvent(true);
                        this.mListView.requestDisallowInterceptTouchEvent(true);
                        MotionEvent obtain = MotionEvent.obtain(motionEvent);
                        obtain.setAction((motionEvent.getActionIndex() << 8) | 3);
                        this.mDownView.onTouchEvent(obtain);
                        obtain.recycle();
                    }
                    if (!this.mSwiping) {
                        return false;
                    }
                    this.mDownView.setTranslationX(rawX - this.mSwipingSlop);
                    return true;
                } else if (actionMasked != 3 || this.mVelocityTracker == null) {
                    return false;
                } else {
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
            } else if (this.mVelocityTracker == null) {
                return false;
            } else {
                float rawX2 = motionEvent.getRawX() - this.mDownX;
                this.mVelocityTracker.addMovement(motionEvent);
                this.mVelocityTracker.computeCurrentVelocity(1000);
                float xVelocity = this.mVelocityTracker.getXVelocity();
                float abs = Math.abs(xVelocity);
                float abs2 = Math.abs(this.mVelocityTracker.getYVelocity());
                if (Math.abs(rawX2) > this.mViewWidth / this.swipeDistanceDivisor) {
                    z = rawX2 > BitmapDescriptorFactory.HUE_RED;
                    z2 = true;
                } else {
                    if (this.mMinFlingVelocity > abs || abs > this.mMaxFlingVelocity || abs2 >= abs || !this.mSwiping) {
                        z2 = false;
                    } else {
                        z2 = ((xVelocity > BitmapDescriptorFactory.HUE_RED ? 1 : (xVelocity == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) < 0) == ((rawX2 > BitmapDescriptorFactory.HUE_RED ? 1 : (rawX2 == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) < 0);
                        z2 = z2;
                        if (this.mVelocityTracker.getXVelocity() > BitmapDescriptorFactory.HUE_RED) {
                            z = true;
                        }
                    }
                    z = false;
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
        } else if (this.mPaused) {
            return false;
        } else {
            if (this.mSwiping) {
                return true;
            }
            Rect rect = new Rect();
            int childCount = this.mListView.getChildCount();
            int[] iArr = new int[2];
            this.mListView.getLocationOnScreen(iArr);
            int rawX3 = (int) motionEvent.getRawX();
            int i2 = iArr[0];
            int rawY2 = (int) motionEvent.getRawY();
            int i3 = iArr[1];
            int i4 = 0;
            while (true) {
                if (i4 >= childCount + 0) {
                    break;
                }
                View childAt = this.mListView.getChildAt(i4);
                childAt.getHitRect(rect);
                if (rect.contains(rawX3 - i2, rawY2 - i3)) {
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
                    VelocityTracker obtain2 = VelocityTracker.obtain();
                    this.mVelocityTracker = obtain2;
                    obtain2.addMovement(motionEvent);
                } else {
                    this.mDownView = null;
                }
            }
            view.onTouchEvent(motionEvent);
            return false;
        }
    }
}
