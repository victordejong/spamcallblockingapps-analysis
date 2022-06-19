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
import android.widget.AutoCompleteTextView;
import androidx.appcompat.widget.C0215d;
import androidx.recyclerview.widget.C0608b;
import java.util.List;
import p084e9.C2626a;
import p084e9.C2627b;
import p084e9.View$OnFocusChangeListenerC2628c;
import p096f9.AbstractC2787a;
import p117h8.C3035k;
import p124i4.C3102d;
import p203p8.C4052e;
/* loaded from: classes2-dex2jar.jar:com/rengwuxian/materialedittext/MaterialAutoCompleteTextView.class */
public class MaterialAutoCompleteTextView extends C0215d {

    /* renamed from: v0 */
    public static final /* synthetic */ int f7698v0 = 0;

    /* renamed from: A */
    public boolean f7699A;

    /* renamed from: C */
    public int f7701C;

    /* renamed from: D */
    public int f7702D;

    /* renamed from: E */
    public float f7703E;

    /* renamed from: F */
    public float f7704F;

    /* renamed from: G */
    public String f7705G;

    /* renamed from: H */
    public int f7706H;

    /* renamed from: I */
    public String f7707I;

    /* renamed from: J */
    public float f7708J;

    /* renamed from: K */
    public boolean f7709K;

    /* renamed from: L */
    public float f7710L;

    /* renamed from: M */
    public Typeface f7711M;

    /* renamed from: N */
    public CharSequence f7712N;

    /* renamed from: O */
    public boolean f7713O;

    /* renamed from: P */
    public int f7714P;

    /* renamed from: R */
    public boolean f7715R;

    /* renamed from: S */
    public boolean f7716S;

    /* renamed from: T */
    public boolean f7717T;

    /* renamed from: U */
    public boolean f7718U;

    /* renamed from: V */
    public Bitmap[] f7719V;

    /* renamed from: W */
    public Bitmap[] f7720W;

    /* renamed from: a0 */
    public Bitmap[] f7721a0;

    /* renamed from: b0 */
    public boolean f7722b0;

    /* renamed from: c0 */
    public boolean f7723c0;

    /* renamed from: d0 */
    public boolean f7724d0;

    /* renamed from: e */
    public int f7725e;

    /* renamed from: f */
    public int f7727f;

    /* renamed from: g */
    public int f7729g;

    /* renamed from: h */
    public int f7731h;

    /* renamed from: h0 */
    public int f7732h0;

    /* renamed from: i */
    public int f7733i;

    /* renamed from: i0 */
    public boolean f7734i0;

    /* renamed from: j */
    public int f7735j;

    /* renamed from: j0 */
    public boolean f7736j0;

    /* renamed from: k */
    public int f7737k;

    /* renamed from: k0 */
    public ColorStateList f7738k0;

    /* renamed from: l */
    public int f7739l;

    /* renamed from: l0 */
    public ColorStateList f7740l0;

    /* renamed from: n */
    public boolean f7743n;

    /* renamed from: o */
    public boolean f7745o;

    /* renamed from: p */
    public int f7747p;

    /* renamed from: p0 */
    public StaticLayout f7748p0;

    /* renamed from: q */
    public int f7749q;

    /* renamed from: q0 */
    public C4052e f7750q0;

    /* renamed from: r */
    public int f7751r;

    /* renamed from: r0 */
    public C4052e f7752r0;

    /* renamed from: s */
    public int f7753s;

    /* renamed from: s0 */
    public C4052e f7754s0;

    /* renamed from: t */
    public int f7755t;

    /* renamed from: t0 */
    public View.OnFocusChangeListener f7756t0;

    /* renamed from: u */
    public int f7757u;

    /* renamed from: u0 */
    public View.OnFocusChangeListener f7758u0;

    /* renamed from: v */
    public int f7759v;

    /* renamed from: w */
    public int f7760w;

    /* renamed from: x */
    public int f7761x;

    /* renamed from: y */
    public boolean f7762y;

    /* renamed from: z */
    public boolean f7763z;

    /* renamed from: m0 */
    public C3102d f7742m0 = new C3102d();

    /* renamed from: n0 */
    public Paint f7744n0 = new Paint(1);

    /* renamed from: o0 */
    public TextPaint f7746o0 = new TextPaint(1);

    /* renamed from: e0 */
    public int f7726e0 = m3877i(32);

    /* renamed from: f0 */
    public int f7728f0 = m3877i(48);

    /* renamed from: g0 */
    public int f7730g0 = m3877i(32);

    /* renamed from: m */
    public int f7741m = getResources().getDimensionPixelSize(2131165375);

