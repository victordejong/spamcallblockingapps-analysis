package com.callapp.contacts.model.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import androidx.core.content.C0790b;
import com.callapp.contacts.C5563R;
import com.callapp.contacts.CallAppApplication;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/widget/CallIncomingIndicatorView.class */
public class CallIncomingIndicatorView extends View {
    public static final int DOWN = 1;

    /* renamed from: UP */
    public static final int f26817UP = 0;
    private int animationDirection;
    private int animationDurationMillis;
    private int arrowColor;
    private float arrowHeight;
    private float arrowWidth;
    private ArrowIndicator[] arrows;
    private ValueAnimator callAnimation;
    private float extraSpacingForAnimation;
    private float firstArrowToSecondArrowSpacing;
    private float secondArrowToThirdArrowSpacing;
    private float thirdToFourthArrowSpacing;
    private float viewMinHeight;
    private final float epsilon = 0.1f;

    /* renamed from: dy */
    float f26818dy = BitmapDescriptorFactory.HUE_RED;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/widget/CallIncomingIndicatorView$AnimationDirection.class */
    public @interface AnimationDirection {
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator.class */
    public static final class ArrowIndicator {
        private final Bitmap arrow;
        private final Paint arrowColor;
        private float originalY;

        /* renamed from: x */
        private float f26819x;

        /* renamed from: y */
        private float f26820y;

        ArrowIndicator(int i, Bitmap bitmap) {
            this.arrow = bitmap;
            Paint paint = new Paint();
            this.arrowColor = paint;
            paint.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
        }

        final void draw(Canvas canvas) {
            canvas.drawBitmap(this.arrow, this.f26819x, this.f26820y, this.arrowColor);
        }

        final void reset() {
            this.f26820y = this.originalY;
            Paint paint = this.arrowColor;
            paint.setAlpha(paint.getAlpha());
        }

        final void setY(float f) {
            this.f26820y = f;
            this.originalY = f;
        }

        final void update(float f, float f2) {
            this.f26820y += f2;
            this.arrowColor.setAlpha((int) (f * 255.0f));
        }
    }

    public CallIncomingIndicatorView(Context context) {
        super(context);
        init(context);
    }

