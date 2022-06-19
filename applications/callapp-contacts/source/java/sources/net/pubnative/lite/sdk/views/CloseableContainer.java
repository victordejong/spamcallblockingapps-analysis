package net.pubnative.lite.sdk.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import java.util.Random;
import net.pubnative.lite.sdk.utils.DrawableResources;
import net.pubnative.lite.sdk.utils.ViewUtils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/views/CloseableContainer.class */
public class CloseableContainer extends FrameLayout {
    static final float CLOSE_BUTTON_PADDING_DP = 8.0f;
    static final float CLOSE_BUTTON_SIZE_DP = 30.0f;
    static final float CLOSE_REGION_SIZE_DP = 50.0f;
    private final Rect mClosableLayoutRect;
    private boolean mCloseAlwaysInteractable;
    private boolean mCloseBoundChanged;
    private final Rect mCloseButtonBounds;
    private final int mCloseButtonPadding;
    private final int mCloseButtonSize;
    private final StateListDrawable mCloseDrawable;
    private ClosePosition mClosePosition;
    private final Rect mCloseRegionBounds;
    private final int mCloseRegionSize;
    private final Rect mInsetCloseRegionBounds;
    private OnCloseListener mOnCloseListener;
    private final int mTouchSlop;
    private UnsetPressedState mUnsetPressedState;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/views/CloseableContainer$ClosePosition.class */
    public enum ClosePosition {
        TOP_LEFT(8388659),
        TOP_CENTER(49),
        TOP_RIGHT(8388661),
        CENTER(17),
        BOTTOM_LEFT(8388691),
        BOTTOM_CENTER(81),
        BOTTOM_RIGHT(8388693),
        RANDOM(0);
        
        private final int mGravity;

        ClosePosition(int i) {
            this.mGravity = i;
        }

        public static ClosePosition getRandomPosition() {
            return values()[new Random().nextInt(values().length)];
        }

        final int getGravity() {
            return this.mGravity;
        }
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/views/CloseableContainer$OnCloseListener.class */
    public interface OnCloseListener {
        void onClose();
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/views/CloseableContainer$UnsetPressedState.class */
    final class UnsetPressedState implements Runnable {
        private UnsetPressedState() {
            CloseableContainer.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            CloseableContainer.this.setClosePressed(false);
        }
    }

    public CloseableContainer(Context context) {
        this(context, null, 0);
    }

    public CloseableContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CloseableContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mClosableLayoutRect = new Rect();
        this.mCloseRegionBounds = new Rect();
        this.mCloseButtonBounds = new Rect();
        this.mInsetCloseRegionBounds = new Rect();
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.mCloseDrawable = stateListDrawable;
        this.mClosePosition = ClosePosition.TOP_RIGHT;
        stateListDrawable.addState(SELECTED_STATE_SET, DrawableResources.INTERSTITIAL_CLOSE_BUTTON_PRESSED.createDrawable(context));
        stateListDrawable.addState(EMPTY_STATE_SET, DrawableResources.INTERSTITIAL_CLOSE_BUTTON_NORMAL.createDrawable(context));
        stateListDrawable.setState(EMPTY_STATE_SET);
        stateListDrawable.setCallback(this);
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.mCloseRegionSize = ViewUtils.asIntPixels(CLOSE_REGION_SIZE_DP, context);
        this.mCloseButtonSize = ViewUtils.asIntPixels(30.0f, context);
        this.mCloseButtonPadding = ViewUtils.asIntPixels(CLOSE_BUTTON_PADDING_DP, context);
        setWillNotDraw(false);
        this.mCloseAlwaysInteractable = true;
    }

    private void applyCloseBoundsWithSize(ClosePosition closePosition, int i, Rect rect, Rect rect2) {
        Gravity.apply(closePosition.getGravity(), i, i, rect, rect2);
    }

    private void applyCloseButtonBounds(ClosePosition closePosition, Rect rect, Rect rect2) {
        applyCloseBoundsWithSize(closePosition, this.mCloseButtonSize, rect, rect2);
    }

