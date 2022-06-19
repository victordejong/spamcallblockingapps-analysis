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
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.media2.widget.AbstractC2565g;
import androidx.media2.widget.AbstractC2595p;
import androidx.media2.widget.C2532c;
import androidx.media2.widget.C2576l;
import androidx.media2.widget.C2588o;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media2.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/d.class */
public final class C2540d extends C2588o.AbstractC2594d {

    /* renamed from: a */
    private final Context f9650a;

    /* renamed from: b */
    private C2541a f9651b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.widget.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/d$a.class */
    public final class C2541a extends AbstractC2565g implements C2532c.AbstractC2536d {

        /* renamed from: a */
        final Rect f9652a;

        /* renamed from: androidx.media2.widget.d$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/d$a$a.class */
        final class C2542a extends LinearLayout implements AbstractC2565g.AbstractC2567a {

            /* renamed from: a */
            final C2543b[] f9654a = new C2543b[15];

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C2542a(Context context) {
                super(context);
                C2541a.this = r8;
                setGravity(8388611);
                setOrientation(1);
                for (int i = 0; i < 15; i++) {
                    this.f9654a[i] = new C2543b(getContext());
                    addView(this.f9654a[i], -2, -2);
                }
            }

            @Override // androidx.media2.widget.AbstractC2565g.AbstractC2567a
            /* renamed from: a */
            public final void mo40663a(float f) {
            }

            @Override // androidx.media2.widget.AbstractC2565g.AbstractC2567a
            /* renamed from: a */
            public final void mo40662a(C2531b c2531b) {
                for (int i = 0; i < 15; i++) {
                    C2543b c2543b = this.f9654a[i];
                    c2543b.f9658c = c2531b.f9611b;
                    c2543b.f9659e = c2531b.f9612c;
                    c2543b.f9660f = c2531b.f9613d;
                    c2543b.f9661g = c2531b.f9614e;
                    c2543b.setTextColor(c2543b.f9658c);
                    if (c2543b.f9660f == 2) {
                        c2543b.setShadowLayer(c2543b.f9656a, c2543b.f9657b, c2543b.f9657b, c2543b.f9661g);
                    } else {
                        c2543b.setShadowLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
                    }
                    c2543b.invalidate();
                }
            }

            @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
            protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
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
                    i15++;
                    this.f9654a[i15].layout(i13, ((i12 * i15) / 15) + i14, i13 + i11, ((i12 * i15) / 15) + i14);
                }
            }

