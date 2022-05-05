package com.apptentive.android.sdk.util.image;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.view.GestureDetectorCompat;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/image/PreviewImageView.class */
public class PreviewImageView extends AppCompatImageView implements ScaleGestureDetector.OnScaleGestureListener, View.OnTouchListener, ViewTreeObserver.OnGlobalLayoutListener {
    private GestureCallback externalCallback;
    private GestureDetectorCompat gestureDetector;
    private float initScale;
    private boolean isCanDrag;
    private boolean isCheckLeftAndRight;
    private boolean isCheckTopAndBottom;
    private int lastPointerCount;
    private float lastX;
    private float lastY;
    private final float[] matrixValues;
    private boolean once;
    private ScaleGestureDetector scaleGestureDetector;
    private final Matrix scaleMatrix;
    private int touchSlop;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/image/PreviewImageView$GestureCallback.class */
    public interface GestureCallback {
        void onSingleTapDetected();
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/image/PreviewImageView$PreviewGestureListener.class */
    private class PreviewGestureListener extends GestureDetector.SimpleOnGestureListener {
        private PreviewGestureListener() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            PreviewImageView.this.externalCallback.onSingleTapDetected();
            return true;
        }
    }

    public PreviewImageView(Context context) {
        this(context, null);
    }

    public PreviewImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.initScale = 1.0f;
        this.matrixValues = new float[9];
        this.once = true;
        this.scaleGestureDetector = null;
        this.gestureDetector = null;
        this.scaleMatrix = new Matrix();
        super.setScaleType(ImageView.ScaleType.MATRIX);
        this.scaleGestureDetector = new ScaleGestureDetector(context, this);
        this.gestureDetector = new GestureDetectorCompat(context, new PreviewGestureListener());
        this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        super.setScaleType(ImageView.ScaleType.MATRIX);
        setOnTouchListener(this);
    }

    private void checkBorderAndCenterWhenScale() {
        float f;
        RectF matrixRectF = getMatrixRectF();
        int width = getWidth();
        int height = getHeight();
        float width2 = matrixRectF.width();
        float f2 = width;
        float f3 = 0.0f;
        f3 = 0.0f;
        if (width2 >= f2) {
            float f4 = matrixRectF.left;
            f = f4 > 0.0f ? -f4 : 0.0f;
            float f5 = matrixRectF.right;
            if (f5 < f2) {
                f = f2 - f5;
            }
        } else {
            f = 0.0f;
        }
        float height2 = matrixRectF.height();
        float f6 = height;
        if (height2 >= f6) {
            float f7 = matrixRectF.top;
            if (f7 > 0.0f) {
                f3 = -f7;
            }
            float f8 = matrixRectF.bottom;
            if (f8 < f6) {
                f3 = f6 - f8;
            }
        }
        if (matrixRectF.width() < f2) {
            f = (matrixRectF.width() * 0.5f) + ((f2 * 0.5f) - matrixRectF.right);
        }
        if (matrixRectF.height() < f6) {
            f3 = ((f6 * 0.5f) - matrixRectF.bottom) + (matrixRectF.height() * 0.5f);
        }
        this.scaleMatrix.postTranslate(f, f3);
    }

    private void checkMatrixBounds() {
        RectF matrixRectF = getMatrixRectF();
        float width = getWidth();
        float height = getHeight();
        float f = matrixRectF.top;
        float f2 = (f <= 0.0f || !this.isCheckTopAndBottom) ? 0.0f : -f;
        float f3 = matrixRectF.bottom;
        float f4 = f2;
        if (f3 < height) {
            f4 = f2;
            if (this.isCheckTopAndBottom) {
                f4 = height - f3;
            }
        }
        float f5 = matrixRectF.left;
        float f6 = 0.0f;
        if (f5 > 0.0f) {
            f6 = 0.0f;
            if (this.isCheckLeftAndRight) {
                f6 = -f5;
            }
        }
        float f7 = matrixRectF.right;
        float f8 = f6;
        if (f7 < width) {
            f8 = f6;
            if (this.isCheckLeftAndRight) {
                f8 = width - f7;
            }
        }
        this.scaleMatrix.postTranslate(f8, f4);
    }

    private RectF getMatrixRectF() {
        Matrix matrix = this.scaleMatrix;
        RectF rectF = new RectF();
        Drawable drawable = getDrawable();
        if (drawable != null) {
            rectF.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            matrix.mapRect(rectF);
        }
        return rectF;
    }

    private boolean isCanDrag(float f, float f2) {
        return Math.sqrt((double) ((f * f) + (f2 * f2))) >= ((double) this.touchSlop);
    }

    public final float getScale() {
        this.scaleMatrix.getValues(this.matrixValues);
        return this.matrixValues[0];
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (this.once) {
            Drawable drawable = getDrawable();
            if (drawable != null) {
                int width = getWidth();
                int height = getHeight();
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                float f = (intrinsicWidth <= width || intrinsicHeight > height) ? 1.0f : (width * 1.0f) / intrinsicWidth;
                float f2 = f;
                if (intrinsicHeight > height) {
                    f2 = f;
                    if (intrinsicWidth <= width) {
                        f2 = (height * 1.0f) / intrinsicHeight;
                    }
                }
                float f3 = f2;
                if (intrinsicWidth > width) {
                    f3 = f2;
                    if (intrinsicHeight > height) {
                        f3 = Math.min((width * 1.0f) / intrinsicWidth, (height * 1.0f) / intrinsicHeight);
                    }
                }
                this.initScale = f3;
                this.scaleMatrix.postTranslate((width - intrinsicWidth) / 2, (height - intrinsicHeight) / 2);
                this.scaleMatrix.postScale(f3, f3, getWidth() / 2, getHeight() / 2);
                setImageMatrix(this.scaleMatrix);
                this.once = false;
                return;
            }
            return;
        }
        checkBorderAndCenterWhenScale();
        setImageMatrix(this.scaleMatrix);
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        float scale = getScale();
        float scaleFactor = scaleGestureDetector.getScaleFactor();
        if (getDrawable() == null) {
            return true;
        }
        if ((scale >= 4.0f || scaleFactor <= 1.0f) && (scale < this.initScale || scaleFactor >= 1.0f)) {
            return true;
        }
        float f = this.initScale;
        float f2 = scaleFactor;
        if (scaleFactor * scale < f) {
            f2 = f / scale;
        }
        float f3 = f2;
        if (f2 * scale > 4.0f) {
            f3 = 4.0f / scale;
        }
        this.scaleMatrix.postScale(f3, f3, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
        checkBorderAndCenterWhenScale();
        setImageMatrix(this.scaleMatrix);
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        this.gestureDetector.m19313a(motionEvent);
        this.scaleGestureDetector.onTouchEvent(motionEvent);
        int pointerCount = motionEvent.getPointerCount();
        float f = 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        for (int i = 0; i < pointerCount; i++) {
            f2 += motionEvent.getX(i);
            f3 += motionEvent.getY(i);
        }
        float f4 = pointerCount;
        float f5 = f2 / f4;
        float f6 = f3 / f4;
        if (pointerCount != this.lastPointerCount) {
            this.isCanDrag = false;
            this.lastX = f5;
            this.lastY = f6;
        }
        this.lastPointerCount = pointerCount;
        int action = motionEvent.getAction();
        if (action != 1) {
            if (action == 2) {
                float f7 = f5 - this.lastX;
                f = f6 - this.lastY;
                if (!this.isCanDrag) {
                    this.isCanDrag = isCanDrag(f7, f);
                }
                if (this.isCanDrag) {
                    RectF matrixRectF = getMatrixRectF();
                    if (getDrawable() != null) {
                        this.isCheckTopAndBottom = true;
                        this.isCheckLeftAndRight = true;
                        if (matrixRectF.width() < getWidth()) {
                            this.isCheckLeftAndRight = false;
                            f7 = 0.0f;
                        }
                        if (matrixRectF.height() < getHeight()) {
                            this.isCheckTopAndBottom = false;
                        }
                        this.scaleMatrix.postTranslate(f7, f);
                        checkMatrixBounds();
                        setImageMatrix(this.scaleMatrix);
                    }
                }
                this.lastX = f5;
                this.lastY = f6;
                return true;
            } else if (action != 3) {
                return true;
            }
        }
        this.lastPointerCount = 0;
        return true;
    }

    public void setGestureCallback(GestureCallback gestureCallback) {
        this.externalCallback = gestureCallback;
    }
}
