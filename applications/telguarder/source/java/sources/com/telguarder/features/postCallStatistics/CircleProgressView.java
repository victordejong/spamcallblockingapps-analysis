package com.telguarder.features.postCallStatistics;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewCompat;
import com.telguarder.C2083R;
import com.telguarder.helpers.p022ui.UiHelper;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CircleProgressView.class */
public class CircleProgressView extends View {
    private float backgroundStrokeWidth;
    private float mAngle1;
    private float mAngle2;
    private int mBackgroundColor;
    private Paint mBackgroundPaint;
    private int mCircleColor;
    private Paint mCirclePaint;
    private float mCircleWidth;
    private Interpolator mInterpolator;
    private LinearLayout mLayoutLeftDown;
    private LinearLayout mLayoutLeftUp;
    private LinearLayout mLayoutMiddle;
    private LinearLayout mLayoutMiddleDown;
    private LinearLayout mLayoutMiddleUp;
    private LinearLayout mLayoutRightDown;
    private LinearLayout mLayoutRightUp;
    private int mLeftDownSize;
    private int mLeftUpSize;
    private float mMaxProgress1;
    private float mMaxProgress2;
    private float mMaxProgressTotal;
    private int mMiddleSize;
    private ObjectAnimator mObjectAnimator;
    private float mProgress;
    private RectF mRectF;
    private float mStartAngle;
    private TextView mTextViewLeftDown;
    private TextView mTextViewLeftUp;
    private TextView mTextViewMiddle;
    private TextView mTextViewMiddleDown;
    private TextView mTextViewMiddleUp;
    private TextView mTextViewRightDown;
    private TextView mTextViewRightUp;
    private ProgressAnimationListener progressAnimationListener;
    private boolean mZero = false;
    private boolean mAnimationEnded = false;

