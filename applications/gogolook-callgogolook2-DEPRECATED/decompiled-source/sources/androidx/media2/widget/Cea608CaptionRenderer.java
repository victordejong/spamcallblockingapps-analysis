package androidx.media2.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.media.MediaFormat;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.GravityCompat;
import androidx.media2.widget.Cea608CCParser;
import androidx.media2.widget.ClosedCaptionWidget;
import androidx.media2.widget.SubtitleController;
import androidx.media2.widget.SubtitleTrack;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea608CaptionRenderer.class */
public class Cea608CaptionRenderer extends SubtitleController.Renderer {
    public static final String TAG = "Cea608CaptionRenderer";
    public Cea608CCWidget mCCWidget;
    public final Context mContext;

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget.class */
    public class Cea608CCWidget extends ClosedCaptionWidget implements Cea608CCParser.DisplayListener {
        public static final String DUMMY_TEXT = "1234567890123456789012345678901234";
        public final Rect mTextBounds;

        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout.class */
        public class CCLayout extends LinearLayout implements ClosedCaptionWidget.ClosedCaptionLayout {
            public static final int MAX_ROWS = 15;
            public static final float SAFE_AREA_RATIO = 0.9f;
            public final CCLineBox[] mLineBoxes = new CCLineBox[15];

            public CCLayout(Context context) {
                super(context);
                setGravity(GravityCompat.START);
                setOrientation(1);
                for (int i = 0; i < 15; i++) {
                    this.mLineBoxes[i] = new CCLineBox(getContext());
                    addView(this.mLineBoxes[i], -2, -2);
                }
            }

            @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z, int i, int i2, int i3, int i4) {
                int i5;
                int i6;
                int i7 = i3 - i;
                int i8 = i4 - i2;
                int i9 = i7 * 3;
                int i10 = i8 * 4;
                if (i9 >= i10) {
                    i5 = i10 / 3;
                    i6 = i8;
                } else {
                    i6 = i9 / 4;
                    i5 = i7;
                }
                int i11 = (int) (i5 * 0.9f);
                int i12 = (int) (i6 * 0.9f);
                int i13 = (i7 - i11) / 2;
                int i14 = (i8 - i12) / 2;
                int i15 = 0;
                while (i15 < 15) {
                    CCLineBox cCLineBox = this.mLineBoxes[i15];
                    i15++;
                    cCLineBox.layout(i13, ((i12 * i15) / 15) + i14, i13 + i11, ((i12 * i15) / 15) + i14);
                }
            }

