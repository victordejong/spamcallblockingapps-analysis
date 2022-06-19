package com.p061b.p062a;

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
import android.os.Build;
import android.text.Editable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.widget.C0337j;
import com.google.android.flexbox.FlexItem;
import com.nineoldandroids.p064a.C1405b;
import com.nineoldandroids.p064a.C1412h;
import com.p061b.p062a.C1190d;
import com.p061b.p062a.p063a.AbstractC1183a;
import com.p061b.p062a.p063a.AbstractC1184b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.b.a.c */
/* loaded from: classes-dex2jar.jar:com/b/a/c.class */
public class C1186c extends C0337j {

    /* renamed from: A */
    private int f3763A;

    /* renamed from: B */
    private int f3764B;

    /* renamed from: C */
    private boolean f3765C;

    /* renamed from: D */
    private boolean f3766D;

    /* renamed from: E */
    private boolean f3767E;

    /* renamed from: F */
    private int f3768F;

    /* renamed from: G */
    private int f3769G;

    /* renamed from: H */
    private int f3770H;

    /* renamed from: I */
    private float f3771I;

    /* renamed from: J */
    private float f3772J;

    /* renamed from: K */
    private String f3773K;

    /* renamed from: M */
    private String f3775M;

    /* renamed from: N */
    private float f3776N;

    /* renamed from: O */
    private boolean f3777O;

    /* renamed from: P */
    private float f3778P;

    /* renamed from: Q */
    private Typeface f3779Q;

    /* renamed from: R */
    private Typeface f3780R;

    /* renamed from: S */
    private CharSequence f3781S;

    /* renamed from: T */
    private boolean f3782T;

    /* renamed from: U */
    private int f3783U;

    /* renamed from: V */
    private boolean f3784V;

    /* renamed from: W */
    private boolean f3785W;

    /* renamed from: aa */
    private boolean f3787aa;

    /* renamed from: ab */
    private boolean f3788ab;

    /* renamed from: ac */
    private Bitmap[] f3789ac;

    /* renamed from: ad */
    private Bitmap[] f3790ad;

    /* renamed from: ae */
    private Bitmap[] f3791ae;

    /* renamed from: af */
    private boolean f3792af;

    /* renamed from: ag */
    private boolean f3793ag;

    /* renamed from: ah */
    private boolean f3794ah;

    /* renamed from: ai */
    private int f3795ai;

    /* renamed from: aj */
    private int f3796aj;

    /* renamed from: ak */
    private int f3797ak;

    /* renamed from: al */
    private int f3798al;

    /* renamed from: am */
    private boolean f3799am;

    /* renamed from: an */
    private boolean f3800an;

    /* renamed from: ao */
    private ColorStateList f3801ao;

    /* renamed from: ap */
    private ColorStateList f3802ap;

    /* renamed from: ar */
    private List<AbstractC1184b> f3804ar;

    /* renamed from: as */
    private AbstractC1183a f3805as;

    /* renamed from: c */
    StaticLayout f3807c;

    /* renamed from: d */
    C1412h f3808d;

    /* renamed from: e */
    C1412h f3809e;

    /* renamed from: f */
    C1412h f3810f;

    /* renamed from: g */
    View.OnFocusChangeListener f3811g;

    /* renamed from: h */
    View.OnFocusChangeListener f3812h;

    /* renamed from: i */
    private int f3813i;

    /* renamed from: j */
    private int f3814j;

    /* renamed from: k */
    private int f3815k;

    /* renamed from: l */
    private int f3816l;

    /* renamed from: m */
    private int f3817m;

    /* renamed from: n */
    private int f3818n;

    /* renamed from: o */
    private int f3819o;

    /* renamed from: p */
    private int f3820p;

    /* renamed from: q */
    private int f3821q;

    /* renamed from: r */
    private boolean f3822r;

    /* renamed from: s */
    private boolean f3823s;

    /* renamed from: t */
    private int f3824t;

    /* renamed from: u */
    private int f3825u;

    /* renamed from: v */
    private int f3826v;

    /* renamed from: w */
    private int f3827w;

    /* renamed from: x */
    private int f3828x;

    /* renamed from: y */
    private int f3829y;

    /* renamed from: z */
    private int f3830z;

    /* renamed from: L */
    private int f3774L = -1;

    /* renamed from: aq */
    private C1405b f3803aq = new C1405b();

    /* renamed from: a */
    Paint f3786a = new Paint(1);

    /* renamed from: b */
    TextPaint f3806b = new TextPaint(1);

    public C1186c(Context context) {
        super(context);
        m3836a(context, (AttributeSet) null);
    }

