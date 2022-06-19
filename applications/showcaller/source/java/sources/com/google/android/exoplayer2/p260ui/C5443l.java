package com.google.android.exoplayer2.p260ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.RelativeSizeSpan;
import com.google.android.exoplayer2.text.C5316a;
import com.google.android.exoplayer2.text.C5317b;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.google.android.exoplayer2.ui.l */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/l.class */
final class C5443l {

    /* renamed from: A */
    private float f17562A;

    /* renamed from: B */
    private int f17563B;

    /* renamed from: C */
    private int f17564C;

    /* renamed from: D */
    private int f17565D;

    /* renamed from: E */
    private int f17566E;

    /* renamed from: F */
    private StaticLayout f17567F;

    /* renamed from: G */
    private int f17568G;

    /* renamed from: H */
    private int f17569H;

    /* renamed from: I */
    private int f17570I;

    /* renamed from: J */
    private Rect f17571J;

    /* renamed from: a */
    private final float f17572a;

    /* renamed from: b */
    private final float f17573b;

    /* renamed from: c */
    private final float f17574c;

    /* renamed from: d */
    private final float f17575d;

    /* renamed from: e */
    private final float f17576e;

    /* renamed from: f */
    private final TextPaint f17577f;

    /* renamed from: g */
    private final Paint f17578g;

    /* renamed from: h */
    private CharSequence f17579h;

    /* renamed from: i */
    private Layout.Alignment f17580i;

    /* renamed from: j */
    private Bitmap f17581j;

    /* renamed from: k */
    private float f17582k;

    /* renamed from: l */
    private int f17583l;

    /* renamed from: m */
    private int f17584m;

    /* renamed from: n */
    private float f17585n;

    /* renamed from: o */
    private int f17586o;

    /* renamed from: p */
    private float f17587p;

    /* renamed from: q */
    private float f17588q;

    /* renamed from: r */
    private boolean f17589r;

    /* renamed from: s */
    private boolean f17590s;

    /* renamed from: t */
    private int f17591t;

    /* renamed from: u */
    private int f17592u;

    /* renamed from: v */
    private int f17593v;

    /* renamed from: w */
    private int f17594w;

    /* renamed from: x */
    private int f17595x;

    /* renamed from: y */
    private float f17596y;

    /* renamed from: z */
    private float f17597z;

