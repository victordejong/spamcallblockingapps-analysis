package com.google.android.material.textfield;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.google.android.material.R$attr;
import com.google.android.material.R$color;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.CheckableImageButton;
import p081h.p203i.p204a.p294f.p295a.C9167a;
import p081h.p203i.p204a.p294f.p308n.C9223c;
import p081h.p203i.p204a.p294f.p308n.C9224d;
import p081h.p203i.p204a.p294f.p308n.C9225e;
import p081h.p203i.p204a.p294f.p308n.C9245k;
import p081h.p203i.p204a.p294f.p308n.C9246l;
import p081h.p203i.p204a.p294f.p315u.C9273a;
import p081h.p203i.p204a.p294f.p315u.C9274b;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/TextInputLayout.class */
public class TextInputLayout extends LinearLayout {
    @ColorInt

    /* renamed from: A */
    public int f7619A;

    /* renamed from: B */
    public Drawable f7620B;

    /* renamed from: C */
    public final Rect f7621C;

    /* renamed from: D */
    public final RectF f7622D;

    /* renamed from: E */
    public Typeface f7623E;

    /* renamed from: F */
    public boolean f7624F;

    /* renamed from: G */
    public Drawable f7625G;

    /* renamed from: H */
    public CharSequence f7626H;

    /* renamed from: I */
    public CheckableImageButton f7627I;

    /* renamed from: J */
    public boolean f7628J;

    /* renamed from: K */
    public Drawable f7629K;

    /* renamed from: L */
    public Drawable f7630L;

    /* renamed from: N */
    public ColorStateList f7631N;

    /* renamed from: O */
    public boolean f7632O;

    /* renamed from: P */
    public PorterDuff.Mode f7633P;

    /* renamed from: Q */
    public boolean f7634Q;

    /* renamed from: R */
    public ColorStateList f7635R;

    /* renamed from: S */
    public ColorStateList f7636S;
    @ColorInt

    /* renamed from: T */
    public final int f7637T;
    @ColorInt

    /* renamed from: U */
    public final int f7638U;
    @ColorInt

    /* renamed from: V */
    public int f7639V;
    @ColorInt

    /* renamed from: W */
    public final int f7640W;

    /* renamed from: a */
    public final FrameLayout f7641a;

    /* renamed from: a0 */
    public boolean f7642a0;

    /* renamed from: b */
    public EditText f7643b;

    /* renamed from: b0 */
    public final C9223c f7644b0;

    /* renamed from: c */
    public CharSequence f7645c;

    /* renamed from: c0 */
    public boolean f7646c0;

    /* renamed from: d */
    public final C9274b f7647d;

    /* renamed from: d0 */
    public ValueAnimator f7648d0;

    /* renamed from: e */
    public boolean f7649e;

    /* renamed from: e0 */
    public boolean f7650e0;

    /* renamed from: f */
    public int f7651f;

    /* renamed from: f0 */
    public boolean f7652f0;

    /* renamed from: g */
    public boolean f7653g;

    /* renamed from: g0 */
    public boolean f7654g0;

    /* renamed from: h */
    public TextView f7655h;

    /* renamed from: i */
    public final int f7656i;

    /* renamed from: j */
    public final int f7657j;

    /* renamed from: k */
    public boolean f7658k;

    /* renamed from: l */
    public CharSequence f7659l;

    /* renamed from: m */
    public boolean f7660m;

    /* renamed from: n */
    public GradientDrawable f7661n;

    /* renamed from: o */
    public final int f7662o;

    /* renamed from: p */
    public final int f7663p;

    /* renamed from: q */
    public int f7664q;

    /* renamed from: r */
    public final int f7665r;

    /* renamed from: s */
    public float f7666s;

    /* renamed from: t */
    public float f7667t;

    /* renamed from: u */
    public float f7668u;

    /* renamed from: v */
    public float f7669v;

    /* renamed from: w */
    public int f7670w;

    /* renamed from: x */
    public final int f7671x;

    /* renamed from: y */
    public final int f7672y;
    @ColorInt

    /* renamed from: z */
    public int f7673z;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C3650a();

        /* renamed from: a */
        public CharSequence f7674a;

        /* renamed from: b */
        public boolean f7675b;

