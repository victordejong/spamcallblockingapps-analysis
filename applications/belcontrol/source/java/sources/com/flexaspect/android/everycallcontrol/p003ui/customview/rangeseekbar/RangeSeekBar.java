package com.flexaspect.android.everycallcontrol.p003ui.customview.rangeseekbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.customview.rangeseekbar.RangeSeekBar */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar.class */
public class RangeSeekBar extends View {

    /* renamed from: A */
    public float f2854A;

    /* renamed from: B */
    public float f2855B;

    /* renamed from: C */
    public int f2856C;

    /* renamed from: D */
    public boolean f2857D;

    /* renamed from: E */
    public int f2858E;

    /* renamed from: F */
    public float f2859F;

    /* renamed from: G */
    public float f2860G;

    /* renamed from: H */
    public boolean f2861H;

    /* renamed from: I */
    public float f2862I;

    /* renamed from: J */
    public float f2863J;

    /* renamed from: K */
    public boolean f2864K;

    /* renamed from: L */
    public Paint f2865L;

    /* renamed from: M */
    public RectF f2866M;

    /* renamed from: N */
    public RectF f2867N;

    /* renamed from: O */
    public Rect f2868O;

    /* renamed from: P */
    public RectF f2869P;

    /* renamed from: Q */
    public Rect f2870Q;

    /* renamed from: R */
    public cw0 f2871R;

    /* renamed from: S */
    public cw0 f2872S;

    /* renamed from: T */
    public cw0 f2873T;

    /* renamed from: U */
    public Bitmap f2874U;

    /* renamed from: V */
    public Bitmap f2875V;

    /* renamed from: W */
    public List<Bitmap> f2876W;

    /* renamed from: a */
    public int f2877a;

    /* renamed from: a0 */
    public int f2878a0;

    /* renamed from: b */
    public int f2879b;

    /* renamed from: b0 */
    public bw0 f2880b0;

    /* renamed from: c */
    public int f2881c;

    /* renamed from: d */
    public int f2882d;

    /* renamed from: f */
    public int f2883f;

    /* renamed from: g */
    public int f2884g;

    /* renamed from: h */
    public int f2885h;

    /* renamed from: j */
    public int f2886j;

    /* renamed from: k */
    public int f2887k;

    /* renamed from: l */
    public int f2888l;

    /* renamed from: m */
    public int f2889m;

    /* renamed from: n */
    public int f2890n;

    /* renamed from: o */
    public CharSequence[] f2891o;

    /* renamed from: p */
    public float f2892p;

    /* renamed from: q */
    public int f2893q;

    /* renamed from: r */
    public int f2894r;

    /* renamed from: s */
    public int f2895s;

    /* renamed from: t */
    public int f2896t;

    /* renamed from: u */
    public int f2897u;

    /* renamed from: v */
    public int f2898v;

    /* renamed from: w */
    public float f2899w;

    /* renamed from: x */
    public int f2900x;

    /* renamed from: y */
    public int f2901y;

    /* renamed from: z */
    public float f2902z;

    public RangeSeekBar(Context context) {
        this(context, null);
    }

