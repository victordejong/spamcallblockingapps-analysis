package com.github.mikephil.charting.listener;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.github.mikephil.charting.charts.BarLineChartBase;
import com.github.mikephil.charting.charts.HorizontalBarChart;
import com.github.mikephil.charting.data.BarLineScatterCandleBubbleData;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.datasets.IBarLineScatterCandleBubbleDataSet;
import com.github.mikephil.charting.interfaces.datasets.IDataSet;
import com.github.mikephil.charting.listener.ChartTouchListener;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.Utils;
import com.github.mikephil.charting.utils.ViewPortHandler;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/listener/BarLineChartTouchListener.class */
public class BarLineChartTouchListener extends ChartTouchListener<BarLineChartBase<? extends BarLineScatterCandleBubbleData<? extends IBarLineScatterCandleBubbleDataSet<? extends Entry>>>> {
    private IDataSet mClosestDataSetToTouch;
    private float mDragTriggerDist;
    private Matrix mMatrix;
    private VelocityTracker mVelocityTracker;
    private Matrix mSavedMatrix = new Matrix();
    private MPPointF mTouchStartPoint = MPPointF.getInstance(0.0f, 0.0f);
    private MPPointF mTouchPointCenter = MPPointF.getInstance(0.0f, 0.0f);
    private float mSavedXDist = 1.0f;
    private float mSavedYDist = 1.0f;
    private float mSavedDist = 1.0f;
    private long mDecelerationLastTime = 0;
    private MPPointF mDecelerationCurrentPoint = MPPointF.getInstance(0.0f, 0.0f);
    private MPPointF mDecelerationVelocity = MPPointF.getInstance(0.0f, 0.0f);
    private float mMinScalePointerDistance = Utils.convertDpToPixel(3.5f);

    public BarLineChartTouchListener(BarLineChartBase<? extends BarLineScatterCandleBubbleData<? extends IBarLineScatterCandleBubbleDataSet<? extends Entry>>> barLineChartBase, Matrix matrix, float f) {
        super(barLineChartBase);
        this.mMatrix = new Matrix();
        this.mMatrix = matrix;
        this.mDragTriggerDist = Utils.convertDpToPixel(f);
    }

    private static float getXDist(MotionEvent motionEvent) {
        return Math.abs(motionEvent.getX(0) - motionEvent.getX(1));
    }

    private static float getYDist(MotionEvent motionEvent) {
        return Math.abs(motionEvent.getY(0) - motionEvent.getY(1));
    }

    private boolean inverted() {
        return (this.mClosestDataSetToTouch == null && ((BarLineChartBase) this.mChart).isAnyAxisInverted()) || (this.mClosestDataSetToTouch != null && ((BarLineChartBase) this.mChart).isInverted(this.mClosestDataSetToTouch.getAxisDependency()));
    }

    private static void midPoint(MPPointF mPPointF, MotionEvent motionEvent) {
        float x = motionEvent.getX(0);
        float x2 = motionEvent.getX(1);
        float y = motionEvent.getY(0);
        float y2 = motionEvent.getY(1);
        mPPointF.f160x = (x + x2) / 2.0f;
        mPPointF.f161y = (y + y2) / 2.0f;
    }

    private void performDrag(MotionEvent motionEvent, float f, float f2) {
        this.mLastGesture = ChartTouchListener.ChartGesture.DRAG;
        this.mMatrix.set(this.mSavedMatrix);
        OnChartGestureListener onChartGestureListener = ((BarLineChartBase) this.mChart).getOnChartGestureListener();
        float f3 = f;
        float f4 = f2;
        if (inverted()) {
            if (this.mChart instanceof HorizontalBarChart) {
                f3 = -f;
                f4 = f2;
            } else {
                f4 = -f2;
                f3 = f;
            }
        }
        this.mMatrix.postTranslate(f3, f4);
        if (onChartGestureListener != null) {
            onChartGestureListener.onChartTranslate(motionEvent, f3, f4);
        }
    }

