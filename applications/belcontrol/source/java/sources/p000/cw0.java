package p000;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.flexaspect.android.everycallcontrol.p003ui.customview.rangeseekbar.RangeSeekBar;
import java.text.DecimalFormat;
/* renamed from: cw0 */
/* loaded from: classes-dex2jar.jar:cw0.class */
public class cw0 {

    /* renamed from: A */
    public boolean f5679A;

    /* renamed from: B */
    public Bitmap f5680B;

    /* renamed from: C */
    public Bitmap f5681C;

    /* renamed from: D */
    public Bitmap f5682D;

    /* renamed from: E */
    public qi1 f5683E;

    /* renamed from: F */
    public String f5684F;

    /* renamed from: I */
    public RangeSeekBar f5687I;

    /* renamed from: J */
    public String f5688J;

    /* renamed from: O */
    public DecimalFormat f5693O;

    /* renamed from: P */
    public int f5694P;

    /* renamed from: Q */
    public int f5695Q;

    /* renamed from: a */
    public int f5696a;

    /* renamed from: b */
    public int f5697b;

    /* renamed from: c */
    public int f5698c;

    /* renamed from: d */
    public int f5699d;

    /* renamed from: e */
    public int f5700e;

    /* renamed from: f */
    public int f5701f;

    /* renamed from: g */
    public int f5702g;

    /* renamed from: h */
    public int f5703h;

    /* renamed from: i */
    public float f5704i;

    /* renamed from: j */
    public int f5705j;

    /* renamed from: k */
    public int f5706k;

    /* renamed from: l */
    public int f5707l;

    /* renamed from: m */
    public int f5708m;

    /* renamed from: n */
    public int f5709n;

    /* renamed from: o */
    public int f5710o;

    /* renamed from: p */
    public int f5711p;

    /* renamed from: q */
    public int f5712q;

    /* renamed from: r */
    public int f5713r;

    /* renamed from: s */
    public float f5714s;

    /* renamed from: t */
    public int f5715t;

    /* renamed from: u */
    public int f5716u;

    /* renamed from: v */
    public int f5717v;

    /* renamed from: w */
    public int f5718w;

    /* renamed from: x */
    public float f5719x;

    /* renamed from: z */
    public boolean f5721z;

    /* renamed from: y */
    public float f5720y = 0.0f;

    /* renamed from: G */
    public boolean f5685G = false;

    /* renamed from: H */
    public boolean f5686H = true;

    /* renamed from: K */
    public Path f5689K = new Path();

    /* renamed from: L */
    public Rect f5690L = new Rect();

    /* renamed from: M */
    public Rect f5691M = new Rect();

    /* renamed from: N */
    public Paint f5692N = new Paint(1);

    public cw0(RangeSeekBar rangeSeekBar, AttributeSet attributeSet, boolean z) {
        this.f5687I = rangeSeekBar;
        this.f5679A = z;
        m2950r(attributeSet);
        m2949s();
        m2948t();
    }

    /* renamed from: u */
    public /* synthetic */ void m2946v(qi1 qi1Var) {
        this.f5720y = ((Float) qi1Var.m754x()).floatValue();
        RangeSeekBar rangeSeekBar = this.f5687I;
        if (rangeSeekBar != null) {
            rangeSeekBar.invalidate();
        }
    }

    /* renamed from: A */
    public void m2979A() {
        this.f5694P = m2951q();
        this.f5695Q = m2955m();
        int progressBottom = this.f5687I.getProgressBottom();
        int i = this.f5695Q;
        this.f5717v = progressBottom - (i / 2);
        this.f5718w = progressBottom + (i / 2);
        m2971I(this.f5710o, this.f5694P, i);
    }

    /* renamed from: B */
    public void m2978B() {
        this.f5694P = (int) m2952p();
        this.f5695Q = (int) m2954n();
        int progressBottom = this.f5687I.getProgressBottom();
        int i = this.f5695Q;
        this.f5717v = progressBottom - (i / 2);
        this.f5718w = progressBottom + (i / 2);
        m2971I(this.f5710o, this.f5694P, i);
    }

    /* renamed from: C */
    public void m2977C(boolean z) {
        this.f5685G = z;
    }

    /* renamed from: D */
    public void m2976D(int i) {
        if (i != 0) {
            this.f5700e = i;
            this.f5682D = BitmapFactory.decodeResource(m2956l(), i);
        }
    }