    /* renamed from: com.telguarder.features.postCallStatistics.CircleProgressView$3 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CircleProgressView$3.class */
    public static /* synthetic */ class C22903 {

        /* renamed from: $SwitchMap$com$telguarder$features$postCallStatistics$CircleProgressView$TextPosition */
        static final /* synthetic */ int[] f1298x8c36cf52;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[TextPosition.values().length];
            f1298x8c36cf52 = iArr;
            try {
                iArr[TextPosition.leftUp.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1298x8c36cf52[TextPosition.rightUp.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1298x8c36cf52[TextPosition.leftDown.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1298x8c36cf52[TextPosition.rightDown.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f1298x8c36cf52[TextPosition.middleUp.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f1298x8c36cf52[TextPosition.middleDown.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f1298x8c36cf52[TextPosition.middle.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CircleProgressView$ProgressAnimationListener.class */
    public interface ProgressAnimationListener {
        void onAnimationEnd();

        void onValueChanged(float f);
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CircleProgressView$TextPosition.class */
    public enum TextPosition {
        leftUp,
        rightUp,
        leftDown,
        rightDown,
        middleUp,
        middleDown,
        middle
    }

    public CircleProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    private String getDurationString(int i) {
        long j = i;
        return String.format("%02d:%02d", Long.valueOf(TimeUnit.SECONDS.toMinutes(j) % TimeUnit.HOURS.toMinutes(1L)), Long.valueOf(j % TimeUnit.MINUTES.toSeconds(1L)));
    }

    private LinearLayout getTextLayoutByPosition(TextPosition textPosition) {
        switch (C22903.f1298x8c36cf52[textPosition.ordinal()]) {
            case 1:
                if (this.mLayoutLeftUp == null) {
                    this.mLayoutLeftUp = new LinearLayout(getContext());
                }
                return this.mLayoutLeftUp;
            case 2:
                if (this.mLayoutRightUp == null) {
                    this.mLayoutRightUp = new LinearLayout(getContext());
                }
                return this.mLayoutRightUp;
            case 3:
                if (this.mLayoutLeftDown == null) {
                    this.mLayoutLeftDown = new LinearLayout(getContext());
                }
                return this.mLayoutLeftDown;
            case 4:
                if (this.mLayoutRightDown == null) {
                    this.mLayoutRightDown = new LinearLayout(getContext());
                }
                return this.mLayoutRightDown;
            case 5:
                if (this.mLayoutMiddleUp == null) {
                    this.mLayoutMiddleUp = new LinearLayout(getContext());
                }
                return this.mLayoutMiddleUp;
            case 6:
                if (this.mLayoutMiddleDown == null) {
                    this.mLayoutMiddleDown = new LinearLayout(getContext());
                }
                return this.mLayoutMiddleDown;
            case 7:
                if (this.mLayoutMiddle == null) {
                    this.mLayoutMiddle = new LinearLayout(getContext());
                }
                return this.mLayoutMiddle;
            default:
                return null;
        }
    }

    private TextView getTextViewByPosition(TextPosition textPosition) {
        switch (C22903.f1298x8c36cf52[textPosition.ordinal()]) {
            case 1:
                if (this.mTextViewLeftUp == null) {
                    this.mTextViewLeftUp = new TextView(getContext());
                }
                return this.mTextViewLeftUp;
            case 2:
                if (this.mTextViewRightUp == null) {
                    this.mTextViewRightUp = new TextView(getContext());
                }
                return this.mTextViewRightUp;
            case 3:
                if (this.mTextViewLeftDown == null) {
                    this.mTextViewLeftDown = new TextView(getContext());
                }
                return this.mTextViewLeftDown;
            case 4:
                if (this.mTextViewRightDown == null) {
                    this.mTextViewRightDown = new TextView(getContext());
                }
                return this.mTextViewRightDown;
            case 5:
                if (this.mTextViewMiddleUp == null) {
                    this.mTextViewMiddleUp = new TextView(getContext());
                }
                return this.mTextViewMiddleUp;
            case 6:
                if (this.mTextViewMiddleDown == null) {
                    this.mTextViewMiddleDown = new TextView(getContext());
                }
                return this.mTextViewMiddleDown;
            case 7:
                if (this.mTextViewMiddle == null) {
                    this.mTextViewMiddle = new TextView(getContext());
                }
                return this.mTextViewMiddle;
            default:
                return null;
        }
    }

    /* JADX WARN: Finally extract failed */
    private void init(Context context, AttributeSet attributeSet) {
        this.mRectF = new RectF();
        setDefaultValues();
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C2083R.styleable.CircularProgressView, 0, 0);
        try {
            this.mProgress = obtainStyledAttributes.getFloat(4, this.mProgress);
            this.mCircleWidth = obtainStyledAttributes.getDimension(3, this.mCircleWidth);
            this.backgroundStrokeWidth = obtainStyledAttributes.getDimension(1, this.backgroundStrokeWidth);
            this.mCircleColor = obtainStyledAttributes.getInt(2, this.mCircleColor);
            this.mBackgroundColor = obtainStyledAttributes.getInt(0, this.mBackgroundColor);
            obtainStyledAttributes.recycle();
            Paint paint = new Paint(1);
            this.mBackgroundPaint = paint;
            paint.setColor(this.mBackgroundColor);
            this.mBackgroundPaint.setStyle(Paint.Style.STROKE);
            this.mBackgroundPaint.setStrokeWidth(this.backgroundStrokeWidth);
            Paint paint2 = new Paint(1);
            this.mCirclePaint = paint2;
            paint2.setColor(this.mCircleColor);
            this.mCirclePaint.setStyle(Paint.Style.STROKE);
            this.mCirclePaint.setStrokeWidth(this.mCircleWidth);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    private void setDefaultValues() {
        this.mProgress = 0.0f;
        this.mCircleWidth = getResources().getDimension(C2083R.dimen.default_circle_width);
        this.backgroundStrokeWidth = getResources().getDimension(C2083R.dimen.default_circle_background_width);
        this.mCircleColor = ViewCompat.MEASURED_STATE_MASK;
        this.mBackgroundColor = -7829368;
        this.mStartAngle = 0.0f;
    }

    private void setupText(TextPosition textPosition, String str, int i, int i2, boolean z) {
        TextView textViewByPosition = getTextViewByPosition(textPosition);
        LinearLayout textLayoutByPosition = getTextLayoutByPosition(textPosition);
        textViewByPosition.setText(str);
        textViewByPosition.setTextColor(i);
        textViewByPosition.setTextSize(i2);
        if (z) {
            textViewByPosition.setTypeface(null, 1);
        }
        if (textViewByPosition.getParent() == null) {
            textLayoutByPosition.addView(textViewByPosition);
        }
        textLayoutByPosition.setVisibility(0);
    }

    public void update(float f) {
        if (this.mTextViewLeftUp != null && this.mTextViewLeftDown != null) {
            updateTextViewLeftUp(f);
            updateTextViewLeftDown(f);
        } else if (this.mTextViewMiddleUp != null && this.mTextViewMiddleDown != null) {
            updatemTextViewMiddleDown(f);
        } else if (this.mTextViewMiddle != null) {
            updateTextViewMiddle(f);
        }
        invalidate();
    }

    private void updateTextViewLeftDown(float f) {
        if (this.mProgress <= this.mMaxProgress2) {
            this.mTextViewLeftDown.setText(String.valueOf(Math.round(f)));
            if (this.mProgress <= 999.0f) {
                return;
            }
            this.mTextViewLeftDown.setTextSize(this.mLeftDownSize - 4);
        }
    }

    private void updateTextViewLeftUp(float f) {
        if (this.mProgress <= this.mMaxProgress1) {
            this.mTextViewLeftUp.setText(String.valueOf(Math.round(f)));
            if (this.mProgress <= 999.0f) {
                return;
            }
            this.mTextViewLeftUp.setTextSize(this.mLeftUpSize - 4);
        }
    }

    private void updateTextViewMiddle(float f) {
        if (this.mProgress <= this.mMaxProgress1) {
            this.mTextViewMiddle.setText(String.valueOf(Math.round(f)));
            if (this.mProgress <= 999.0f) {
                return;
            }
            this.mTextViewMiddle.setTextSize(this.mMiddleSize - 4);
        }
    }

    private void updatemTextViewMiddleDown(float f) {
        this.mTextViewMiddleDown.setText(getDurationString(Math.round(f)));
    }

    public void addAnimationListener(ProgressAnimationListener progressAnimationListener) {
        this.progressAnimationListener = progressAnimationListener;
    }

    public int getCircleColor() {
        return this.mCircleColor;
    }

    public float getCircleWidth() {
        return this.mCircleWidth;
    }

    public Interpolator getInterpolator() {
        return this.mInterpolator;
    }

    public float getProgress() {
        return this.mProgress;
    }

    public ProgressAnimationListener getProgressAnimationListener() {
        return this.progressAnimationListener;
    }

    public float getStartAngle() {
        return this.mStartAngle;
    }

    public boolean isAnimationEnded() {
        return this.mAnimationEnded;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f = this.mMaxProgress1;
        int i = (f <= 0.0f || this.mMaxProgress2 <= 0.0f) ? -6 : 4;
        float f2 = this.mProgress;
        float f3 = (f2 * 100.0f) / this.mMaxProgressTotal;
        if (f > 0.0f) {
            if (f2 <= f) {
                this.mAngle1 = (f3 * 360.0f) / 100.0f;
            }
            canvas.drawArc(this.mRectF, this.mStartAngle, this.mAngle1 - i, false, this.mCirclePaint);
        }
        float f4 = this.mMaxProgress2;
        if (f4 > 0.0f) {
            if (this.mProgress <= f4) {
                this.mAngle2 = (f3 * 360.0f) / 100.0f;
            }
            float f5 = i;
            canvas.drawArc(this.mRectF, this.mStartAngle - f5, (this.mAngle2 - f5) * (-1.0f), false, this.mBackgroundPaint);
        }
        if (this.mLayoutLeftUp == null || this.mLayoutRightUp == null || this.mLayoutLeftDown == null || this.mLayoutRightDown == null) {
            if (this.mLayoutMiddleUp == null || this.mLayoutMiddleDown == null) {
                if (this.mLayoutMiddle == null) {
                    return;
                }
                canvas.save();
                this.mLayoutMiddle.measure(canvas.getWidth(), canvas.getHeight());
                this.mLayoutMiddle.layout(0, 0, canvas.getWidth(), canvas.getHeight());
                canvas.translate((canvas.getWidth() / 2) - (this.mTextViewMiddle.getWidth() / 2), (canvas.getHeight() / 2) - (this.mTextViewMiddle.getHeight() / 2));
                this.mLayoutMiddle.draw(canvas);
                return;
            }
            canvas.save();
            this.mLayoutMiddleUp.measure(canvas.getWidth(), canvas.getHeight());
            this.mLayoutMiddleUp.layout(0, 0, canvas.getWidth(), canvas.getHeight());
            canvas.translate((canvas.getWidth() / 2) - (this.mTextViewMiddleUp.getWidth() / 2), (canvas.getHeight() / 2) - (this.mTextViewMiddleUp.getHeight() * 2));
            this.mLayoutMiddleUp.draw(canvas);
            canvas.restore();
            canvas.save();
            this.mLayoutMiddleDown.measure(canvas.getWidth(), canvas.getHeight());
            this.mLayoutMiddleDown.layout(0, 0, canvas.getWidth(), canvas.getHeight());
            canvas.translate((canvas.getWidth() / 2) - (this.mTextViewMiddleDown.getWidth() / 2), (canvas.getHeight() / 2) - (this.mTextViewMiddleDown.getHeight() / 3));
            this.mLayoutMiddleDown.draw(canvas);
            return;
        }
        int dpToPixel = UiHelper.dpToPixel(getContext(), 2.0f);
        canvas.save();
        this.mLayoutLeftUp.measure(canvas.getWidth(), canvas.getHeight());
        this.mLayoutLeftUp.layout(0, 0, canvas.getWidth(), canvas.getHeight());
        canvas.translate((canvas.getWidth() / 2) - this.mTextViewLeftUp.getWidth(), (canvas.getHeight() / 2) - this.mTextViewLeftUp.getHeight());
        this.mLayoutLeftUp.draw(canvas);
        canvas.restore();
        canvas.save();
        this.mLayoutRightUp.measure(canvas.getWidth(), canvas.getHeight());
        this.mLayoutRightUp.layout(0, 0, canvas.getWidth(), canvas.getHeight());
        int i2 = dpToPixel * 2;
        canvas.translate((canvas.getWidth() / 2) + i2, ((canvas.getHeight() / 2) - this.mTextViewRightUp.getHeight()) - dpToPixel);
        this.mLayoutRightUp.draw(canvas);
        canvas.restore();
        canvas.save();
        this.mLayoutLeftDown.measure(canvas.getWidth(), canvas.getHeight());
        this.mLayoutLeftDown.layout(0, 0, canvas.getWidth(), canvas.getHeight());
        canvas.translate((canvas.getWidth() / 2) - this.mTextViewLeftDown.getWidth(), canvas.getHeight() / 2);
        this.mLayoutLeftDown.draw(canvas);
        canvas.restore();
        this.mLayoutRightDown.measure(canvas.getWidth(), canvas.getHeight());
        this.mLayoutRightDown.layout(0, 0, canvas.getWidth(), canvas.getHeight());
        canvas.translate((canvas.getWidth() / 2) + i2, (canvas.getHeight() / 2) + dpToPixel);
        this.mLayoutRightDown.draw(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int min = Math.min(getDefaultSize(getSuggestedMinimumWidth(), i), getDefaultSize(getSuggestedMinimumHeight(), i2));
        setMeasuredDimension(min, min);
        float f = this.mCircleWidth;
        float f2 = this.backgroundStrokeWidth;
        if (f > f2) {
            f2 = f;
        }
        float f3 = f2 / 2.0f;
        float f4 = 0.0f + f3;
        float f5 = min - f3;
        this.mRectF.set(f4, f4, f5, f5);
    }

    public void setCircleColor(int i) {
        this.mCircleColor = i;
        this.mCirclePaint.setColor(i);
        invalidate();
    }

    public void setCirclerWidth(float f) {
        this.mCircleWidth = f;
        this.mCirclePaint.setStrokeWidth(f);
        requestLayout();
        invalidate();
    }

    public void setInterpolator(Interpolator interpolator) {
        this.mInterpolator = interpolator;
    }

    public void setProgress(float f) {
        this.mProgress = f;
        update(this.mZero ? 0.0f : f);
        ProgressAnimationListener progressAnimationListener = this.progressAnimationListener;
        if (progressAnimationListener != null) {
            progressAnimationListener.onValueChanged(f);
        }
    }

    public void setProgressWithAnimation(float f, float f2, int i, boolean z) {
        float f3;
        this.mMaxProgress1 = f;
        this.mMaxProgress2 = f2;
        this.mMaxProgressTotal = f + f2;
        if (f == 0.0f && f2 == 0.0f) {
            this.mMaxProgress1 = 100.0f;
            this.mZero = true;
            f3 = 100.0f;
        } else {
            f3 = Math.max(f, f2);
            this.mZero = false;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, NotificationCompat.CATEGORY_PROGRESS, f3);
        this.mObjectAnimator = ofFloat;
        ofFloat.setDuration(i);
        ObjectAnimator objectAnimator = this.mObjectAnimator;
        DecelerateInterpolator decelerateInterpolator = this.mInterpolator;
        if (decelerateInterpolator == null) {
            decelerateInterpolator = new DecelerateInterpolator();
        }
        objectAnimator.setInterpolator(decelerateInterpolator);
        final float f4 = f3;
        this.mObjectAnimator.addListener(new Animator.AnimatorListener() { // from class: com.telguarder.features.postCallStatistics.CircleProgressView.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                CircleProgressView.this.mAnimationEnded = true;
                CircleProgressView.this.mProgress = f4;
                CircleProgressView circleProgressView = CircleProgressView.this;
                circleProgressView.update(circleProgressView.mZero ? 0.0f : f4);
                if (CircleProgressView.this.progressAnimationListener != null) {
                    CircleProgressView.this.progressAnimationListener.onAnimationEnd();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        this.mObjectAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.telguarder.features.postCallStatistics.CircleProgressView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CircleProgressView circleProgressView = CircleProgressView.this;
                circleProgressView.update(circleProgressView.mZero ? 0.0f : ((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        if (z) {
            startAnimation();
        }
        ProgressAnimationListener progressAnimationListener = this.progressAnimationListener;
        if (progressAnimationListener != null) {
            if (this.mZero) {
                f3 = 0.0f;
            }
            progressAnimationListener.onValueChanged(f3);
        }
    }

    public void setStartAngle(float f) {
        this.mStartAngle = f;
    }

    public void showTextView(String str, int i, int i2, String str2, int i3, int i4) {
        LinearLayout linearLayout = this.mLayoutLeftUp;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.mLayoutRightUp;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.mLayoutLeftDown;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
        LinearLayout linearLayout4 = this.mLayoutRightDown;
        if (linearLayout4 != null) {
            linearLayout4.setVisibility(8);
        }
        setupText(TextPosition.middleUp, str, i, i2, true);
        setupText(TextPosition.middleDown, str2, i3, i4, true);
        invalidate();
    }

    public void showTextView(String str, int i, int i2, String str2, int i3, int i4, String str3, int i5, int i6, String str4, int i7, int i8) {
        LinearLayout linearLayout = this.mLayoutMiddleUp;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.mLayoutMiddleDown;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        this.mLeftUpSize = i2;
        setupText(TextPosition.leftUp, str, i, this.mLeftUpSize, false);
        setupText(TextPosition.rightUp, str2, i3, i4, false);
        this.mLeftDownSize = i6;
        setupText(TextPosition.leftDown, str3, i5, this.mLeftDownSize, false);
        setupText(TextPosition.rightDown, str4, i7, i8, false);
        invalidate();
    }

    public void showTextView(String str, int i, int i2, boolean z) {
        LinearLayout linearLayout = this.mLayoutMiddleUp;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.mLayoutMiddleDown;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.mLayoutLeftUp;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
        LinearLayout linearLayout4 = this.mLayoutRightUp;
        if (linearLayout4 != null) {
            linearLayout4.setVisibility(8);
        }
        LinearLayout linearLayout5 = this.mLayoutLeftDown;
        if (linearLayout5 != null) {
            linearLayout5.setVisibility(8);
        }
        LinearLayout linearLayout6 = this.mLayoutRightDown;
        if (linearLayout6 != null) {
            linearLayout6.setVisibility(8);
        }
        this.mMiddleSize = i2;
        setupText(TextPosition.middle, str, i, i2, z);
        invalidate();
    }

    public void startAnimation() {
        ObjectAnimator objectAnimator = this.mObjectAnimator;
        if (objectAnimator != null) {
            objectAnimator.start();
        }
    }
}