    /* renamed from: B */
    public int f7700B = getResources().getDimensionPixelSize(2131165279);

    public MaterialAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i;
        this.f7706H = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3035k.f10212D);
        this.f7738k0 = obtainStyledAttributes.getColorStateList(26);
        this.f7740l0 = obtainStyledAttributes.getColorStateList(27);
        this.f7747p = obtainStyledAttributes.getColor(2, -16777216);
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
                i = this.f7747p;
            }
        }
        this.f7757u = obtainStyledAttributes.getColor(24, i);
        setFloatingLabelInternal(obtainStyledAttributes.getInt(7, 0));
        this.f7759v = obtainStyledAttributes.getColor(6, Color.parseColor("#e7492E"));
        this.f7760w = obtainStyledAttributes.getInt(23, 0);
        this.f7761x = obtainStyledAttributes.getInt(21, 0);
        this.f7762y = obtainStyledAttributes.getBoolean(25, false);
        this.f7705G = obtainStyledAttributes.getString(14);
        this.f7706H = obtainStyledAttributes.getColor(16, -1);
        this.f7702D = obtainStyledAttributes.getInt(22, 0);
        String string = obtainStyledAttributes.getString(0);
        if (string != null && !isInEditMode()) {
            Typeface createFromAsset = Typeface.createFromAsset(getContext().getAssets(), string);
            this.f7711M = createFromAsset;
            this.f7746o0.setTypeface(createFromAsset);
        }
        String string2 = obtainStyledAttributes.getString(28);
        if (string2 != null && !isInEditMode()) {
            setTypeface(Typeface.createFromAsset(getContext().getAssets(), string2));
        }
        String string3 = obtainStyledAttributes.getString(11);
        this.f7712N = string3;
        if (string3 == null) {
            this.f7712N = getHint();
        }
        this.f7739l = obtainStyledAttributes.getDimensionPixelSize(10, this.f7741m);
        this.f7733i = obtainStyledAttributes.getDimensionPixelSize(13, getResources().getDimensionPixelSize(2131165367));
        this.f7735j = obtainStyledAttributes.getColor(12, -1);
        this.f7717T = obtainStyledAttributes.getBoolean(9, true);
        this.f7737k = obtainStyledAttributes.getDimensionPixelSize(3, getResources().getDimensionPixelSize(2131165280));
        this.f7713O = obtainStyledAttributes.getBoolean(17, false);
        this.f7714P = obtainStyledAttributes.getColor(29, -1);
        this.f7715R = obtainStyledAttributes.getBoolean(1, false);
        this.f7719V = m3880f(obtainStyledAttributes.getResourceId(18, -1));
        this.f7720W = m3880f(obtainStyledAttributes.getResourceId(20, -1));
        this.f7723c0 = obtainStyledAttributes.getBoolean(5, false);
        this.f7721a0 = m3880f(2131231050);
        this.f7732h0 = obtainStyledAttributes.getDimensionPixelSize(19, m3877i(16));
        this.f7763z = obtainStyledAttributes.getBoolean(8, false);
        this.f7699A = obtainStyledAttributes.getBoolean(15, false);
        this.f7722b0 = obtainStyledAttributes.getBoolean(30, false);
        this.f7718U = obtainStyledAttributes.getBoolean(4, true);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, new int[]{16842965, 16842966, 16842967, 16842968, 16842969});
        int dimensionPixelSize = obtainStyledAttributes2.getDimensionPixelSize(0, 0);
        this.f7753s = obtainStyledAttributes2.getDimensionPixelSize(1, dimensionPixelSize);
        this.f7749q = obtainStyledAttributes2.getDimensionPixelSize(2, dimensionPixelSize);
        this.f7755t = obtainStyledAttributes2.getDimensionPixelSize(3, dimensionPixelSize);
        this.f7751r = obtainStyledAttributes2.getDimensionPixelSize(4, dimensionPixelSize);
        obtainStyledAttributes2.recycle();
        setBackground(null);
        if (this.f7762y) {
            TransformationMethod transformationMethod = getTransformationMethod();
            setSingleLine();
            setTransformationMethod(transformationMethod);
        }
        m3875k();
        m3874l();
        m3873m();
        addTextChangedListener(new C2627b(this));
        View$OnFocusChangeListenerC2628c view$OnFocusChangeListenerC2628c = new View$OnFocusChangeListenerC2628c(this);
        this.f7756t0 = view$OnFocusChangeListenerC2628c;
        super.setOnFocusChangeListener(view$OnFocusChangeListenerC2628c);
        addTextChangedListener(new C2626a(this));
        m3882d();
    }

    private int getBottomEllipsisWidth() {
        int i;
        if (this.f7762y) {
            i = m3877i(4) + (this.f7700B * 5);
        } else {
            i = 0;
        }
        return i;
    }

    private int getBottomTextLeftOffset() {
        return m3870p() ? getCharactersCounterWidth() : getBottomEllipsisWidth();
    }

    private int getBottomTextRightOffset() {
        return m3870p() ? getBottomEllipsisWidth() : getCharactersCounterWidth();
    }

    private int getButtonsCount() {
        return this.f7723c0 ? 1 : 0;
    }

    private String getCharactersCounterText() {
        String str;
        int i;
        StringBuilder sb;
        StringBuilder sb2;
        int i2;
        StringBuilder sb3;
        if (this.f7760w <= 0) {
            if (m3870p()) {
                sb3 = new StringBuilder();
                sb3.append(this.f7761x);
                sb3.append(" / ");
                i2 = getText().length();
            } else {
                sb3 = new StringBuilder();
                sb3.append(getText().length());
                sb3.append(" / ");
                i2 = this.f7761x;
            }
            sb3.append(i2);
            str = sb3.toString();
        } else if (this.f7761x <= 0) {
            if (m3870p()) {
                sb2 = C0082b.m8752j("+");
                sb2.append(this.f7760w);
                sb2.append(" / ");
                sb2.append(getText().length());
            } else {
                sb2 = new StringBuilder();
                sb2.append(getText().length());
                sb2.append(" / ");
                sb2.append(this.f7760w);
                sb2.append("+");
            }
            str = sb2.toString();
        } else {
            if (m3870p()) {
                sb = new StringBuilder();
                sb.append(this.f7761x);
                sb.append("-");
                sb.append(this.f7760w);
                sb.append(" / ");
                i = getText().length();
            } else {
                sb = new StringBuilder();
                sb.append(getText().length());
                sb.append(" / ");
                sb.append(this.f7760w);
                sb.append("-");
                i = this.f7761x;
            }
            sb.append(i);
            str = sb.toString();
        }
        return str;
    }

    private int getCharactersCounterWidth() {
        return m3876j() ? (int) this.f7746o0.measureText(getCharactersCounterText()) : 0;
    }

    public C4052e getLabelAnimator() {
        if (this.f7750q0 == null) {
            this.f7750q0 = C4052e.m1459l(this, "floatingLabelFraction", 0.0f, 1.0f);
        }
        this.f7750q0.m1458m((this.f7717T ? 300 : null) == 1 ? 1L : 0L);
        return this.f7750q0;
    }

    public C4052e getLabelFocusAnimator() {
        if (this.f7752r0 == null) {
            this.f7752r0 = C4052e.m1459l(this, "focusFraction", 0.0f, 1.0f);
        }
        return this.f7752r0;
    }

    private void setFloatingLabelInternal(int i) {
        if (i == 1) {
            this.f7743n = true;
            this.f7745o = false;
        } else if (i != 2) {
            this.f7743n = false;
            this.f7745o = false;
        } else {
            this.f7743n = true;
            this.f7745o = true;
        }
    }

    /* renamed from: c */
    public final boolean m3883c() {
        int i;
        if (getWidth() == 0) {
            return false;
        }
        this.f7746o0.setTextSize(this.f7737k);
        if (this.f7707I == null && this.f7705G == null) {
            i = this.f7701C;
        } else {
            Layout.Alignment alignment = ((getGravity() & 5) == 5 || m3870p()) ? Layout.Alignment.ALIGN_OPPOSITE : (getGravity() & 3) == 3 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
            String str = this.f7707I;
            if (str == null) {
                str = this.f7705G;
            }
            StaticLayout staticLayout = new StaticLayout(str, this.f7746o0, (((getWidth() - getBottomTextLeftOffset()) - getBottomTextRightOffset()) - getPaddingLeft()) - getPaddingRight(), alignment, 1.0f, 0.0f, true);
            this.f7748p0 = staticLayout;
            i = Math.max(staticLayout.getLineCount(), this.f7702D);
        }
        float f = i;
        if (this.f7704F != f) {
            C4052e c4052e = this.f7754s0;
            if (c4052e == null) {
                this.f7754s0 = C4052e.m1459l(this, "currentBottomLines", f);
            } else {
                c4052e.m1445d();
                this.f7754s0.m1457n(f);
            }
            this.f7754s0.m1439j(false);
        }
        this.f7704F = f;
        return true;
    }

    /* renamed from: d */
    public final void m3882d() {
        boolean z;
        if ((!this.f7724d0 && !this.f7718U) || !m3876j()) {
            this.f7716S = true;
            return;
        }
        Editable text = getText();
        int length = text == null ? 0 : text.length();
        if (length >= this.f7760w) {
            int i = this.f7761x;
            z = true;
            if (i > 0) {
                if (length <= i) {
                    z = true;
                }
            }
            this.f7716S = z;
        }
        z = false;
        this.f7716S = z;
    }

    /* renamed from: e */
    public final void m3881e() {
        int buttonsCount = this.f7728f0 * getButtonsCount();
        int i = 0;
        if (!m3870p()) {
            i = buttonsCount;
            buttonsCount = 0;
        }
        super.setPadding(this.f7753s + this.f7729g + buttonsCount, this.f7749q + this.f7725e, this.f7755t + this.f7731h + i, this.f7751r + this.f7727f);
    }

    /* renamed from: f */
    public final Bitmap[] m3880f(int i) {
        if (i == -1) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        int i2 = 1;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(getResources(), i, options);
        int max = Math.max(options.outWidth, options.outHeight);
        int i3 = this.f7726e0;
        if (max > i3) {
            i2 = max / i3;
        }
        options.inSampleSize = i2;
        options.inJustDecodeBounds = false;
        return m3879g(BitmapFactory.decodeResource(getResources(), i, options));
    }

    /* renamed from: g */
    public final Bitmap[] m3879g(Bitmap bitmap) {
        Bitmap bitmap2;
        int i;
        if (bitmap == null) {
            return null;
        }
        Bitmap[] bitmapArr = new Bitmap[4];
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int max = Math.max(width, height);
        int i2 = this.f7726e0;
        if (max == i2) {
            bitmap2 = bitmap;
        } else {
            bitmap2 = bitmap;
            if (max > i2) {
                float f = i2;
                if (width > i2) {
                    i = (int) ((height / width) * f);
                } else {
                    i = i2;
                    i2 = (int) ((width / height) * f);
                }
                bitmap2 = Bitmap.createScaledBitmap(bitmap, i2, i, false);
            }
        }
        bitmapArr[0] = bitmap2.copy(Bitmap.Config.ARGB_8888, true);
        Canvas canvas = new Canvas(bitmapArr[0]);
        int i3 = this.f7747p;
        canvas.drawColor((C3102d.m2613z(i3) ? -16777216 : -1979711488) | (i3 & 16777215), PorterDuff.Mode.SRC_IN);
        bitmapArr[1] = bitmap2.copy(Bitmap.Config.ARGB_8888, true);
        new Canvas(bitmapArr[1]).drawColor(this.f7757u, PorterDuff.Mode.SRC_IN);
        bitmapArr[2] = bitmap2.copy(Bitmap.Config.ARGB_8888, true);
        Canvas canvas2 = new Canvas(bitmapArr[2]);
        int i4 = this.f7747p;
        canvas2.drawColor((C3102d.m2613z(i4) ? 1275068416 : 1107296256) | (16777215 & i4), PorterDuff.Mode.SRC_IN);
        bitmapArr[3] = bitmap2.copy(Bitmap.Config.ARGB_8888, true);
        new Canvas(bitmapArr[3]).drawColor(this.f7759v, PorterDuff.Mode.SRC_IN);
        return bitmapArr;
    }

    public Typeface getAccentTypeface() {
        return this.f7711M;
    }

    public int getBottomTextSize() {
        return this.f7737k;
    }

    public float getCurrentBottomLines() {
        return this.f7703E;
    }

    @Override // android.widget.TextView
    public CharSequence getError() {
        return this.f7707I;
    }

    public int getErrorColor() {
        return this.f7759v;
    }

    public float getFloatingLabelFraction() {
        return this.f7708J;
    }

    public int getFloatingLabelPadding() {
        return this.f7739l;
    }

    public CharSequence getFloatingLabelText() {
        return this.f7712N;
    }

    public int getFloatingLabelTextColor() {
        return this.f7735j;
    }

    public int getFloatingLabelTextSize() {
        return this.f7733i;
    }

    public float getFocusFraction() {
        return this.f7710L;
    }

    public String getHelperText() {
        return this.f7705G;
    }

    public int getHelperTextColor() {
        return this.f7706H;
    }

    public int getInnerPaddingBottom() {
        return this.f7751r;
    }

    public int getInnerPaddingLeft() {
        return this.f7753s;
    }

    public int getInnerPaddingRight() {
        return this.f7755t;
    }

    public int getInnerPaddingTop() {
        return this.f7749q;
    }

    public int getMaxCharacters() {
        return this.f7761x;
    }

    public int getMinBottomTextLines() {
        return this.f7702D;
    }

    public int getMinCharacters() {
        return this.f7760w;
    }

    public int getUnderlineColor() {
        return this.f7714P;
    }

    public List<Object> getValidators() {
        return null;
    }

    /* renamed from: h */
    public final Bitmap[] m3878h(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        int i = this.f7726e0;
        return m3879g(Bitmap.createScaledBitmap(createBitmap, i, i, false));
    }

    /* renamed from: i */
    public final int m3877i(int i) {
        return Math.round(TypedValue.applyDimension(1, i, getContext().getResources().getDisplayMetrics()));
    }

    /* renamed from: j */
    public final boolean m3876j() {
        return this.f7760w > 0 || this.f7761x > 0;
    }

    /* renamed from: k */
    public final void m3875k() {
        int i = 0;
        boolean z = this.f7760w > 0 || this.f7761x > 0 || this.f7762y || this.f7707I != null || this.f7705G != null;
        int i2 = this.f7702D;
        if (i2 > 0) {
            i = i2;
        } else if (z) {
            i = 1;
        }
        this.f7701C = i;
        this.f7703E = i;
    }

    /* renamed from: l */
    public final void m3874l() {
        this.f7725e = this.f7743n ? this.f7733i + this.f7739l : this.f7739l;
        this.f7746o0.setTextSize(this.f7737k);
        Paint.FontMetrics fontMetrics = this.f7746o0.getFontMetrics();
        this.f7727f = ((int) ((fontMetrics.descent - fontMetrics.ascent) * this.f7703E)) + (this.f7713O ? this.f7741m : this.f7741m * 2);
        this.f7729g = this.f7719V == null ? 0 : this.f7728f0 + this.f7732h0;
        this.f7731h = this.f7720W == null ? 0 : this.f7732h0 + this.f7728f0;
        m3881e();
    }

    /* renamed from: m */
    public final void m3873m() {
        if (!TextUtils.isEmpty(getText())) {
            Editable text = getText();
            setText((CharSequence) null);
            m3869q();
            setText(text);
            setSelection(text.length());
            this.f7708J = 1.0f;
            this.f7709K = true;
        } else {
            m3869q();
        }
        m3868r();
    }

    /* renamed from: n */
    public final boolean m3872n(MotionEvent motionEvent) {
        int i;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int scrollX = m3870p() ? getScrollX() + (this.f7719V == null ? 0 : this.f7728f0 + this.f7732h0) : (getScrollX() + (this.f7720W == null ? getWidth() : (getWidth() - this.f7728f0) - this.f7732h0)) - this.f7728f0;
        int scrollY = getScrollY();
        int height = getHeight();
        int paddingBottom = getPaddingBottom();
        int i2 = this.f7741m;
        int i3 = (((height + scrollY) - paddingBottom) + i2) - this.f7730g0;
        boolean z = false;
        if (x >= scrollX) {
            z = false;
            if (x < scrollX + this.f7728f0) {
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

    /* renamed from: o */
    public final boolean m3871o() {
        return this.f7707I == null && this.f7716S;
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.f7724d0) {
            this.f7724d0 = true;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int i4;
        int scrollX = getScrollX() + (this.f7719V == null ? 0 : this.f7728f0 + this.f7732h0);
        int scrollX2 = getScrollX() + (this.f7720W == null ? getWidth() : (getWidth() - this.f7728f0) - this.f7732h0);
        int height = (getHeight() + getScrollY()) - getPaddingBottom();
        this.f7744n0.setAlpha(255);
        Bitmap[] bitmapArr = this.f7719V;
        if (bitmapArr != null) {
            Bitmap bitmap = bitmapArr[(!m3871o() ? 3 : !isEnabled() ? 2 : hasFocus() ? 1 : null) == 1 ? 1 : 0];
            int i5 = this.f7732h0;
            int width = (this.f7728f0 - bitmap.getWidth()) / 2;
            int i6 = this.f7741m;
            int i7 = this.f7730g0;
            canvas.drawBitmap(bitmap, width + ((scrollX - i5) - i4), ((i7 - bitmap.getHeight()) / 2) + ((i6 + height) - i7), this.f7744n0);
        }
        Bitmap[] bitmapArr2 = this.f7720W;
        if (bitmapArr2 != null) {
            Bitmap bitmap2 = bitmapArr2[(!m3871o() ? 3 : !isEnabled() ? 2 : hasFocus() ? 1 : null) == 1 ? 1 : 0];
            int i8 = this.f7732h0;
            int width2 = (this.f7728f0 - bitmap2.getWidth()) / 2;
            int i9 = this.f7741m;
            int i10 = this.f7730g0;
            canvas.drawBitmap(bitmap2, width2 + i8 + scrollX2, ((i10 - bitmap2.getHeight()) / 2) + ((i9 + height) - i10), this.f7744n0);
        }
        if (hasFocus() && this.f7723c0 && !TextUtils.isEmpty(getText())) {
            this.f7744n0.setAlpha(255);
            int i11 = m3870p() ? scrollX : scrollX2 - this.f7728f0;
            Bitmap bitmap3 = this.f7721a0[0];
            int width3 = (this.f7728f0 - bitmap3.getWidth()) / 2;
            int i12 = this.f7741m;
            int i13 = this.f7730g0;
            canvas.drawBitmap(bitmap3, width3 + i11, ((i13 - bitmap3.getHeight()) / 2) + ((i12 + height) - i13), this.f7744n0);
        }
        int i14 = height;
        if (!this.f7713O) {
            i14 = height + this.f7741m;
            if (!m3871o()) {
                this.f7744n0.setColor(this.f7759v);
                canvas.drawRect(scrollX, i14, scrollX2, m3877i(2) + i14, this.f7744n0);
            } else if (!isEnabled()) {
                Paint paint = this.f7744n0;
                int i15 = this.f7714P;
                if (i15 == -1) {
                    i15 = (this.f7747p & 16777215) | 1140850688;
                }
                paint.setColor(i15);
                float m3877i = m3877i(1);
                float f = 0.0f;
                while (true) {
                    float f2 = f;
                    if (f2 >= getWidth()) {
                        break;
                    }
                    float f3 = scrollX + f2;
                    canvas.drawRect(f3, i14, f3 + m3877i, m3877i(1) + i14, this.f7744n0);
                    f = (m3877i * 3.0f) + f2;
                }
            } else if (hasFocus()) {
                this.f7744n0.setColor(this.f7757u);
                canvas.drawRect(scrollX, i14, scrollX2, m3877i(2) + i14, this.f7744n0);
            } else {
                Paint paint2 = this.f7744n0;
                int i16 = this.f7714P;
                if (i16 == -1) {
                    i16 = (this.f7747p & 16777215) | 503316480;
                }
                paint2.setColor(i16);
                canvas.drawRect(scrollX, i14, scrollX2, m3877i(1) + i14, this.f7744n0);
            }
        }
        this.f7746o0.setTextSize(this.f7737k);
        Paint.FontMetrics fontMetrics = this.f7746o0.getFontMetrics();
        float f4 = fontMetrics.ascent;
        float f5 = -f4;
        float f6 = fontMetrics.descent;
        float f7 = this.f7737k + f4 + f6;
        if ((hasFocus() && m3876j()) || !this.f7716S) {
            this.f7746o0.setColor(this.f7716S ? (this.f7747p & 16777215) | 1140850688 : this.f7759v);
            String charactersCounterText = getCharactersCounterText();
            canvas.drawText(charactersCounterText, m3870p() ? scrollX : scrollX2 - this.f7746o0.measureText(charactersCounterText), this.f7741m + i14 + (f5 - f6), this.f7746o0);
        }
        if (this.f7748p0 != null && (this.f7707I != null || ((this.f7699A || hasFocus()) && !TextUtils.isEmpty(this.f7705G)))) {
            TextPaint textPaint = this.f7746o0;
            if (this.f7707I != null) {
                i3 = this.f7759v;
            } else {
                i3 = this.f7706H;
                if (i3 == -1) {
                    i3 = (this.f7747p & 16777215) | 1140850688;
                }
            }
            textPaint.setColor(i3);
            canvas.save();
            if (m3870p()) {
                canvas.translate(scrollX2 - this.f7748p0.getWidth(), (this.f7741m + i14) - f7);
            } else {
                canvas.translate(getBottomTextLeftOffset() + scrollX, (this.f7741m + i14) - f7);
            }
            this.f7748p0.draw(canvas);
            canvas.restore();
        }
        if (this.f7743n && !TextUtils.isEmpty(this.f7712N)) {
            this.f7746o0.setTextSize(this.f7733i);
            TextPaint textPaint2 = this.f7746o0;
            C3102d c3102d = this.f7742m0;
            float f8 = this.f7710L;
            int i17 = this.f7735j;
            if (i17 == -1) {
                i17 = (this.f7747p & 16777215) | 1140850688;
            }
            textPaint2.setColor(((Integer) c3102d.evaluate(f8, Integer.valueOf(i17), Integer.valueOf(this.f7757u))).intValue());
            float measureText = this.f7746o0.measureText(this.f7712N.toString());
            int m7628g = ((getGravity() & 5) == 5 || m3870p()) ? (int) (scrollX2 - measureText) : (getGravity() & 3) == 3 ? scrollX : ((int) C0608b.m7628g((getWidth() - getInnerPaddingLeft()) - getInnerPaddingRight(), measureText, 2.0f, getInnerPaddingLeft())) + scrollX;
            float f9 = 1.0f;
            int scrollY = (int) ((((this.f7749q + this.f7733i) + i) - (this.f7739l * (this.f7763z ? 1.0f : this.f7708J))) + getScrollY());
            float f10 = this.f7763z ? 1.0f : this.f7708J;
            float f11 = this.f7710L;
            if (this.f7735j == -1) {
                f9 = Color.alpha(i2) / 256.0f;
            }
            this.f7746o0.setAlpha((int) (((f11 * 0.74f) + 0.26f) * f10 * 255.0f * f9));
            canvas.drawText(this.f7712N.toString(), m7628g, scrollY, this.f7746o0);
        }
        if (hasFocus() && this.f7762y && getScrollX() != 0) {
            this.f7744n0.setColor(m3871o() ? this.f7757u : this.f7759v);
            float f12 = i14 + this.f7741m;
            if (m3870p()) {
                scrollX = scrollX2;
            }
            int i18 = 1;
            if (m3870p()) {
                i18 = -1;
            }
            int i19 = this.f7700B;
            canvas.drawCircle(C0082b.m8760b(i18, i19, 2, scrollX), (i19 / 2) + f12, i19 / 2, this.f7744n0);
            int i20 = this.f7700B;
            canvas.drawCircle((((i18 * i20) * 5) / 2) + scrollX, (i20 / 2) + f12, i20 / 2, this.f7744n0);
            int i21 = this.f7700B;
            canvas.drawCircle((((i18 * i21) * 9) / 2) + scrollX, f12 + (i21 / 2), i21 / 2, this.f7744n0);
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m3883c();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f7762y && getScrollX() > 0 && motionEvent.getAction() == 0 && motionEvent.getX() < m3877i(20) && motionEvent.getY() > (getHeight() - this.f7727f) - this.f7751r && motionEvent.getY() < getHeight() - this.f7751r) {
            setSelection(0);
            return false;
        }
        if (hasFocus() && this.f7723c0) {
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1) {
                    if (this.f7736j0) {
                        if (!TextUtils.isEmpty(getText())) {
                            setText((CharSequence) null);
                        }
                        this.f7736j0 = false;
                    }
                    if (this.f7734i0) {
                        this.f7734i0 = false;
                        return true;
                    }
                    this.f7734i0 = false;
                } else if (action != 2) {
                    if (action == 3) {
                        this.f7734i0 = false;
                        this.f7736j0 = false;
                    }
                }
            } else if (m3872n(motionEvent)) {
                this.f7734i0 = true;
                this.f7736j0 = true;
                return true;
            }
            if (this.f7736j0 && !m3872n(motionEvent)) {
                this.f7736j0 = false;
            }
            if (this.f7734i0) {
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @TargetApi(17)
    /* renamed from: p */
    public final boolean m3870p() {
        boolean z = true;
        if (getResources().getConfiguration().getLayoutDirection() != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: q */
    public final void m3869q() {
        ColorStateList colorStateList = this.f7740l0;
        if (colorStateList == null) {
            setHintTextColor((this.f7747p & 16777215) | 1140850688);
        } else {
            setHintTextColor(colorStateList);
        }
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [int[], int[][]] */
    /* renamed from: r */
    public final void m3868r() {
        ColorStateList colorStateList = this.f7738k0;
        if (colorStateList != null) {
            setTextColor(colorStateList);
            return;
        }
        int[] iArr = AutoCompleteTextView.EMPTY_STATE_SET;
        int i = this.f7747p;
        ColorStateList colorStateList2 = new ColorStateList(new int[]{new int[]{16842910}, iArr}, new int[]{(i & 16777215) | (-553648128), (i & 16777215) | 1140850688});
        this.f7738k0 = colorStateList2;
        setTextColor(colorStateList2);
    }

    public void setAccentTypeface(Typeface typeface) {
        this.f7711M = typeface;
        this.f7746o0.setTypeface(typeface);
        postInvalidate();
    }

    public void setAutoValidate(boolean z) {
        this.f7715R = z;
    }

    public void setBaseColor(int i) {
        if (this.f7747p != i) {
            this.f7747p = i;
        }
        m3873m();
        postInvalidate();
    }

    public void setBottomTextSize(int i) {
        this.f7737k = i;
        m3874l();
    }

    public void setCurrentBottomLines(float f) {
        this.f7703E = f;
        m3874l();
    }

    @Override // android.widget.TextView
    public void setError(CharSequence charSequence) {
        this.f7707I = charSequence == null ? null : charSequence.toString();
        if (m3883c()) {
            postInvalidate();
        }
    }

    public void setErrorColor(int i) {
        this.f7759v = i;
        postInvalidate();
    }

    public void setFloatingLabel(int i) {
        setFloatingLabelInternal(i);
        m3874l();
    }

    public void setFloatingLabelAlwaysShown(boolean z) {
        this.f7763z = z;
        invalidate();
    }

    public void setFloatingLabelAnimating(boolean z) {
        this.f7717T = z;
    }

    public void setFloatingLabelFraction(float f) {
        this.f7708J = f;
        invalidate();
    }

    public void setFloatingLabelPadding(int i) {
        this.f7739l = i;
        postInvalidate();
    }

    public void setFloatingLabelText(CharSequence charSequence) {
        CharSequence charSequence2 = charSequence;
        if (charSequence == null) {
            charSequence2 = getHint();
        }
        this.f7712N = charSequence2;
        postInvalidate();
    }

    public void setFloatingLabelTextColor(int i) {
        this.f7735j = i;
        postInvalidate();
    }

    public void setFloatingLabelTextSize(int i) {
        this.f7733i = i;
        m3874l();
    }

    public void setFocusFraction(float f) {
        this.f7710L = f;
        invalidate();
    }

    public void setHelperText(CharSequence charSequence) {
        this.f7705G = charSequence == null ? null : charSequence.toString();
        if (m3883c()) {
            postInvalidate();
        }
    }

    public void setHelperTextAlwaysShown(boolean z) {
        this.f7699A = z;
        invalidate();
    }

    public void setHelperTextColor(int i) {
        this.f7706H = i;
        postInvalidate();
    }

    public void setHideUnderline(boolean z) {
        this.f7713O = z;
        m3874l();
        postInvalidate();
    }

    public void setIconLeft(int i) {
        this.f7719V = m3880f(i);
        m3874l();
    }

    public void setIconLeft(Bitmap bitmap) {
        this.f7719V = m3879g(bitmap);
        m3874l();
    }

    public void setIconLeft(Drawable drawable) {
        this.f7719V = m3878h(drawable);
        m3874l();
    }

    public void setIconRight(int i) {
        this.f7720W = m3880f(i);
        m3874l();
    }

    public void setIconRight(Bitmap bitmap) {
        this.f7720W = m3879g(bitmap);
        m3874l();
    }

    public void setIconRight(Drawable drawable) {
        this.f7720W = m3878h(drawable);
        m3874l();
    }

    public void setLengthChecker(AbstractC2787a abstractC2787a) {
    }

    public void setMaxCharacters(int i) {
        this.f7761x = i;
        m3875k();
        m3874l();
        postInvalidate();
    }

    public void setMetHintTextColor(int i) {
        this.f7740l0 = ColorStateList.valueOf(i);
        m3869q();
    }

    public void setMetHintTextColor(ColorStateList colorStateList) {
        this.f7740l0 = colorStateList;
        m3869q();
    }

    public void setMetTextColor(int i) {
        this.f7738k0 = ColorStateList.valueOf(i);
        m3868r();
    }

    public void setMetTextColor(ColorStateList colorStateList) {
        this.f7738k0 = colorStateList;
        m3868r();
    }

    public void setMinBottomTextLines(int i) {
        this.f7702D = i;
        m3875k();
        m3874l();
        postInvalidate();
    }

    public void setMinCharacters(int i) {
        this.f7760w = i;
        m3875k();
        m3874l();
        postInvalidate();
    }

    @Override // android.view.View
    public void setOnFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        if (this.f7756t0 == null) {
            super.setOnFocusChangeListener(onFocusChangeListener);
        } else {
            this.f7758u0 = onFocusChangeListener;
        }
    }

    @Override // android.widget.TextView, android.view.View
    @Deprecated
    public final void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
    }

    public void setPrimaryColor(int i) {
        this.f7757u = i;
        postInvalidate();
    }

    public void setShowClearButton(boolean z) {
        this.f7723c0 = z;
        m3881e();
    }

    public void setSingleLineEllipsis(boolean z) {
        this.f7762y = z;
        m3875k();
        m3874l();
        postInvalidate();
    }

    public void setUnderlineColor(int i) {
        this.f7714P = i;
        postInvalidate();
    }

    public void setValidateOnFocusLost(boolean z) {
        this.f7722b0 = z;
    }
}