    public RangeSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2861H = true;
        this.f2864K = false;
        this.f2865L = new Paint();
        this.f2866M = new RectF();
        this.f2867N = new RectF();
        this.f2868O = new Rect();
        this.f2869P = new RectF();
        this.f2870Q = new Rect();
        this.f2876W = new ArrayList();
        m4806e(attributeSet);
        m4805f();
        m4803h(attributeSet);
        m4802i();
    }

    /* renamed from: a */
    public float m4810a(float f) {
        if (this.f2873T == null) {
            return 0.0f;
        }
        float progressLeft = f < ((float) getProgressLeft()) ? 0.0f : f > ((float) getProgressRight()) ? 1.0f : ((f - getProgressLeft()) * 1.0f) / this.f2898v;
        float f2 = progressLeft;
        if (this.f2883f == 2) {
            cw0 cw0Var = this.f2873T;
            cw0 cw0Var2 = this.f2871R;
            if (cw0Var == cw0Var2) {
                float f3 = this.f2872S.f5719x;
                float f4 = this.f2863J;
                f2 = progressLeft;
                if (progressLeft > f3 - f4) {
                    f2 = f3 - f4;
                }
            } else {
                f2 = progressLeft;
                if (cw0Var == this.f2872S) {
                    float f5 = cw0Var2.f5719x;
                    float f6 = this.f2863J;
                    f2 = progressLeft;
                    if (progressLeft < f5 + f6) {
                        f2 = f5 + f6;
                    }
                }
            }
        }
        return f2;
    }

    /* renamed from: b */
    public final void m4809b(boolean z) {
        cw0 cw0Var;
        if (!z || (cw0Var = this.f2873T) == null) {
            this.f2871R.m2977C(false);
            if (this.f2883f != 2) {
                return;
            }
            this.f2872S.m2977C(false);
            return;
        }
        cw0 cw0Var2 = this.f2871R;
        boolean z2 = false;
        if (cw0Var == cw0Var2) {
            z2 = true;
        }
        cw0Var2.m2977C(z2);
        if (this.f2883f != 2) {
            return;
        }
        this.f2872S.m2977C(!z2);
    }

    /* renamed from: c */
    public float m4808c(MotionEvent motionEvent) {
        return motionEvent.getX();
    }

    /* renamed from: d */
    public float m4807d(MotionEvent motionEvent) {
        return motionEvent.getY();
    }

    /* renamed from: e */
    public final void m4806e(AttributeSet attributeSet) {
        try {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, jq0.RangeSeekBar);
            this.f2883f = obtainStyledAttributes.getInt(18, 2);
            this.f2859F = obtainStyledAttributes.getFloat(16, 0.0f);
            this.f2860G = obtainStyledAttributes.getFloat(15, 100.0f);
            this.f2899w = obtainStyledAttributes.getFloat(17, 0.0f);
            this.f2900x = obtainStyledAttributes.getInt(0, 0);
            this.f2893q = obtainStyledAttributes.getColor(19, -11806366);
            this.f2892p = (int) obtainStyledAttributes.getDimension(24, -1.0f);
            this.f2894r = obtainStyledAttributes.getColor(20, -2631721);
            this.f2895s = obtainStyledAttributes.getResourceId(21, 0);
            this.f2896t = obtainStyledAttributes.getResourceId(22, 0);
            this.f2897u = (int) obtainStyledAttributes.getDimension(23, oe1.m1093c(2));
            this.f2884g = obtainStyledAttributes.getInt(40, 0);
            this.f2887k = obtainStyledAttributes.getInt(37, 1);
            this.f2888l = obtainStyledAttributes.getInt(39, 0);
            this.f2891o = obtainStyledAttributes.getTextArray(42);
            this.f2885h = (int) obtainStyledAttributes.getDimension(44, oe1.m1093c(7));
            this.f2886j = (int) obtainStyledAttributes.getDimension(45, oe1.m1093c(12));
            this.f2889m = obtainStyledAttributes.getColor(43, this.f2894r);
            this.f2890n = obtainStyledAttributes.getColor(43, this.f2893q);
            this.f2856C = obtainStyledAttributes.getInt(31, 0);
            this.f2901y = obtainStyledAttributes.getColor(26, -6447715);
            this.f2855B = obtainStyledAttributes.getDimension(29, 0.0f);
            this.f2902z = obtainStyledAttributes.getDimension(30, 0.0f);
            this.f2854A = obtainStyledAttributes.getDimension(28, 0.0f);
            this.f2858E = obtainStyledAttributes.getResourceId(27, 0);
            this.f2857D = obtainStyledAttributes.getBoolean(25, true);
            obtainStyledAttributes.recycle();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: f */
    public final void m4805f() {
        this.f2865L.setStyle(Paint.Style.FILL);
        this.f2865L.setColor(this.f2894r);
        this.f2865L.setTextSize(this.f2886j);
    }

    /* renamed from: g */
    public final void m4804g() {
        if (this.f2874U == null) {
            this.f2874U = oe1.m1085g(getContext(), this.f2898v, this.f2897u, this.f2895s);
        }
        if (this.f2875V == null) {
            this.f2875V = oe1.m1085g(getContext(), this.f2898v, this.f2897u, this.f2896t);
        }
    }

    public int getGravity() {
        return this.f2900x;
    }

    public cw0 getLeftSeekBar() {
        return this.f2871R;
    }

    public float getMaxProgress() {
        return this.f2860G;
    }

    public float getMinInterval() {
        return this.f2899w;
    }

    public float getMinProgress() {
        return this.f2859F;
    }

    public int getProgressBottom() {
        return this.f2879b;
    }

    public int getProgressColor() {
        return this.f2893q;
    }

    public int getProgressDefaultColor() {
        return this.f2894r;
    }

    public int getProgressDefaultDrawableId() {
        return this.f2896t;
    }

    public int getProgressDrawableId() {
        return this.f2895s;
    }

    public int getProgressHeight() {
        return this.f2897u;
    }

    public int getProgressLeft() {
        return this.f2881c;
    }

    public int getProgressPaddingRight() {
        return this.f2878a0;
    }

    public float getProgressRadius() {
        return this.f2892p;
    }

    public int getProgressRight() {
        return this.f2882d;
    }

    public int getProgressTop() {
        return this.f2877a;
    }

    public int getProgressWidth() {
        return this.f2898v;
    }

    public dw0[] getRangeSeekBarState() {
        dw0 dw0Var = new dw0();
        float m2958j = this.f2871R.m2958j();
        dw0Var.f6146b = m2958j;
        dw0Var.f6145a = String.valueOf(m2958j);
        if (oe1.m1095b(dw0Var.f6146b, this.f2859F) == 0) {
            dw0Var.f6147c = true;
        } else if (oe1.m1095b(dw0Var.f6146b, this.f2860G) == 0) {
            dw0Var.f6148d = true;
        }
        dw0 dw0Var2 = new dw0();
        if (this.f2883f == 2) {
            float m2958j2 = this.f2872S.m2958j();
            dw0Var2.f6146b = m2958j2;
            dw0Var2.f6145a = String.valueOf(m2958j2);
            if (oe1.m1095b(this.f2872S.f5719x, this.f2859F) == 0) {
                dw0Var2.f6147c = true;
            } else if (oe1.m1095b(this.f2872S.f5719x, this.f2860G) == 0) {
                dw0Var2.f6148d = true;
            }
        }
        return new dw0[]{dw0Var, dw0Var2};
    }

    public float getRawHeight() {
        float f;
        if (this.f2883f == 1) {
            float m2957k = this.f2871R.m2957k();
            f = m2957k;
            if (this.f2888l == 1) {
                f = m2957k;
                if (this.f2891o != null) {
                    f = (m2957k - (this.f2871R.m2954n() / 2.0f)) + (this.f2897u / 2.0f) + Math.max((this.f2871R.m2954n() - this.f2897u) / 2.0f, getTickMarkRawHeight());
                }
            }
        } else {
            float max = Math.max(this.f2871R.m2957k(), this.f2872S.m2957k());
            f = max;
            if (this.f2888l == 1) {
                f = max;
                if (this.f2891o != null) {
                    float max2 = Math.max(this.f2871R.m2954n(), this.f2872S.m2954n());
                    f = (max - (max2 / 2.0f)) + (this.f2897u / 2.0f) + Math.max((max2 - this.f2897u) / 2.0f, getTickMarkRawHeight());
                }
            }
        }
        return f;
    }

    public cw0 getRightSeekBar() {
        return this.f2872S;
    }

    public int getSeekBarMode() {
        return this.f2883f;
    }

    public int getSteps() {
        return this.f2856C;
    }

    public List<Bitmap> getStepsBitmaps() {
        return this.f2876W;
    }

    public int getStepsColor() {
        return this.f2901y;
    }

    public int getStepsDrawableId() {
        return this.f2858E;
    }

    public float getStepsHeight() {
        return this.f2854A;
    }

    public float getStepsRadius() {
        return this.f2855B;
    }

    public float getStepsWidth() {
        return this.f2902z;
    }

    public int getTickMarkGravity() {
        return this.f2887k;
    }

    public int getTickMarkInRangeTextColor() {
        return this.f2890n;
    }

    public int getTickMarkLayoutGravity() {
        return this.f2888l;
    }

    public int getTickMarkMode() {
        return this.f2884g;
    }

    public int getTickMarkRawHeight() {
        CharSequence[] charSequenceArr = this.f2891o;
        if (charSequenceArr == null || charSequenceArr.length <= 0) {
            return 0;
        }
        return this.f2885h + oe1.m1106R(String.valueOf(charSequenceArr[0]), this.f2886j).height() + 3;
    }

    public CharSequence[] getTickMarkTextArray() {
        return this.f2891o;
    }

    public int getTickMarkTextColor() {
        return this.f2889m;
    }

    public int getTickMarkTextMargin() {
        return this.f2885h;
    }

    public int getTickMarkTextSize() {
        return this.f2886j;
    }

    /* renamed from: h */
    public final void m4803h(AttributeSet attributeSet) {
        boolean z = true;
        this.f2871R = new cw0(this, attributeSet, true);
        cw0 cw0Var = new cw0(this, attributeSet, false);
        this.f2872S = cw0Var;
        if (this.f2883f == 1) {
            z = false;
        }
        cw0Var.m2969K(z);
    }

    /* renamed from: i */
    public final void m4802i() {
        if (!m4794q() || this.f2858E == 0 || !this.f2876W.isEmpty()) {
            return;
        }
        Bitmap m1085g = oe1.m1085g(getContext(), (int) this.f2902z, (int) this.f2854A, this.f2858E);
        for (int i = 0; i <= this.f2856C; i++) {
            this.f2876W.add(m1085g);
        }
    }

    /* renamed from: j */
    public void m4801j(Canvas canvas, Paint paint) {
        float f;
        cw0 cw0Var;
        float f2;
        RectF rectF;
        cw0 cw0Var2;
        cw0 cw0Var3;
        cw0 cw0Var4;
        cw0 cw0Var5;
        if (oe1.m1050x0(this.f2875V)) {
            canvas.drawBitmap(this.f2875V, (Rect) null, this.f2866M, paint);
        } else {
            paint.setColor(this.f2894r);
            RectF rectF2 = this.f2866M;
            float f3 = this.f2892p;
            canvas.drawRoundRect(rectF2, f3, f3, paint);
        }
        if (this.f2883f == 2) {
            this.f2867N.top = getProgressTop();
            this.f2867N.left = cw0Var4.f5715t + (this.f2871R.m2952p() / 2.0f) + (this.f2898v * this.f2871R.f5719x);
            rectF = this.f2867N;
            f = cw0Var5.f5715t + (this.f2872S.m2952p() / 2.0f);
            f2 = this.f2898v;
            cw0Var = this.f2872S;
        } else {
            this.f2867N.top = getProgressTop();
            this.f2867N.left = cw0Var2.f5715t + (this.f2871R.m2952p() / 2.0f);
            rectF = this.f2867N;
            f = cw0Var3.f5715t + (this.f2871R.m2952p() / 2.0f);
            f2 = this.f2898v;
            cw0Var = this.f2871R;
        }
        rectF.right = f + (f2 * cw0Var.f5719x);
        this.f2867N.bottom = getProgressBottom();
        if (!oe1.m1050x0(this.f2874U)) {
            paint.setColor(this.f2893q);
            RectF rectF3 = this.f2867N;
            float f4 = this.f2892p;
            canvas.drawRoundRect(rectF3, f4, f4, paint);
            return;
        }
        Rect rect = this.f2868O;
        rect.top = 0;
        rect.bottom = this.f2874U.getHeight();
        int width = this.f2874U.getWidth();
        if (this.f2883f == 2) {
            Rect rect2 = this.f2868O;
            float f5 = width;
            rect2.left = (int) (this.f2871R.f5719x * f5);
            rect2.right = (int) (f5 * this.f2872S.f5719x);
        } else {
            Rect rect3 = this.f2868O;
            rect3.left = 0;
            rect3.right = (int) (width * this.f2871R.f5719x);
        }
        canvas.drawBitmap(this.f2874U, this.f2868O, this.f2867N, (Paint) null);
    }

    /* renamed from: k */
    public void m4800k(Canvas canvas) {
        if (this.f2871R.m2959i() == 3) {
            this.f2871R.m2972H(true);
        }
        this.f2871R.m2966b(canvas);
        if (this.f2883f == 2) {
            if (this.f2872S.m2959i() == 3) {
                this.f2872S.m2972H(true);
            }
            this.f2872S.m2966b(canvas);
        }
    }

    /* renamed from: l */
    public void m4799l(Canvas canvas, Paint paint) {
        if (!m4794q()) {
            return;
        }
        int progressWidth = getProgressWidth() / this.f2856C;
        float progressHeight = (this.f2854A - getProgressHeight()) / 2.0f;
        for (int i = 0; i <= this.f2856C; i++) {
            float progressLeft = (getProgressLeft() + (i * progressWidth)) - (this.f2902z / 2.0f);
            this.f2869P.set(progressLeft, getProgressTop() - progressHeight, this.f2902z + progressLeft, getProgressBottom() + progressHeight);
            if (this.f2876W.isEmpty() || this.f2876W.size() <= i) {
                paint.setColor(this.f2901y);
                RectF rectF = this.f2869P;
                float f = this.f2855B;
                canvas.drawRoundRect(rectF, f, f, paint);
            } else {
                canvas.drawBitmap(this.f2876W.get(i), (Rect) null, this.f2869P, paint);
            }
        }
    }

    /* renamed from: m */
    public void m4798m(Canvas canvas, Paint paint) {
        float f;
        int progressLeft;
        CharSequence[] charSequenceArr = this.f2891o;
        if (charSequenceArr != null) {
            int length = this.f2898v / (charSequenceArr.length - 1);
            int i = 0;
            while (true) {
                CharSequence[] charSequenceArr2 = this.f2891o;
                if (i >= charSequenceArr2.length) {
                    return;
                }
                String charSequence = charSequenceArr2[i].toString();
                if (!TextUtils.isEmpty(charSequence)) {
                    paint.getTextBounds(charSequence, 0, charSequence.length(), this.f2870Q);
                    paint.setColor(this.f2889m);
                    if (this.f2884g == 1) {
                        int i2 = this.f2887k;
                        if (i2 == 2) {
                            progressLeft = (getProgressLeft() + (i * length)) - this.f2870Q.width();
                        } else if (i2 == 1) {
                            f = (getProgressLeft() + (i * length)) - (this.f2870Q.width() / 2.0f);
                        } else {
                            progressLeft = getProgressLeft() + (i * length);
                        }
                        f = progressLeft;
                    } else {
                        float m1103U = oe1.m1103U(charSequence);
                        dw0[] rangeSeekBarState = getRangeSeekBarState();
                        if (oe1.m1095b(m1103U, rangeSeekBarState[0].f6146b) != -1 && oe1.m1095b(m1103U, rangeSeekBarState[1].f6146b) != 1 && this.f2883f == 2) {
                            paint.setColor(this.f2890n);
                        }
                        float progressLeft2 = getProgressLeft();
                        float f2 = this.f2898v;
                        float f3 = this.f2859F;
                        f = (progressLeft2 + ((f2 * (m1103U - f3)) / (this.f2860G - f3))) - (this.f2870Q.width() / 2.0f);
                    }
                    canvas.drawText(charSequence, f, this.f2888l == 0 ? getProgressTop() - this.f2885h : getProgressBottom() + this.f2885h + this.f2870Q.height(), paint);
                }
                i++;
            }
        }
    }

    /* renamed from: n */
    public void m4797n(int i, int i2) {
        int paddingBottom = (i2 - getPaddingBottom()) - getPaddingTop();
        if (i2 <= 0) {
            return;
        }
        int i3 = this.f2900x;
        if (i3 == 0) {
            float max = (this.f2871R.m2959i() == 1 && this.f2872S.m2959i() == 1) ? 0.0f : Math.max(this.f2871R.m2960h(), this.f2872S.m2960h());
            float max2 = Math.max(this.f2871R.m2954n(), this.f2872S.m2954n());
            int i4 = this.f2897u;
            float f = max2 - (i4 / 2.0f);
            this.f2877a = (int) (((f - i4) / 2.0f) + max);
            if (this.f2891o != null && this.f2888l == 0) {
                this.f2877a = (int) Math.max(getTickMarkRawHeight(), max + ((f - this.f2897u) / 2.0f));
            }
            this.f2879b = this.f2877a + this.f2897u;
        } else if (i3 == 1) {
            if (this.f2891o == null || this.f2888l != 1) {
                this.f2879b = (int) ((paddingBottom - (Math.max(this.f2871R.m2954n(), this.f2872S.m2954n()) / 2.0f)) + (this.f2897u / 2.0f));
            } else {
                this.f2879b = paddingBottom - getTickMarkRawHeight();
            }
            this.f2877a = this.f2879b - this.f2897u;
        } else {
            int i5 = this.f2897u;
            int i6 = (paddingBottom - i5) / 2;
            this.f2877a = i6;
            this.f2879b = i6 + i5;
        }
        int max3 = ((int) Math.max(this.f2871R.m2952p(), this.f2872S.m2952p())) / 2;
        this.f2881c = getPaddingLeft() + max3;
        int paddingRight = (i - max3) - getPaddingRight();
        this.f2882d = paddingRight;
        this.f2898v = paddingRight - this.f2881c;
        this.f2866M.set(getProgressLeft(), getProgressTop(), getProgressRight(), getProgressBottom());
        this.f2878a0 = i - this.f2882d;
        if (this.f2892p <= 0.0f) {
            this.f2892p = (int) ((getProgressBottom() - getProgressTop()) * 0.45f);
        }
        m4804g();
    }

    /* renamed from: o */
    public final void m4796o() {
        cw0 cw0Var = this.f2873T;
        if (cw0Var == null || cw0Var.m2953o() <= 1.0f || !this.f2864K) {
            return;
        }
        this.f2864K = false;
        this.f2873T.m2979A();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        m4798m(canvas, this.f2865L);
        m4801j(canvas, this.f2865L);
        m4799l(canvas, this.f2865L);
        m4800k(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        float f;
        float f2;
        float f3;
        int size = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (mode == 1073741824) {
            i3 = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
        } else if (mode == Integer.MIN_VALUE && (getParent() instanceof ViewGroup) && size == -1) {
            i3 = View.MeasureSpec.makeMeasureSpec(((ViewGroup) getParent()).getMeasuredHeight(), Integer.MIN_VALUE);
        } else {
            if (this.f2900x == 2) {
                if (this.f2891o == null || this.f2888l != 1) {
                    f3 = getRawHeight();
                    f2 = Math.max(this.f2871R.m2954n(), this.f2872S.m2954n()) / 2.0f;
                } else {
                    f3 = getRawHeight();
                    f2 = getTickMarkRawHeight();
                }
                f = (f3 - f2) * 2.0f;
            } else {
                f = getRawHeight();
            }
            i3 = View.MeasureSpec.makeMeasureSpec((int) f, 1073741824);
        }
        super.onMeasure(i, i3);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        try {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            setRange(savedState.f2903a, savedState.f2904b, savedState.f2905c);
            setProgress(savedState.f2907f, savedState.f2908g);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f2903a = this.f2859F;
        savedState.f2904b = this.f2860G;
        savedState.f2905c = this.f2899w;
        dw0[] rangeSeekBarState = getRangeSeekBarState();
        savedState.f2907f = rangeSeekBarState[0].f6146b;
        savedState.f2908g = rangeSeekBarState[1].f6146b;
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m4797n(i, i2);
        setRange(this.f2859F, this.f2860G, this.f2899w);
        int progressBottom = (getProgressBottom() + getProgressTop()) / 2;
        this.f2871R.m2942z(getProgressLeft(), progressBottom);
        if (this.f2883f == 2) {
            this.f2872S.m2942z(getProgressLeft(), progressBottom);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0389  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0152  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 954
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flexaspect.android.everycallcontrol.p003ui.customview.rangeseekbar.RangeSeekBar.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: p */
    public final void m4795p() {
        cw0 cw0Var = this.f2873T;
        if (cw0Var == null || cw0Var.m2953o() <= 1.0f || this.f2864K) {
            return;
        }
        this.f2864K = true;
        this.f2873T.m2978B();
    }

    /* renamed from: q */
    public final boolean m4794q() {
        boolean z = true;
        if (this.f2856C < 1 || this.f2854A <= 0.0f || this.f2902z <= 0.0f) {
            z = false;
        }
        return z;
    }

    public void setEnableThumbOverlap(boolean z) {
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f2861H = z;
    }

    public void setGravity(int i) {
        this.f2900x = i;
    }

    public void setIndicatorText(String str) {
        this.f2871R.m2975E(str);
        if (this.f2883f == 2) {
            this.f2872S.m2975E(str);
        }
    }

    public void setIndicatorTextDecimalFormat(String str) {
        this.f2871R.m2974F(str);
        if (this.f2883f == 2) {
            this.f2872S.m2974F(str);
        }
    }

    public void setIndicatorTextStringFormat(String str) {
        this.f2871R.m2973G(str);
        if (this.f2883f == 2) {
            this.f2872S.m2973G(str);
        }
    }

    public void setOnRangeChangedListener(bw0 bw0Var) {
        this.f2880b0 = bw0Var;
    }

    public void setProgress(float f) {
        setProgress(f, this.f2860G);
    }

    public void setProgress(float f, float f2) {
        float min = Math.min(f, f2);
        float max = Math.max(min, f2);
        float f3 = this.f2899w;
        float f4 = min;
        if (max - min < f3) {
            f4 = max - f3;
        }
        float f5 = this.f2859F;
        if (f4 < f5) {
            throw new IllegalArgumentException("setProgress() min < (preset min - offsetValue) . #min:" + f4 + " #preset min:" + max);
        }
        float f6 = this.f2860G;
        if (max > f6) {
            throw new IllegalArgumentException("setProgress() max > (preset max - offsetValue) . #max:" + max + " #preset max:" + max);
        }
        float f7 = f6 - f5;
        this.f2871R.f5719x = Math.abs(f4 - f5) / f7;
        if (this.f2883f == 2) {
            this.f2872S.f5719x = Math.abs(max - this.f2859F) / f7;
        }
        bw0 bw0Var = this.f2880b0;
        if (bw0Var != null) {
            bw0Var.m5586b(this, f4, max, false);
        }
        invalidate();
    }

    public void setProgressBottom(int i) {
        this.f2879b = i;
    }

    public void setProgressColor(int i) {
        this.f2893q = i;
    }

    public void setProgressColor(int i, int i2) {
        this.f2894r = i;
        this.f2893q = i2;
    }

    public void setProgressDefaultColor(int i) {
        this.f2894r = i;
    }

    public void setProgressDefaultDrawableId(int i) {
        this.f2896t = i;
        this.f2875V = null;
        m4804g();
    }

    public void setProgressDrawableId(int i) {
        this.f2895s = i;
        this.f2874U = null;
        m4804g();
    }

    public void setProgressHeight(int i) {
        this.f2897u = i;
    }

    public void setProgressLeft(int i) {
        this.f2881c = i;
    }

    public void setProgressRadius(float f) {
        this.f2892p = f;
    }

    public void setProgressRight(int i) {
        this.f2882d = i;
    }

    public void setProgressTop(int i) {
        this.f2877a = i;
    }

    public void setProgressWidth(int i) {
        this.f2898v = i;
    }

    public void setRange(float f, float f2) {
        setRange(f, f2, this.f2899w);
    }

    public void setRange(float f, float f2, float f3) {
        if (f2 <= f) {
            throw new IllegalArgumentException("setRange() max must be greater than min ! #max:" + f2 + " #min:" + f);
        } else if (f3 < 0.0f) {
            throw new IllegalArgumentException("setRange() interval must be greater than zero ! #minInterval:" + f3);
        } else {
            float f4 = f2 - f;
            if (f3 >= f4) {
                throw new IllegalArgumentException("setRange() interval must be less than (max - min) ! #minInterval:" + f3 + " #max - min:" + f4);
            }
            this.f2860G = f2;
            this.f2859F = f;
            this.f2899w = f3;
            float f5 = f3 / f4;
            this.f2863J = f5;
            if (this.f2883f == 2) {
                cw0 cw0Var = this.f2871R;
                float f6 = cw0Var.f5719x;
                if (f6 + f5 <= 1.0f) {
                    cw0 cw0Var2 = this.f2872S;
                    if (f6 + f5 > cw0Var2.f5719x) {
                        cw0Var2.f5719x = f6 + f5;
                    }
                }
                float f7 = this.f2872S.f5719x;
                if (f7 - f5 >= 0.0f && f7 - f5 < f6) {
                    cw0Var.f5719x = f7 - f5;
                }
            }
            invalidate();
        }
    }

    public void setSeekBarMode(int i) {
        this.f2883f = i;
        cw0 cw0Var = this.f2872S;
        boolean z = true;
        if (i == 1) {
            z = false;
        }
        cw0Var.m2969K(z);
    }

    public void setSteps(int i) {
        this.f2856C = i;
    }

    public void setStepsAutoBonding(boolean z) {
        this.f2857D = z;
    }

    public void setStepsBitmaps(List<Bitmap> list) {
        if (list == null || list.isEmpty() || list.size() <= this.f2856C) {
            throw new IllegalArgumentException("stepsBitmaps must > steps !");
        }
        this.f2876W.clear();
        this.f2876W.addAll(list);
    }

    public void setStepsColor(int i) {
        this.f2901y = i;
    }

    public void setStepsDrawable(List<Integer> list) {
        if (list == null || list.isEmpty() || list.size() <= this.f2856C) {
            throw new IllegalArgumentException("stepsDrawableIds must > steps !");
        }
        if (!m4794q()) {
            throw new IllegalArgumentException("stepsWidth must > 0, stepsHeight must > 0,steps must > 0 First!!");
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(oe1.m1085g(getContext(), (int) this.f2902z, (int) this.f2854A, list.get(i).intValue()));
        }
        setStepsBitmaps(arrayList);
    }

    public void setStepsDrawableId(int i) {
        this.f2876W.clear();
        this.f2858E = i;
        m4802i();
    }

    public void setStepsHeight(float f) {
        this.f2854A = f;
    }

    public void setStepsRadius(float f) {
        this.f2855B = f;
    }

    public void setStepsWidth(float f) {
        this.f2902z = f;
    }

    public void setTickMarkGravity(int i) {
        this.f2887k = i;
    }

    public void setTickMarkInRangeTextColor(int i) {
        this.f2890n = i;
    }

    public void setTickMarkLayoutGravity(int i) {
        this.f2888l = i;
    }

    public void setTickMarkMode(int i) {
        this.f2884g = i;
    }

    public void setTickMarkTextArray(CharSequence[] charSequenceArr) {
        this.f2891o = charSequenceArr;
    }

    public void setTickMarkTextColor(int i) {
        this.f2889m = i;
    }

    public void setTickMarkTextMargin(int i) {
        this.f2885h = i;
    }

    public void setTickMarkTextSize(int i) {
        this.f2886j = i;
    }

    public void setTypeface(Typeface typeface) {
        this.f2865L.setTypeface(typeface);
    }
}