    /* renamed from: E */
    public void m2975E(String str) {
        this.f5684F = str;
    }

    /* renamed from: F */
    public void m2974F(String str) {
        this.f5693O = new DecimalFormat(str);
    }

    /* renamed from: G */
    public void m2973G(String str) {
        this.f5688J = str;
    }

    /* renamed from: H */
    public void m2972H(boolean z) {
        int i = this.f5696a;
        if (i != 0) {
            if (i != 1) {
                z = true;
                if (i != 2) {
                    z = true;
                    if (i != 3) {
                        return;
                    }
                }
            } else {
                z = false;
            }
        }
        this.f5721z = z;
    }

    /* renamed from: I */
    public void m2971I(int i, int i2, int i3) {
        if (i == 0 || m2956l() == null || i2 <= 0 || i3 <= 0) {
            return;
        }
        this.f5710o = i;
        this.f5680B = oe1.m1087f(i2, i3, Build.VERSION.SDK_INT >= 21 ? m2956l().getDrawable(i, null) : m2956l().getDrawable(i));
    }

    /* renamed from: J */
    public void m2970J(int i, int i2, int i3) {
        if (i == 0 || m2956l() == null) {
            return;
        }
        this.f5711p = i;
        this.f5681C = oe1.m1087f(i2, i3, Build.VERSION.SDK_INT >= 21 ? m2956l().getDrawable(i, null) : m2956l().getDrawable(i));
    }

    /* renamed from: K */
    public void m2969K(boolean z) {
        this.f5686H = z;
    }

    /* renamed from: L */
    public void m2968L(float f) {
        float f2;
        if (f < 0.0f) {
            f2 = 0.0f;
        } else {
            f2 = f;
            if (f > 1.0f) {
                f2 = 1.0f;
            }
        }
        this.f5719x = f2;
    }

    /* renamed from: a */
    public boolean m2967a(float f, float f2) {
        int progressWidth = (int) (this.f5687I.getProgressWidth() * this.f5719x);
        return f > ((float) (this.f5715t + progressWidth)) && f < ((float) (this.f5716u + progressWidth)) && f2 > ((float) this.f5717v) && f2 < ((float) this.f5718w);
    }

    /* renamed from: b */
    public void m2966b(Canvas canvas) {
        if (!this.f5686H) {
            return;
        }
        canvas.save();
        canvas.translate((int) (this.f5687I.getProgressWidth() * this.f5719x), 0.0f);
        canvas.translate(this.f5715t, 0.0f);
        if (this.f5721z) {
            m2944x(canvas, this.f5692N, m2965c(this.f5684F));
        }
        m2943y(canvas);
        canvas.restore();
    }