            @Override // android.widget.LinearLayout, android.view.View
            protected final void onMeasure(int i, int i2) {
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
                    this.f9654a[i5].measure(makeMeasureSpec2, makeMeasureSpec);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.media2.widget.d$a$b */
        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/d$a$b.class */
        public final class C2543b extends AppCompatTextView {

            /* renamed from: a */
            float f9656a;

            /* renamed from: b */
            float f9657b;

            /* renamed from: c */
            int f9658c = -1;

            /* renamed from: e */
            int f9659e = -16777216;

            /* renamed from: f */
            int f9660f = 0;

            /* renamed from: g */
            int f9661g = 0;

            /* renamed from: i */
            private float f9663i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C2543b(Context context) {
                super(context);
                C2541a.this = r5;
                setGravity(17);
                setBackgroundColor(0);
                setTextColor(-1);
                setTypeface(Typeface.MONOSPACE);
                setVisibility(4);
                Resources resources = getContext().getResources();
                this.f9663i = resources.getDimensionPixelSize(C2576l.C2579c.media2_widget_subtitle_outline_width);
                this.f9656a = resources.getDimensionPixelSize(C2576l.C2579c.media2_widget_subtitle_shadow_radius);
                this.f9657b = resources.getDimensionPixelSize(C2576l.C2579c.media2_widget_subtitle_shadow_offset);
            }

            /* renamed from: a */
            private void m40702a(int i) {
                CharSequence text = getText();
                if (text instanceof Spannable) {
                    Spannable spannable = (Spannable) text;
                    for (C2532c.C2537e c2537e : (C2532c.C2537e[]) spannable.getSpans(0, spannable.length(), C2532c.C2537e.class)) {
                        c2537e.f9644a = i;
                    }
                }
            }

            @Override // android.widget.TextView, android.view.View
            protected final void onDraw(Canvas canvas) {
                int i = this.f9660f;
                int i2 = -1;
                if (i == -1 || i == 0 || i == 2) {
                    super.onDraw(canvas);
                    return;
                }
                boolean z = true;
                if (i == 1) {
                    TextPaint paint = getPaint();
                    Paint.Style style = paint.getStyle();
                    Paint.Join strokeJoin = paint.getStrokeJoin();
                    float strokeWidth = paint.getStrokeWidth();
                    setTextColor(this.f9661g);
                    paint.setStyle(Paint.Style.FILL_AND_STROKE);
                    paint.setStrokeJoin(Paint.Join.ROUND);
                    paint.setStrokeWidth(this.f9663i);
                    super.onDraw(canvas);
                    setTextColor(this.f9658c);
                    paint.setStyle(style);
                    paint.setStrokeJoin(strokeJoin);
                    paint.setStrokeWidth(strokeWidth);
                    m40702a(0);
                    super.onDraw(canvas);
                    m40702a(this.f9659e);
                    return;
                }
                TextPaint paint2 = getPaint();
                Paint.Style style2 = paint2.getStyle();
                paint2.setStyle(Paint.Style.FILL);
                if (this.f9660f != 3) {
                    z = false;
                }
                int i3 = z ? -1 : this.f9661g;
                if (z) {
                    i2 = this.f9661g;
                }
                float f = this.f9656a;
                float f2 = f / 2.0f;
                float f3 = -f2;
                setShadowLayer(f, f3, f3, i3);
                super.onDraw(canvas);
                m40702a(0);
                setShadowLayer(this.f9656a, f2, f2, i2);
                super.onDraw(canvas);
                paint2.setStyle(style2);
                m40702a(this.f9659e);
            }

            @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
            public final void onMeasure(int i, int i2) {
                float size = View.MeasureSpec.getSize(i2) * 0.75f;
                setTextSize(0, size);
                this.f9663i = (0.1f * size) + 1.0f;
                float f = (size * 0.05f) + 1.0f;
                this.f9656a = f;
                this.f9657b = f;
                setScaleX(1.0f);
                getPaint().getTextBounds("1234567890123456789012345678901234", 0, 34, C2541a.this.f9652a);
                float width = C2541a.this.f9652a.width();
                float size2 = View.MeasureSpec.getSize(i);
                if (width != BitmapDescriptorFactory.HUE_RED) {
                    setScaleX(size2 / width);
                } else {
                    Log.w("Cea608CaptionRenderer", "onMeasure(): Paint#getTextBounds() returned zero width. Ignored.");
                }
                super.onMeasure(i, i2);
            }
        }

        C2541a(C2540d c2540d, Context context) {
            this(c2540d, context, null);
        }

        C2541a(C2540d c2540d, Context context, AttributeSet attributeSet) {
            this(context, attributeSet, 0);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2541a(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            C2540d.this = r6;
            this.f9652a = new Rect();
        }

        @Override // androidx.media2.widget.C2532c.AbstractC2536d
        /* renamed from: a */
        public final C2531b mo40704a() {
            return this.f9754c;
        }

        @Override // androidx.media2.widget.AbstractC2565g
        /* renamed from: a */
        public final AbstractC2565g.AbstractC2567a mo40664a(Context context) {
            return new C2542a(context);
        }

        @Override // androidx.media2.widget.C2532c.AbstractC2536d
        /* renamed from: a */
        public final void mo40703a(SpannableStringBuilder[] spannableStringBuilderArr) {
            C2542a c2542a = (C2542a) this.f9756e;
            for (int i = 0; i < 15; i++) {
                if (spannableStringBuilderArr[i] != null) {
                    c2542a.f9654a[i].setText(spannableStringBuilderArr[i], TextView.BufferType.SPANNABLE);
                    c2542a.f9654a[i].setVisibility(0);
                } else {
                    c2542a.f9654a[i].setVisibility(4);
                }
            }
            if (this.f9755d != null) {
                this.f9755d.mo40577a();
            }
        }
    }

    /* renamed from: androidx.media2.widget.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/d$b.class */
    static final class C2544b extends AbstractC2595p {

        /* renamed from: g */
        private final C2532c f9664g;

        /* renamed from: h */
        private final C2541a f9665h;

        C2544b(C2541a c2541a, MediaFormat mediaFormat) {
            super(mediaFormat);
            this.f9665h = c2541a;
            this.f9664g = new C2532c(c2541a);
        }

        @Override // androidx.media2.widget.AbstractC2595p
        /* renamed from: a */
        public final AbstractC2595p.AbstractC2598c mo40588a() {
            return this.f9665h;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:135:0x04a6 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:63:0x026f  */
        @Override // androidx.media2.widget.AbstractC2595p
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo40585a(byte[] r7) {
            /*
                Method dump skipped, instructions count: 1197
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.widget.C2540d.C2544b.mo40585a(byte[]):void");
        }
    }

    public C2540d(Context context) {
        this.f9650a = context;
    }

    @Override // androidx.media2.widget.C2588o.AbstractC2594d
    /* renamed from: a */
    public final boolean mo40590a(MediaFormat mediaFormat) {
        if (mediaFormat.containsKey("mime")) {
            return "text/cea-608".equals(mediaFormat.getString("mime"));
        }
        return false;
    }

    @Override // androidx.media2.widget.C2588o.AbstractC2594d
    /* renamed from: b */
    public final AbstractC2595p mo40589b(MediaFormat mediaFormat) {
        if ("text/cea-608".equals(mediaFormat.getString("mime"))) {
            if (this.f9651b == null) {
                this.f9651b = new C2541a(this, this.f9650a);
            }
            return new C2544b(this.f9651b, mediaFormat);
        }
        throw new RuntimeException("No matching format: " + mediaFormat.toString());
    }
}
