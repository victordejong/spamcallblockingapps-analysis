package com.facebook.share.internal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.widget.FrameLayout;
import android.widget.TextView;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeBoxCountView.class */
public class LikeBoxCountView extends FrameLayout {

    /* renamed from: a */
    public TextView f2594a;

    /* renamed from: b */
    public EnumC0358b f2595b = EnumC0358b.LEFT;

    /* renamed from: c */
    public float f2596c;

    /* renamed from: d */
    public float f2597d;

    /* renamed from: f */
    public float f2598f;

    /* renamed from: g */
    public Paint f2599g;

    /* renamed from: h */
    public int f2600h;

    /* renamed from: j */
    public int f2601j;

    /* renamed from: com.facebook.share.internal.LikeBoxCountView$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeBoxCountView$a.class */
    public static /* synthetic */ class C0357a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f2602a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0358b.values().length];
            f2602a = iArr;
            try {
                iArr[EnumC0358b.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2602a[EnumC0358b.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2602a[EnumC0358b.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2602a[EnumC0358b.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.facebook.share.internal.LikeBoxCountView$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeBoxCountView$b.class */
    public enum EnumC0358b {
        LEFT,
        TOP,
        RIGHT,
        BOTTOM
    }

    @Deprecated
    public LikeBoxCountView(Context context) {
        super(context);
        m4998b(context);
    }

    /* renamed from: a */
    public final void m4999a(Canvas canvas, float f, float f2, float f3, float f4) {
        Path path = new Path();
        float f5 = this.f2598f * 2.0f;
        float f6 = f + f5;
        float f7 = f2 + f5;
        path.addArc(new RectF(f, f2, f6, f7), -180.0f, 90.0f);
        if (this.f2595b == EnumC0358b.TOP) {
            float f8 = f3 - f;
            path.lineTo(((f8 - this.f2597d) / 2.0f) + f, f2);
            path.lineTo((f8 / 2.0f) + f, f2 - this.f2596c);
            path.lineTo(((f8 + this.f2597d) / 2.0f) + f, f2);
        }
        path.lineTo(f3 - this.f2598f, f2);
        float f9 = f3 - f5;
        path.addArc(new RectF(f9, f2, f3, f7), -90.0f, 90.0f);
        if (this.f2595b == EnumC0358b.RIGHT) {
            float f10 = f4 - f2;
            path.lineTo(f3, ((f10 - this.f2597d) / 2.0f) + f2);
            path.lineTo(this.f2596c + f3, (f10 / 2.0f) + f2);
            path.lineTo(f3, ((f10 + this.f2597d) / 2.0f) + f2);
        }
        path.lineTo(f3, f4 - this.f2598f);
        float f11 = f4 - f5;
        path.addArc(new RectF(f9, f11, f3, f4), 0.0f, 90.0f);
        if (this.f2595b == EnumC0358b.BOTTOM) {
            float f12 = f3 - f;
            path.lineTo(((this.f2597d + f12) / 2.0f) + f, f4);
            path.lineTo((f12 / 2.0f) + f, this.f2596c + f4);
            path.lineTo(((f12 - this.f2597d) / 2.0f) + f, f4);
        }
        path.lineTo(this.f2598f + f, f4);
        path.addArc(new RectF(f, f11, f6, f4), 90.0f, 90.0f);
        if (this.f2595b == EnumC0358b.LEFT) {
            float f13 = f4 - f2;
            path.lineTo(f, ((this.f2597d + f13) / 2.0f) + f2);
            path.lineTo(f - this.f2596c, (f13 / 2.0f) + f2);
            path.lineTo(f, ((f13 - this.f2597d) / 2.0f) + f2);
        }
        path.lineTo(f, f2 + this.f2598f);
        canvas.drawPath(path, this.f2599g);
    }

    /* renamed from: b */
    public final void m4998b(Context context) {
        setWillNotDraw(false);
        this.f2596c = getResources().getDimension(ql0.com_facebook_likeboxcountview_caret_height);
        this.f2597d = getResources().getDimension(ql0.com_facebook_likeboxcountview_caret_width);
        this.f2598f = getResources().getDimension(ql0.com_facebook_likeboxcountview_border_radius);
        Paint paint = new Paint();
        this.f2599g = paint;
        paint.setColor(getResources().getColor(pl0.com_facebook_likeboxcountview_border_color));
        this.f2599g.setStrokeWidth(getResources().getDimension(ql0.com_facebook_likeboxcountview_border_width));
        this.f2599g.setStyle(Paint.Style.STROKE);
        m4997c(context);
        addView(this.f2594a);
        setCaretPosition(this.f2595b);
    }

    /* renamed from: c */
    public final void m4997c(Context context) {
        this.f2594a = new TextView(context);
        this.f2594a.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f2594a.setGravity(17);
        this.f2594a.setTextSize(0, getResources().getDimension(ql0.com_facebook_likeboxcountview_text_size));
        this.f2594a.setTextColor(getResources().getColor(pl0.com_facebook_likeboxcountview_text_color));
        this.f2600h = getResources().getDimensionPixelSize(ql0.com_facebook_likeboxcountview_text_padding);
        this.f2601j = getResources().getDimensionPixelSize(ql0.com_facebook_likeboxcountview_caret_height);
    }

    /* renamed from: d */
    public final void m4996d(int i, int i2, int i3, int i4) {
        TextView textView = this.f2594a;
        int i5 = this.f2600h;
        textView.setPadding(i + i5, i2 + i5, i3 + i5, i5 + i4);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int paddingTop = getPaddingTop();
        int paddingLeft = getPaddingLeft();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        int i = C0357a.f2602a[this.f2595b.ordinal()];
        if (i == 1) {
            paddingLeft = (int) (paddingLeft + this.f2596c);
        } else if (i == 2) {
            paddingTop = (int) (paddingTop + this.f2596c);
        } else if (i == 3) {
            width = (int) (width - this.f2596c);
        } else if (i == 4) {
            height = (int) (height - this.f2596c);
        }
        m4999a(canvas, paddingLeft, paddingTop, width, height);
    }

    @Deprecated
    public void setCaretPosition(EnumC0358b enumC0358b) {
        this.f2595b = enumC0358b;
        int i = C0357a.f2602a[enumC0358b.ordinal()];
        if (i == 1) {
            m4996d(this.f2601j, 0, 0, 0);
        } else if (i == 2) {
            m4996d(0, this.f2601j, 0, 0);
        } else if (i == 3) {
            m4996d(0, 0, this.f2601j, 0);
        } else if (i != 4) {
        } else {
            m4996d(0, 0, 0, this.f2601j);
        }
    }

    @Deprecated
    public void setText(String str) {
        this.f2594a.setText(str);
    }
}