    /* renamed from: c */
    public String m2965c(String str) {
        dw0 dw0Var;
        DecimalFormat decimalFormat;
        dw0 dw0Var2;
        dw0[] rangeSeekBarState = this.f5687I.getRangeSeekBarState();
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            if (this.f5679A) {
                decimalFormat = this.f5693O;
                if (decimalFormat != null) {
                    dw0Var2 = rangeSeekBarState[0];
                    str2 = decimalFormat.format(dw0Var2.f6146b);
                } else {
                    dw0Var = rangeSeekBarState[0];
                    str2 = dw0Var.f6145a;
                }
            } else {
                decimalFormat = this.f5693O;
                if (decimalFormat != null) {
                    dw0Var2 = rangeSeekBarState[1];
                    str2 = decimalFormat.format(dw0Var2.f6146b);
                } else {
                    dw0Var = rangeSeekBarState[1];
                    str2 = dw0Var.f6145a;
                }
            }
        }
        String str3 = this.f5688J;
        String str4 = str2;
        if (str3 != null) {
            str4 = String.format(str3, str2);
        }
        return str4;
    }

    /* renamed from: d */
    public Context m2964d() {
        return this.f5687I.getContext();
    }

    /* renamed from: e */
    public int m2963e() {
        return this.f5701f;
    }

    /* renamed from: f */
    public int m2962f() {
        return this.f5697b;
    }

    /* renamed from: g */
    public int m2961g() {
        return this.f5699d;
    }

    /* renamed from: h */
    public int m2960h() {
        int i;
        int i2;
        int i3 = this.f5697b;
        if (i3 > 0) {
            if (this.f5682D == null) {
                i2 = this.f5701f;
            }
            i = this.f5699d;
            return i3 + i;
        } else if (this.f5682D == null) {
            i3 = oe1.m1106R("8", this.f5702g).height() + this.f5708m + this.f5709n + this.f5699d;
            i = this.f5701f;
            return i3 + i;
        } else {
            i3 = oe1.m1106R("8", this.f5702g).height() + this.f5708m;
            i2 = this.f5709n;
        }
        i3 += i2;
        i = this.f5699d;
        return i3 + i;
    }

    /* renamed from: i */
    public int m2959i() {
        return this.f5696a;
    }

    /* renamed from: j */
    public float m2958j() {
        return this.f5687I.getMinProgress() + ((this.f5687I.getMaxProgress() - this.f5687I.getMinProgress()) * this.f5719x);
    }

    /* renamed from: k */
    public float m2957k() {
        return m2962f() + m2963e() + m2961g() + m2954n();
    }

    /* renamed from: l */
    public Resources m2956l() {
        if (m2964d() != null) {
            return m2964d().getResources();
        }
        return null;
    }

    /* renamed from: m */
    public int m2955m() {
        return this.f5713r;
    }

    /* renamed from: n */
    public float m2954n() {
        return this.f5713r * this.f5714s;
    }

    /* renamed from: o */
    public float m2953o() {
        return this.f5714s;
    }

    /* renamed from: p */
    public float m2952p() {
        return this.f5712q * this.f5714s;
    }

    /* renamed from: q */
    public int m2951q() {
        return this.f5712q;
    }

    /* renamed from: r */
    public final void m2950r(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = m2964d().obtainStyledAttributes(attributeSet, jq0.RangeSeekBar);
        if (obtainStyledAttributes == null) {
            return;
        }
        this.f5699d = (int) obtainStyledAttributes.getDimension(5, 0.0f);
        this.f5700e = obtainStyledAttributes.getResourceId(3, 0);
        this.f5696a = obtainStyledAttributes.getInt(11, 1);
        this.f5697b = obtainStyledAttributes.getLayoutDimension(4, -1);
        this.f5698c = obtainStyledAttributes.getLayoutDimension(14, -1);
        this.f5702g = (int) obtainStyledAttributes.getDimension(13, oe1.m1093c(14));
        this.f5703h = obtainStyledAttributes.getColor(12, -1);
        this.f5705j = obtainStyledAttributes.getColor(2, g8.d(m2964d(), 2131100049));
        this.f5706k = (int) obtainStyledAttributes.getDimension(7, 0.0f);
        this.f5707l = (int) obtainStyledAttributes.getDimension(8, 0.0f);
        this.f5708m = (int) obtainStyledAttributes.getDimension(9, 0.0f);
        this.f5709n = (int) obtainStyledAttributes.getDimension(6, 0.0f);
        this.f5701f = (int) obtainStyledAttributes.getDimension(1, 0.0f);
        this.f5710o = obtainStyledAttributes.getResourceId(32, 2131231788);
        this.f5711p = obtainStyledAttributes.getResourceId(34, 0);
        this.f5712q = (int) obtainStyledAttributes.getDimension(36, oe1.m1093c(26));
        this.f5713r = (int) obtainStyledAttributes.getDimension(33, oe1.m1093c(26));
        this.f5714s = obtainStyledAttributes.getFloat(35, 1.0f);
        this.f5704i = obtainStyledAttributes.getDimension(10, 0.0f);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: s */
    public final void m2949s() {
        m2976D(this.f5700e);
        m2971I(this.f5710o, this.f5712q, this.f5713r);
        m2970J(this.f5711p, this.f5712q, this.f5713r);
    }

    /* renamed from: t */
    public void m2948t() {
        this.f5694P = this.f5712q;
        this.f5695Q = this.f5713r;
        if (this.f5697b == -1) {
            this.f5697b = oe1.m1106R("8", this.f5702g).height() + this.f5708m + this.f5709n;
        }
        if (this.f5701f <= 0) {
            this.f5701f = this.f5712q / 4;
        }
    }

    /* renamed from: w */
    public void m2945w() {
        qi1 qi1Var = this.f5683E;
        if (qi1Var != null) {
            qi1Var.mo774c();
        }
        qi1 m784A = qi1.m784A(this.f5720y, 0.0f);
        this.f5683E = m784A;
        m784A.m761q(new aw0(this));
        this.f5683E.m1621b(new a(this));
        this.f5683E.m777H();
    }

    /* renamed from: x */
    public void m2944x(Canvas canvas, Paint paint, String str) {
        int i;
        if (str == null) {
            return;
        }
        paint.setTextSize(this.f5702g);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(this.f5705j);
        paint.getTextBounds(str, 0, str.length(), this.f5690L);
        int width = this.f5690L.width() + this.f5706k + this.f5707l;
        int i2 = this.f5698c;
        int i3 = width;
        if (i2 > width) {
            i3 = i2;
        }
        int height = this.f5690L.height() + this.f5708m + this.f5709n;
        int i4 = this.f5697b;
        int i5 = height;
        if (i4 > height) {
            i5 = i4;
        }
        Rect rect = this.f5691M;
        int i6 = this.f5694P;
        int i7 = (int) ((i6 / 2.0f) - (i3 / 2.0f));
        rect.left = i7;
        int i8 = ((this.f5718w - i5) - this.f5695Q) - this.f5699d;
        rect.top = i8;
        rect.right = i7 + i3;
        int i9 = i8 + i5;
        rect.bottom = i9;
        if (this.f5682D == null) {
            int i10 = i6 / 2;
            int i11 = this.f5701f;
            this.f5689K.reset();
            this.f5689K.moveTo(i10, i9);
            float f = i10 - i11;
            float f2 = i9 - i11;
            this.f5689K.lineTo(f, f2);
            this.f5689K.lineTo(i11 + i10, f2);
            this.f5689K.close();
            canvas.drawPath(this.f5689K, paint);
            Rect rect2 = this.f5691M;
            int i12 = rect2.bottom;
            int i13 = this.f5701f;
            rect2.bottom = i12 - i13;
            rect2.top -= i13;
        }
        int m1093c = oe1.m1093c(1);
        int width2 = (((this.f5691M.width() / 2) - ((int) (this.f5687I.getProgressWidth() * this.f5719x))) - this.f5687I.getProgressLeft()) + m1093c;
        int width3 = (((this.f5691M.width() / 2) - ((int) (this.f5687I.getProgressWidth() * (1.0f - this.f5719x)))) - this.f5687I.getProgressPaddingRight()) + m1093c;
        if (width2 > 0) {
            Rect rect3 = this.f5691M;
            rect3.left += width2;
            rect3.right += width2;
        } else if (width3 > 0) {
            Rect rect4 = this.f5691M;
            rect4.left -= width3;
            rect4.right -= width3;
        }
        Bitmap bitmap = this.f5682D;
        if (bitmap != null) {
            oe1.m1091d(canvas, paint, bitmap, this.f5691M);
        } else if (this.f5704i > 0.0f) {
            RectF rectF = new RectF(this.f5691M);
            float f3 = this.f5704i;
            canvas.drawRoundRect(rectF, f3, f3, paint);
        } else {
            canvas.drawRect(this.f5691M, paint);
        }
        int i14 = this.f5706k;
        if (i14 > 0) {
            i = this.f5691M.left + i14;
        } else {
            int i15 = this.f5707l;
            i = i15 > 0 ? (this.f5691M.right - i15) - this.f5690L.width() : ((i3 - this.f5690L.width()) / 2) + this.f5691M.left;
        }
        int height2 = this.f5708m > 0 ? this.f5691M.top + this.f5690L.height() + this.f5708m : this.f5709n > 0 ? (this.f5691M.bottom - this.f5690L.height()) - this.f5709n : (this.f5691M.bottom - ((i5 - this.f5690L.height()) / 2)) + 1;
        paint.setColor(this.f5703h);
        canvas.drawText(str, i, height2, paint);
    }

    /* renamed from: y */
    public void m2943y(Canvas canvas) {
        Bitmap bitmap = this.f5681C;
        if (bitmap == null || this.f5685G) {
            bitmap = this.f5680B;
            if (bitmap == null) {
                return;
            }
        }
        canvas.drawBitmap(bitmap, 0.0f, this.f5687I.getProgressTop() + ((this.f5687I.getProgressHeight() - this.f5695Q) / 2.0f), (Paint) null);
    }

    /* renamed from: z */
    public void m2942z(int i, int i2) {
        m2948t();
        m2949s();
        float f = i;
        this.f5715t = (int) (f - (m2952p() / 2.0f));
        this.f5716u = (int) (f + (m2952p() / 2.0f));
        this.f5717v = i2 - (m2955m() / 2);
        this.f5718w = i2 + (m2955m() / 2);
    }
}