    public CallIncomingIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet, 0);
    }

    public CallIncomingIndicatorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0010, code lost:
        if (r7 == 3) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private float calculateAlpha(float r6, int r7) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.model.widget.CallIncomingIndicatorView.calculateAlpha(float, int):float");
    }

    private float calculateDy(float f) {
        return (!isInRange(f, BitmapDescriptorFactory.HUE_RED, 0.75f) && isInRange(f, 0.75f, 1.0f)) ? this.f26818dy : BitmapDescriptorFactory.HUE_RED;
    }

    private ArrowIndicator[] createArrows(Bitmap bitmap, int... iArr) {
        ArrowIndicator[] arrowIndicatorArr = new ArrowIndicator[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            arrowIndicatorArr[i] = new ArrowIndicator(isDrawUp() ? iArr[(iArr.length - i) - 1] : iArr[i], Bitmap.createBitmap(bitmap));
        }
        return arrowIndicatorArr;
    }

    private Bitmap getBitmapFromResource() {
        Drawable m44502a = C0790b.m44502a(getContext(), 2131231532);
        if (m44502a != null) {
            Bitmap createBitmap = Bitmap.createBitmap(m44502a.getIntrinsicWidth(), m44502a.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            m44502a.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            m44502a.draw(canvas);
            return createBitmap;
        }
        throw new RuntimeException("Unabled to create drawable");
    }

    private float getSpacing(int i, boolean z) {
        if (z) {
            if (i == 0) {
                return this.firstArrowToSecondArrowSpacing;
            }
            if (i != 1 && i == 2) {
                return this.thirdToFourthArrowSpacing;
            }
            return this.secondArrowToThirdArrowSpacing;
        } else if (i == 0) {
            return this.thirdToFourthArrowSpacing;
        } else {
            if (i != 1 && i == 2) {
                return this.firstArrowToSecondArrowSpacing;
            }
            return this.secondArrowToThirdArrowSpacing;
        }
    }

    private void init(Context context) {
        this.animationDurationMillis = ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED;
        this.arrowColor = -65536;
        this.animationDirection = 0;
        this.arrowWidth = -1.0f;
        this.arrowHeight = -1.0f;
        this.firstArrowToSecondArrowSpacing = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165562);
        this.secondArrowToThirdArrowSpacing = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165572);
        this.thirdToFourthArrowSpacing = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165572);
        this.extraSpacingForAnimation = CallAppApplication.get().getResources().getDimension(2131165559);
        onInitFinished();
    }

    private void init(Context context, AttributeSet attributeSet, int i) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5563R.styleable.CallIncomingIndicatorView, i, 0);
            this.animationDurationMillis = obtainStyledAttributes.getInt(1, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
            this.arrowColor = obtainStyledAttributes.getColor(2, -65536);
            this.animationDirection = obtainStyledAttributes.getInteger(0, 0);
            this.arrowWidth = obtainStyledAttributes.getDimensionPixelOffset(4, -1);
            this.arrowHeight = obtainStyledAttributes.getDimensionPixelOffset(3, -1);
            this.firstArrowToSecondArrowSpacing = obtainStyledAttributes.getDimensionPixelOffset(6, CallAppApplication.get().getResources().getDimensionPixelOffset(2131165572));
            this.secondArrowToThirdArrowSpacing = obtainStyledAttributes.getDimension(7, CallAppApplication.get().getResources().getDimensionPixelOffset(2131165572));
            this.thirdToFourthArrowSpacing = obtainStyledAttributes.getDimension(7, CallAppApplication.get().getResources().getDimensionPixelOffset(2131165572));
            this.extraSpacingForAnimation = obtainStyledAttributes.getDimension(5, CallAppApplication.get().getResources().getDimensionPixelOffset(2131165559));
            obtainStyledAttributes.recycle();
        }
        onInitFinished();
    }

    private boolean isDrawUp() {
        return this.animationDirection == 0;
    }

    private boolean isInRange(float f, float f2, float f3) {
        return f >= f2 && f <= f3;
    }

    private void onInitFinished() {
        boolean z;
        Bitmap bitmapFromResource = getBitmapFromResource();
        Bitmap bitmap = bitmapFromResource;
        if (isDrawUp()) {
            Matrix matrix = new Matrix();
            matrix.postScale(1.0f, -1.0f);
            bitmap = Bitmap.createBitmap(bitmapFromResource, 0, 0, bitmapFromResource.getWidth(), bitmapFromResource.getHeight(), matrix, false);
            matrix.reset();
        }
        if (this.arrowHeight == -1.0f) {
            this.arrowHeight = bitmap.getHeight();
            z = true;
        } else {
            z = false;
        }
        if (this.arrowWidth == -1.0f) {
            this.arrowWidth = bitmap.getWidth();
            z = true;
        }
        Bitmap bitmap2 = bitmap;
        if (z | ((this.arrowHeight == ((float) bitmap.getHeight()) && this.arrowWidth == ((float) bitmap.getWidth())) ? false : true)) {
            bitmap2 = Bitmap.createScaledBitmap(bitmap, Math.round(this.arrowWidth), Math.round(this.arrowHeight), false);
        }
        int red = Color.red(this.arrowColor);
        int green = Color.green(this.arrowColor);
        int blue = Color.blue(this.arrowColor);
        this.arrows = createArrows(bitmap2, Color.argb(255, red, green, blue), Color.argb(153, red, green, blue), Color.argb(76, red, green, blue), Color.argb(51, red, green, blue));
        float f = this.firstArrowToSecondArrowSpacing;
        float f2 = this.secondArrowToThirdArrowSpacing;
        float f3 = this.thirdToFourthArrowSpacing;
        float f4 = this.arrowHeight;
        float f5 = this.extraSpacingForAnimation;
        this.viewMinHeight = f + f2 + f3 + (f4 * 4.0f) + f5;
        this.f26818dy = f5 / 25.0f;
    }

    public int getAnimationDirection() {
        return this.animationDirection;
    }

    public int getAnimationDurationMillis() {
        return this.animationDurationMillis;
    }

    public int getArrowColor() {
        return this.arrowColor;
    }

    public /* synthetic */ void lambda$startAnimation$0$CallIncomingIndicatorView(ValueAnimator valueAnimator) {
        float animatedFraction = valueAnimator.getAnimatedFraction();
        for (int i = 0; i < this.arrows.length; i++) {
            if (Math.abs(1.0f - animatedFraction) < 0.1f) {
                this.arrows[i].reset();
            } else {
                boolean isDrawUp = isDrawUp();
                ArrowIndicator[] arrowIndicatorArr = this.arrows;
                ArrowIndicator arrowIndicator = isDrawUp ? arrowIndicatorArr[(arrowIndicatorArr.length - i) - 1] : arrowIndicatorArr[i];
                float calculateAlpha = calculateAlpha(animatedFraction, i);
                float calculateDy = calculateDy(animatedFraction);
                float f = calculateDy;
                if (isDrawUp) {
                    f = calculateDy * (-1.0f);
                }
                arrowIndicator.update(calculateAlpha, f);
            }
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopAnimation();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        for (ArrowIndicator arrowIndicator : this.arrows) {
            arrowIndicator.draw(canvas);
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        if (View.MeasureSpec.getMode(i) == 0 || View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            size = (int) (getPaddingLeft() + getPaddingRight() + this.arrowWidth);
        }
        int size2 = View.MeasureSpec.getSize(i2);
        if (View.MeasureSpec.getMode(i2) == 0 || View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
            size2 = getPaddingTop() + getPaddingBottom() + ((int) this.viewMinHeight);
        }
        boolean isDrawUp = isDrawUp();
        float f = (size2 - this.viewMinHeight) + (isDrawUp ? this.extraSpacingForAnimation : 0.0f);
        int i3 = 0;
        while (true) {
            ArrowIndicator[] arrowIndicatorArr = this.arrows;
            if (i3 >= arrowIndicatorArr.length) {
                setMeasuredDimension(size, size2);
                return;
            }
            ArrowIndicator arrowIndicator = arrowIndicatorArr[i3];
            float spacing = getSpacing(i3, isDrawUp);
            arrowIndicator.f26819x = BitmapDescriptorFactory.HUE_RED;
            arrowIndicator.setY(f);
            f += this.arrowHeight + spacing;
            i3++;
        }
    }

    public void setAnimationDirection(int i) {
        this.animationDirection = i;
    }

    public void setAnimationDurationMillis(int i) {
        this.animationDurationMillis = i;
    }

    public void setArrowColor(int i) {
        this.arrowColor = i;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        int visibility = getVisibility();
        super.setVisibility(i);
        if (i == 0 && visibility != 0) {
            startAnimation();
        } else if (i == 0 || visibility != 0) {
        } else {
            stopAnimation();
        }
    }

    public void startAnimation() {
        stopAnimation();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.callAnimation = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.model.widget._$$Lambda$CallIncomingIndicatorView$SPkudm2V8V8yu8yMKE64gHutOCU
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CallIncomingIndicatorView.this.lambda$startAnimation$0$CallIncomingIndicatorView(valueAnimator);
            }
        });
        this.callAnimation.setInterpolator(new AccelerateInterpolator());
        this.callAnimation.setRepeatCount(-1);
        this.callAnimation.setDuration(this.animationDurationMillis);
        this.callAnimation.start();
    }

    public void stopAnimation() {
        ValueAnimator valueAnimator = this.callAnimation;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            for (ArrowIndicator arrowIndicator : this.arrows) {
                arrowIndicator.reset();
            }
            this.callAnimation = null;
        }
    }
}
