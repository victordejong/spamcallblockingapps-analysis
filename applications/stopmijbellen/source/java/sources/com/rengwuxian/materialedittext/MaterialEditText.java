package com.rengwuxian.materialedittext;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.support.p012v4.media.C0082b;
import android.text.Editable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import androidx.appcompat.widget.C0245k;
import androidx.recyclerview.widget.C0608b;
import java.util.List;
import p084e9.C2629d;
import p084e9.C2630e;
import p084e9.View$OnFocusChangeListenerC2631f;
import p096f9.AbstractC2787a;
import p117h8.C3035k;
import p124i4.C3102d;
import p203p8.C4052e;
/* loaded from: classes2-dex2jar.jar:com/rengwuxian/materialedittext/MaterialEditText.class */
public class MaterialEditText extends C0245k {

    /* renamed from: w0 */
    public static final /* synthetic */ int f7764w0 = 0;

    /* renamed from: A */
    public boolean f7765A;

    /* renamed from: B */
    public boolean f7766B;

    /* renamed from: D */
    public int f7768D;

    /* renamed from: E */
    public int f7769E;

    /* renamed from: F */
    public float f7770F;

    /* renamed from: G */
    public float f7771G;

    /* renamed from: H */
    public String f7772H;

    /* renamed from: I */
    public int f7773I;

    /* renamed from: J */
    public String f7774J;

    /* renamed from: K */
    public float f7775K;

    /* renamed from: L */
    public boolean f7776L;

    /* renamed from: M */
    public float f7777M;

    /* renamed from: N */
    public Typeface f7778N;

    /* renamed from: O */
    public CharSequence f7779O;

    /* renamed from: P */
    public boolean f7780P;

    /* renamed from: R */
    public int f7781R;

    /* renamed from: S */
    public boolean f7782S;

    /* renamed from: T */
    public boolean f7783T;

    /* renamed from: U */
    public boolean f7784U;

    /* renamed from: V */
    public boolean f7785V;

    /* renamed from: W */
    public Bitmap[] f7786W;

    /* renamed from: a0 */
    public Bitmap[] f7787a0;

    /* renamed from: b0 */
    public Bitmap[] f7788b0;

    /* renamed from: c0 */
    public boolean f7789c0;

    /* renamed from: d0 */
    public boolean f7790d0;

    /* renamed from: e0 */
    public boolean f7791e0;

    /* renamed from: f */
    public int f7792f;

    /* renamed from: g */
    public int f7794g;

    /* renamed from: h */
    public int f7796h;

    /* renamed from: i */
    public int f7798i;

    /* renamed from: i0 */
    public int f7799i0;

    /* renamed from: j */
    public int f7800j;

    /* renamed from: j0 */
    public boolean f7801j0;

    /* renamed from: k */
    public int f7802k;

    /* renamed from: k0 */
    public boolean f7803k0;

    /* renamed from: l */
    public int f7804l;

    /* renamed from: l0 */
    public ColorStateList f7805l0;

    /* renamed from: m */
    public int f7806m;

    /* renamed from: m0 */
    public ColorStateList f7807m0;

    /* renamed from: o */
    public boolean f7810o;

    /* renamed from: p */
    public boolean f7812p;

    /* renamed from: q */
    public int f7814q;

    /* renamed from: q0 */
    public StaticLayout f7815q0;

    /* renamed from: r */
    public int f7816r;

    /* renamed from: r0 */
    public C4052e f7817r0;

    /* renamed from: s */
    public int f7818s;

    /* renamed from: s0 */
    public C4052e f7819s0;

    /* renamed from: t */
    public int f7820t;

    /* renamed from: t0 */
    public C4052e f7821t0;

    /* renamed from: u */
    public int f7822u;

    /* renamed from: u0 */
    public View.OnFocusChangeListener f7823u0;

    /* renamed from: v */
    public int f7824v;

    /* renamed from: v0 */
    public View.OnFocusChangeListener f7825v0;

    /* renamed from: w */
    public int f7826w;

    /* renamed from: x */
    public int f7827x;

    /* renamed from: y */
    public int f7828y;

    /* renamed from: z */
    public boolean f7829z;

    /* renamed from: n0 */
    public C3102d f7809n0 = new C3102d();

    /* renamed from: o0 */
    public Paint f7811o0 = new Paint(1);

    /* renamed from: p0 */
    public TextPaint f7813p0 = new TextPaint(1);

    /* renamed from: f0 */
    public int f7793f0 = m3859j(32);

    /* renamed from: g0 */
    public int f7795g0 = m3859j(48);

    /* renamed from: h0 */
    public int f7797h0 = m3859j(32);

    /* renamed from: n */
    public int f7808n = getResources().getDimensionPixelSize(2131165375);