        /* renamed from: com.google.android.material.textfield.TextInputLayout$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$SavedState$a.class */
        public static final class C3650a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f7674a = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f7675b = parcel.readInt() != 1 ? false : true;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f7674a) + CssParser.BLOCK_END;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.f7674a, parcel, i);
            parcel.writeInt(this.f7675b ? 1 : 0);
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$a.class */
    public class C3651a implements TextWatcher {
        public C3651a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            TextInputLayout textInputLayout = TextInputLayout.this;
            textInputLayout.m31188g(!textInputLayout.f7654g0);
            TextInputLayout textInputLayout2 = TextInputLayout.this;
            if (textInputLayout2.f7649e) {
                textInputLayout2.m31191f(editable.length());
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$b.class */
    public class View$OnClickListenerC3652b implements View.OnClickListener {
        public View$OnClickListenerC3652b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TextInputLayout.this.m31200c(false);
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$c.class */
    public class C3653c implements ValueAnimator.AnimatorUpdateListener {
        public C3653c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TextInputLayout.this.f7644b0.m15689e(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$d.class */
    public static class C3654d extends AccessibilityDelegateCompat {

        /* renamed from: a */
        public final TextInputLayout f7679a;

        public C3654d(TextInputLayout textInputLayout) {
            this.f7679a = textInputLayout;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            EditText m = this.f7679a.m31182m();
            Editable text = m != null ? m.getText() : null;
            CharSequence o = this.f7679a.m31180o();
            CharSequence n = this.f7679a.m31181n();
            CharSequence l = this.f7679a.m31183l();
            boolean z = !TextUtils.isEmpty(text);
            boolean z2 = !TextUtils.isEmpty(o);
            boolean z3 = !TextUtils.isEmpty(n);
            boolean z4 = z3 || !TextUtils.isEmpty(l);
            if (z) {
                accessibilityNodeInfoCompat.setText(text);
            } else if (z2) {
                accessibilityNodeInfoCompat.setText(o);
            }
            if (z2) {
                accessibilityNodeInfoCompat.setHintText(o);
                boolean z5 = false;
                if (!z) {
                    z5 = false;
                    if (z2) {
                        z5 = true;
                    }
                }
                accessibilityNodeInfoCompat.setShowingHintText(z5);
            }
            if (z4) {
                accessibilityNodeInfoCompat.setError(z3 ? n : l);
                accessibilityNodeInfoCompat.setContentInvalid(true);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            EditText m = this.f7679a.m31182m();
            Editable text = m != null ? m.getText() : null;
            CharSequence charSequence = text;
            if (TextUtils.isEmpty(text)) {
                charSequence = this.f7679a.m31180o();
            }
            if (!TextUtils.isEmpty(charSequence)) {
                accessibilityEvent.getText().add(charSequence);
            }
        }
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.textInputStyle);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7647d = new C9274b(this);
        this.f7621C = new Rect();
        this.f7622D = new RectF();
        this.f7644b0 = new C9223c(this);
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        this.f7641a = new FrameLayout(context);
        this.f7641a.setAddStatesFromChildren(true);
        addView(this.f7641a);
        this.f7644b0.m15699b(C9167a.f20879a);
        this.f7644b0.m15712a(C9167a.f20879a);
        this.f7644b0.m15694c(8388659);
        TintTypedArray d = C9245k.m15636d(context, attributeSet, R$styleable.TextInputLayout, i, R$style.Widget_Design_TextInputLayout, new int[0]);
        this.f7658k = d.getBoolean(R$styleable.TextInputLayout_hintEnabled, true);
        m31201c(d.getText(R$styleable.TextInputLayout_android_hint));
        this.f7646c0 = d.getBoolean(R$styleable.TextInputLayout_hintAnimationEnabled, true);
        this.f7662o = context.getResources().getDimensionPixelOffset(R$dimen.mtrl_textinput_box_bottom_offset);
        this.f7663p = context.getResources().getDimensionPixelOffset(R$dimen.mtrl_textinput_box_label_cutout_padding);
        this.f7665r = d.getDimensionPixelOffset(R$styleable.TextInputLayout_boxCollapsedPaddingTop, 0);
        this.f7666s = d.getDimension(R$styleable.TextInputLayout_boxCornerRadiusTopStart, 0.0f);
        this.f7667t = d.getDimension(R$styleable.TextInputLayout_boxCornerRadiusTopEnd, 0.0f);
        this.f7668u = d.getDimension(R$styleable.TextInputLayout_boxCornerRadiusBottomEnd, 0.0f);
        this.f7669v = d.getDimension(R$styleable.TextInputLayout_boxCornerRadiusBottomStart, 0.0f);
        this.f7619A = d.getColor(R$styleable.TextInputLayout_boxBackgroundColor, 0);
        this.f7639V = d.getColor(R$styleable.TextInputLayout_boxStrokeColor, 0);
        this.f7671x = context.getResources().getDimensionPixelSize(R$dimen.mtrl_textinput_box_stroke_width_default);
        this.f7672y = context.getResources().getDimensionPixelSize(R$dimen.mtrl_textinput_box_stroke_width_focused);
        this.f7670w = this.f7671x;
        m31217a(d.getInt(R$styleable.TextInputLayout_boxBackgroundMode, 0));
        if (d.hasValue(R$styleable.TextInputLayout_android_textColorHint)) {
            ColorStateList colorStateList = d.getColorStateList(R$styleable.TextInputLayout_android_textColorHint);
            this.f7636S = colorStateList;
            this.f7635R = colorStateList;
        }
        this.f7637T = ContextCompat.getColor(context, R$color.mtrl_textinput_default_box_stroke_color);
        this.f7640W = ContextCompat.getColor(context, R$color.mtrl_textinput_disabled_color);
        this.f7638U = ContextCompat.getColor(context, R$color.mtrl_textinput_hovered_box_stroke_color);
        if (d.getResourceId(R$styleable.TextInputLayout_hintTextAppearance, -1) != -1) {
            m31194e(d.getResourceId(R$styleable.TextInputLayout_hintTextAppearance, 0));
        }
        int resourceId = d.getResourceId(R$styleable.TextInputLayout_errorTextAppearance, 0);
        boolean z = d.getBoolean(R$styleable.TextInputLayout_errorEnabled, false);
        int resourceId2 = d.getResourceId(R$styleable.TextInputLayout_helperTextTextAppearance, 0);
        boolean z2 = d.getBoolean(R$styleable.TextInputLayout_helperTextEnabled, false);
        CharSequence text = d.getText(R$styleable.TextInputLayout_helperText);
        boolean z3 = d.getBoolean(R$styleable.TextInputLayout_counterEnabled, false);
        m31206b(d.getInt(R$styleable.TextInputLayout_counterMaxLength, -1));
        this.f7657j = d.getResourceId(R$styleable.TextInputLayout_counterTextAppearance, 0);
        this.f7656i = d.getResourceId(R$styleable.TextInputLayout_counterOverflowTextAppearance, 0);
        this.f7624F = d.getBoolean(R$styleable.TextInputLayout_passwordToggleEnabled, false);
        this.f7625G = d.getDrawable(R$styleable.TextInputLayout_passwordToggleDrawable);
        this.f7626H = d.getText(R$styleable.TextInputLayout_passwordToggleContentDescription);
        if (d.hasValue(R$styleable.TextInputLayout_passwordToggleTint)) {
            this.f7632O = true;
            this.f7631N = d.getColorStateList(R$styleable.TextInputLayout_passwordToggleTint);
        }
        if (d.hasValue(R$styleable.TextInputLayout_passwordToggleTintMode)) {
            this.f7634Q = true;
            this.f7633P = C9246l.m15635a(d.getInt(R$styleable.TextInputLayout_passwordToggleTintMode, -1), null);
        }
        d.recycle();
        m31190f(z2);
        m31205b(text);
        m31198d(resourceId2);
        m31193e(z);
        m31202c(resourceId);
        m31196d(z3);
        m31207b();
        ViewCompat.setImportantForAccessibility(this, 2);
    }

    /* renamed from: a */
    public static void m31215a(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                m31215a((ViewGroup) childAt, z);
            }
        }
    }

    /* renamed from: A */
    public final void m31221A() {
        if (this.f7664q != 0 && this.f7661n != null && this.f7643b != null && getRight() != 0) {
            int left = this.f7643b.getLeft();
            int d = m31199d();
            int right = this.f7643b.getRight();
            int bottom = this.f7643b.getBottom() + this.f7662o;
            int i = left;
            int i2 = d;
            int i3 = right;
            int i4 = bottom;
            if (this.f7664q == 2) {
                int i5 = this.f7672y;
                i = left + (i5 / 2);
                i2 = d - (i5 / 2);
                i3 = right - (i5 / 2);
                i4 = bottom + (i5 / 2);
            }
            this.f7661n.setBounds(i, i2, i3, i4);
            m31219a();
            m31171x();
        }
    }

    /* renamed from: B */
    public void m31220B() {
        TextView textView;
        if (this.f7661n != null && this.f7664q != 0) {
            EditText editText = this.f7643b;
            boolean z = true;
            boolean z2 = editText != null && editText.hasFocus();
            EditText editText2 = this.f7643b;
            if (editText2 == null || !editText2.isHovered()) {
                z = false;
            }
            if (this.f7664q == 2) {
                if (!isEnabled()) {
                    this.f7673z = this.f7640W;
                } else if (this.f7647d.m15518d()) {
                    this.f7673z = this.f7647d.m15514f();
                } else if (this.f7653g && (textView = this.f7655h) != null) {
                    this.f7673z = textView.getCurrentTextColor();
                } else if (z2) {
                    this.f7673z = this.f7639V;
                } else if (z) {
                    this.f7673z = this.f7638U;
                } else {
                    this.f7673z = this.f7637T;
                }
                if ((z || z2) && isEnabled()) {
                    this.f7670w = this.f7672y;
                } else {
                    this.f7670w = this.f7671x;
                }
                m31219a();
            }
        }
    }

    /* renamed from: a */
    public final void m31219a() {
        int i;
        Drawable drawable;
        if (this.f7661n != null) {
            m31174u();
            EditText editText = this.f7643b;
            if (editText != null && this.f7664q == 2) {
                if (editText.getBackground() != null) {
                    this.f7620B = this.f7643b.getBackground();
                }
                ViewCompat.setBackground(this.f7643b, null);
            }
            EditText editText2 = this.f7643b;
            if (!(editText2 == null || this.f7664q != 1 || (drawable = this.f7620B) == null)) {
                ViewCompat.setBackground(editText2, drawable);
            }
            int i2 = this.f7670w;
            if (i2 > -1 && (i = this.f7673z) != 0) {
                this.f7661n.setStroke(i2, i);
            }
            this.f7661n.setCornerRadii(m31184k());
            this.f7661n.setColor(this.f7619A);
            invalidate();
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m31218a(float f) {
        if (this.f7644b0.m15682j() != f) {
            if (this.f7648d0 == null) {
                this.f7648d0 = new ValueAnimator();
                this.f7648d0.setInterpolator(C9167a.f20880b);
                this.f7648d0.setDuration(167L);
                this.f7648d0.addUpdateListener(new C3653c());
            }
            this.f7648d0.setFloatValues(this.f7644b0.m15682j(), f);
            this.f7648d0.start();
        }
    }

    /* renamed from: a */
    public void m31217a(int i) {
        if (i != this.f7664q) {
            this.f7664q = i;
            m31176s();
        }
    }

    /* renamed from: a */
    public final void m31216a(RectF rectF) {
        float f = rectF.left;
        int i = this.f7663p;
        rectF.left = f - i;
        rectF.top -= i;
        rectF.right += i;
        rectF.bottom += i;
    }

    /* renamed from: a */
    public final void m31214a(EditText editText) {
        if (this.f7643b == null) {
            boolean z = editText instanceof TextInputEditText;
            this.f7643b = editText;
            m31176s();
            m31212a(new C3654d(this));
            if (!m31179p()) {
                this.f7644b0.m15707a(this.f7643b.getTypeface());
            }
            this.f7644b0.m15692d(this.f7643b.getTextSize());
            int gravity = this.f7643b.getGravity();
            this.f7644b0.m15694c((gravity & (-113)) | 48);
            this.f7644b0.m15688e(gravity);
            this.f7643b.addTextChangedListener(new C3651a());
            if (this.f7635R == null) {
                this.f7635R = this.f7643b.getHintTextColors();
            }
            if (this.f7658k) {
                if (TextUtils.isEmpty(this.f7659l)) {
                    this.f7645c = this.f7643b.getHint();
                    m31201c(this.f7645c);
                    this.f7643b.setHint((CharSequence) null);
                }
                this.f7660m = true;
            }
            if (this.f7655h != null) {
                m31191f(this.f7643b.getText().length());
            }
            this.f7647d.m15540a();
            m31169z();
            m31208a(false, true);
            return;
        }
        throw new IllegalArgumentException("We already have an EditText, can only have one");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m31213a(android.widget.TextView r5, @androidx.annotation.StyleRes int r6) {
        /*
            r4 = this;
            r0 = 1
            r7 = r0
            r0 = r5
            r1 = r6
            androidx.core.widget.TextViewCompat.setTextAppearance(r0, r1)     // Catch: Exception -> 0x0028
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: Exception -> 0x0028
            r1 = 23
            if (r0 < r1) goto L_0x0023
            r0 = r5
            android.content.res.ColorStateList r0 = r0.getTextColors()     // Catch: Exception -> 0x0028
            int r0 = r0.getDefaultColor()     // Catch: Exception -> 0x0028
            r6 = r0
            r0 = r6
            r1 = -65281(0xffffffffffff00ff, float:NaN)
            if (r0 != r1) goto L_0x0023
            r0 = r7
            r6 = r0
            goto L_0x002c
        L_0x0023:
            r0 = 0
            r6 = r0
            goto L_0x002c
        L_0x0028:
            r8 = move-exception
            r0 = r7
            r6 = r0
        L_0x002c:
            r0 = r6
            if (r0 == 0) goto L_0x0045
            r0 = r5
            int r1 = com.google.android.material.R$style.TextAppearance_AppCompat_Caption
            androidx.core.widget.TextViewCompat.setTextAppearance(r0, r1)
            r0 = r5
            r1 = r4
            android.content.Context r1 = r1.getContext()
            int r2 = com.google.android.material.R$color.design_error
            int r1 = androidx.core.content.ContextCompat.getColor(r1, r2)
            r0.setTextColor(r1)
        L_0x0045:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.m31213a(android.widget.TextView, int):void");
    }

    /* renamed from: a */
    public void m31212a(C3654d dVar) {
        EditText editText = this.f7643b;
        if (editText != null) {
            ViewCompat.setAccessibilityDelegate(editText, dVar);
        }
    }

    /* renamed from: a */
    public void m31210a(@Nullable CharSequence charSequence) {
        if (!this.f7647d.m15510j()) {
            if (!TextUtils.isEmpty(charSequence)) {
                m31193e(true);
            } else {
                return;
            }
        }
        if (!TextUtils.isEmpty(charSequence)) {
            this.f7647d.m15528a(charSequence);
        } else {
            this.f7647d.m15512h();
        }
    }

    /* renamed from: a */
    public final void m31209a(boolean z) {
        ValueAnimator valueAnimator = this.f7648d0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f7648d0.cancel();
        }
        if (!z || !this.f7646c0) {
            this.f7644b0.m15689e(1.0f);
        } else {
            m31218a(1.0f);
        }
        this.f7642a0 = false;
        if (m31187h()) {
            m31175t();
        }
    }

    /* renamed from: a */
    public final void m31208a(boolean z, boolean z2) {
        ColorStateList colorStateList;
        TextView textView;
        boolean isEnabled = isEnabled();
        EditText editText = this.f7643b;
        boolean z3 = true;
        boolean z4 = editText != null && !TextUtils.isEmpty(editText.getText());
        EditText editText2 = this.f7643b;
        if (editText2 == null || !editText2.hasFocus()) {
            z3 = false;
        }
        boolean d = this.f7647d.m15518d();
        ColorStateList colorStateList2 = this.f7635R;
        if (colorStateList2 != null) {
            this.f7644b0.m15711a(colorStateList2);
            this.f7644b0.m15698b(this.f7635R);
        }
        if (!isEnabled) {
            this.f7644b0.m15711a(ColorStateList.valueOf(this.f7640W));
            this.f7644b0.m15698b(ColorStateList.valueOf(this.f7640W));
        } else if (d) {
            this.f7644b0.m15711a(this.f7647d.m15513g());
        } else if (this.f7653g && (textView = this.f7655h) != null) {
            this.f7644b0.m15711a(textView.getTextColors());
        } else if (z3 && (colorStateList = this.f7636S) != null) {
            this.f7644b0.m15711a(colorStateList);
        }
        if (z4 || (isEnabled() && (z3 || d))) {
            if (z2 || this.f7642a0) {
                m31209a(z);
            }
        } else if (z2 || !this.f7642a0) {
            m31204b(z);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof EditText) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
            layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
            this.f7641a.addView(view, layoutParams2);
            this.f7641a.setLayoutParams(layoutParams);
            m31170y();
            m31214a((EditText) view);
            return;
        }
        super.addView(view, i, layoutParams);
    }

    /* renamed from: b */
    public final void m31207b() {
        if (this.f7625G == null) {
            return;
        }
        if (this.f7632O || this.f7634Q) {
            this.f7625G = DrawableCompat.wrap(this.f7625G).mutate();
            if (this.f7632O) {
                DrawableCompat.setTintList(this.f7625G, this.f7631N);
            }
            if (this.f7634Q) {
                DrawableCompat.setTintMode(this.f7625G, this.f7633P);
            }
            CheckableImageButton checkableImageButton = this.f7627I;
            if (checkableImageButton != null) {
                Drawable drawable = checkableImageButton.getDrawable();
                Drawable drawable2 = this.f7625G;
                if (drawable != drawable2) {
                    this.f7627I.setImageDrawable(drawable2);
                }
            }
        }
    }

    /* renamed from: b */
    public void m31206b(int i) {
        if (this.f7651f != i) {
            if (i > 0) {
                this.f7651f = i;
            } else {
                this.f7651f = -1;
            }
            if (this.f7649e) {
                EditText editText = this.f7643b;
                m31191f(editText == null ? 0 : editText.getText().length());
            }
        }
    }

    /* renamed from: b */
    public void m31205b(@Nullable CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (!m31178q()) {
                m31190f(true);
            }
            this.f7647d.m15522b(charSequence);
        } else if (m31178q()) {
            m31190f(false);
        }
    }

    /* renamed from: b */
    public final void m31204b(boolean z) {
        ValueAnimator valueAnimator = this.f7648d0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f7648d0.cancel();
        }
        if (!z || !this.f7646c0) {
            this.f7644b0.m15689e(0.0f);
        } else {
            m31218a(0.0f);
        }
        if (m31187h() && ((C9273a) this.f7661n).m15549a()) {
            m31189g();
        }
        this.f7642a0 = true;
    }

    /* renamed from: c */
    public final void m31203c() {
        int i = this.f7664q;
        if (i == 0) {
            this.f7661n = null;
        } else if (i == 2 && this.f7658k && !(this.f7661n instanceof C9273a)) {
            this.f7661n = new C9273a();
        } else if (!(this.f7661n instanceof GradientDrawable)) {
            this.f7661n = new GradientDrawable();
        }
    }

    /* renamed from: c */
    public void m31202c(@StyleRes int i) {
        this.f7647d.m15517d(i);
    }

    /* renamed from: c */
    public void m31201c(@Nullable CharSequence charSequence) {
        if (this.f7658k) {
            m31197d(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    /* renamed from: c */
    public void m31200c(boolean z) {
        if (this.f7624F) {
            int selectionEnd = this.f7643b.getSelectionEnd();
            if (m31179p()) {
                this.f7643b.setTransformationMethod(null);
                this.f7628J = true;
            } else {
                this.f7643b.setTransformationMethod(PasswordTransformationMethod.getInstance());
                this.f7628J = false;
            }
            this.f7627I.setChecked(this.f7628J);
            if (z) {
                this.f7627I.jumpDrawablesToCurrentState();
            }
            this.f7643b.setSelection(selectionEnd);
        }
    }

    /* renamed from: d */
    public final int m31199d() {
        EditText editText = this.f7643b;
        if (editText == null) {
            return 0;
        }
        int i = this.f7664q;
        if (i == 1) {
            return editText.getTop();
        }
        if (i != 2) {
            return 0;
        }
        return editText.getTop() + m31192f();
    }

    /* renamed from: d */
    public void m31198d(@StyleRes int i) {
        this.f7647d.m15515e(i);
    }

    /* renamed from: d */
    public final void m31197d(CharSequence charSequence) {
        if (!TextUtils.equals(charSequence, this.f7659l)) {
            this.f7659l = charSequence;
            this.f7644b0.m15697b(charSequence);
            if (!this.f7642a0) {
                m31175t();
            }
        }
    }

    /* renamed from: d */
    public void m31196d(boolean z) {
        if (this.f7649e != z) {
            if (z) {
                this.f7655h = new AppCompatTextView(getContext());
                this.f7655h.setId(R$id.textinput_counter);
                Typeface typeface = this.f7623E;
                if (typeface != null) {
                    this.f7655h.setTypeface(typeface);
                }
                this.f7655h.setMaxLines(1);
                m31213a(this.f7655h, this.f7657j);
                this.f7647d.m15534a(this.f7655h, 2);
                EditText editText = this.f7643b;
                if (editText == null) {
                    m31191f(0);
                } else {
                    m31191f(editText.getText().length());
                }
            } else {
                this.f7647d.m15523b(this.f7655h, 2);
                this.f7655h = null;
            }
            this.f7649e = z;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        EditText editText;
        if (this.f7645c == null || (editText = this.f7643b) == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        boolean z = this.f7660m;
        this.f7660m = false;
        CharSequence hint = editText.getHint();
        this.f7643b.setHint(this.f7645c);
        try {
            super.dispatchProvideAutofillStructure(viewStructure, i);
        } finally {
            this.f7643b.setHint(hint);
            this.f7660m = z;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.f7654g0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f7654g0 = false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        GradientDrawable gradientDrawable = this.f7661n;
        if (gradientDrawable != null) {
            gradientDrawable.draw(canvas);
        }
        super.draw(canvas);
        if (this.f7658k) {
            this.f7644b0.m15710a(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        if (!this.f7652f0) {
            boolean z = true;
            this.f7652f0 = true;
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            if (!ViewCompat.isLaidOut(this) || !isEnabled()) {
                z = false;
            }
            m31188g(z);
            m31172w();
            m31221A();
            m31220B();
            C9223c cVar = this.f7644b0;
            if (cVar != null ? cVar.m15704a(drawableState) | false : false) {
                invalidate();
            }
            this.f7652f0 = false;
        }
    }

    /* renamed from: e */
    public final int m31195e() {
        int i = this.f7664q;
        return i != 1 ? i != 2 ? getPaddingTop() : m31185j().getBounds().top - m31192f() : m31185j().getBounds().top + this.f7665r;
    }

    /* renamed from: e */
    public void m31194e(@StyleRes int i) {
        this.f7644b0.m15701b(i);
        this.f7636S = this.f7644b0.m15687f();
        if (this.f7643b != null) {
            m31188g(false);
            m31170y();
        }
    }

    /* renamed from: e */
    public void m31193e(boolean z) {
        this.f7647d.m15526a(z);
    }

    /* renamed from: f */
    public final int m31192f() {
        float g;
        if (!this.f7658k) {
            return 0;
        }
        int i = this.f7664q;
        if (i == 0 || i == 1) {
            g = this.f7644b0.m15685g();
        } else if (i != 2) {
            return 0;
        } else {
            g = this.f7644b0.m15685g() / 2.0f;
        }
        return (int) g;
    }

    /* renamed from: f */
    public void m31191f(int i) {
        boolean z = this.f7653g;
        if (this.f7651f == -1) {
            this.f7655h.setText(String.valueOf(i));
            this.f7655h.setContentDescription(null);
            this.f7653g = false;
        } else {
            if (ViewCompat.getAccessibilityLiveRegion(this.f7655h) == 1) {
                ViewCompat.setAccessibilityLiveRegion(this.f7655h, 0);
            }
            this.f7653g = i > this.f7651f;
            boolean z2 = this.f7653g;
            if (z != z2) {
                m31213a(this.f7655h, z2 ? this.f7656i : this.f7657j);
                if (this.f7653g) {
                    ViewCompat.setAccessibilityLiveRegion(this.f7655h, 1);
                }
            }
            this.f7655h.setText(getContext().getString(R$string.character_counter_pattern, Integer.valueOf(i), Integer.valueOf(this.f7651f)));
            this.f7655h.setContentDescription(getContext().getString(R$string.character_counter_content_description, Integer.valueOf(i), Integer.valueOf(this.f7651f)));
        }
        if (this.f7643b != null && z != this.f7653g) {
            m31188g(false);
            m31220B();
            m31172w();
        }
    }

    /* renamed from: f */
    public void m31190f(boolean z) {
        this.f7647d.m15521b(z);
    }

    /* renamed from: g */
    public final void m31189g() {
        if (m31187h()) {
            ((C9273a) this.f7661n).m15544b();
        }
    }

    /* renamed from: g */
    public void m31188g(boolean z) {
        m31208a(z, false);
    }

    /* renamed from: h */
    public final boolean m31187h() {
        return this.f7658k && !TextUtils.isEmpty(this.f7659l) && (this.f7661n instanceof C9273a);
    }

    /* renamed from: i */
    public final void m31186i() {
        Drawable background;
        int i = Build.VERSION.SDK_INT;
        if ((i == 21 || i == 22) && (background = this.f7643b.getBackground()) != null && !this.f7650e0) {
            Drawable newDrawable = background.getConstantState().newDrawable();
            if (background instanceof DrawableContainer) {
                this.f7650e0 = C9225e.m15674a((DrawableContainer) background, newDrawable.getConstantState());
            }
            if (!this.f7650e0) {
                ViewCompat.setBackground(this.f7643b, newDrawable);
                this.f7650e0 = true;
                m31176s();
            }
        }
    }

    @NonNull
    /* renamed from: j */
    public final Drawable m31185j() {
        int i = this.f7664q;
        if (i == 1 || i == 2) {
            return this.f7661n;
        }
        throw new IllegalStateException();
    }

    /* renamed from: k */
    public final float[] m31184k() {
        if (!C9246l.m15634a(this)) {
            float f = this.f7666s;
            float f2 = this.f7667t;
            float f3 = this.f7668u;
            float f4 = this.f7669v;
            return new float[]{f, f, f2, f2, f3, f3, f4, f4};
        }
        float f5 = this.f7667t;
        float f6 = this.f7666s;
        float f7 = this.f7669v;
        float f8 = this.f7668u;
        return new float[]{f5, f5, f6, f6, f7, f7, f8, f8};
    }

    @Nullable
    /* renamed from: l */
    public CharSequence m31183l() {
        TextView textView;
        if (!this.f7649e || !this.f7653g || (textView = this.f7655h) == null) {
            return null;
        }
        return textView.getContentDescription();
    }

    @Nullable
    /* renamed from: m */
    public EditText m31182m() {
        return this.f7643b;
    }

    @Nullable
    /* renamed from: n */
    public CharSequence m31181n() {
        return this.f7647d.m15510j() ? this.f7647d.m15516e() : null;
    }

    @Nullable
    /* renamed from: o */
    public CharSequence m31180o() {
        return this.f7658k ? this.f7659l : null;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        EditText editText;
        super.onLayout(z, i, i2, i3, i4);
        if (this.f7661n != null) {
            m31221A();
        }
        if (this.f7658k && (editText = this.f7643b) != null) {
            Rect rect = this.f7621C;
            C9224d.m15677a(this, editText, rect);
            int compoundPaddingLeft = rect.left + this.f7643b.getCompoundPaddingLeft();
            int compoundPaddingRight = rect.right - this.f7643b.getCompoundPaddingRight();
            int e = m31195e();
            this.f7644b0.m15700b(compoundPaddingLeft, rect.top + this.f7643b.getCompoundPaddingTop(), compoundPaddingRight, rect.bottom - this.f7643b.getCompoundPaddingBottom());
            this.f7644b0.m15713a(compoundPaddingLeft, e, compoundPaddingRight, (i4 - i2) - getPaddingBottom());
            this.f7644b0.m15678n();
            if (m31187h() && !this.f7642a0) {
                m31175t();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        m31169z();
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        m31210a(savedState.f7674a);
        if (savedState.f7675b) {
            m31200c(true);
        }
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.f7647d.m15518d()) {
            savedState.f7674a = m31181n();
        }
        savedState.f7675b = this.f7628J;
        return savedState;
    }

    /* renamed from: p */
    public final boolean m31179p() {
        EditText editText = this.f7643b;
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    /* renamed from: q */
    public boolean m31178q() {
        return this.f7647d.m15509k();
    }

    /* renamed from: r */
    public boolean m31177r() {
        return this.f7660m;
    }

    /* renamed from: s */
    public final void m31176s() {
        m31203c();
        if (this.f7664q != 0) {
            m31170y();
        }
        m31221A();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        m31215a(this, z);
        super.setEnabled(z);
    }

    /* renamed from: t */
    public final void m31175t() {
        if (m31187h()) {
            RectF rectF = this.f7622D;
            this.f7644b0.m15708a(rectF);
            m31216a(rectF);
            ((C9273a) this.f7661n).m15546a(rectF);
        }
    }

    /* renamed from: u */
    public final void m31174u() {
        int i = this.f7664q;
        if (i == 1) {
            this.f7670w = 0;
        } else if (i == 2 && this.f7639V == 0) {
            this.f7639V = this.f7636S.getColorForState(getDrawableState(), this.f7636S.getDefaultColor());
        }
    }

    /* renamed from: v */
    public final boolean m31173v() {
        return this.f7624F && (m31179p() || this.f7628J);
    }

    /* renamed from: w */
    public void m31172w() {
        Drawable background;
        TextView textView;
        EditText editText = this.f7643b;
        if (editText != null && (background = editText.getBackground()) != null) {
            m31186i();
            Drawable drawable = background;
            if (DrawableUtils.canSafelyMutateDrawable(background)) {
                drawable = background.mutate();
            }
            if (this.f7647d.m15518d()) {
                drawable.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(this.f7647d.m15514f(), PorterDuff.Mode.SRC_IN));
            } else if (!this.f7653g || (textView = this.f7655h) == null) {
                DrawableCompat.clearColorFilter(drawable);
                this.f7643b.refreshDrawableState();
            } else {
                drawable.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
            }
        }
    }

    /* renamed from: x */
    public final void m31171x() {
        Drawable background;
        EditText editText = this.f7643b;
        if (editText != null && (background = editText.getBackground()) != null) {
            Drawable drawable = background;
            if (DrawableUtils.canSafelyMutateDrawable(background)) {
                drawable = background.mutate();
            }
            C9224d.m15677a(this, this.f7643b, new Rect());
            Rect bounds = drawable.getBounds();
            if (bounds.left != bounds.right) {
                Rect rect = new Rect();
                drawable.getPadding(rect);
                drawable.setBounds(bounds.left - rect.left, bounds.top, bounds.right + (rect.right * 2), this.f7643b.getBottom());
            }
        }
    }

    /* renamed from: y */
    public final void m31170y() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f7641a.getLayoutParams();
        int f = m31192f();
        if (f != layoutParams.topMargin) {
            layoutParams.topMargin = f;
            this.f7641a.requestLayout();
        }
    }

    /* renamed from: z */
    public final void m31169z() {
        if (this.f7643b != null) {
            if (m31173v()) {
                if (this.f7627I == null) {
                    this.f7627I = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R$layout.design_text_input_password_icon, (ViewGroup) this.f7641a, false);
                    this.f7627I.setImageDrawable(this.f7625G);
                    this.f7627I.setContentDescription(this.f7626H);
                    this.f7641a.addView(this.f7627I);
                    this.f7627I.setOnClickListener(new View$OnClickListenerC3652b());
                }
                EditText editText = this.f7643b;
                if (editText != null && ViewCompat.getMinimumHeight(editText) <= 0) {
                    this.f7643b.setMinimumHeight(ViewCompat.getMinimumHeight(this.f7627I));
                }
                this.f7627I.setVisibility(0);
                this.f7627I.setChecked(this.f7628J);
                if (this.f7629K == null) {
                    this.f7629K = new ColorDrawable();
                }
                this.f7629K.setBounds(0, 0, this.f7627I.getMeasuredWidth(), 1);
                Drawable[] compoundDrawablesRelative = TextViewCompat.getCompoundDrawablesRelative(this.f7643b);
                if (compoundDrawablesRelative[2] != this.f7629K) {
                    this.f7630L = compoundDrawablesRelative[2];
                }
                TextViewCompat.setCompoundDrawablesRelative(this.f7643b, compoundDrawablesRelative[0], compoundDrawablesRelative[1], this.f7629K, compoundDrawablesRelative[3]);
                this.f7627I.setPadding(this.f7643b.getPaddingLeft(), this.f7643b.getPaddingTop(), this.f7643b.getPaddingRight(), this.f7643b.getPaddingBottom());
                return;
            }
            CheckableImageButton checkableImageButton = this.f7627I;
            if (checkableImageButton != null && checkableImageButton.getVisibility() == 0) {
                this.f7627I.setVisibility(8);
            }
            if (this.f7629K != null) {
                Drawable[] compoundDrawablesRelative2 = TextViewCompat.getCompoundDrawablesRelative(this.f7643b);
                if (compoundDrawablesRelative2[2] == this.f7629K) {
                    TextViewCompat.setCompoundDrawablesRelative(this.f7643b, compoundDrawablesRelative2[0], compoundDrawablesRelative2[1], this.f7630L, compoundDrawablesRelative2[3]);
                    this.f7629K = null;
                }
            }
        }
    }
}
