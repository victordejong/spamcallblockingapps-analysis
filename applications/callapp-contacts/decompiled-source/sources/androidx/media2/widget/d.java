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
import androidx.media2.widget.c;
import androidx.media2.widget.g;
import androidx.media2.widget.l;
import androidx.media2.widget.o;
import androidx.media2.widget.p;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/d.class */
final class d extends o.d {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5182a;

    /* renamed from: b  reason: collision with root package name */
    private a f5183b;

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/d$a.class */
    final class a extends g implements c.d {

        /* renamed from: a  reason: collision with root package name */
        final Rect f5184a;

        /* renamed from: androidx.media2.widget.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/d$a$a.class */
        final class C0104a extends LinearLayout implements g.a {

            /* renamed from: a  reason: collision with root package name */
            final b[] f5186a = new b[15];

            C0104a(Context context) {
                super(context);
                setGravity(8388611);
                setOrientation(1);
                for (int i = 0; i < 15; i++) {
                    this.f5186a[i] = new b(getContext());
                    addView(this.f5186a[i], -2, -2);
                }
            }

            @Override // androidx.media2.widget.g.a
            public final void a(float f) {
            }

            @Override // androidx.media2.widget.g.a
            public final void a(androidx.media2.widget.b bVar) {
                for (int i = 0; i < 15; i++) {
                    b bVar2 = this.f5186a[i];
                    bVar2.f5190c = bVar.f5159b;
                    bVar2.e = bVar.f5160c;
                    bVar2.f = bVar.f5161d;
                    bVar2.g = bVar.e;
                    bVar2.setTextColor(bVar2.f5190c);
                    if (bVar2.f == 2) {
                        bVar2.setShadowLayer(bVar2.f5188a, bVar2.f5189b, bVar2.f5189b, bVar2.g);
                    } else {
                        bVar2.setShadowLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
                    }
                    bVar2.invalidate();
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
                    b bVar = this.f5186a[i15];
                    i15++;
                    bVar.layout(i13, ((i12 * i15) / 15) + i14, i13 + i11, ((i12 * i15) / 15) + i14);
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
                    this.f5186a[i5].measure(makeMeasureSpec2, makeMeasureSpec);
                }
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/d$a$b.class */
        final class b extends AppCompatTextView {

            /* renamed from: a  reason: collision with root package name */
            float f5188a;

            /* renamed from: b  reason: collision with root package name */
            float f5189b;

            /* renamed from: c  reason: collision with root package name */
            int f5190c = -1;
            int e = -16777216;
            int f = 0;
            int g = 0;
            private float i;

            b(Context context) {
                super(context);
                setGravity(17);
                setBackgroundColor(0);
                setTextColor(-1);
                setTypeface(Typeface.MONOSPACE);
                setVisibility(4);
                Resources resources = getContext().getResources();
                this.i = resources.getDimensionPixelSize(l.c.media2_widget_subtitle_outline_width);
                this.f5188a = resources.getDimensionPixelSize(l.c.media2_widget_subtitle_shadow_radius);
                this.f5189b = resources.getDimensionPixelSize(l.c.media2_widget_subtitle_shadow_offset);
            }

            private void a(int i) {
                CharSequence text = getText();
                if (text instanceof Spannable) {
                    Spannable spannable = (Spannable) text;
                    for (c.e eVar : (c.e[]) spannable.getSpans(0, spannable.length(), c.e.class)) {
                        eVar.f5177a = i;
                    }
                }
            }

            @Override // android.widget.TextView, android.view.View
            protected final void onDraw(Canvas canvas) {
                int i = this.f;
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
                    setTextColor(this.g);
                    paint.setStyle(Paint.Style.FILL_AND_STROKE);
                    paint.setStrokeJoin(Paint.Join.ROUND);
                    paint.setStrokeWidth(this.i);
                    super.onDraw(canvas);
                    setTextColor(this.f5190c);
                    paint.setStyle(style);
                    paint.setStrokeJoin(strokeJoin);
                    paint.setStrokeWidth(strokeWidth);
                    a(0);
                    super.onDraw(canvas);
                    a(this.e);
                    return;
                }
                TextPaint paint2 = getPaint();
                Paint.Style style2 = paint2.getStyle();
                paint2.setStyle(Paint.Style.FILL);
                if (this.f != 3) {
                    z = false;
                }
                int i3 = z ? -1 : this.g;
                if (z) {
                    i2 = this.g;
                }
                float f = this.f5188a;
                float f2 = f / 2.0f;
                float f3 = -f2;
                setShadowLayer(f, f3, f3, i3);
                super.onDraw(canvas);
                a(0);
                setShadowLayer(this.f5188a, f2, f2, i2);
                super.onDraw(canvas);
                paint2.setStyle(style2);
                a(this.e);
            }

            @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
            public final void onMeasure(int i, int i2) {
                float size = View.MeasureSpec.getSize(i2) * 0.75f;
                setTextSize(0, size);
                this.i = (0.1f * size) + 1.0f;
                float f = (size * 0.05f) + 1.0f;
                this.f5188a = f;
                this.f5189b = f;
                setScaleX(1.0f);
                getPaint().getTextBounds("1234567890123456789012345678901234", 0, 34, a.this.f5184a);
                float width = a.this.f5184a.width();
                float size2 = View.MeasureSpec.getSize(i);
                if (width != BitmapDescriptorFactory.HUE_RED) {
                    setScaleX(size2 / width);
                } else {
                    Log.w("Cea608CaptionRenderer", "onMeasure(): Paint#getTextBounds() returned zero width. Ignored.");
                }
                super.onMeasure(i, i2);
            }
        }

