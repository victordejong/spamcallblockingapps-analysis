package androidx.media2.player.subtitle;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import androidx.media2.player.C0605R;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/subtitle/SubtitleView.class */
public class SubtitleView extends View {
    public static final int COLOR_BEVEL_DARK = Integer.MIN_VALUE;
    public static final int COLOR_BEVEL_LIGHT = -2130706433;
    public static final float INNER_PADDING_RATIO = 0.125f;
    public Layout.Alignment mAlignment;
    public int mBackgroundColor;
    public final float mCornerRadius;
    public int mEdgeColor;
    public int mEdgeType;
    public int mForegroundColor;
    public boolean mHasMeasurements;
    public int mInnerPaddingX;
    public int mLastMeasuredWidth;
    public StaticLayout mLayout;
    public final RectF mLineBounds;
    public final float mOutlineWidth;
    public Paint mPaint;
    public final float mShadowOffsetX;
    public final float mShadowOffsetY;
    public final float mShadowRadius;
    public float mSpacingAdd;
    public float mSpacingMult;
    public final SpannableStringBuilder mText;
    public TextPaint mTextPaint;

    public SubtitleView(Context context) {
        this(context, null);
    }

    public SubtitleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SubtitleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mLineBounds = new RectF();
        this.mText = new SpannableStringBuilder();
        this.mSpacingMult = 1.0f;
        this.mSpacingAdd = 0.0f;
        this.mInnerPaddingX = 0;
        Resources resources = getContext().getResources();
        this.mCornerRadius = resources.getDimensionPixelSize(C0605R.dimen.subtitle_corner_radius);
        this.mOutlineWidth = resources.getDimensionPixelSize(C0605R.dimen.subtitle_outline_width);
        this.mShadowRadius = resources.getDimensionPixelSize(C0605R.dimen.subtitle_shadow_radius);
        this.mShadowOffsetX = resources.getDimensionPixelSize(C0605R.dimen.subtitle_shadow_offset);
        this.mShadowOffsetY = this.mShadowOffsetX;
        this.mTextPaint = new TextPaint();
        this.mTextPaint.setAntiAlias(true);
        this.mTextPaint.setSubpixelText(true);
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
    }

    private boolean computeMeasurements(int i) {
        if (this.mHasMeasurements && i == this.mLastMeasuredWidth) {
            return true;
        }
        int paddingLeft = i - ((getPaddingLeft() + getPaddingRight()) + (this.mInnerPaddingX * 2));
        if (paddingLeft <= 0) {
            return false;
        }
        this.mHasMeasurements = true;
        this.mLastMeasuredWidth = paddingLeft;
        if (Build.VERSION.SDK_INT >= 23) {
            SpannableStringBuilder spannableStringBuilder = this.mText;
            StaticLayout.Builder lineSpacing = StaticLayout.Builder.obtain(spannableStringBuilder, 0, spannableStringBuilder.length(), this.mTextPaint, paddingLeft).setAlignment(this.mAlignment).setLineSpacing(this.mSpacingAdd, this.mSpacingMult);
            if (Build.VERSION.SDK_INT >= 28) {
                lineSpacing.setUseLineSpacingFromFallbacks(true);
            }
            this.mLayout = lineSpacing.build();
            return true;
        }
        SpannableStringBuilder spannableStringBuilder2 = this.mText;
        this.mLayout = new StaticLayout(spannableStringBuilder2, 0, spannableStringBuilder2.length(), this.mTextPaint, paddingLeft, this.mAlignment, this.mSpacingMult, this.mSpacingAdd, true);
        return true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        StaticLayout staticLayout = this.mLayout;
        if (staticLayout != null) {
            int save = canvas.save();
            int i = this.mInnerPaddingX;
            canvas.translate(getPaddingLeft() + i, getPaddingTop());
            int lineCount = staticLayout.getLineCount();
            TextPaint textPaint = this.mTextPaint;
            Paint paint = this.mPaint;
            RectF rectF = this.mLineBounds;
            if (Color.alpha(this.mBackgroundColor) > 0) {
                float f = this.mCornerRadius;
                float lineTop = staticLayout.getLineTop(0);
                paint.setColor(this.mBackgroundColor);
                paint.setStyle(Paint.Style.FILL);
                for (int i2 = 0; i2 < lineCount; i2++) {
                    float lineLeft = staticLayout.getLineLeft(i2);
                    float f2 = i;
                    rectF.left = lineLeft - f2;
                    rectF.right = staticLayout.getLineRight(i2) + f2;
                    rectF.top = lineTop;
                    rectF.bottom = staticLayout.getLineBottom(i2);
                    lineTop = rectF.bottom;
                    canvas.drawRoundRect(rectF, f, f, paint);
                }
            }
            int i3 = this.mEdgeType;
            boolean z = true;
            if (i3 == 1) {
                textPaint.setStrokeJoin(Paint.Join.ROUND);
                textPaint.setStrokeWidth(this.mOutlineWidth);
                textPaint.setColor(this.mEdgeColor);
                textPaint.setStyle(Paint.Style.FILL_AND_STROKE);
                staticLayout.draw(canvas);
            } else if (i3 == 2) {
                textPaint.setShadowLayer(this.mShadowRadius, this.mShadowOffsetX, this.mShadowOffsetY, this.mEdgeColor);
            } else if (i3 == 3 || i3 == 4) {
                if (i3 != 3) {
                    z = false;
                }
                int i4 = -1;
                int i5 = z ? -1 : this.mEdgeColor;
                if (z) {
                    i4 = this.mEdgeColor;
                }
                float f3 = this.mShadowRadius / 2.0f;
                textPaint.setColor(this.mForegroundColor);
                textPaint.setStyle(Paint.Style.FILL);
                float f4 = -f3;
                textPaint.setShadowLayer(this.mShadowRadius, f4, f4, i5);
                staticLayout.draw(canvas);
                textPaint.setShadowLayer(this.mShadowRadius, f3, f3, i4);
            }
            textPaint.setColor(this.mForegroundColor);
            textPaint.setStyle(Paint.Style.FILL);
            staticLayout.draw(canvas);
            textPaint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        computeMeasurements(i3 - i);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (computeMeasurements(View.MeasureSpec.getSize(i))) {
            StaticLayout staticLayout = this.mLayout;
            setMeasuredDimension(staticLayout.getWidth() + getPaddingLeft() + getPaddingRight() + (this.mInnerPaddingX * 2), staticLayout.getHeight() + getPaddingTop() + getPaddingBottom());
            return;
        }
        setMeasuredDimension(16777216, 16777216);
    }

    public void setAlignment(Layout.Alignment alignment) {
        if (this.mAlignment != alignment) {
            this.mAlignment = alignment;
            this.mHasMeasurements = false;
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.mBackgroundColor = i;
        invalidate();
    }

    public void setEdgeColor(int i) {
        this.mEdgeColor = i;
        invalidate();
    }

    public void setEdgeType(int i) {
        this.mEdgeType = i;
        invalidate();
    }

    public void setForegroundColor(int i) {
        this.mForegroundColor = i;
        invalidate();
    }

    public void setText(int i) {
        setText(getContext().getText(i));
    }

    public void setText(CharSequence charSequence) {
        this.mText.clear();
        this.mText.append(charSequence);
        this.mHasMeasurements = false;
        requestLayout();
        invalidate();
    }

    public void setTextSize(float f) {
        if (this.mTextPaint.getTextSize() != f) {
            this.mTextPaint.setTextSize(f);
            this.mInnerPaddingX = (int) ((f * 0.125f) + 0.5f);
            this.mHasMeasurements = false;
            requestLayout();
            invalidate();
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != null && !typeface.equals(this.mTextPaint.getTypeface())) {
            this.mTextPaint.setTypeface(typeface);
            this.mHasMeasurements = false;
            requestLayout();
            invalidate();
        }
    }
}