            @Override // android.widget.LinearLayout, android.view.View
            public void onMeasure(int i, int i2) {
                super.onMeasure(i, i2);
                int measuredWidth = getMeasuredWidth();
                int measuredHeight = getMeasuredHeight();
                int i3 = measuredWidth * 3;
                int i4 = measuredHeight * 4;
                if (i3 >= i4) {
                    measuredWidth = i4 / 3;
                } else {
                    measuredHeight = i3 / 4;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(((int) (measuredHeight * 0.9f)) / 15, 1073741824);
                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec((int) (measuredWidth * 0.9f), 1073741824);
                for (int i5 = 0; i5 < 15; i5++) {
                    this.mLineBoxes[i5].measure(makeMeasureSpec2, makeMeasureSpec);
                }
            }

            @Override // androidx.media2.widget.ClosedCaptionWidget.ClosedCaptionLayout
            public void setCaptionStyle(CaptioningManager.CaptionStyle captionStyle) {
                for (int i = 0; i < 15; i++) {
                    this.mLineBoxes[i].setCaptionStyle(captionStyle);
                }
            }

            @Override // androidx.media2.widget.ClosedCaptionWidget.ClosedCaptionLayout
            public void setFontScale(float f) {
            }

            public void update(SpannableStringBuilder[] spannableStringBuilderArr) {
                for (int i = 0; i < 15; i++) {
                    if (spannableStringBuilderArr[i] != null) {
                        this.mLineBoxes[i].setText(spannableStringBuilderArr[i], TextView.BufferType.SPANNABLE);
                        this.mLineBoxes[i].setVisibility(0);
                    } else {
                        this.mLineBoxes[i].setVisibility(4);
                    }
                }
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox.class */
        public class CCLineBox extends AppCompatTextView {
            public static final float EDGE_OUTLINE_RATIO = 0.1f;
            public static final float EDGE_SHADOW_RATIO = 0.05f;
            public static final float FONT_PADDING_RATIO = 0.75f;
            public float mOutlineWidth;
            public float mShadowOffset;
            public float mShadowRadius;
            public int mTextColor = -1;
            public int mBgColor = -16777216;
            public int mEdgeType = 0;
            public int mEdgeColor = 0;

            public CCLineBox(Context context) {
                super(context);
                setGravity(17);
                setBackgroundColor(0);
                setTextColor(-1);
                setTypeface(Typeface.MONOSPACE);
                setVisibility(4);
                Resources resources = getContext().getResources();
                this.mOutlineWidth = resources.getDimensionPixelSize(C0995R.dimen.subtitle_outline_width);
                this.mShadowRadius = resources.getDimensionPixelSize(C0995R.dimen.subtitle_shadow_radius);
                this.mShadowOffset = resources.getDimensionPixelSize(C0995R.dimen.subtitle_shadow_offset);
            }

            private void drawEdgeOutline(Canvas canvas) {
                TextPaint paint = getPaint();
                Paint.Style style = paint.getStyle();
                Paint.Join strokeJoin = paint.getStrokeJoin();
                float strokeWidth = paint.getStrokeWidth();
                setTextColor(this.mEdgeColor);
                paint.setStyle(Paint.Style.FILL_AND_STROKE);
                paint.setStrokeJoin(Paint.Join.ROUND);
                paint.setStrokeWidth(this.mOutlineWidth);
                super.onDraw(canvas);
                setTextColor(this.mTextColor);
                paint.setStyle(style);
                paint.setStrokeJoin(strokeJoin);
                paint.setStrokeWidth(strokeWidth);
                setBackgroundSpans(0);
                super.onDraw(canvas);
                setBackgroundSpans(this.mBgColor);
            }

            private void drawEdgeRaisedOrDepressed(Canvas canvas) {
                TextPaint paint = getPaint();
                Paint.Style style = paint.getStyle();
                paint.setStyle(Paint.Style.FILL);
                boolean z = this.mEdgeType == 3;
                int i = -1;
                int i2 = z ? -1 : this.mEdgeColor;
                if (z) {
                    i = this.mEdgeColor;
                }
                float f = this.mShadowRadius;
                float f2 = f / 2.0f;
                float f3 = -f2;
                setShadowLayer(f, f3, f3, i2);
                super.onDraw(canvas);
                setBackgroundSpans(0);
                setShadowLayer(this.mShadowRadius, f2, f2, i);
                super.onDraw(canvas);
                paint.setStyle(style);
                setBackgroundSpans(this.mBgColor);
            }

            private void setBackgroundSpans(int i) {
                CharSequence text = getText();
                if (text instanceof Spannable) {
                    Spannable spannable = (Spannable) text;
                    for (Cea608CCParser.MutableBackgroundColorSpan mutableBackgroundColorSpan : (Cea608CCParser.MutableBackgroundColorSpan[]) spannable.getSpans(0, spannable.length(), Cea608CCParser.MutableBackgroundColorSpan.class)) {
                        mutableBackgroundColorSpan.setBackgroundColor(i);
                    }
                }
            }

            @Override // android.widget.TextView, android.view.View
            public void onDraw(Canvas canvas) {
                int i = this.mEdgeType;
                if (i == -1 || i == 0 || i == 2) {
                    super.onDraw(canvas);
                } else if (i == 1) {
                    drawEdgeOutline(canvas);
                } else {
                    drawEdgeRaisedOrDepressed(canvas);
                }
            }

            @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
            public void onMeasure(int i, int i2) {
                float size = View.MeasureSpec.getSize(i2) * 0.75f;
                setTextSize(0, size);
                this.mOutlineWidth = (0.1f * size) + 1.0f;
                this.mShadowRadius = (size * 0.05f) + 1.0f;
                this.mShadowOffset = this.mShadowRadius;
                setScaleX(1.0f);
                getPaint().getTextBounds("1234567890123456789012345678901234", 0, 34, Cea608CCWidget.this.mTextBounds);
                float width = Cea608CCWidget.this.mTextBounds.width();
                float size2 = View.MeasureSpec.getSize(i);
                if (width != 0.0f) {
                    setScaleX(size2 / width);
                }
                super.onMeasure(i, i2);
            }

            public void setCaptionStyle(CaptioningManager.CaptionStyle captionStyle) {
                this.mTextColor = captionStyle.foregroundColor;
                this.mBgColor = captionStyle.backgroundColor;
                this.mEdgeType = captionStyle.edgeType;
                this.mEdgeColor = captionStyle.edgeColor;
                setTextColor(this.mTextColor);
                if (this.mEdgeType == 2) {
                    float f = this.mShadowRadius;
                    float f2 = this.mShadowOffset;
                    setShadowLayer(f, f2, f2, this.mEdgeColor);
                } else {
                    setShadowLayer(0.0f, 0.0f, 0.0f, 0);
                }
                invalidate();
            }
        }

        public Cea608CCWidget(Cea608CaptionRenderer cea608CaptionRenderer, Context context) {
            this(cea608CaptionRenderer, context, null);
        }

        public Cea608CCWidget(Cea608CaptionRenderer cea608CaptionRenderer, Context context, AttributeSet attributeSet) {
            this(context, attributeSet, 0);
        }

        public Cea608CCWidget(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.mTextBounds = new Rect();
        }

        @Override // androidx.media2.widget.ClosedCaptionWidget
        public ClosedCaptionWidget.ClosedCaptionLayout createCaptionLayout(Context context) {
            return new CCLayout(context);
        }

        @Override // androidx.media2.widget.Cea608CCParser.DisplayListener
        public CaptioningManager.CaptionStyle getCaptionStyle() {
            return this.mCaptionStyle;
        }

        @Override // androidx.media2.widget.Cea608CCParser.DisplayListener
        public void onDisplayChanged(SpannableStringBuilder[] spannableStringBuilderArr) {
            ((CCLayout) this.mClosedCaptionLayout).update(spannableStringBuilderArr);
            SubtitleTrack.RenderingWidget.OnChangedListener onChangedListener = this.mListener;
            if (onChangedListener != null) {
                onChangedListener.onChanged(this);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea608CaptionRenderer$Cea608CaptionTrack.class */
    public static class Cea608CaptionTrack extends SubtitleTrack {
        public final Cea608CCParser mCCParser;
        public final Cea608CCWidget mRenderingWidget;

        public Cea608CaptionTrack(Cea608CCWidget cea608CCWidget, MediaFormat mediaFormat) {
            super(mediaFormat);
            this.mRenderingWidget = cea608CCWidget;
            this.mCCParser = new Cea608CCParser(this.mRenderingWidget);
        }

        @Override // androidx.media2.widget.SubtitleTrack
        public SubtitleTrack.RenderingWidget getRenderingWidget() {
            return this.mRenderingWidget;
        }

        @Override // androidx.media2.widget.SubtitleTrack
        public void onData(byte[] bArr, boolean z, long j) {
            this.mCCParser.parse(bArr);
        }

        @Override // androidx.media2.widget.SubtitleTrack
        public void updateView(ArrayList<SubtitleTrack.Cue> arrayList) {
        }
    }

    public Cea608CaptionRenderer(@NonNull Context context) {
        this.mContext = context;
    }

    @Override // androidx.media2.widget.SubtitleController.Renderer
    @NonNull
    public SubtitleTrack createTrack(@NonNull MediaFormat mediaFormat) {
        if ("text/cea-608".equals(mediaFormat.getString("mime"))) {
            if (this.mCCWidget == null) {
                this.mCCWidget = new Cea608CCWidget(this, this.mContext);
            }
            return new Cea608CaptionTrack(this.mCCWidget, mediaFormat);
        }
        throw new RuntimeException("No matching format: " + mediaFormat.toString());
    }

    @Override // androidx.media2.widget.SubtitleController.Renderer
    public boolean supports(@NonNull MediaFormat mediaFormat) {
        if (mediaFormat.containsKey("mime")) {
            return "text/cea-608".equals(mediaFormat.getString("mime"));
        }
        return false;
    }
}