        a(d dVar, Context context) {
            this(dVar, context, null);
        }

        a(d dVar, Context context, AttributeSet attributeSet) {
            this(context, attributeSet, 0);
        }

        a(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f5184a = new Rect();
        }

        @Override // androidx.media2.widget.c.d
        public final androidx.media2.widget.b a() {
            return this.f5243c;
        }

        @Override // androidx.media2.widget.g
        public final g.a a(Context context) {
            return new C0104a(context);
        }

        @Override // androidx.media2.widget.c.d
        public final void a(SpannableStringBuilder[] spannableStringBuilderArr) {
            C0104a aVar = (C0104a) this.e;
            for (int i = 0; i < 15; i++) {
                if (spannableStringBuilderArr[i] != null) {
                    aVar.f5186a[i].setText(spannableStringBuilderArr[i], TextView.BufferType.SPANNABLE);
                    aVar.f5186a[i].setVisibility(0);
                } else {
                    aVar.f5186a[i].setVisibility(4);
                }
            }
            if (this.f5244d != null) {
                this.f5244d.a();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/d$b.class */
    static final class b extends p {
        private final c g;
        private final a h;

        b(a aVar, MediaFormat mediaFormat) {
            super(mediaFormat);
            this.h = aVar;
            this.g = new c(aVar);
        }

        @Override // androidx.media2.widget.p
        public final p.c a() {
            return this.h;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:135:0x04a6 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:63:0x026f  */
        @Override // androidx.media2.widget.p
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(byte[] r7) {
            /*
                Method dump skipped, instructions count: 1197
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.widget.d.b.a(byte[]):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Context context) {
        this.f5182a = context;
    }

    @Override // androidx.media2.widget.o.d
    public final boolean a(MediaFormat mediaFormat) {
        if (mediaFormat.containsKey("mime")) {
            return "text/cea-608".equals(mediaFormat.getString("mime"));
        }
        return false;
    }

    @Override // androidx.media2.widget.o.d
    public final p b(MediaFormat mediaFormat) {
        if ("text/cea-608".equals(mediaFormat.getString("mime"))) {
            if (this.f5183b == null) {
                this.f5183b = new a(this, this.f5182a);
            }
            return new b(this.f5183b, mediaFormat);
        }
        throw new RuntimeException("No matching format: " + mediaFormat.toString());
    }
}