    public C5443l(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{16843287, 16843288}, 0, 0);
        this.f17576e = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f17575d = obtainStyledAttributes.getFloat(1, 1.0f);
        obtainStyledAttributes.recycle();
        float round = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.f17572a = round;
        this.f17573b = round;
        this.f17574c = round;
        TextPaint textPaint = new TextPaint();
        this.f17577f = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.f17578g = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
    }

    /* renamed from: a */
    private static boolean m19100a(CharSequence charSequence, CharSequence charSequence2) {
        return charSequence == charSequence2 || (charSequence != null && charSequence.equals(charSequence2));
    }

    @RequiresNonNull({"cueBitmap", "bitmapRect"})
    /* renamed from: c */
    private void m19098c(Canvas canvas) {
        canvas.drawBitmap(this.f17581j, (Rect) null, this.f17571J, (Paint) null);
    }

    /* renamed from: d */
    private void m19097d(Canvas canvas, boolean z) {
        if (z) {
            m19096e(canvas);
            return;
        }
        C5508e.m18911e(this.f17571J);
        C5508e.m18911e(this.f17581j);
        m19098c(canvas);
    }

    /* renamed from: e */
    private void m19096e(Canvas canvas) {
        StaticLayout staticLayout = this.f17567F;
        if (staticLayout == null) {
            return;
        }
        int save = canvas.save();
        canvas.translate(this.f17568G, this.f17569H);
        if (Color.alpha(this.f17593v) > 0) {
            this.f17578g.setColor(this.f17593v);
            canvas.drawRect(-this.f17570I, 0.0f, staticLayout.getWidth() + this.f17570I, staticLayout.getHeight(), this.f17578g);
        }
        int i = this.f17595x;
        boolean z = true;
        if (i == 1) {
            this.f17577f.setStrokeJoin(Paint.Join.ROUND);
            this.f17577f.setStrokeWidth(this.f17572a);
            this.f17577f.setColor(this.f17594w);
            this.f17577f.setStyle(Paint.Style.FILL_AND_STROKE);
            staticLayout.draw(canvas);
        } else if (i == 2) {
            TextPaint textPaint = this.f17577f;
            float f = this.f17573b;
            float f2 = this.f17574c;
            textPaint.setShadowLayer(f, f2, f2, this.f17594w);
        } else if (i == 3 || i == 4) {
            if (i != 3) {
                z = false;
            }
            int i2 = -1;
            int i3 = z ? -1 : this.f17594w;
            if (z) {
                i2 = this.f17594w;
            }
            float f3 = this.f17573b / 2.0f;
            this.f17577f.setColor(this.f17591t);
            this.f17577f.setStyle(Paint.Style.FILL);
            float f4 = -f3;
            this.f17577f.setShadowLayer(this.f17573b, f4, f4, i3);
            staticLayout.draw(canvas);
            this.f17577f.setShadowLayer(this.f17573b, f3, f3, i2);
        }
        this.f17577f.setColor(this.f17591t);
        this.f17577f.setStyle(Paint.Style.FILL);
        staticLayout.draw(canvas);
        this.f17577f.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        canvas.restoreToCount(save);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00d2  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"cueBitmap"})
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m19095f() {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p260ui.C5443l.m19095f():void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r20v7 */
    @RequiresNonNull({"cueText"})
    /* renamed from: g */
    private void m19094g() {
        SpannableStringBuilder spannableStringBuilder;
        int i;
        int i2;
        int i3;
        int round;
        int i4;
        int i5;
        CharSequence charSequence = this.f17579h;
        int i6 = this.f17565D - this.f17563B;
        int i7 = this.f17566E - this.f17564C;
        this.f17577f.setTextSize(this.f17596y);
        int i8 = (int) ((this.f17596y * 0.125f) + 0.5f);
        int i9 = i8 * 2;
        int i10 = i6 - i9;
        float f = this.f17587p;
        int i11 = i10;
        if (f != -3.4028235E38f) {
            i11 = (int) (i10 * f);
        }
        if (i11 <= 0) {
            C5526o.m18742f("SubtitlePainter", "Skipped drawing subtitle cue (insufficient space)");
            return;
        }
        if (!this.f17589r) {
            spannableStringBuilder = charSequence.toString();
        } else if (!this.f17590s) {
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(charSequence);
            int length = spannableStringBuilder2.length();
            AbsoluteSizeSpan[] absoluteSizeSpanArr = (AbsoluteSizeSpan[]) spannableStringBuilder2.getSpans(0, length, AbsoluteSizeSpan.class);
            RelativeSizeSpan[] relativeSizeSpanArr = (RelativeSizeSpan[]) spannableStringBuilder2.getSpans(0, length, RelativeSizeSpan.class);
            for (AbsoluteSizeSpan absoluteSizeSpan : absoluteSizeSpanArr) {
                spannableStringBuilder2.removeSpan(absoluteSizeSpan);
            }
            int length2 = relativeSizeSpanArr.length;
            int i12 = 0;
            while (true) {
                spannableStringBuilder = spannableStringBuilder2;
                if (i12 >= length2) {
                    break;
                }
                spannableStringBuilder2.removeSpan(relativeSizeSpanArr[i12]);
                i12++;
            }
        } else {
            spannableStringBuilder = charSequence;
            if (this.f17597z > 0.0f) {
                spannableStringBuilder = new SpannableStringBuilder(charSequence);
                spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) this.f17597z), 0, spannableStringBuilder.length(), 16711680);
            }
        }
        SpannableStringBuilder spannableStringBuilder3 = spannableStringBuilder;
        if (Color.alpha(this.f17592u) > 0) {
            SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder(spannableStringBuilder);
            spannableStringBuilder4.setSpan(new BackgroundColorSpan(this.f17592u), 0, spannableStringBuilder4.length(), 16711680);
            spannableStringBuilder3 = spannableStringBuilder4;
        }
        Layout.Alignment alignment = this.f17580i;
        Layout.Alignment alignment2 = alignment;
        if (alignment == null) {
            alignment2 = Layout.Alignment.ALIGN_CENTER;
        }
        StaticLayout staticLayout = new StaticLayout(spannableStringBuilder3, this.f17577f, i11, alignment2, this.f17575d, this.f17576e, true);
        this.f17567F = staticLayout;
        int height = staticLayout.getHeight();
        int lineCount = this.f17567F.getLineCount();
        int i13 = 0;
        for (int i14 = 0; i14 < lineCount; i14++) {
            i13 = Math.max((int) Math.ceil(this.f17567F.getLineWidth(i14)), i13);
        }
        if (this.f17587p == -3.4028235E38f || i13 >= i11) {
            i11 = i13;
        }
        int i15 = i11 + i9;
        float f2 = this.f17585n;
        if (f2 != -3.4028235E38f) {
            int round2 = Math.round(i6 * f2);
            int i16 = this.f17563B;
            int i17 = round2 + i16;
            int i18 = this.f17586o;
            if (i18 == 1) {
                i17 = ((i17 * 2) - i15) / 2;
            } else if (i18 == 2) {
                i17 -= i15;
            }
            i = Math.max(i17, i16);
            i2 = Math.min(i15 + i, this.f17565D);
        } else {
            i = ((i6 - i15) / 2) + this.f17563B;
            i2 = i + i15;
        }
        int i19 = i2 - i;
        if (i19 <= 0) {
            C5526o.m18742f("SubtitlePainter", "Skipped drawing subtitle cue (invalid horizontal positioning)");
            return;
        }
        float f3 = this.f17582k;
        if (f3 != -3.4028235E38f) {
            if (this.f17583l == 0) {
                round = Math.round(i7 * f3);
                i4 = this.f17564C;
            } else {
                int lineBottom = this.f17567F.getLineBottom(0) - this.f17567F.getLineTop(0);
                float f4 = this.f17582k;
                if (f4 >= 0.0f) {
                    round = Math.round(f4 * lineBottom);
                    i4 = this.f17564C;
                } else {
                    round = Math.round((f4 + 1.0f) * lineBottom);
                    i4 = this.f17566E;
                }
            }
            int i20 = round + i4;
            int i21 = this.f17584m;
            if (i21 == 2) {
                i5 = i20 - height;
            } else {
                i5 = i20;
                if (i21 == 1) {
                    i5 = ((i20 * 2) - height) / 2;
                }
            }
            int i22 = this.f17566E;
            if (i5 + height > i22) {
                i3 = i22 - height;
            } else {
                int i23 = this.f17564C;
                i3 = i5;
                if (i5 < i23) {
                    i3 = i23;
                }
            }
        } else {
            i3 = (this.f17566E - height) - ((int) (i7 * this.f17562A));
        }
        this.f17567F = new StaticLayout(spannableStringBuilder3, this.f17577f, i19, alignment2, this.f17575d, this.f17576e, true);
        this.f17568G = i;
        this.f17569H = i3;
        this.f17570I = i8;
    }

    /* renamed from: b */
    public void m19099b(C5317b c5317b, boolean z, boolean z2, C5316a c5316a, float f, float f2, float f3, Canvas canvas, int i, int i2, int i3, int i4) {
        boolean z3 = c5317b.f16906g == null;
        int i5 = -16777216;
        if (z3) {
            if (TextUtils.isEmpty(c5317b.f16904e)) {
                return;
            }
            i5 = (!c5317b.f16914o || !z) ? c5316a.f16899d : c5317b.f16915p;
        }
        if (m19100a(this.f17579h, c5317b.f16904e) && C5515h0.m18843b(this.f17580i, c5317b.f16905f) && this.f17581j == c5317b.f16906g && this.f17582k == c5317b.f16907h && this.f17583l == c5317b.f16908i && C5515h0.m18843b(Integer.valueOf(this.f17584m), Integer.valueOf(c5317b.f16909j)) && this.f17585n == c5317b.f16910k && C5515h0.m18843b(Integer.valueOf(this.f17586o), Integer.valueOf(c5317b.f16911l)) && this.f17587p == c5317b.f16912m && this.f17588q == c5317b.f16913n && this.f17589r == z && this.f17590s == z2 && this.f17591t == c5316a.f16897b && this.f17592u == c5316a.f16898c && this.f17593v == i5 && this.f17595x == c5316a.f16900e && this.f17594w == c5316a.f16901f && C5515h0.m18843b(this.f17577f.getTypeface(), c5316a.f16902g) && this.f17596y == f && this.f17597z == f2 && this.f17562A == f3 && this.f17563B == i && this.f17564C == i2 && this.f17565D == i3 && this.f17566E == i4) {
            m19097d(canvas, z3);
            return;
        }
        this.f17579h = c5317b.f16904e;
        this.f17580i = c5317b.f16905f;
        this.f17581j = c5317b.f16906g;
        this.f17582k = c5317b.f16907h;
        this.f17583l = c5317b.f16908i;
        this.f17584m = c5317b.f16909j;
        this.f17585n = c5317b.f16910k;
        this.f17586o = c5317b.f16911l;
        this.f17587p = c5317b.f16912m;
        this.f17588q = c5317b.f16913n;
        this.f17589r = z;
        this.f17590s = z2;
        this.f17591t = c5316a.f16897b;
        this.f17592u = c5316a.f16898c;
        this.f17593v = i5;
        this.f17595x = c5316a.f16900e;
        this.f17594w = c5316a.f16901f;
        this.f17577f.setTypeface(c5316a.f16902g);
        this.f17596y = f;
        this.f17597z = f2;
        this.f17562A = f3;
        this.f17563B = i;
        this.f17564C = i2;
        this.f17565D = i3;
        this.f17566E = i4;
        if (z3) {
            C5508e.m18911e(this.f17579h);
            m19094g();
        } else {
            C5508e.m18911e(this.f17581j);
            m19095f();
        }
        m19097d(canvas, z3);
    }
}