    private void performHighlightDrag(MotionEvent motionEvent) {
        Highlight highlightByTouchPoint = ((BarLineChartBase) this.mChart).getHighlightByTouchPoint(motionEvent.getX(), motionEvent.getY());
        if (highlightByTouchPoint != null && !highlightByTouchPoint.equalTo(this.mLastHighlighted)) {
            this.mLastHighlighted = highlightByTouchPoint;
            ((BarLineChartBase) this.mChart).highlightValue(highlightByTouchPoint, true);
        }
    }

    private void performZoom(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() >= 2) {
            OnChartGestureListener onChartGestureListener = ((BarLineChartBase) this.mChart).getOnChartGestureListener();
            float spacing = spacing(motionEvent);
            if (spacing > this.mMinScalePointerDistance) {
                MPPointF trans = getTrans(this.mTouchPointCenter.f160x, this.mTouchPointCenter.f161y);
                ViewPortHandler viewPortHandler = ((BarLineChartBase) this.mChart).getViewPortHandler();
                boolean z = false;
                boolean z2 = false;
                boolean z3 = false;
                if (this.mTouchMode == 4) {
                    this.mLastGesture = ChartTouchListener.ChartGesture.PINCH_ZOOM;
                    float f = spacing / this.mSavedDist;
                    if (f < 1.0f) {
                        z3 = true;
                    }
                    boolean canZoomOutMoreX = z3 ? viewPortHandler.canZoomOutMoreX() : viewPortHandler.canZoomInMoreX();
                    boolean canZoomOutMoreY = z3 ? viewPortHandler.canZoomOutMoreY() : viewPortHandler.canZoomInMoreY();
                    float f2 = ((BarLineChartBase) this.mChart).isScaleXEnabled() ? f : 1.0f;
                    if (!((BarLineChartBase) this.mChart).isScaleYEnabled()) {
                        f = 1.0f;
                    }
                    if (canZoomOutMoreY || canZoomOutMoreX) {
                        this.mMatrix.set(this.mSavedMatrix);
                        this.mMatrix.postScale(f2, f, trans.f160x, trans.f161y);
                        if (onChartGestureListener != null) {
                            onChartGestureListener.onChartScale(motionEvent, f2, f);
                        }
                    }
                } else if (this.mTouchMode == 2 && ((BarLineChartBase) this.mChart).isScaleXEnabled()) {
                    this.mLastGesture = ChartTouchListener.ChartGesture.X_ZOOM;
                    float xDist = getXDist(motionEvent) / this.mSavedXDist;
                    if (xDist < 1.0f) {
                        z = true;
                    }
                    if (z ? viewPortHandler.canZoomOutMoreX() : viewPortHandler.canZoomInMoreX()) {
                        this.mMatrix.set(this.mSavedMatrix);
                        this.mMatrix.postScale(xDist, 1.0f, trans.f160x, trans.f161y);
                        if (onChartGestureListener != null) {
                            onChartGestureListener.onChartScale(motionEvent, xDist, 1.0f);
                        }
                    }
                } else if (this.mTouchMode == 3 && ((BarLineChartBase) this.mChart).isScaleYEnabled()) {
                    this.mLastGesture = ChartTouchListener.ChartGesture.Y_ZOOM;
                    float yDist = getYDist(motionEvent) / this.mSavedYDist;
                    if (yDist < 1.0f) {
                        z2 = true;
                    }
                    if (z2 ? viewPortHandler.canZoomOutMoreY() : viewPortHandler.canZoomInMoreY()) {
                        this.mMatrix.set(this.mSavedMatrix);
                        this.mMatrix.postScale(1.0f, yDist, trans.f160x, trans.f161y);
                        if (onChartGestureListener != null) {
                            onChartGestureListener.onChartScale(motionEvent, 1.0f, yDist);
                        }
                    }
                }
                MPPointF.recycleInstance(trans);
            }
        }
    }

    private void saveTouchStart(MotionEvent motionEvent) {
        this.mSavedMatrix.set(this.mMatrix);
        this.mTouchStartPoint.f160x = motionEvent.getX();
        this.mTouchStartPoint.f161y = motionEvent.getY();
        this.mClosestDataSetToTouch = ((BarLineChartBase) this.mChart).getDataSetByTouchPoint(motionEvent.getX(), motionEvent.getY());
    }

    private static float spacing(MotionEvent motionEvent) {
        float x = motionEvent.getX(0) - motionEvent.getX(1);
        float y = motionEvent.getY(0) - motionEvent.getY(1);
        return (float) Math.sqrt((x * x) + (y * y));
    }

    public void computeScroll() {
        float f = 0.0f;
        if (this.mDecelerationVelocity.f160x != 0.0f || this.mDecelerationVelocity.f161y != 0.0f) {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.mDecelerationVelocity.f160x *= ((BarLineChartBase) this.mChart).getDragDecelerationFrictionCoef();
            this.mDecelerationVelocity.f161y *= ((BarLineChartBase) this.mChart).getDragDecelerationFrictionCoef();
            float f2 = ((float) (currentAnimationTimeMillis - this.mDecelerationLastTime)) / 1000.0f;
            float f3 = this.mDecelerationVelocity.f160x;
            float f4 = this.mDecelerationVelocity.f161y;
            this.mDecelerationCurrentPoint.f160x += f3 * f2;
            this.mDecelerationCurrentPoint.f161y += f4 * f2;
            MotionEvent obtain = MotionEvent.obtain(currentAnimationTimeMillis, currentAnimationTimeMillis, 2, this.mDecelerationCurrentPoint.f160x, this.mDecelerationCurrentPoint.f161y, 0);
            float f5 = ((BarLineChartBase) this.mChart).isDragXEnabled() ? this.mDecelerationCurrentPoint.f160x - this.mTouchStartPoint.f160x : 0.0f;
            if (((BarLineChartBase) this.mChart).isDragYEnabled()) {
                f = this.mDecelerationCurrentPoint.f161y - this.mTouchStartPoint.f161y;
            }
            performDrag(obtain, f5, f);
            obtain.recycle();
            this.mMatrix = ((BarLineChartBase) this.mChart).getViewPortHandler().refresh(this.mMatrix, this.mChart, false);
            this.mDecelerationLastTime = currentAnimationTimeMillis;
            if (Math.abs(this.mDecelerationVelocity.f160x) >= 0.01d || Math.abs(this.mDecelerationVelocity.f161y) >= 0.01d) {
                Utils.postInvalidateOnAnimation(this.mChart);
                return;
            }
            ((BarLineChartBase) this.mChart).calculateOffsets();
            ((BarLineChartBase) this.mChart).postInvalidate();
            stopDeceleration();
        }
    }

    public Matrix getMatrix() {
        return this.mMatrix;
    }

    public MPPointF getTrans(float f, float f2) {
        ViewPortHandler viewPortHandler = ((BarLineChartBase) this.mChart).getViewPortHandler();
        return MPPointF.getInstance(f - viewPortHandler.offsetLeft(), inverted() ? -(f2 - viewPortHandler.offsetTop()) : -((((BarLineChartBase) this.mChart).getMeasuredHeight() - f2) - viewPortHandler.offsetBottom()));
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        this.mLastGesture = ChartTouchListener.ChartGesture.DOUBLE_TAP;
        OnChartGestureListener onChartGestureListener = ((BarLineChartBase) this.mChart).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.onChartDoubleTapped(motionEvent);
        }
        if (((BarLineChartBase) this.mChart).isDoubleTapToZoomEnabled() && ((BarLineScatterCandleBubbleData) ((BarLineChartBase) this.mChart).getData()).getEntryCount() > 0) {
            MPPointF trans = getTrans(motionEvent.getX(), motionEvent.getY());
            BarLineChartBase barLineChartBase = (BarLineChartBase) this.mChart;
            float f = 1.0f;
            float f2 = ((BarLineChartBase) this.mChart).isScaleXEnabled() ? 1.4f : 1.0f;
            if (((BarLineChartBase) this.mChart).isScaleYEnabled()) {
                f = 1.4f;
            }
            barLineChartBase.zoom(f2, f, trans.f160x, trans.f161y);
            if (((BarLineChartBase) this.mChart).isLogEnabled()) {
                Log.i("BarlineChartTouch", "Double-Tap, Zooming In, x: " + trans.f160x + ", y: " + trans.f161y);
            }
            MPPointF.recycleInstance(trans);
        }
        return super.onDoubleTap(motionEvent);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        this.mLastGesture = ChartTouchListener.ChartGesture.FLING;
        OnChartGestureListener onChartGestureListener = ((BarLineChartBase) this.mChart).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.onChartFling(motionEvent, motionEvent2, f, f2);
        }
        return super.onFling(motionEvent, motionEvent2, f, f2);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        this.mLastGesture = ChartTouchListener.ChartGesture.LONG_PRESS;
        OnChartGestureListener onChartGestureListener = ((BarLineChartBase) this.mChart).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.onChartLongPressed(motionEvent);
        }
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        this.mLastGesture = ChartTouchListener.ChartGesture.SINGLE_TAP;
        OnChartGestureListener onChartGestureListener = ((BarLineChartBase) this.mChart).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.onChartSingleTapped(motionEvent);
        }
        if (!((BarLineChartBase) this.mChart).isHighlightPerTapEnabled()) {
            return false;
        }
        performHighlight(((BarLineChartBase) this.mChart).getHighlightByTouchPoint(motionEvent.getX(), motionEvent.getY()), motionEvent);
        return super.onSingleTapUp(motionEvent);
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int i = 3;
        if (motionEvent.getActionMasked() == 3 && this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
        if (this.mTouchMode == 0) {
            this.mGestureDetector.onTouchEvent(motionEvent);
        }
        if (!((BarLineChartBase) this.mChart).isDragEnabled() && !((BarLineChartBase) this.mChart).isScaleXEnabled() && !((BarLineChartBase) this.mChart).isScaleYEnabled()) {
            return true;
        }
        boolean z = false;
        switch (motionEvent.getAction() & 255) {
            case 0:
                startAction(motionEvent);
                stopDeceleration();
                saveTouchStart(motionEvent);
                break;
            case 1:
                VelocityTracker velocityTracker = this.mVelocityTracker;
                int pointerId = motionEvent.getPointerId(0);
                velocityTracker.computeCurrentVelocity(1000, Utils.getMaximumFlingVelocity());
                float yVelocity = velocityTracker.getYVelocity(pointerId);
                float xVelocity = velocityTracker.getXVelocity(pointerId);
                if ((Math.abs(xVelocity) > Utils.getMinimumFlingVelocity() || Math.abs(yVelocity) > Utils.getMinimumFlingVelocity()) && this.mTouchMode == 1 && ((BarLineChartBase) this.mChart).isDragDecelerationEnabled()) {
                    stopDeceleration();
                    this.mDecelerationLastTime = AnimationUtils.currentAnimationTimeMillis();
                    this.mDecelerationCurrentPoint.f160x = motionEvent.getX();
                    this.mDecelerationCurrentPoint.f161y = motionEvent.getY();
                    this.mDecelerationVelocity.f160x = xVelocity;
                    this.mDecelerationVelocity.f161y = yVelocity;
                    Utils.postInvalidateOnAnimation(this.mChart);
                }
                if (this.mTouchMode == 2 || this.mTouchMode == 3 || this.mTouchMode == 4 || this.mTouchMode == 5) {
                    ((BarLineChartBase) this.mChart).calculateOffsets();
                    ((BarLineChartBase) this.mChart).postInvalidate();
                }
                this.mTouchMode = 0;
                ((BarLineChartBase) this.mChart).enableScroll();
                if (this.mVelocityTracker != null) {
                    this.mVelocityTracker.recycle();
                    this.mVelocityTracker = null;
                }
                endAction(motionEvent);
                break;
            case 2:
                if (this.mTouchMode != 1) {
                    if (this.mTouchMode != 2 && this.mTouchMode != 3 && this.mTouchMode != 4) {
                        if (this.mTouchMode == 0 && Math.abs(distance(motionEvent.getX(), this.mTouchStartPoint.f160x, motionEvent.getY(), this.mTouchStartPoint.f161y)) > this.mDragTriggerDist && ((BarLineChartBase) this.mChart).isDragEnabled()) {
                            if (!((BarLineChartBase) this.mChart).isFullyZoomedOut() || !((BarLineChartBase) this.mChart).hasNoDragOffset()) {
                                z = true;
                            }
                            if (!z) {
                                if (((BarLineChartBase) this.mChart).isHighlightPerDragEnabled()) {
                                    this.mLastGesture = ChartTouchListener.ChartGesture.DRAG;
                                    if (((BarLineChartBase) this.mChart).isHighlightPerDragEnabled()) {
                                        performHighlightDrag(motionEvent);
                                        break;
                                    }
                                }
                            } else {
                                float abs = Math.abs(motionEvent.getX() - this.mTouchStartPoint.f160x);
                                float abs2 = Math.abs(motionEvent.getY() - this.mTouchStartPoint.f161y);
                                if ((((BarLineChartBase) this.mChart).isDragXEnabled() || abs2 >= abs) && (((BarLineChartBase) this.mChart).isDragYEnabled() || abs2 <= abs)) {
                                    this.mLastGesture = ChartTouchListener.ChartGesture.DRAG;
                                    this.mTouchMode = 1;
                                    break;
                                }
                            }
                        }
                    } else {
                        ((BarLineChartBase) this.mChart).disableScroll();
                        if (((BarLineChartBase) this.mChart).isScaleXEnabled() || ((BarLineChartBase) this.mChart).isScaleYEnabled()) {
                            performZoom(motionEvent);
                            break;
                        }
                    }
                } else {
                    ((BarLineChartBase) this.mChart).disableScroll();
                    float f = 0.0f;
                    float x = ((BarLineChartBase) this.mChart).isDragXEnabled() ? motionEvent.getX() - this.mTouchStartPoint.f160x : 0.0f;
                    if (((BarLineChartBase) this.mChart).isDragYEnabled()) {
                        f = motionEvent.getY() - this.mTouchStartPoint.f161y;
                    }
                    performDrag(motionEvent, x, f);
                    break;
                }
                break;
            case 3:
                this.mTouchMode = 0;
                endAction(motionEvent);
                break;
            case 5:
                if (motionEvent.getPointerCount() >= 2) {
                    ((BarLineChartBase) this.mChart).disableScroll();
                    saveTouchStart(motionEvent);
                    this.mSavedXDist = getXDist(motionEvent);
                    this.mSavedYDist = getYDist(motionEvent);
                    this.mSavedDist = spacing(motionEvent);
                    if (this.mSavedDist > 10.0f) {
                        if (((BarLineChartBase) this.mChart).isPinchZoomEnabled()) {
                            this.mTouchMode = 4;
                        } else if (((BarLineChartBase) this.mChart).isScaleXEnabled() != ((BarLineChartBase) this.mChart).isScaleYEnabled()) {
                            if (((BarLineChartBase) this.mChart).isScaleXEnabled()) {
                                i = 2;
                            }
                            this.mTouchMode = i;
                        } else {
                            if (this.mSavedXDist > this.mSavedYDist) {
                                i = 2;
                            }
                            this.mTouchMode = i;
                        }
                    }
                    midPoint(this.mTouchPointCenter, motionEvent);
                    break;
                }
                break;
            case 6:
                Utils.velocityTrackerPointerUpCleanUpIfNecessary(motionEvent, this.mVelocityTracker);
                this.mTouchMode = 5;
                break;
        }
        this.mMatrix = ((BarLineChartBase) this.mChart).getViewPortHandler().refresh(this.mMatrix, this.mChart, true);
        return true;
    }

    public void setDragTriggerDist(float f) {
        this.mDragTriggerDist = Utils.convertDpToPixel(f);
    }

    public void stopDeceleration() {
        this.mDecelerationVelocity.f160x = 0.0f;
        this.mDecelerationVelocity.f161y = 0.0f;
    }
}