    public C1186c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m3836a(context, attributeSet);
    }

    public C1186c(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m3836a(context, attributeSet);
    }

    /* renamed from: a */
    private int m3829a(CharSequence charSequence) {
        AbstractC1183a abstractC1183a = this.f3805as;
        return abstractC1183a == null ? charSequence.length() : abstractC1183a.m3842a(charSequence);
    }

    /* renamed from: a */
    private Typeface m3828a(String str) {
        return Typeface.createFromAsset(getContext().getAssets(), str);
    }

    /* renamed from: a */
    private C1412h m3838a(float f) {
        C1412h c1412h = this.f3810f;
        if (c1412h == null) {
            this.f3810f = C1412h.m3720a(this, "currentBottomLines", f);
        } else {
            c1412h.mo3663b();
            this.f3810f.mo3665a(f);
        }
        return this.f3810f;
    }

    /* renamed from: a */
    private void m3836a(Context context, AttributeSet attributeSet) {
        int i;
        this.f3795ai = m3826b(32);
        this.f3796aj = m3826b(48);
        this.f3797ak = m3826b(32);
        this.f3821q = getResources().getDimensionPixelSize(C1190d.C1191a.inner_components_spacing);
        this.f3768F = getResources().getDimensionPixelSize(C1190d.C1191a.bottom_ellipsis_height);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1190d.C1193c.MaterialEditText);
        this.f3801ao = obtainStyledAttributes.getColorStateList(C1190d.C1193c.MaterialEditText_met_textColor);
        this.f3802ap = obtainStyledAttributes.getColorStateList(C1190d.C1193c.MaterialEditText_met_textColorHint);
        this.f3824t = obtainStyledAttributes.getColor(C1190d.C1193c.MaterialEditText_met_baseColor, -16777216);
        TypedValue typedValue = new TypedValue();
        try {
        } catch (Exception e) {
            try {
                int identifier = getResources().getIdentifier("colorPrimary", "attr", getContext().getPackageName());
                if (identifier == 0) {
                    throw new RuntimeException("colorPrimary not found");
                }
                context.getTheme().resolveAttribute(identifier, typedValue, true);
                i = typedValue.data;
            } catch (Exception e2) {
                i = this.f3824t;
            }
        }
        if (Build.VERSION.SDK_INT >= 21) {
            context.getTheme().resolveAttribute(16843827, typedValue, true);
            i = typedValue.data;
            this.f3829y = obtainStyledAttributes.getColor(C1190d.C1193c.MaterialEditText_met_primaryColor, i);
            setFloatingLabelInternal(obtainStyledAttributes.getInt(C1190d.C1193c.MaterialEditText_met_floatingLabel, 0));
            this.f3830z = obtainStyledAttributes.getColor(C1190d.C1193c.MaterialEditText_met_errorColor, Color.parseColor("#e7492E"));
            this.f3763A = obtainStyledAttributes.getInt(C1190d.C1193c.MaterialEditText_met_minCharacters, 0);
            this.f3764B = obtainStyledAttributes.getInt(C1190d.C1193c.MaterialEditText_met_maxCharacters, 0);
            this.f3765C = obtainStyledAttributes.getBoolean(C1190d.C1193c.MaterialEditText_met_singleLineEllipsis, false);
            this.f3773K = obtainStyledAttributes.getString(C1190d.C1193c.MaterialEditText_met_helperText);
            this.f3774L = obtainStyledAttributes.getColor(C1190d.C1193c.MaterialEditText_met_helperTextColor, -1);
            this.f3770H = obtainStyledAttributes.getInt(C1190d.C1193c.MaterialEditText_met_minBottomTextLines, 0);
            String string = obtainStyledAttributes.getString(C1190d.C1193c.MaterialEditText_met_accentTypeface);
            if (string != null && !isInEditMode()) {
                this.f3779Q = m3828a(string);
                this.f3806b.setTypeface(this.f3779Q);
            }
            String string2 = obtainStyledAttributes.getString(C1190d.C1193c.MaterialEditText_met_typeface);
            if (string2 != null && !isInEditMode()) {
                this.f3780R = m3828a(string2);
                setTypeface(this.f3780R);
            }
            this.f3781S = obtainStyledAttributes.getString(C1190d.C1193c.MaterialEditText_met_floatingLabelText);
            if (this.f3781S == null) {
                this.f3781S = getHint();
            }
            this.f3820p = obtainStyledAttributes.getDimensionPixelSize(C1190d.C1193c.MaterialEditText_met_floatingLabelPadding, this.f3821q);
            this.f3817m = obtainStyledAttributes.getDimensionPixelSize(C1190d.C1193c.MaterialEditText_met_floatingLabelTextSize, getResources().getDimensionPixelSize(C1190d.C1191a.floating_label_text_size));
            this.f3818n = obtainStyledAttributes.getColor(C1190d.C1193c.MaterialEditText_met_floatingLabelTextColor, -1);
            this.f3787aa = obtainStyledAttributes.getBoolean(C1190d.C1193c.MaterialEditText_met_floatingLabelAnimating, true);
            this.f3819o = obtainStyledAttributes.getDimensionPixelSize(C1190d.C1193c.MaterialEditText_met_bottomTextSize, getResources().getDimensionPixelSize(C1190d.C1191a.bottom_text_size));
            this.f3782T = obtainStyledAttributes.getBoolean(C1190d.C1193c.MaterialEditText_met_hideUnderline, false);
            this.f3783U = obtainStyledAttributes.getColor(C1190d.C1193c.MaterialEditText_met_underlineColor, -1);
            this.f3784V = obtainStyledAttributes.getBoolean(C1190d.C1193c.MaterialEditText_met_autoValidate, false);
            this.f3789ac = m3837a(obtainStyledAttributes.getResourceId(C1190d.C1193c.MaterialEditText_met_iconLeft, -1));
            this.f3790ad = m3837a(obtainStyledAttributes.getResourceId(C1190d.C1193c.MaterialEditText_met_iconRight, -1));
            this.f3793ag = obtainStyledAttributes.getBoolean(C1190d.C1193c.MaterialEditText_met_clearButton, false);
            this.f3791ae = m3837a(C1190d.C1192b.met_ic_clear);
            this.f3798al = obtainStyledAttributes.getDimensionPixelSize(C1190d.C1193c.MaterialEditText_met_iconPadding, m3826b(16));
            this.f3766D = obtainStyledAttributes.getBoolean(C1190d.C1193c.MaterialEditText_met_floatingLabelAlwaysShown, false);
            this.f3767E = obtainStyledAttributes.getBoolean(C1190d.C1193c.MaterialEditText_met_helperTextAlwaysShown, false);
            this.f3792af = obtainStyledAttributes.getBoolean(C1190d.C1193c.MaterialEditText_met_validateOnFocusLost, false);
            this.f3788ab = obtainStyledAttributes.getBoolean(C1190d.C1193c.MaterialEditText_met_checkCharactersCountAtBeginning, true);
            obtainStyledAttributes.recycle();
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, new int[]{16842965, 16842966, 16842967, 16842968, 16842969});
            int dimensionPixelSize = obtainStyledAttributes2.getDimensionPixelSize(0, 0);
            this.f3827w = obtainStyledAttributes2.getDimensionPixelSize(1, dimensionPixelSize);
            this.f3825u = obtainStyledAttributes2.getDimensionPixelSize(2, dimensionPixelSize);
            this.f3828x = obtainStyledAttributes2.getDimensionPixelSize(3, dimensionPixelSize);
            this.f3826v = obtainStyledAttributes2.getDimensionPixelSize(4, dimensionPixelSize);
            obtainStyledAttributes2.recycle();
            if (Build.VERSION.SDK_INT >= 16) {
                setBackground(null);
            } else {
                setBackgroundDrawable(null);
            }
            if (this.f3765C) {
                TransformationMethod transformationMethod = getTransformationMethod();
                setSingleLine();
                setTransformationMethod(transformationMethod);
            }
            m3815g();
            m3817f();
            m3821d();
            m3810j();
            m3819e();
            m3805o();
            return;
        }
        throw new RuntimeException("SDK_INT less than LOLLIPOP");
    }

    /* renamed from: a */
    private boolean m3833a(MotionEvent motionEvent) {
        int i;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int scrollX = m3806n() ? getScrollX() + (this.f3789ac == null ? 0 : this.f3796aj + this.f3798al) : (getScrollX() + (this.f3790ad == null ? getWidth() : (getWidth() - this.f3796aj) - this.f3798al)) - this.f3796aj;
        int scrollY = getScrollY();
        int height = getHeight();
        int paddingBottom = getPaddingBottom();
        int i2 = this.f3821q;
        int i3 = (((scrollY + height) - paddingBottom) + i2) - this.f3797ak;
        boolean z = false;
        if (x >= scrollX) {
            z = false;
            if (x < scrollX + this.f3796aj) {
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

    /* renamed from: a */
    private Bitmap[] m3837a(int i) {
        if (i == -1) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        int i2 = 1;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(getResources(), i, options);
        int max = Math.max(options.outWidth, options.outHeight);
        int i3 = this.f3795ai;
        if (max > i3) {
            i2 = max / i3;
        }
        options.inSampleSize = i2;
        options.inJustDecodeBounds = false;
        return m3835a(BitmapFactory.decodeResource(getResources(), i, options));
    }

    /* renamed from: a */
    private Bitmap[] m3835a(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        Bitmap[] bitmapArr = new Bitmap[4];
        Bitmap m3825b = m3825b(bitmap);
        bitmapArr[0] = m3825b.copy(Bitmap.Config.ARGB_8888, true);
        Canvas canvas = new Canvas(bitmapArr[0]);
        int i = this.f3824t;
        canvas.drawColor((C1182a.m3843a(i) ? -16777216 : -1979711488) | (i & FlexItem.MAX_SIZE), PorterDuff.Mode.SRC_IN);
        bitmapArr[1] = m3825b.copy(Bitmap.Config.ARGB_8888, true);
        new Canvas(bitmapArr[1]).drawColor(this.f3829y, PorterDuff.Mode.SRC_IN);
        bitmapArr[2] = m3825b.copy(Bitmap.Config.ARGB_8888, true);
        Canvas canvas2 = new Canvas(bitmapArr[2]);
        int i2 = this.f3824t;
        canvas2.drawColor((C1182a.m3843a(i2) ? 1275068416 : 1107296256) | (16777215 & i2), PorterDuff.Mode.SRC_IN);
        bitmapArr[3] = m3825b.copy(Bitmap.Config.ARGB_8888, true);
        new Canvas(bitmapArr[3]).drawColor(this.f3830z, PorterDuff.Mode.SRC_IN);
        return bitmapArr;
    }

    /* renamed from: a */
    private Bitmap[] m3834a(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        int i = this.f3795ai;
        return m3835a(Bitmap.createScaledBitmap(createBitmap, i, i, false));
    }

    /* renamed from: b */
    private int m3826b(int i) {
        return C1185b.m3840a(getContext(), i);
    }

    /* renamed from: b */
    private Bitmap m3825b(Bitmap bitmap) {
        int i;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int max = Math.max(width, height);
        int i2 = this.f3795ai;
        if (max == i2) {
            return bitmap;
        }
        Bitmap bitmap2 = bitmap;
        if (max > i2) {
            if (width > i2) {
                i = (int) (i2 * (height / width));
            } else {
                i = i2;
                i2 = (int) (i2 * (width / height));
            }
            bitmap2 = Bitmap.createScaledBitmap(bitmap, i2, i, false);
        }
        return bitmap2;
    }

    /* renamed from: d */
    private void m3821d() {
        if (!TextUtils.isEmpty(getText())) {
            Editable text = getText();
            setText((CharSequence) null);
            m3808l();
            setText(text);
            setSelection(text.length());
            this.f3776N = 1.0f;
            this.f3777O = true;
        } else {
            m3808l();
        }
        m3809k();
    }

    /* renamed from: e */
    private void m3819e() {
        addTextChangedListener(new TextWatcher() { // from class: com.b.a.c.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                C1186c.this.m3805o();
                if (C1186c.this.f3784V) {
                    C1186c.this.m3827b();
                } else {
                    C1186c.this.setError(null);
                }
                C1186c.this.postInvalidate();
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        });
    }

    /* renamed from: f */
    private void m3817f() {
        this.f3813i = this.f3822r ? this.f3817m + this.f3820p : this.f3820p;
        this.f3806b.setTextSize(this.f3819o);
        Paint.FontMetrics fontMetrics = this.f3806b.getFontMetrics();
        this.f3814j = ((int) ((fontMetrics.descent - fontMetrics.ascent) * this.f3771I)) + (this.f3782T ? this.f3821q : this.f3821q * 2);
        this.f3815k = this.f3789ac == null ? 0 : this.f3796aj + this.f3798al;
        this.f3816l = this.f3790ad == null ? 0 : this.f3798al + this.f3796aj;
        m3813h();
    }

    /* renamed from: g */
    private void m3815g() {
        int i = 0;
        boolean z = this.f3763A > 0 || this.f3764B > 0 || this.f3765C || this.f3775M != null || this.f3773K != null;
        int i2 = this.f3770H;
        if (i2 > 0) {
            i = i2;
        } else if (z) {
            i = 1;
        }
        this.f3769G = i;
        this.f3771I = i;
    }

    private int getBottomEllipsisWidth() {
        return this.f3765C ? (this.f3768F * 5) + m3826b(4) : 0;
    }

    private int getBottomTextLeftOffset() {
        return m3806n() ? getCharactersCounterWidth() : getBottomEllipsisWidth();
    }

    private int getBottomTextRightOffset() {
        return m3806n() ? getBottomEllipsisWidth() : getCharactersCounterWidth();
    }

    private int getButtonsCount() {
        return m3839a() ? 1 : 0;
    }

    private String getCharactersCounterText() {
        String str;
        int i;
        StringBuilder sb;
        StringBuilder sb2;
        int i2;
        StringBuilder sb3;
        if (this.f3763A <= 0) {
            if (m3806n()) {
                sb3 = new StringBuilder();
                sb3.append(this.f3764B);
                sb3.append(" / ");
                i2 = m3829a(getText());
            } else {
                sb3 = new StringBuilder();
                sb3.append(m3829a(getText()));
                sb3.append(" / ");
                i2 = this.f3764B;
            }
            sb3.append(i2);
            str = sb3.toString();
        } else if (this.f3764B <= 0) {
            if (m3806n()) {
                sb2 = new StringBuilder();
                sb2.append("+");
                sb2.append(this.f3763A);
                sb2.append(" / ");
                sb2.append(m3829a(getText()));
            } else {
                sb2 = new StringBuilder();
                sb2.append(m3829a(getText()));
                sb2.append(" / ");
                sb2.append(this.f3763A);
                sb2.append("+");
            }
            str = sb2.toString();
        } else {
            if (m3806n()) {
                sb = new StringBuilder();
                sb.append(this.f3764B);
                sb.append("-");
                sb.append(this.f3763A);
                sb.append(" / ");
                i = m3829a(getText());
            } else {
                sb = new StringBuilder();
                sb.append(m3829a(getText()));
                sb.append(" / ");
                sb.append(this.f3763A);
                sb.append("-");
                i = this.f3764B;
            }
            sb.append(i);
            str = sb.toString();
        }
        return str;
    }

    private int getCharactersCounterWidth() {
        return m3804p() ? (int) this.f3806b.measureText(getCharactersCounterText()) : 0;
    }

    public C1412h getLabelAnimator() {
        if (this.f3808d == null) {
            this.f3808d = C1412h.m3720a(this, "floatingLabelFraction", FlexItem.FLEX_GROW_DEFAULT, 1.0f);
        }
        this.f3808d.mo3662b((this.f3787aa ? 300 : null) == 1 ? 1L : 0L);
        return this.f3808d;
    }

    public C1412h getLabelFocusAnimator() {
        if (this.f3809e == null) {
            this.f3809e = C1412h.m3720a(this, "focusFraction", FlexItem.FLEX_GROW_DEFAULT, 1.0f);
        }
        return this.f3809e;
    }

    /* renamed from: h */
    private void m3813h() {
        int i;
        int buttonsCount = this.f3796aj * getButtonsCount();
        if (m3806n()) {
            i = buttonsCount;
            buttonsCount = 0;
        } else {
            i = 0;
        }
        super.setPadding(this.f3827w + this.f3815k + i, this.f3825u + this.f3813i, this.f3828x + this.f3816l + buttonsCount, this.f3826v + this.f3814j);
    }

    /* renamed from: i */
    private boolean m3811i() {
        int i;
        if (getWidth() == 0) {
            return false;
        }
        this.f3806b.setTextSize(this.f3819o);
        if (this.f3775M == null && this.f3773K == null) {
            i = this.f3769G;
        } else {
            Layout.Alignment alignment = ((getGravity() & 5) == 5 || m3806n()) ? Layout.Alignment.ALIGN_OPPOSITE : (getGravity() & 3) == 3 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
            String str = this.f3775M;
            if (str == null) {
                str = this.f3773K;
            }
            this.f3807c = new StaticLayout(str, this.f3806b, (((getWidth() - getBottomTextLeftOffset()) - getBottomTextRightOffset()) - getPaddingLeft()) - getPaddingRight(), alignment, 1.0f, FlexItem.FLEX_GROW_DEFAULT, true);
            i = Math.max(this.f3807c.getLineCount(), this.f3770H);
        }
        float f = i;
        if (this.f3772J != f) {
            m3838a(f).mo3672a();
        }
        this.f3772J = f;
        return true;
    }

    /* renamed from: j */
    private void m3810j() {
        addTextChangedListener(new TextWatcher() { // from class: com.b.a.c.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (C1186c.this.f3822r) {
                    if (editable.length() == 0) {
                        if (!C1186c.this.f3777O) {
                            return;
                        }
                        C1186c.this.f3777O = false;
                        C1186c.this.getLabelAnimator().m3652h();
                    } else if (C1186c.this.f3777O) {
                    } else {
                        C1186c.this.f3777O = true;
                        C1186c.this.getLabelAnimator().mo3672a();
                    }
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        });
        this.f3811g = new View.OnFocusChangeListener() { // from class: com.b.a.c.3
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (C1186c.this.f3822r && C1186c.this.f3823s) {
                    if (z) {
                        C1186c.this.getLabelFocusAnimator().mo3672a();
                    } else {
                        C1186c.this.getLabelFocusAnimator().m3652h();
                    }
                }
                if (C1186c.this.f3792af && !z) {
                    C1186c.this.m3827b();
                }
                if (C1186c.this.f3812h != null) {
                    C1186c.this.f3812h.onFocusChange(view, z);
                }
            }
        };
        super.setOnFocusChangeListener(this.f3811g);
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [int[], int[][]] */
    /* renamed from: k */
    private void m3809k() {
        ColorStateList colorStateList = this.f3801ao;
        if (colorStateList != null) {
            setTextColor(colorStateList);
            return;
        }
        int[] iArr = EMPTY_STATE_SET;
        int i = this.f3824t;
        this.f3801ao = new ColorStateList(new int[]{new int[]{16842910}, iArr}, new int[]{(i & FlexItem.MAX_SIZE) | (-553648128), (i & FlexItem.MAX_SIZE) | 1140850688});
        setTextColor(this.f3801ao);
    }

    /* renamed from: l */
    private void m3808l() {
        ColorStateList colorStateList = this.f3802ap;
        if (colorStateList == null) {
            setHintTextColor((this.f3824t & FlexItem.MAX_SIZE) | 1140850688);
        } else {
            setHintTextColor(colorStateList);
        }
    }

    /* renamed from: m */
    private boolean m3807m() {
        return this.f3775M == null && m3823c();
    }

    /* renamed from: n */
    private boolean m3806n() {
        boolean z = false;
        if (Build.VERSION.SDK_INT < 17) {
            return false;
        }
        if (getResources().getConfiguration().getLayoutDirection() == 1) {
            z = true;
        }
        return z;
    }

    /* renamed from: o */
    public void m3805o() {
        boolean z;
        if ((!this.f3794ah && !this.f3788ab) || !m3804p()) {
            this.f3785W = true;
            return;
        }
        Editable text = getText();
        int m3829a = text == null ? 0 : m3829a(text);
        if (m3829a >= this.f3763A) {
            int i = this.f3764B;
            z = true;
            if (i > 0) {
                if (m3829a <= i) {
                    z = true;
                }
            }
            this.f3785W = z;
        }
        z = false;
        this.f3785W = z;
    }

    /* renamed from: p */
    private boolean m3804p() {
        return this.f3763A > 0 || this.f3764B > 0;
    }

    private void setFloatingLabelInternal(int i) {
        if (i == 1) {
            this.f3822r = true;
            this.f3823s = false;
        } else if (i != 2) {
            this.f3822r = false;
            this.f3823s = false;
        } else {
            this.f3822r = true;
            this.f3823s = true;
        }
    }

    /* renamed from: a */
    public C1186c m3832a(AbstractC1184b abstractC1184b) {
        if (this.f3804ar == null) {
            this.f3804ar = new ArrayList();
        }
        this.f3804ar.add(abstractC1184b);
        return this;
    }

    /* renamed from: a */
    public boolean m3839a() {
        return this.f3793ag;
    }

    /* renamed from: b */
    public boolean m3827b() {
        boolean z;
        List<AbstractC1184b> list = this.f3804ar;
        if (list == null || list.isEmpty()) {
            return true;
        }
        Editable text = getText();
        boolean z2 = text.length() == 0;
        Iterator<AbstractC1184b> it = this.f3804ar.iterator();
        boolean z3 = true;
        while (true) {
            z = z3;
            if (!it.hasNext()) {
                break;
            }
            AbstractC1184b next = it.next();
            z = z3 && next.mo477a(text, z2);
            z3 = z;
            if (!z) {
                setError(next.m3841a());
                break;
            }
        }
        if (z) {
            setError(null);
        }
        postInvalidate();
        return z;
    }

    /* renamed from: c */
    public boolean m3823c() {
        return this.f3785W;
    }

    public Typeface getAccentTypeface() {
        return this.f3779Q;
    }

    public int getBottomTextSize() {
        return this.f3819o;
    }

    public float getCurrentBottomLines() {
        return this.f3771I;
    }

    @Override // android.widget.TextView
    public CharSequence getError() {
        return this.f3775M;
    }

    public int getErrorColor() {
        return this.f3830z;
    }

    public float getFloatingLabelFraction() {
        return this.f3776N;
    }

    public int getFloatingLabelPadding() {
        return this.f3820p;
    }

    public CharSequence getFloatingLabelText() {
        return this.f3781S;
    }

    public int getFloatingLabelTextColor() {
        return this.f3818n;
    }

    public int getFloatingLabelTextSize() {
        return this.f3817m;
    }

    public float getFocusFraction() {
        return this.f3778P;
    }

    public String getHelperText() {
        return this.f3773K;
    }

    public int getHelperTextColor() {
        return this.f3774L;
    }

    public int getInnerPaddingBottom() {
        return this.f3826v;
    }

    public int getInnerPaddingLeft() {
        return this.f3827w;
    }

    public int getInnerPaddingRight() {
        return this.f3828x;
    }

    public int getInnerPaddingTop() {
        return this.f3825u;
    }

    public int getMaxCharacters() {
        return this.f3764B;
    }

    public int getMinBottomTextLines() {
        return this.f3770H;
    }

    public int getMinCharacters() {
        return this.f3763A;
    }

    public int getUnderlineColor() {
        return this.f3783U;
    }

    public List<AbstractC1184b> getValidators() {
        return this.f3804ar;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.f3794ah) {
            this.f3794ah = true;
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int i4;
        int scrollX = getScrollX() + (this.f3789ac == null ? 0 : this.f3796aj + this.f3798al);
        int scrollX2 = getScrollX() + (this.f3790ad == null ? getWidth() : (getWidth() - this.f3796aj) - this.f3798al);
        int scrollY = (getScrollY() + getHeight()) - getPaddingBottom();
        this.f3786a.setAlpha(255);
        Bitmap[] bitmapArr = this.f3789ac;
        if (bitmapArr != null) {
            Bitmap bitmap = bitmapArr[(!m3807m() ? 3 : !isEnabled() ? 2 : hasFocus() ? 1 : null) == 1 ? 1 : 0];
            int i5 = this.f3798al;
            int width = (this.f3796aj - bitmap.getWidth()) / 2;
            int i6 = this.f3821q;
            int i7 = this.f3797ak;
            canvas.drawBitmap(bitmap, ((scrollX - i5) - i4) + width, ((i6 + scrollY) - i7) + ((i7 - bitmap.getHeight()) / 2), this.f3786a);
        }
        Bitmap[] bitmapArr2 = this.f3790ad;
        if (bitmapArr2 != null) {
            Bitmap bitmap2 = bitmapArr2[(!m3807m() ? 3 : !isEnabled() ? 2 : hasFocus() ? 1 : null) == 1 ? 1 : 0];
            int i8 = this.f3798al;
            int width2 = (this.f3796aj - bitmap2.getWidth()) / 2;
            int i9 = this.f3821q;
            int i10 = this.f3797ak;
            canvas.drawBitmap(bitmap2, i8 + scrollX2 + width2, ((i9 + scrollY) - i10) + ((i10 - bitmap2.getHeight()) / 2), this.f3786a);
        }
        if (hasFocus() && this.f3793ag && !TextUtils.isEmpty(getText())) {
            this.f3786a.setAlpha(255);
            int i11 = m3806n() ? scrollX : scrollX2 - this.f3796aj;
            Bitmap bitmap3 = this.f3791ae[0];
            int width3 = (this.f3796aj - bitmap3.getWidth()) / 2;
            int i12 = this.f3821q;
            int i13 = this.f3797ak;
            canvas.drawBitmap(bitmap3, i11 + width3, ((i12 + scrollY) - i13) + ((i13 - bitmap3.getHeight()) / 2), this.f3786a);
        }
        int i14 = scrollY;
        if (!this.f3782T) {
            int i15 = scrollY + this.f3821q;
            if (!m3807m()) {
                this.f3786a.setColor(this.f3830z);
                canvas.drawRect(scrollX, i15, scrollX2, m3826b(2) + i15, this.f3786a);
            } else if (!isEnabled()) {
                Paint paint = this.f3786a;
                int i16 = this.f3783U;
                if (i16 == -1) {
                    i16 = (this.f3824t & FlexItem.MAX_SIZE) | 1140850688;
                }
                paint.setColor(i16);
                float m3826b = m3826b(1);
                float f = FlexItem.FLEX_GROW_DEFAULT;
                while (true) {
                    float f2 = f;
                    if (f2 >= getWidth()) {
                        break;
                    }
                    float f3 = scrollX + f2;
                    canvas.drawRect(f3, i15, f3 + m3826b, m3826b(1) + i15, this.f3786a);
                    f = f2 + (m3826b * 3.0f);
                }
            } else if (hasFocus()) {
                this.f3786a.setColor(this.f3829y);
                canvas.drawRect(scrollX, i15, scrollX2, i15 + m3826b(2), this.f3786a);
            } else {
                Paint paint2 = this.f3786a;
                int i17 = this.f3783U;
                if (i17 == -1) {
                    i17 = (this.f3824t & FlexItem.MAX_SIZE) | 503316480;
                }
                paint2.setColor(i17);
                canvas.drawRect(scrollX, i15, scrollX2, i15 + m3826b(1), this.f3786a);
            }
            i14 = i15;
        }
        this.f3806b.setTextSize(this.f3819o);
        Paint.FontMetrics fontMetrics = this.f3806b.getFontMetrics();
        float f4 = -fontMetrics.ascent;
        float f5 = fontMetrics.descent;
        float f6 = this.f3819o + fontMetrics.ascent + fontMetrics.descent;
        if ((hasFocus() && m3804p()) || !m3823c()) {
            this.f3806b.setColor(m3823c() ? (this.f3824t & FlexItem.MAX_SIZE) | 1140850688 : this.f3830z);
            String charactersCounterText = getCharactersCounterText();
            canvas.drawText(charactersCounterText, m3806n() ? scrollX : scrollX2 - this.f3806b.measureText(charactersCounterText), this.f3821q + i14 + (f4 - f5), this.f3806b);
        }
        if (this.f3807c != null && (this.f3775M != null || ((this.f3767E || hasFocus()) && !TextUtils.isEmpty(this.f3773K)))) {
            TextPaint textPaint = this.f3806b;
            if (this.f3775M != null) {
                i3 = this.f3830z;
            } else {
                i3 = this.f3774L;
                if (i3 == -1) {
                    i3 = (this.f3824t & FlexItem.MAX_SIZE) | 1140850688;
                }
            }
            textPaint.setColor(i3);
            canvas.save();
            if (m3806n()) {
                canvas.translate(scrollX2 - this.f3807c.getWidth(), (this.f3821q + i14) - f6);
            } else {
                canvas.translate(getBottomTextLeftOffset() + scrollX, (this.f3821q + i14) - f6);
            }
            this.f3807c.draw(canvas);
            canvas.restore();
        }
        if (this.f3822r && !TextUtils.isEmpty(this.f3781S)) {
            this.f3806b.setTextSize(this.f3817m);
            TextPaint textPaint2 = this.f3806b;
            C1405b c1405b = this.f3803aq;
            float f7 = this.f3778P;
            int i18 = this.f3818n;
            if (i18 == -1) {
                i18 = (this.f3824t & FlexItem.MAX_SIZE) | 1140850688;
            }
            textPaint2.setColor(((Integer) c1405b.mo3673a(f7, Integer.valueOf(i18), Integer.valueOf(this.f3829y))).intValue());
            float measureText = this.f3806b.measureText(this.f3781S.toString());
            int innerPaddingLeft = ((getGravity() & 5) == 5 || m3806n()) ? (int) (scrollX2 - measureText) : (getGravity() & 3) == 3 ? scrollX : ((int) (getInnerPaddingLeft() + ((((getWidth() - getInnerPaddingLeft()) - getInnerPaddingRight()) - measureText) / 2.0f))) + scrollX;
            float f8 = 1.0f;
            int scrollY2 = (int) ((((this.f3825u + this.f3817m) + i) - (this.f3820p * (this.f3766D ? 1.0f : this.f3776N))) + getScrollY());
            float f9 = this.f3766D ? 1.0f : this.f3776N;
            float f10 = this.f3778P;
            if (this.f3818n == -1) {
                f8 = Color.alpha(i2) / 256.0f;
            }
            this.f3806b.setAlpha((int) (f9 * 255.0f * ((f10 * 0.74f) + 0.26f) * f8));
            canvas.drawText(this.f3781S.toString(), innerPaddingLeft, scrollY2, this.f3806b);
        }
        if (hasFocus() && this.f3765C && getScrollX() != 0) {
            this.f3786a.setColor(m3807m() ? this.f3829y : this.f3830z);
            float f11 = i14 + this.f3821q;
            if (m3806n()) {
                scrollX = scrollX2;
            }
            int i19 = m3806n() ? -1 : 1;
            int i20 = this.f3768F;
            canvas.drawCircle(((i19 * i20) / 2) + scrollX, (i20 / 2) + f11, i20 / 2, this.f3786a);
            int i21 = this.f3768F;
            canvas.drawCircle((((i19 * i21) * 5) / 2) + scrollX, (i21 / 2) + f11, i21 / 2, this.f3786a);
            int i22 = this.f3768F;
            canvas.drawCircle(scrollX + (((i19 * i22) * 9) / 2), f11 + (i22 / 2), i22 / 2, this.f3786a);
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m3811i();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f3765C && getScrollX() > 0 && motionEvent.getAction() == 0 && motionEvent.getX() < m3826b(20) && motionEvent.getY() > (getHeight() - this.f3814j) - this.f3826v && motionEvent.getY() < getHeight() - this.f3826v) {
            setSelection(0);
            return false;
        }
        if (hasFocus() && this.f3793ag) {
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1) {
                    if (this.f3800an) {
                        if (!TextUtils.isEmpty(getText())) {
                            setText((CharSequence) null);
                        }
                        this.f3800an = false;
                    }
                    if (this.f3799am) {
                        this.f3799am = false;
                        return true;
                    }
                    this.f3799am = false;
                } else if (action != 2) {
                    if (action == 3) {
                        this.f3799am = false;
                        this.f3800an = false;
                    }
                }
            } else if (m3833a(motionEvent)) {
                this.f3799am = true;
                this.f3800an = true;
                return true;
            }
            if (this.f3800an && !m3833a(motionEvent)) {
                this.f3800an = false;
            }
            if (this.f3799am) {
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setAccentTypeface(Typeface typeface) {
        this.f3779Q = typeface;
        this.f3806b.setTypeface(typeface);
        postInvalidate();
    }

    public void setAutoValidate(boolean z) {
        this.f3784V = z;
        if (z) {
            m3827b();
        }
    }

    public void setBaseColor(int i) {
        if (this.f3824t != i) {
            this.f3824t = i;
        }
        m3821d();
        postInvalidate();
    }

    public void setBottomTextSize(int i) {
        this.f3819o = i;
        m3817f();
    }

    public void setCurrentBottomLines(float f) {
        this.f3771I = f;
        m3817f();
    }

    @Override // android.widget.TextView
    public void setError(CharSequence charSequence) {
        this.f3775M = charSequence == null ? null : charSequence.toString();
        if (m3811i()) {
            postInvalidate();
        }
    }

    public void setErrorColor(int i) {
        this.f3830z = i;
        postInvalidate();
    }

    public void setFloatingLabel(int i) {
        setFloatingLabelInternal(i);
        m3817f();
    }

    public void setFloatingLabelAlwaysShown(boolean z) {
        this.f3766D = z;
        invalidate();
    }

    public void setFloatingLabelAnimating(boolean z) {
        this.f3787aa = z;
    }

    public void setFloatingLabelFraction(float f) {
        this.f3776N = f;
        invalidate();
    }

    public void setFloatingLabelPadding(int i) {
        this.f3820p = i;
        postInvalidate();
    }

    public void setFloatingLabelText(CharSequence charSequence) {
        CharSequence charSequence2 = charSequence;
        if (charSequence == null) {
            charSequence2 = getHint();
        }
        this.f3781S = charSequence2;
        postInvalidate();
    }

    public void setFloatingLabelTextColor(int i) {
        this.f3818n = i;
        postInvalidate();
    }

    public void setFloatingLabelTextSize(int i) {
        this.f3817m = i;
        m3817f();
    }

    public void setFocusFraction(float f) {
        this.f3778P = f;
        invalidate();
    }

    public void setHelperText(CharSequence charSequence) {
        this.f3773K = charSequence == null ? null : charSequence.toString();
        if (m3811i()) {
            postInvalidate();
        }
    }

    public void setHelperTextAlwaysShown(boolean z) {
        this.f3767E = z;
        invalidate();
    }

    public void setHelperTextColor(int i) {
        this.f3774L = i;
        postInvalidate();
    }

    public void setHideUnderline(boolean z) {
        this.f3782T = z;
        m3817f();
        postInvalidate();
    }

    public void setIconLeft(int i) {
        this.f3789ac = m3837a(i);
        m3817f();
    }

    public void setIconLeft(Bitmap bitmap) {
        this.f3789ac = m3835a(bitmap);
        m3817f();
    }

    public void setIconLeft(Drawable drawable) {
        this.f3789ac = m3834a(drawable);
        m3817f();
    }

    public void setIconRight(int i) {
        this.f3790ad = m3837a(i);
        m3817f();
    }

    public void setIconRight(Bitmap bitmap) {
        this.f3790ad = m3835a(bitmap);
        m3817f();
    }

    public void setIconRight(Drawable drawable) {
        this.f3790ad = m3834a(drawable);
        m3817f();
    }

    public void setLengthChecker(AbstractC1183a abstractC1183a) {
        this.f3805as = abstractC1183a;
    }

    public void setMaxCharacters(int i) {
        this.f3764B = i;
        m3815g();
        m3817f();
        postInvalidate();
    }

    public void setMetHintTextColor(int i) {
        this.f3802ap = ColorStateList.valueOf(i);
        m3808l();
    }

    public void setMetHintTextColor(ColorStateList colorStateList) {
        this.f3802ap = colorStateList;
        m3808l();
    }

    public void setMetTextColor(int i) {
        this.f3801ao = ColorStateList.valueOf(i);
        m3809k();
    }

    public void setMetTextColor(ColorStateList colorStateList) {
        this.f3801ao = colorStateList;
        m3809k();
    }

    public void setMinBottomTextLines(int i) {
        this.f3770H = i;
        m3815g();
        m3817f();
        postInvalidate();
    }

    public void setMinCharacters(int i) {
        this.f3763A = i;
        m3815g();
        m3817f();
        postInvalidate();
    }

    @Override // android.view.View
    public void setOnFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        if (this.f3811g == null) {
            super.setOnFocusChangeListener(onFocusChangeListener);
        } else {
            this.f3812h = onFocusChangeListener;
        }
    }

    @Override // android.widget.TextView, android.view.View
    @Deprecated
    public final void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
    }

    public void setPrimaryColor(int i) {
        this.f3829y = i;
        postInvalidate();
    }

    public void setShowClearButton(boolean z) {
        this.f3793ag = z;
        m3813h();
    }

    public void setSingleLineEllipsis(boolean z) {
        this.f3765C = z;
        m3815g();
        m3817f();
        postInvalidate();
    }

    public void setUnderlineColor(int i) {
        this.f3783U = i;
        postInvalidate();
    }

    public void setValidateOnFocusLost(boolean z) {
        this.f3792af = z;
    }
}