    private void performClose() {
        playSoundEffect(0);
        OnCloseListener onCloseListener = this.mOnCloseListener;
        if (onCloseListener != null) {
            onCloseListener.onClose();
        }
    }

    public void setClosePressed(boolean z) {
        if (z == isClosePressed()) {
            return;
        }
        this.mCloseDrawable.setState(z ? SELECTED_STATE_SET : EMPTY_STATE_SET);
        invalidate(this.mCloseRegionBounds);
    }

    public void applyCloseRegionBounds(ClosePosition closePosition, Rect rect, Rect rect2) {
        applyCloseBoundsWithSize(closePosition, this.mCloseRegionSize, rect, rect2);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.mCloseBoundChanged) {
            this.mCloseBoundChanged = false;
            this.mClosableLayoutRect.set(0, 0, getWidth(), getHeight());
            applyCloseRegionBounds(this.mClosePosition, this.mClosableLayoutRect, this.mCloseRegionBounds);
            this.mInsetCloseRegionBounds.set(this.mCloseRegionBounds);
            Rect rect = this.mInsetCloseRegionBounds;
            int i = this.mCloseButtonPadding;
            rect.inset(i, i);
            applyCloseButtonBounds(this.mClosePosition, this.mInsetCloseRegionBounds, this.mCloseButtonBounds);
            this.mCloseDrawable.setBounds(this.mCloseButtonBounds);
        }
        if (this.mCloseDrawable.isVisible()) {
            this.mCloseDrawable.draw(canvas);
        }
    }

    Rect getCloseBounds() {
        return this.mCloseRegionBounds;
    }

    boolean isClosePressed() {
        return this.mCloseDrawable.getState() == SELECTED_STATE_SET;
    }

    public boolean isCloseVisible() {
        return this.mCloseDrawable.isVisible();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        return pointInCloseBounds((int) motionEvent.getX(), (int) motionEvent.getY(), 0);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mCloseBoundChanged = true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!pointInCloseBounds((int) motionEvent.getX(), (int) motionEvent.getY(), this.mTouchSlop) || !shouldAllowPress()) {
            setClosePressed(false);
            super.onTouchEvent(motionEvent);
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            setClosePressed(true);
            return true;
        } else if (action != 1) {
            if (action != 3) {
                return true;
            }
            setClosePressed(false);
            return true;
        } else if (!isClosePressed()) {
            return true;
        } else {
            if (this.mUnsetPressedState == null) {
                this.mUnsetPressedState = new UnsetPressedState();
            }
            postDelayed(this.mUnsetPressedState, ViewConfiguration.getPressedStateDuration());
            performClose();
            return true;
        }
    }

    boolean pointInCloseBounds(int i, int i2, int i3) {
        return i >= this.mCloseRegionBounds.left - i3 && i2 >= this.mCloseRegionBounds.top - i3 && i < this.mCloseRegionBounds.right + i3 && i2 < this.mCloseRegionBounds.bottom + i3;
    }

    public void setCloseAlwaysInteractable(boolean z) {
        this.mCloseAlwaysInteractable = z;
    }

    void setCloseBoundChanged(boolean z) {
        this.mCloseBoundChanged = z;
    }

    void setCloseBounds(Rect rect) {
        this.mCloseRegionBounds.set(rect);
    }

    public void setClosePosition(ClosePosition closePosition) {
        if (closePosition != null) {
            if (closePosition == ClosePosition.RANDOM) {
                this.mClosePosition = ClosePosition.getRandomPosition();
            } else {
                this.mClosePosition = closePosition;
            }
            this.mCloseBoundChanged = true;
            invalidate();
        }
    }

    public void setCloseVisible(boolean z) {
        if (this.mCloseDrawable.setVisible(z, false)) {
            invalidate(this.mCloseRegionBounds);
        }
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.mOnCloseListener = onCloseListener;
    }

    boolean shouldAllowPress() {
        return this.mCloseAlwaysInteractable || this.mCloseDrawable.isVisible();
    }
}