    /* renamed from: C */
    public int f7767C = getResources().getDimensionPixelSize(2131165279);

    public MaterialEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i;
        this.f7773I = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3035k.f10212D);
        this.f7805l0 = obtainStyledAttributes.getColorStateList(26);
        this.f7807m0 = obtainStyledAttributes.getColorStateList(27);
        this.f7814q = obtainStyledAttributes.getColor(2, -16777216);
        TypedValue typedValue = new TypedValue();
        try {
            context.getTheme().resolveAttribute(16843827, typedValue, true);
            i = typedValue.data;
        } catch (Exception e) {
            try {
                int identifier = getResources().getIdentifier("colorPrimary", "attr", getContext().getPackageName());
                if (identifier == 0) {
                    throw new RuntimeException("colorPrimary not found");
                }
                context.getTheme().resolveAttribute(identifier, typedValue, true);
                i = typedValue.data;
            } catch (Exception e2) {
                i = this.f7814q;
            }
        }
        this.f7824v = obtainStyledAttributes.getColor(24, i);
        setFloatingLabelInternal(obtainStyledAttributes.getInt(7, 0));
        this.f7826w = obtainStyledAttributes.getColor(6, Color.parseColor("#e7492E"));
        this.f7827x = obtainStyledAttributes.getInt(23, 0);
        this.f7828y = obtainStyledAttributes.getInt(21, 0);
        this.f7829z = obtainStyledAttributes.getBoolean(25, false);
        this.f7772H = obtainStyledAttributes.getString(14);
        this.f7773I = obtainStyledAttributes.getColor(16, -1);
        this.f7769E = obtainStyledAttributes.getInt(22, 0);
        String string = obtainStyledAttributes.getString(0);
        if (string != null && !isInEditMode()) {
            Typeface createFromAsset = Typeface.createFromAsset(getContext().getAssets(), string);
            this.f7778N = createFromAsset;
            this.f7813p0.setTypeface(createFromAsset);
        }
        String string2 = obtainStyledAttributes.getString(28);
        if (string2 != null && !isInEditMode()) {
            setTypeface(Typeface.createFromAsset(getContext().getAssets(), string2));
        }
        String string3 = obtainStyledAttributes.getString(11);
        this.f7779O = string3;
        if (string3 == null) {
            this.f7779O = getHint();
        }
        this.f7806m = obtainStyledAttributes.getDimensionPixelSize(10, this.f7808n);
        this.f7800j = obtainStyledAttributes.getDimensionPixelSize(13, getResources().getDimensionPixelSize(2131165367));
        this.f7802k = obtainStyledAttributes.getColor(12, -1);
        this.f7784U = obtainStyledAttributes.getBoolean(9, true);
        this.f7804l = obtainStyledAttributes.getDimensionPixelSize(3, getResources().getDimensionPixelSize(2131165280));
        this.f7780P = obtainStyledAttributes.getBoolean(17, false);
        this.f7781R = obtainStyledAttributes.getColor(29, -1);
        this.f7782S = obtainStyledAttributes.getBoolean(1, false);
        this.f7786W = m3862g(obtainStyledAttributes.getResourceId(18, -1));
        this.f7787a0 = m3862g(obtainStyledAttributes.getResourceId(20, -1));
        this.f7790d0 = obtainStyledAttributes.getBoolean(5, false);
        this.f7788b0 = m3862g(2131231050);
        this.f7799i0 = obtainStyledAttributes.getDimensionPixelSize(19, m3859j(16));
        this.f7765A = obtainStyledAttributes.getBoolean(8, false);
        this.f7766B = obtainStyledAttributes.getBoolean(15, false);
        this.f7789c0 = obtainStyledAttributes.getBoolean(30, false);
        this.f7785V = obtainStyledAttributes.getBoolean(4, true);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, new int[]{16842965, 16842966, 16842967, 16842968, 16842969});
        int dimensionPixelSize = obtainStyledAttributes2.getDimensionPixelSize(0, 0);
        this.f7820t = obtainStyledAttributes2.getDimensionPixelSize(1, dimensionPixelSize);
        this.f7816r = obtainStyledAttributes2.getDimensionPixelSize(2, dimensionPixelSize);
        this.f7822u = obtainStyledAttributes2.getDimensionPixelSize(3, dimensionPixelSize);
        this.f7818s = obtainStyledAttributes2.getDimensionPixelSize(4, dimensionPixelSize);
        obtainStyledAttributes2.recycle();
        setBackground(null);
        if (this.f7829z) {
            TransformationMethod transformationMethod = getTransformationMethod();
            setSingleLine();
            setTransformationMethod(transformationMethod);
        }
        m3857l();
        m3856m();
        m3855n();
        addTextChangedListener(new C2630e(this));
        View$OnFocusChangeListenerC2631f view$OnFocusChangeListenerC2631f = new View$OnFocusChangeListenerC2631f(this);
        this.f7823u0 = view$OnFocusChangeListenerC2631f;
        super.setOnFocusChangeListener(view$OnFocusChangeListenerC2631f);
        addTextChangedListener(new C2629d(this));
        m3864e();
    }

    private int getBottomEllipsisWidth() {
        int i;
        if (this.f7829z) {
            i = m3859j(4) + (this.f7767C * 5);
        } else {
            i = 0;
        }
        return i;
    }

    private int getBottomTextLeftOffset() {
        return m3852q() ? getCharactersCounterWidth() : getBottomEllipsisWidth();
    }

    private int getBottomTextRightOffset() {
        return m3852q() ? getBottomEllipsisWidth() : getCharactersCounterWidth();
    }

    private int getButtonsCount() {
        return this.f7790d0 ? 1 : 0;
    }

    private String getCharactersCounterText() {
        String str;
        int i;
        StringBuilder sb;
        StringBuilder sb2;
        int i2;
        StringBuilder sb3;
        if (this.f7827x <= 0) {
            if (m3852q()) {
                sb3 = new StringBuilder();
                sb3.append(this.f7828y);
                sb3.append(" / ");
                i2 = getText().length();
            } else {
                sb3 = new StringBuilder();
                sb3.append(getText().length());
                sb3.append(" / ");
                i2 = this.f7828y;
            }
            sb3.append(i2);
            str = sb3.toString();
        } else if (this.f7828y <= 0) {
            if (m3852q()) {
                sb2 = C0082b.m8752j("+");
                sb2.append(this.f7827x);
                sb2.append(" / ");
                sb2.append(getText().length());
            } else {
                sb2 = new StringBuilder();
                sb2.append(getText().length());
                sb2.append(" / ");
                sb2.append(this.f7827x);
                sb2.append("+");
            }
            str = sb2.toString();
        } else {
            if (m3852q()) {
                sb = new StringBuilder();
                sb.append(this.f7828y);
                sb.append("-");
                sb.append(this.f7827x);
                sb.append(" / ");
                i = getText().length();
            } else {
                sb = new StringBuilder();
                sb.append(getText().length());
                sb.append(" / ");
                sb.append(this.f7827x);
                sb.append("-");
                i = this.f7828y;
            }
            sb.append(i);
            str = sb.toString();
        }
        return str;
    }

    private int getCharactersCounterWidth() {
        return m3858k() ? (int) this.f7813p0.measureText(getCharactersCounterText()) : 0;
    }

    public C4052e getLabelAnimator() {
        if (this.f7817r0 == null) {
            this.f7817r0 = C4052e.m1459l(this, "floatingLabelFraction", 0.0f, 1.0f);
        }
        this.f7817r0.m1458m((this.f7784U ? 300 : null) == 1 ? 1L : 0L);
        return this.f7817r0;
    }

    public C4052e getLabelFocusAnimator() {
        if (this.f7819s0 == null) {
            this.f7819s0 = C4052e.m1459l(this, "focusFraction", 0.0f, 1.0f);
        }
        return this.f7819s0;
    }

    private void setFloatingLabelInternal(int i) {
        if (i == 1) {
            this.f7810o = true;
            this.f7812p = false;
        } else if (i != 2) {
            this.f7810o = false;
            this.f7812p = false;
        } else {
            this.f7810o = true;
            this.f7812p = true;
        }
    }

    /* renamed from: d */
    public final boolean m3865d() {
        int i;
        if (getWidth() == 0) {
            return false;
        }
        this.f7813p0.setTextSize(this.f7804l);
        if (this.f7774J == null && this.f7772H == null) {
            i = this.f7768D;
        } else {
            Layout.Alignment alignment = ((getGravity() & 5) == 5 || m3852q()) ? Layout.Alignment.ALIGN_OPPOSITE : (getGravity() & 3) == 3 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
            String str = this.f7774J;
            if (str == null) {
                str = this.f7772H;
            }
            StaticLayout staticLayout = new StaticLayout(str, this.f7813p0, (((getWidth() - getBottomTextLeftOffset()) - getBottomTextRightOffset()) - getPaddingLeft()) - getPaddingRight(), alignment, 1.0f, 0.0f, true);
            this.f7815q0 = staticLayout;
            i = Math.max(staticLayout.getLineCount(), this.f7769E);
        }
        float f = i;
        if (this.f7771G != f) {
            C4052e c4052e = this.f7821t0;
            if (c4052e == null) {
                this.f7821t0 = C4052e.m1459l(this, "currentBottomLines", f);
            } else {
                c4052e.m1445d();
                this.f7821t0.m1457n(f);
            }
            this.f7821t0.m1439j(false);
        }
        this.f7771G = f;
        return true;
    }

    /* renamed from: e */
    public final void m3864e() {
        boolean z;
        if ((!this.f7791e0 && !this.f7785V) || !m3858k()) {
            this.f7783T = true;
            return;
        }
        Editable text = getText();
        int length = text == null ? 0 : text.length();
        if (length >= this.f7827x) {
            int i = this.f7828y;
            z = true;
            if (i > 0) {
                if (length <= i) {
                    z = true;
                }
            }
            this.f7783T = z;
        }
        z = false;
        this.f7783T = z;
    }

    /* renamed from: f */
    public final void m3863f() {
        int buttonsCount = this.f7795g0 * getButtonsCount();
        int i = 0;
        if (!m3852q()) {
            i = buttonsCount;
            buttonsCount = 0;
        }
        super.setPadding(this.f7820t + this.f7796h + buttonsCount, this.f7816r + this.f7792f, this.f7822u + this.f7798i + i, this.f7818s + this.f7794g);
    }

    /* renamed from: g */
    public final Bitmap[] m3862g(int i) {
        if (i == -1) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        int i2 = 1;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(getResources(), i, options);
        int max = Math.max(options.outWidth, options.outHeight);
        int i3 = this.f7793f0;
        if (max > i3) {
            i2 = max / i3;
        }
        options.inSampleSize = i2;
        options.inJustDecodeBounds = false;
        return m3861h(BitmapFactory.decodeResource(getResources(), i, options));
    }

    public Typeface getAccentTypeface() {
        return this.f7778N;
    }

    public int getBottomTextSize() {
        return this.f7804l;
    }

    public float getCurrentBottomLines() {
        return this.f7770F;
    }

    @Override // android.widget.TextView
    public CharSequence getError() {
        return this.f7774J;
    }

    public int getErrorColor() {
        return this.f7826w;
    }

    public float getFloatingLabelFraction() {
        return this.f7775K;
    }

    public int getFloatingLabelPadding() {
        return this.f7806m;
    }

    public CharSequence getFloatingLabelText() {
        return this.f7779O;
    }

    public int getFloatingLabelTextColor() {
        return this.f7802k;
    }

    public int getFloatingLabelTextSize() {
        return this.f7800j;
    }

    public float getFocusFraction() {
        return this.f7777M;
    }

    public String getHelperText() {
        return this.f7772H;
    }

    public int getHelperTextColor() {
        return this.f7773I;
    }

    public int getInnerPaddingBottom() {
        return this.f7818s;
    }

    public int getInnerPaddingLeft() {
        return this.f7820t;
    }

    public int getInnerPaddingRight() {
        return this.f7822u;
    }

    public int getInnerPaddingTop() {
        return this.f7816r;
    }

    public int getMaxCharacters() {
        return this.f7828y;
    }

    public int getMinBottomTextLines() {
        return this.f7769E;
    }

    public int getMinCharacters() {
        return this.f7827x;
    }

    public int getUnderlineColor() {
        return this.f7781R;
    }

    public List<Object> getValidators() {
        return null;
    }

    /* renamed from: h */
    public final Bitmap[] m3861h(Bitmap bitmap) {
        Bitmap bitmap2;
        int i;
        int i2;
        if (bitmap == null) {
            return null;
        }
        Bitmap[] bitmapArr = new Bitmap[4];
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int max = Math.max(width, height);
        int i3 = this.f7793f0;
        if (max == i3) {
            bitmap2 = bitmap;
        } else {
            bitmap2 = bitmap;
            if (max > i3) {
                float f = i3;
                if (width > i3) {
                    i2 = (int) ((height / width) * f);
                    i = i3;
                } else {
                    i = (int) ((width / height) * f);
                    i2 = i3;
                }
                bitmap2 = Bitmap.createScaledBitmap(bitmap, i, i2, false);
            }
        }
        bitmapArr[0] = bitmap2.copy(Bitmap.Config.ARGB_8888, true);
        Canvas canvas = new Canvas(bitmapArr[0]);
        int i4 = this.f7814q;
        canvas.drawColor((C3102d.m2613z(i4) ? -16777216 : -1979711488) | (i4 & 16777215), PorterDuff.Mode.SRC_IN);
        bitmapArr[1] = bitmap2.copy(Bitmap.Config.ARGB_8888, true);
        new Canvas(bitmapArr[1]).drawColor(this.f7824v, PorterDuff.Mode.SRC_IN);
        bitmapArr[2] = bitmap2.copy(Bitmap.Config.ARGB_8888, true);
        Canvas canvas2 = new Canvas(bitmapArr[2]);
        int i5 = this.f7814q;
        canvas2.drawColor((C3102d.m2613z(i5) ? 1275068416 : 1107296256) | (16777215 & i5), PorterDuff.Mode.SRC_IN);
        bitmapArr[3] = bitmap2.copy(Bitmap.Config.ARGB_8888, true);
        new Canvas(bitmapArr[3]).drawColor(this.f7826w, PorterDuff.Mode.SRC_IN);
        return bitmapArr;
    }

    /* renamed from: i */
    public final Bitmap[] m3860i(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        int i = this.f7793f0;
        return m3861h(Bitmap.createScaledBitmap(createBitmap, i, i, false));
    }

    /* renamed from: j */
    public final int m3859j(int i) {
        return Math.round(TypedValue.applyDimension(1, i, getContext().getResources().getDisplayMetrics()));
    }

    /* renamed from: k */
    public final boolean m3858k() {
        return this.f7827x > 0 || this.f7828y > 0;
    }

    /* renamed from: l */
    public final void m3857l() {
        int i = 0;
        boolean z = this.f7827x > 0 || this.f7828y > 0 || this.f7829z || this.f7774J != null || this.f7772H != null;
        int i2 = this.f7769E;
        if (i2 > 0) {
            i = i2;
        } else if (z) {
            i = 1;
        }
        this.f7768D = i;
        this.f7770F = i;
    }

    /* renamed from: m */
    public final void m3856m() {
        this.f7792f = this.f7810o ? this.f7800j + this.f7806m : this.f7806m;
        this.f7813p0.setTextSize(this.f7804l);
        Paint.FontMetrics fontMetrics = this.f7813p0.getFontMetrics();
        this.f7794g = ((int) ((fontMetrics.descent - fontMetrics.ascent) * this.f7770F)) + (this.f7780P ? this.f7808n : this.f7808n * 2);
        this.f7796h = this.f7786W == null ? 0 : this.f7795g0 + this.f7799i0;
        this.f7798i = this.f7787a0 == null ? 0 : this.f7799i0 + this.f7795g0;
        m3863f();
    }

    /* renamed from: n */
    public final void m3855n() {
        if (!TextUtils.isEmpty(getText())) {
            Editable text = getText();
            setText((CharSequence) null);
            m3851r();
            setText(text);
            setSelection(text.length());
            this.f7775K = 1.0f;
            this.f7776L = true;
        } else {
            m3851r();
        }
        m3850s();
    }

    /* renamed from: o */
    public final boolean m3854o(MotionEvent motionEvent) {
        int i;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int scrollX = m3852q() ? getScrollX() + (this.f7786W == null ? 0 : this.f7795g0 + this.f7799i0) : (getScrollX() + (this.f7787a0 == null ? getWidth() : (getWidth() - this.f7795g0) - this.f7799i0)) - this.f7795g0;
        int scrollY = getScrollY();
        int height = getHeight();
        int paddingBottom = getPaddingBottom();
        int i2 = this.f7808n;
        int i3 = (((height + scrollY) - paddingBottom) + i2) - this.f7797h0;
        boolean z = false;
        if (x >= scrollX) {
            z = false;
            if (x < scrollX + this.f7795g0) {
                z = false;
                if (y >= i3) {
                    z = false;
                    if (y < i3 + i) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.f7791e0) {
            this.f7791e0 = true;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int i4;
        int scrollX = getScrollX() + (this.f7786W == null ? 0 : this.f7795g0 + this.f7799i0);
        int scrollX2 = getScrollX() + (this.f7787a0 == null ? getWidth() : (getWidth() - this.f7795g0) - this.f7799i0);
        int height = (getHeight() + getScrollY()) - getPaddingBottom();
        this.f7811o0.setAlpha(255);
        Bitmap[] bitmapArr = this.f7786W;
        if (bitmapArr != null) {
            Bitmap bitmap = bitmapArr[(!m3853p() ? 3 : !isEnabled() ? 2 : hasFocus() ? 1 : null) == 1 ? 1 : 0];
            int i5 = this.f7799i0;
            int width = (this.f7795g0 - bitmap.getWidth()) / 2;
            int i6 = this.f7808n;
            int i7 = this.f7797h0;
            canvas.drawBitmap(bitmap, width + ((scrollX - i5) - i4), ((i7 - bitmap.getHeight()) / 2) + ((i6 + height) - i7), this.f7811o0);
        }
        Bitmap[] bitmapArr2 = this.f7787a0;
        if (bitmapArr2 != null) {
            Bitmap bitmap2 = bitmapArr2[(!m3853p() ? 3 : !isEnabled() ? 2 : hasFocus() ? 1 : null) == 1 ? 1 : 0];
            int i8 = this.f7799i0;
            int width2 = (this.f7795g0 - bitmap2.getWidth()) / 2;
            int i9 = this.f7808n;
            int i10 = this.f7797h0;
            canvas.drawBitmap(bitmap2, width2 + i8 + scrollX2, ((i10 - bitmap2.getHeight()) / 2) + ((i9 + height) - i10), this.f7811o0);
        }
        if (hasFocus() && this.f7790d0 && !TextUtils.isEmpty(getText())) {
            this.f7811o0.setAlpha(255);
            int i11 = m3852q() ? scrollX : scrollX2 - this.f7795g0;
            Bitmap bitmap3 = this.f7788b0[0];
            int width3 = (this.f7795g0 - bitmap3.getWidth()) / 2;
            int i12 = this.f7808n;
            int i13 = this.f7797h0;
            canvas.drawBitmap(bitmap3, width3 + i11, ((i13 - bitmap3.getHeight()) / 2) + ((i12 + height) - i13), this.f7811o0);
        }
        int i14 = height;
        if (!this.f7780P) {
            i14 = height + this.f7808n;
            if (!m3853p()) {
                this.f7811o0.setColor(this.f7826w);
                canvas.drawRect(scrollX, i14, scrollX2, m3859j(2) + i14, this.f7811o0);
            } else if (!isEnabled()) {
                Paint paint = this.f7811o0;
                int i15 = this.f7781R;
                if (i15 == -1) {
                    i15 = (this.f7814q & 16777215) | 1140850688;
                }
                paint.setColor(i15);
                float m3859j = m3859j(1);
                float f = 0.0f;
                while (true) {
                    float f2 = f;
                    if (f2 >= getWidth()) {
                        break;
                    }
                    float f3 = scrollX + f2;
                    canvas.drawRect(f3, i14, f3 + m3859j, m3859j(1) + i14, this.f7811o0);
                    f = (m3859j * 3.0f) + f2;
                }
            } else if (hasFocus()) {
                this.f7811o0.setColor(this.f7824v);
                canvas.drawRect(scrollX, i14, scrollX2, m3859j(2) + i14, this.f7811o0);
            } else {
                Paint paint2 = this.f7811o0;
                int i16 = this.f7781R;
                if (i16 == -1) {
                    i16 = (this.f7814q & 16777215) | 503316480;
                }
                paint2.setColor(i16);
                canvas.drawRect(scrollX, i14, scrollX2, m3859j(1) + i14, this.f7811o0);
            }
        }
        this.f7813p0.setTextSize(this.f7804l);
        Paint.FontMetrics fontMetrics = this.f7813p0.getFontMetrics();
        float f4 = fontMetrics.ascent;
        float f5 = -f4;
        float f6 = fontMetrics.descent;
        float f7 = this.f7804l + f4 + f6;
        if ((hasFocus() && m3858k()) || !this.f7783T) {
            this.f7813p0.setColor(this.f7783T ? (this.f7814q & 16777215) | 1140850688 : this.f7826w);
            String charactersCounterText = getCharactersCounterText();
            canvas.drawText(charactersCounterText, m3852q() ? scrollX : scrollX2 - this.f7813p0.measureText(charactersCounterText), this.f7808n + i14 + (f5 - f6), this.f7813p0);
        }
        if (this.f7815q0 != null && (this.f7774J != null || ((this.f7766B || hasFocus()) && !TextUtils.isEmpty(this.f7772H)))) {
            TextPaint textPaint = this.f7813p0;
            if (this.f7774J != null) {
                i3 = this.f7826w;
            } else {
                i3 = this.f7773I;
                if (i3 == -1) {
                    i3 = (this.f7814q & 16777215) | 1140850688;
                }
            }
            textPaint.setColor(i3);
            canvas.save();
            if (m3852q()) {
                canvas.translate(scrollX2 - this.f7815q0.getWidth(), (this.f7808n + i14) - f7);
            } else {
                canvas.translate(getBottomTextLeftOffset() + scrollX, (this.f7808n + i14) - f7);
            }
            this.f7815q0.draw(canvas);
            canvas.restore();
        }
        if (this.f7810o && !TextUtils.isEmpty(this.f7779O)) {
            this.f7813p0.setTextSize(this.f7800j);
            TextPaint textPaint2 = this.f7813p0;
            C3102d c3102d = this.f7809n0;
            float f8 = this.f7777M;
            int i17 = this.f7802k;
            if (i17 == -1) {
                i17 = (this.f7814q & 16777215) | 1140850688;
            }
            textPaint2.setColor(((Integer) c3102d.evaluate(f8, Integer.valueOf(i17), Integer.valueOf(this.f7824v))).intValue());
            float measureText = this.f7813p0.measureText(this.f7779O.toString());
            int m7628g = ((getGravity() & 5) == 5 || m3852q()) ? (int) (scrollX2 - measureText) : (getGravity() & 3) == 3 ? scrollX : ((int) C0608b.m7628g((getWidth() - getInnerPaddingLeft()) - getInnerPaddingRight(), measureText, 2.0f, getInnerPaddingLeft())) + scrollX;
            float f9 = 1.0f;
            int scrollY = (int) ((((this.f7816r + this.f7800j) + i) - (this.f7806m * (this.f7765A ? 1.0f : this.f7775K))) + getScrollY());
            float f10 = this.f7765A ? 1.0f : this.f7775K;
            float f11 = this.f7777M;
            if (this.f7802k == -1) {
                f9 = Color.alpha(i2) / 256.0f;
            }
            this.f7813p0.setAlpha((int) (((f11 * 0.74f) + 0.26f) * f10 * 255.0f * f9));
            canvas.drawText(this.f7779O.toString(), m7628g, scrollY, this.f7813p0);
        }
        if (hasFocus() && this.f7829z && getScrollX() != 0) {
            this.f7811o0.setColor(m3853p() ? this.f7824v : this.f7826w);
            float f12 = i14 + this.f7808n;
            if (m3852q()) {
                scrollX = scrollX2;
            }
            int i18 = 1;
            if (m3852q()) {
                i18 = -1;
            }
            int i19 = this.f7767C;
            canvas.drawCircle(C0082b.m8760b(i18, i19, 2, scrollX), (i19 / 2) + f12, i19 / 2, this.f7811o0);
            int i20 = this.f7767C;
            canvas.drawCircle((((i18 * i20) * 5) / 2) + scrollX, (i20 / 2) + f12, i20 / 2, this.f7811o0);
            int i21 = this.f7767C;
            canvas.drawCircle((((i18 * i21) * 9) / 2) + scrollX, f12 + (i21 / 2), i21 / 2, this.f7811o0);
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m3865d();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f7829z && getScrollX() > 0 && motionEvent.getAction() == 0 && motionEvent.getX() < m3859j(20) && motionEvent.getY() > (getHeight() - this.f7794g) - this.f7818s && motionEvent.getY() < getHeight() - this.f7818s) {
            setSelection(0);
            return false;
        }
        if (hasFocus() && this.f7790d0) {
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1) {
                    if (this.f7803k0) {
                        if (!TextUtils.isEmpty(getText())) {
                            setText((CharSequence) null);
                        }
                        this.f7803k0 = false;
                    }
                    if (this.f7801j0) {
                        this.f7801j0 = false;
                        return true;
                    }
                    this.f7801j0 = false;
                } else if (action != 2) {
                    if (action == 3) {
                        this.f7801j0 = false;
                        this.f7803k0 = false;
                    }
                }
            } else if (m3854o(motionEvent)) {
                this.f7801j0 = true;
                this.f7803k0 = true;
                return true;
            }
            if (this.f7803k0 && !m3854o(motionEvent)) {
                this.f7803k0 = false;
            }
            if (this.f7801j0) {
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    /* renamed from: p */
    public final boolean m3853p() {
        return this.f7774J == null && this.f7783T;
    }

    @TargetApi(17)
    /* renamed from: q */
    public final boolean m3852q() {
        boolean z = true;
        if (getResources().getConfiguration().getLayoutDirection() != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: r */
    public final void m3851r() {
        ColorStateList colorStateList = this.f7807m0;
        if (colorStateList == null) {
            setHintTextColor((this.f7814q & 16777215) | 1140850688);
        } else {
            setHintTextColor(colorStateList);
        }
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [int[], int[][]] */
    /* renamed from: s */
    public final void m3850s() {
        ColorStateList colorStateList = this.f7805l0;
        if (colorStateList != null) {
            setTextColor(colorStateList);
            return;
        }
        int[] iArr = EditText.EMPTY_STATE_SET;
        int i = this.f7814q;
        ColorStateList colorStateList2 = new ColorStateList(new int[]{new int[]{16842910}, iArr}, new int[]{(i & 16777215) | (-553648128), (i & 16777215) | 1140850688});
        this.f7805l0 = colorStateList2;
        setTextColor(colorStateList2);
    }

    public void setAccentTypeface(Typeface typeface) {
        this.f7778N = typeface;
        this.f7813p0.setTypeface(typeface);
        postInvalidate();
    }

    public void setAutoValidate(boolean z) {
        this.f7782S = z;
    }

    public void setBaseColor(int i) {
        if (this.f7814q != i) {
            this.f7814q = i;
        }
        m3855n();
        postInvalidate();
    }

    public void setBottomTextSize(int i) {
        this.f7804l = i;
        m3856m();
    }

    public void setCurrentBottomLines(float f) {
        this.f7770F = f;
        m3856m();
    }

    @Override // android.widget.TextView
    public void setError(CharSequence charSequence) {
        this.f7774J = charSequence == null ? null : charSequence.toString();
        if (m3865d()) {
            postInvalidate();
        }
    }

    public void setErrorColor(int i) {
        this.f7826w = i;
        postInvalidate();
    }

    public void setFloatingLabel(int i) {
        setFloatingLabelInternal(i);
        m3856m();
    }

    public void setFloatingLabelAlwaysShown(boolean z) {
        this.f7765A = z;
        invalidate();
    }

    public void setFloatingLabelAnimating(boolean z) {
        this.f7784U = z;
    }

    public void setFloatingLabelFraction(float f) {
        this.f7775K = f;
        invalidate();
    }

    public void setFloatingLabelPadding(int i) {
        this.f7806m = i;
        postInvalidate();
    }

    public void setFloatingLabelText(CharSequence charSequence) {
        CharSequence charSequence2 = charSequence;
        if (charSequence == null) {
            charSequence2 = getHint();
        }
        this.f7779O = charSequence2;
        postInvalidate();
    }

    public void setFloatingLabelTextColor(int i) {
        this.f7802k = i;
        postInvalidate();
    }

    public void setFloatingLabelTextSize(int i) {
        this.f7800j = i;
        m3856m();
    }

    public void setFocusFraction(float f) {
        this.f7777M = f;
        invalidate();
    }

    public void setHelperText(CharSequence charSequence) {
        this.f7772H = charSequence == null ? null : charSequence.toString();
        if (m3865d()) {
            postInvalidate();
        }
    }

    public void setHelperTextAlwaysShown(boolean z) {
        this.f7766B = z;
        invalidate();
    }

    public void setHelperTextColor(int i) {
        this.f7773I = i;
        postInvalidate();
    }

    public void setHideUnderline(boolean z) {
        this.f7780P = z;
        m3856m();
        postInvalidate();
    }

    public void setIconLeft(int i) {
        this.f7786W = m3862g(i);
        m3856m();
    }

    public void setIconLeft(Bitmap bitmap) {
        this.f7786W = m3861h(bitmap);
        m3856m();
    }

    public void setIconLeft(Drawable drawable) {
        this.f7786W = m3860i(drawable);
        m3856m();
    }

    public void setIconRight(int i) {
        this.f7787a0 = m3862g(i);
        m3856m();
    }

    public void setIconRight(Bitmap bitmap) {
        this.f7787a0 = m3861h(bitmap);
        m3856m();
    }

    public void setIconRight(Drawable drawable) {
        this.f7787a0 = m3860i(drawable);
        m3856m();
    }

    public void setLengthChecker(AbstractC2787a abstractC2787a) {
    }

    public void setMaxCharacters(int i) {
        this.f7828y = i;
        m3857l();
        m3856m();
        postInvalidate();
    }

    public void setMetHintTextColor(int i) {
        this.f7807m0 = ColorStateList.valueOf(i);
        m3851r();
    }

    public void setMetHintTextColor(ColorStateList colorStateList) {
        this.f7807m0 = colorStateList;
        m3851r();
    }

    public void setMetTextColor(int i) {
        this.f7805l0 = ColorStateList.valueOf(i);
        m3850s();
    }

    public void setMetTextColor(ColorStateList colorStateList) {
        this.f7805l0 = colorStateList;
        m3850s();
    }

    public void setMinBottomTextLines(int i) {
        this.f7769E = i;
        m3857l();
        m3856m();
        postInvalidate();
    }

    public void setMinCharacters(int i) {
        this.f7827x = i;
        m3857l();
        m3856m();
        postInvalidate();
    }

    @Override // android.view.View
    public void setOnFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        if (this.f7823u0 == null) {
            super.setOnFocusChangeListener(onFocusChangeListener);
        } else {
            this.f7825v0 = onFocusChangeListener;
        }
    }

    @Override // android.widget.TextView, android.view.View
    @Deprecated
    public final void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
    }

    public void setPrimaryColor(int i) {
        this.f7824v = i;
        postInvalidate();
    }

    public void setShowClearButton(boolean z) {
        this.f7790d0 = z;
        m3863f();
    }

    public void setSingleLineEllipsis(boolean z) {
        this.f7829z = z;
        m3857l();
        m3856m();
        postInvalidate();
    }

    public void setUnderlineColor(int i) {
        this.f7781R = i;
        postInvalidate();
    }

    public void setValidateOnFocusLost(boolean z) {
        this.f7789c0 = z;
    }
}
