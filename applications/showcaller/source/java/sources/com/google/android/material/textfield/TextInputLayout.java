package com.google.android.material.textfield;

import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.C0287f;
import androidx.appcompat.widget.C0317q;
import androidx.core.content.C0586a;
import androidx.core.graphics.drawable.C0615a;
import androidx.core.widget.C0649k;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.internal.C8173a;
import com.google.android.material.internal.C8177c;
import com.google.android.material.internal.CheckableImageButton;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p041h.p048j.C1574a;
import p020b.p041h.p050l.C1599a;
import p020b.p041h.p050l.C1664h;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.C1634c;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1890f;
import p078c.p084c.p085a.p096b.C1894j;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.p097m.C1897a;
import p078c.p084c.p085a.p096b.p099o.C1909a;
import p078c.p084c.p085a.p096b.p105u.C1919c;
import p078c.p084c.p085a.p096b.p108x.C1938h;
import p078c.p084c.p085a.p096b.p108x.C1946m;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/TextInputLayout.class */
public class TextInputLayout extends LinearLayout {

    /* renamed from: d */
    private static final int f37365d = C1895k.Widget_Design_TextInputLayout;

    /* renamed from: A */
    private CharSequence f37366A;

    /* renamed from: A0 */
    private ColorStateList f37367A0;

    /* renamed from: B */
    private final TextView f37368B;

    /* renamed from: B0 */
    private int f37369B0;

    /* renamed from: C */
    private boolean f37370C;

    /* renamed from: C0 */
    private int f37371C0;

    /* renamed from: D */
    private CharSequence f37372D;

    /* renamed from: D0 */
    private int f37373D0;

    /* renamed from: E */
    private boolean f37374E;

    /* renamed from: E0 */
    private int f37375E0;

    /* renamed from: F */
    private C1938h f37376F;

    /* renamed from: F0 */
    private int f37377F0;

    /* renamed from: G */
    private C1938h f37378G;

    /* renamed from: G0 */
    private boolean f37379G0;

    /* renamed from: H */
    private C1946m f37380H;

    /* renamed from: H0 */
    final C8173a f37381H0;

    /* renamed from: I */
    private final int f37382I;

    /* renamed from: I0 */
    private boolean f37383I0;

    /* renamed from: J */
    private int f37384J;

    /* renamed from: J0 */
    private boolean f37385J0;

    /* renamed from: K */
    private int f37386K;

    /* renamed from: K0 */
    private ValueAnimator f37387K0;

    /* renamed from: L */
    private int f37388L;

    /* renamed from: L0 */
    private boolean f37389L0;

    /* renamed from: M */
    private int f37390M;

    /* renamed from: M0 */
    private boolean f37391M0;

    /* renamed from: N */
    private int f37392N;

    /* renamed from: O */
    private int f37393O;

    /* renamed from: P */
    private int f37394P;

    /* renamed from: Q */
    private final Rect f37395Q;

    /* renamed from: R */
    private final Rect f37396R;

    /* renamed from: S */
    private final RectF f37397S;

    /* renamed from: T */
    private Typeface f37398T;

    /* renamed from: U */
    private final CheckableImageButton f37399U;

    /* renamed from: V */
    private ColorStateList f37400V;

    /* renamed from: W */
    private boolean f37401W;

    /* renamed from: a0 */
    private PorterDuff.Mode f37402a0;

    /* renamed from: b0 */
    private boolean f37403b0;

    /* renamed from: c0 */
    private Drawable f37404c0;

    /* renamed from: d0 */
    private int f37405d0;

    /* renamed from: e */
    private final FrameLayout f37406e;

    /* renamed from: e0 */
    private View.OnLongClickListener f37407e0;

    /* renamed from: f */
    private final LinearLayout f37408f;

    /* renamed from: f0 */
    private final LinkedHashSet<AbstractC8290f> f37409f0;

    /* renamed from: g */
    private final LinearLayout f37410g;

    /* renamed from: g0 */
    private int f37411g0;

    /* renamed from: h */
    private final FrameLayout f37412h;

    /* renamed from: h0 */
    private final SparseArray<AbstractC8318e> f37413h0;

    /* renamed from: i */
    EditText f37414i;

    /* renamed from: i0 */
    private final CheckableImageButton f37415i0;

    /* renamed from: j */
    private CharSequence f37416j;

    /* renamed from: j0 */
    private final LinkedHashSet<AbstractC8291g> f37417j0;

    /* renamed from: k */
    private final C8319f f37418k;

    /* renamed from: k0 */
    private ColorStateList f37419k0;

    /* renamed from: l */
    boolean f37420l;

    /* renamed from: l0 */
    private boolean f37421l0;

    /* renamed from: m */
    private int f37422m;

    /* renamed from: m0 */
    private PorterDuff.Mode f37423m0;

    /* renamed from: n */
    private boolean f37424n;

    /* renamed from: n0 */
    private boolean f37425n0;

    /* renamed from: o */
    private TextView f37426o;

    /* renamed from: o0 */
    private Drawable f37427o0;

    /* renamed from: p */
    private int f37428p;

    /* renamed from: p0 */
    private int f37429p0;

    /* renamed from: q */
    private int f37430q;

    /* renamed from: q0 */
    private Drawable f37431q0;

    /* renamed from: r */
    private CharSequence f37432r;

    /* renamed from: r0 */
    private View.OnLongClickListener f37433r0;

    /* renamed from: s */
    private boolean f37434s;

    /* renamed from: s0 */
    private View.OnLongClickListener f37435s0;

    /* renamed from: t */
    private TextView f37436t;

    /* renamed from: t0 */
    private final CheckableImageButton f37437t0;

    /* renamed from: u */
    private ColorStateList f37438u;

    /* renamed from: u0 */
    private ColorStateList f37439u0;

    /* renamed from: v */
    private int f37440v;

    /* renamed from: v0 */
    private ColorStateList f37441v0;

    /* renamed from: w */
    private ColorStateList f37442w;

    /* renamed from: w0 */
    private ColorStateList f37443w0;

    /* renamed from: x */
    private ColorStateList f37444x;

    /* renamed from: x0 */
    private int f37445x0;

    /* renamed from: y */
    private CharSequence f37446y;

    /* renamed from: y0 */
    private int f37447y0;

    /* renamed from: z */
    private final TextView f37448z;

    /* renamed from: z0 */
    private int f37449z0;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C8284a();

        /* renamed from: f */
        CharSequence f37450f;

        /* renamed from: g */
        boolean f37451g;

        /* renamed from: h */
        CharSequence f37452h;

        /* renamed from: i */
        CharSequence f37453i;

        /* renamed from: j */
        CharSequence f37454j;

        /* renamed from: com.google.android.material.textfield.TextInputLayout$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$SavedState$a.class */
        static final class C8284a implements Parcelable.ClassLoaderCreator<SavedState> {
            C8284a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f37450f = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f37451g = parcel.readInt() != 1 ? false : true;
            this.f37452h = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f37453i = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f37454j = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f37450f) + " hint=" + ((Object) this.f37452h) + " helperText=" + ((Object) this.f37453i) + " placeholderText=" + ((Object) this.f37454j) + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.f37450f, parcel, i);
            parcel.writeInt(this.f37451g ? 1 : 0);
            TextUtils.writeToParcel(this.f37452h, parcel, i);
            TextUtils.writeToParcel(this.f37453i, parcel, i);
            TextUtils.writeToParcel(this.f37454j, parcel, i);
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$a.class */
    public class C8285a implements TextWatcher {
        C8285a() {
            TextInputLayout.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            TextInputLayout textInputLayout = TextInputLayout.this;
            textInputLayout.m4007u0(!textInputLayout.f37391M0);
            TextInputLayout textInputLayout2 = TextInputLayout.this;
            if (textInputLayout2.f37420l) {
                textInputLayout2.m4021n0(editable.length());
            }
            if (TextInputLayout.this.f37434s) {
                TextInputLayout.this.m3999y0(editable.length());
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
    class RunnableC8286b implements Runnable {
        RunnableC8286b() {
            TextInputLayout.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.f37415i0.performClick();
            TextInputLayout.this.f37415i0.jumpDrawablesToCurrentState();
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$c.class */
    class RunnableC8287c implements Runnable {
        RunnableC8287c() {
            TextInputLayout.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.f37414i.requestLayout();
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$d.class */
    public class C8288d implements ValueAnimator.AnimatorUpdateListener {
        C8288d() {
            TextInputLayout.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TextInputLayout.this.f37381H0.m4589d0(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$e */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$e.class */
    public static class C8289e extends C1599a {

        /* renamed from: d */
        private final TextInputLayout f37459d;

        public C8289e(TextInputLayout textInputLayout) {
            this.f37459d = textInputLayout;
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: g */
        public void mo3869g(View view, C1634c c1634c) {
            super.mo3869g(view, c1634c);
            EditText editText = this.f37459d.getEditText();
            Editable text = editText != null ? editText.getText() : null;
            CharSequence hint = this.f37459d.getHint();
            CharSequence error = this.f37459d.getError();
            CharSequence placeholderText = this.f37459d.getPlaceholderText();
            int counterMaxLength = this.f37459d.getCounterMaxLength();
            CharSequence counterOverflowDescription = this.f37459d.getCounterOverflowDescription();
            boolean z = !TextUtils.isEmpty(text);
            boolean isEmpty = TextUtils.isEmpty(hint);
            boolean m4061N = this.f37459d.m4061N();
            boolean z2 = !TextUtils.isEmpty(error);
            boolean z3 = z2 || !TextUtils.isEmpty(counterOverflowDescription);
            String charSequence = isEmpty ^ true ? hint.toString() : "";
            if (z) {
                c1634c.m29521D0(text);
            } else if (!TextUtils.isEmpty(charSequence)) {
                c1634c.m29521D0(charSequence);
                if ((!m4061N) && placeholderText != null) {
                    c1634c.m29521D0(charSequence + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                c1634c.m29521D0(placeholderText);
            }
            if (!TextUtils.isEmpty(charSequence)) {
                if (Build.VERSION.SDK_INT >= 26) {
                    c1634c.m29469m0(charSequence);
                } else {
                    String str = charSequence;
                    if (z) {
                        str = ((Object) text) + ", " + charSequence;
                    }
                    c1634c.m29521D0(str);
                }
                c1634c.m29443z0(!z);
            }
            if (text == null || text.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            c1634c.m29465o0(counterMaxLength);
            if (z3) {
                c1634c.m29477i0(z2 ? error : counterOverflowDescription);
            }
            if (Build.VERSION.SDK_INT < 17 || editText == null) {
                return;
            }
            editText.setLabelFor(C1890f.textinput_helper_text);
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$f */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$f.class */
    public interface AbstractC8290f {
        /* renamed from: a */
        void mo3895a(TextInputLayout textInputLayout);
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$g */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$g.class */
    public interface AbstractC8291g {
        /* renamed from: a */
        void mo3894a(TextInputLayout textInputLayout, int i);
    }

    public TextInputLayout(Context context) {
        this(context, null);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.textInputStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TextInputLayout(android.content.Context r11, android.util.AttributeSet r12, int r13) {
        /*
            Method dump skipped, instructions count: 2420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: A */
    private boolean m4079A() {
        return this.f37370C && !TextUtils.isEmpty(this.f37372D) && (this.f37376F instanceof C8304c);
    }

    /* renamed from: A0 */
    private void m4078A0() {
        this.f37448z.setVisibility((this.f37446y == null || m4061N()) ? 8 : 0);
        m4015q0();
    }

    /* renamed from: B */
    private void m4077B() {
        Iterator<AbstractC8290f> it = this.f37409f0.iterator();
        while (it.hasNext()) {
            it.next().mo3895a(this);
        }
    }

    /* renamed from: B0 */
    private void m4076B0(boolean z, boolean z2) {
        int defaultColor = this.f37367A0.getDefaultColor();
        int colorForState = this.f37367A0.getColorForState(new int[]{16843623, 16842910}, defaultColor);
        int colorForState2 = this.f37367A0.getColorForState(new int[]{16843518, 16842910}, defaultColor);
        if (z) {
            this.f37393O = colorForState2;
        } else if (z2) {
            this.f37393O = colorForState;
        } else {
            this.f37393O = defaultColor;
        }
    }

    /* renamed from: C */
    private void m4075C(int i) {
        Iterator<AbstractC8291g> it = this.f37417j0.iterator();
        while (it.hasNext()) {
            it.next().mo3894a(this, i);
        }
    }

    /* renamed from: C0 */
    private void m4074C0() {
        if (this.f37414i == null) {
            return;
        }
        C1679w.m29339F0(this.f37368B, getContext().getResources().getDimensionPixelSize(C1888d.material_input_text_to_prefix_suffix_padding), this.f37414i.getPaddingTop(), (m4064K() || m4063L()) ? 0 : C1679w.m29336H(this.f37414i), this.f37414i.getPaddingBottom());
    }

    /* renamed from: D */
    private void m4073D(Canvas canvas) {
        C1938h c1938h = this.f37378G;
        if (c1938h != null) {
            Rect bounds = c1938h.getBounds();
            bounds.top = bounds.bottom - this.f37388L;
            this.f37378G.draw(canvas);
        }
    }

    /* renamed from: D0 */
    private void m4072D0() {
        int visibility = this.f37368B.getVisibility();
        int i = 0;
        boolean z = this.f37366A != null && !m4061N();
        TextView textView = this.f37368B;
        if (!z) {
            i = 8;
        }
        textView.setVisibility(i);
        if (visibility != this.f37368B.getVisibility()) {
            getEndIconDelegate().mo3943c(z);
        }
        m4015q0();
    }

    /* renamed from: E */
    private void m4071E(Canvas canvas) {
        if (this.f37370C) {
            this.f37381H0.m4578j(canvas);
        }
    }

    /* renamed from: F */
    private void m4069F(boolean z) {
        ValueAnimator valueAnimator = this.f37387K0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f37387K0.cancel();
        }
        if (!z || !this.f37385J0) {
            this.f37381H0.m4589d0(0.0f);
        } else {
            m4032i(0.0f);
        }
        if (m4079A() && ((C8304c) this.f37376F).m3984q0()) {
            m4000y();
        }
        this.f37379G0 = true;
        m4065J();
        m4078A0();
        m4072D0();
    }

    /* renamed from: G */
    private int m4068G(int i, boolean z) {
        int compoundPaddingLeft = i + this.f37414i.getCompoundPaddingLeft();
        int i2 = compoundPaddingLeft;
        if (this.f37446y != null) {
            i2 = compoundPaddingLeft;
            if (!z) {
                i2 = (compoundPaddingLeft - this.f37448z.getMeasuredWidth()) + this.f37448z.getPaddingLeft();
            }
        }
        return i2;
    }

    /* renamed from: H */
    private int m4067H(int i, boolean z) {
        int compoundPaddingRight = i - this.f37414i.getCompoundPaddingRight();
        int i2 = compoundPaddingRight;
        if (this.f37446y != null) {
            i2 = compoundPaddingRight;
            if (z) {
                i2 = compoundPaddingRight + (this.f37448z.getMeasuredWidth() - this.f37448z.getPaddingRight());
            }
        }
        return i2;
    }

    /* renamed from: I */
    private boolean m4066I() {
        return this.f37411g0 != 0;
    }

    /* renamed from: J */
    private void m4065J() {
        TextView textView = this.f37436t;
        if (textView == null || !this.f37434s) {
            return;
        }
        textView.setText((CharSequence) null);
        this.f37436t.setVisibility(4);
    }

    /* renamed from: L */
    private boolean m4063L() {
        return this.f37437t0.getVisibility() == 0;
    }

    /* renamed from: P */
    private boolean m4059P() {
        boolean z;
        if (this.f37384J == 1) {
            z = true;
            if (Build.VERSION.SDK_INT >= 16) {
                if (this.f37414i.getMinLines() <= 1) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: R */
    private int[] m4057R(CheckableImageButton checkableImageButton) {
        int[] drawableState = getDrawableState();
        int[] drawableState2 = checkableImageButton.getDrawableState();
        int length = drawableState.length;
        int[] copyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
        System.arraycopy(drawableState2, 0, copyOf, length, drawableState2.length);
        return copyOf;
    }

    /* renamed from: S */
    private void m4056S() {
        m4018p();
        m4047a0();
        m4070E0();
        m4027k0();
        m4034h();
        if (this.f37384J != 0) {
            m4009t0();
        }
    }

    /* renamed from: T */
    private void m4055T() {
        if (!m4079A()) {
            return;
        }
        RectF rectF = this.f37397S;
        this.f37381H0.m4572m(rectF, this.f37414i.getWidth(), this.f37414i.getGravity());
        m4026l(rectF);
        rectF.offset(-getPaddingLeft(), -getPaddingTop());
        ((C8304c) this.f37376F).m3978w0(rectF);
    }

    /* renamed from: U */
    private static void m4054U(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                m4054U((ViewGroup) childAt, z);
            }
        }
    }

    /* renamed from: X */
    private void m4051X(CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int colorForState = colorStateList.getColorForState(m4057R(checkableImageButton), colorStateList.getDefaultColor());
        Drawable mutate = C0615a.m33212r(drawable).mutate();
        C0615a.m33215o(mutate, ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(mutate);
    }

    /* renamed from: Z */
    private void m4049Z() {
        TextView textView = this.f37436t;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    /* renamed from: a0 */
    private void m4047a0() {
        if (m4033h0()) {
            C1679w.m29267u0(this.f37414i, this.f37376F);
        }
    }

    /* renamed from: b0 */
    private static void m4045b0(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        boolean m29318Q = C1679w.m29318Q(checkableImageButton);
        boolean z = false;
        int i = 1;
        boolean z2 = onLongClickListener != null;
        if (m29318Q || z2) {
            z = true;
        }
        checkableImageButton.setFocusable(z);
        checkableImageButton.setClickable(m29318Q);
        checkableImageButton.setPressable(m29318Q);
        checkableImageButton.setLongClickable(z2);
        if (!z) {
            i = 2;
        }
        C1679w.m29347B0(checkableImageButton, i);
    }

    /* renamed from: c0 */
    private static void m4043c0(CheckableImageButton checkableImageButton, View.OnClickListener onClickListener, View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnClickListener(onClickListener);
        m4045b0(checkableImageButton, onLongClickListener);
    }

    /* renamed from: d0 */
    private static void m4041d0(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        m4045b0(checkableImageButton, onLongClickListener);
    }

    /* renamed from: f0 */
    private boolean m4037f0() {
        return (this.f37437t0.getVisibility() == 0 || ((m4066I() && m4064K()) || this.f37366A != null)) && this.f37410g.getMeasuredWidth() > 0;
    }

    /* renamed from: g */
    private void m4036g() {
        TextView textView = this.f37436t;
        if (textView != null) {
            this.f37406e.addView(textView);
            this.f37436t.setVisibility(0);
        }
    }

    /* renamed from: g0 */
    private boolean m4035g0() {
        return !(getStartIconDrawable() == null && this.f37446y == null) && this.f37408f.getMeasuredWidth() > 0;
    }

    private AbstractC8318e getEndIconDelegate() {
        AbstractC8318e abstractC8318e = this.f37413h0.get(this.f37411g0);
        if (abstractC8318e == null) {
            abstractC8318e = this.f37413h0.get(0);
        }
        return abstractC8318e;
    }

    private CheckableImageButton getEndIconToUpdateDummyDrawable() {
        if (this.f37437t0.getVisibility() == 0) {
            return this.f37437t0;
        }
        if (m4066I() && m4064K()) {
            return this.f37415i0;
        }
        return null;
    }

    /* renamed from: h */
    private void m4034h() {
        if (this.f37414i == null || this.f37384J != 1) {
            return;
        }
        if (C1919c.m28679h(getContext())) {
            EditText editText = this.f37414i;
            C1679w.m29339F0(editText, C1679w.m29334I(editText), getResources().getDimensionPixelSize(C1888d.material_filled_edittext_font_2_0_padding_top), C1679w.m29336H(this.f37414i), getResources().getDimensionPixelSize(C1888d.material_filled_edittext_font_2_0_padding_bottom));
        } else if (!C1919c.m28680g(getContext())) {
        } else {
            EditText editText2 = this.f37414i;
            C1679w.m29339F0(editText2, C1679w.m29334I(editText2), getResources().getDimensionPixelSize(C1888d.material_filled_edittext_font_1_3_padding_top), C1679w.m29336H(this.f37414i), getResources().getDimensionPixelSize(C1888d.material_filled_edittext_font_1_3_padding_bottom));
        }
    }

    /* renamed from: h0 */
    private boolean m4033h0() {
        EditText editText = this.f37414i;
        return (editText == null || this.f37376F == null || editText.getBackground() != null || this.f37384J == 0) ? false : true;
    }

    /* renamed from: i0 */
    private void m4031i0() {
        TextView textView = this.f37436t;
        if (textView == null || !this.f37434s) {
            return;
        }
        textView.setText(this.f37432r);
        this.f37436t.setVisibility(0);
        this.f37436t.bringToFront();
    }

    /* renamed from: j */
    private void m4030j() {
        C1938h c1938h = this.f37376F;
        if (c1938h == null) {
            return;
        }
        c1938h.setShapeAppearanceModel(this.f37380H);
        if (m4004w()) {
            this.f37376F.m28607j0(this.f37388L, this.f37393O);
        }
        int m4016q = m4016q();
        this.f37394P = m4016q;
        this.f37376F.m28625a0(ColorStateList.valueOf(m4016q));
        if (this.f37411g0 == 3) {
            this.f37414i.getBackground().invalidateSelf();
        }
        m4028k();
        invalidate();
    }

    /* renamed from: j0 */
    private void m4029j0(boolean z) {
        if (!z || getEndIconDrawable() == null) {
            m4024m();
            return;
        }
        Drawable mutate = C0615a.m33212r(getEndIconDrawable()).mutate();
        C0615a.m33216n(mutate, this.f37418k.m3912o());
        this.f37415i0.setImageDrawable(mutate);
    }

    /* renamed from: k */
    private void m4028k() {
        if (this.f37378G == null) {
            return;
        }
        if (m4002x()) {
            this.f37378G.m28625a0(ColorStateList.valueOf(this.f37393O));
        }
        invalidate();
    }

    /* renamed from: k0 */
    private void m4027k0() {
        if (this.f37384J == 1) {
            if (C1919c.m28679h(getContext())) {
                this.f37386K = getResources().getDimensionPixelSize(C1888d.material_font_2_0_box_collapsed_padding_top);
            } else if (!C1919c.m28680g(getContext())) {
            } else {
                this.f37386K = getResources().getDimensionPixelSize(C1888d.material_font_1_3_box_collapsed_padding_top);
            }
        }
    }

    /* renamed from: l */
    private void m4026l(RectF rectF) {
        float f = rectF.left;
        int i = this.f37382I;
        rectF.left = f - i;
        rectF.top -= i;
        rectF.right += i;
        rectF.bottom += i;
    }

    /* renamed from: l0 */
    private void m4025l0(Rect rect) {
        C1938h c1938h = this.f37378G;
        if (c1938h != null) {
            int i = rect.bottom;
            c1938h.setBounds(rect.left, i - this.f37392N, rect.right, i);
        }
    }

    /* renamed from: m */
    private void m4024m() {
        m4022n(this.f37415i0, this.f37421l0, this.f37419k0, this.f37425n0, this.f37423m0);
    }

    /* renamed from: m0 */
    private void m4023m0() {
        if (this.f37426o != null) {
            EditText editText = this.f37414i;
            m4021n0(editText == null ? 0 : editText.getText().length());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0019, code lost:
        if (r7 != false) goto L8;
     */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m4022n(com.google.android.material.internal.CheckableImageButton r4, boolean r5, android.content.res.ColorStateList r6, boolean r7, android.graphics.PorterDuff.Mode r8) {
        /*
            r3 = this;
            r0 = r4
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L44
            r0 = r5
            if (r0 != 0) goto L1c
            r0 = r9
            r10 = r0
            r0 = r7
            if (r0 == 0) goto L44
        L1c:
            r0 = r9
            android.graphics.drawable.Drawable r0 = androidx.core.graphics.drawable.C0615a.m33212r(r0)
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r9 = r0
            r0 = r5
            if (r0 == 0) goto L30
            r0 = r9
            r1 = r6
            androidx.core.graphics.drawable.C0615a.m33215o(r0, r1)
        L30:
            r0 = r9
            r10 = r0
            r0 = r7
            if (r0 == 0) goto L44
            r0 = r9
            r1 = r8
            androidx.core.graphics.drawable.C0615a.m33214p(r0, r1)
            r0 = r9
            r10 = r0
        L44:
            r0 = r4
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            r1 = r10
            if (r0 == r1) goto L53
            r0 = r4
            r1 = r10
            r0.setImageDrawable(r1)
        L53:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.m4022n(com.google.android.material.internal.CheckableImageButton, boolean, android.content.res.ColorStateList, boolean, android.graphics.PorterDuff$Mode):void");
    }

    /* renamed from: o */
    private void m4020o() {
        m4022n(this.f37399U, this.f37401W, this.f37400V, this.f37403b0, this.f37402a0);
    }

    /* renamed from: o0 */
    private static void m4019o0(Context context, TextView textView, int i, int i2, boolean z) {
        textView.setContentDescription(context.getString(z ? C1894j.character_counter_overflowed_content_description : C1894j.character_counter_content_description, Integer.valueOf(i), Integer.valueOf(i2)));
    }

    /* renamed from: p */
    private void m4018p() {
        int i = this.f37384J;
        if (i == 0) {
            this.f37376F = null;
            this.f37378G = null;
        } else if (i == 1) {
            this.f37376F = new C1938h(this.f37380H);
            this.f37378G = new C1938h();
        } else if (i != 2) {
            throw new IllegalArgumentException(this.f37384J + " is illegal; only @BoxBackgroundMode constants are supported.");
        } else {
            if (!this.f37370C || (this.f37376F instanceof C8304c)) {
                this.f37376F = new C1938h(this.f37380H);
            } else {
                this.f37376F = new C8304c(this.f37380H);
            }
            this.f37378G = null;
        }
    }

    /* renamed from: p0 */
    private void m4017p0() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        TextView textView = this.f37426o;
        if (textView != null) {
            m4039e0(textView, this.f37424n ? this.f37428p : this.f37430q);
            if (!this.f37424n && (colorStateList2 = this.f37442w) != null) {
                this.f37426o.setTextColor(colorStateList2);
            }
            if (!this.f37424n || (colorStateList = this.f37444x) == null) {
                return;
            }
            this.f37426o.setTextColor(colorStateList);
        }
    }

    /* renamed from: q */
    private int m4016q() {
        int i = this.f37394P;
        if (this.f37384J == 1) {
            i = C1909a.m28713f(C1909a.m28714e(this, C1886b.colorSurface, 0), this.f37394P);
        }
        return i;
    }

    /* renamed from: q0 */
    private boolean m4015q0() {
        boolean z;
        boolean z2;
        if (this.f37414i == null) {
            return false;
        }
        if (m4035g0()) {
            int measuredWidth = this.f37408f.getMeasuredWidth() - this.f37414i.getPaddingLeft();
            if (this.f37404c0 == null || this.f37405d0 != measuredWidth) {
                ColorDrawable colorDrawable = new ColorDrawable();
                this.f37404c0 = colorDrawable;
                this.f37405d0 = measuredWidth;
                colorDrawable.setBounds(0, 0, measuredWidth, 1);
            }
            Drawable[] m33090a = C0649k.m33090a(this.f37414i);
            Drawable drawable = m33090a[0];
            Drawable drawable2 = this.f37404c0;
            if (drawable != drawable2) {
                C0649k.m33079l(this.f37414i, drawable2, m33090a[1], m33090a[2], m33090a[3]);
                z = true;
            }
            z = false;
        } else {
            if (this.f37404c0 != null) {
                Drawable[] m33090a2 = C0649k.m33090a(this.f37414i);
                C0649k.m33079l(this.f37414i, null, m33090a2[1], m33090a2[2], m33090a2[3]);
                this.f37404c0 = null;
                z = true;
            }
            z = false;
        }
        if (!m4037f0()) {
            z2 = z;
            if (this.f37427o0 != null) {
                Drawable[] m33090a3 = C0649k.m33090a(this.f37414i);
                if (m33090a3[2] == this.f37427o0) {
                    C0649k.m33079l(this.f37414i, m33090a3[0], m33090a3[1], this.f37431q0, m33090a3[3]);
                    z = true;
                }
                this.f37427o0 = null;
            }
            return z2;
        }
        int measuredWidth2 = this.f37368B.getMeasuredWidth() - this.f37414i.getPaddingRight();
        CheckableImageButton endIconToUpdateDummyDrawable = getEndIconToUpdateDummyDrawable();
        int i = measuredWidth2;
        if (endIconToUpdateDummyDrawable != null) {
            i = measuredWidth2 + endIconToUpdateDummyDrawable.getMeasuredWidth() + C1664h.m29401b((ViewGroup.MarginLayoutParams) endIconToUpdateDummyDrawable.getLayoutParams());
        }
        Drawable[] m33090a4 = C0649k.m33090a(this.f37414i);
        Drawable drawable3 = this.f37427o0;
        if (drawable3 == null || this.f37429p0 == i) {
            if (drawable3 == null) {
                ColorDrawable colorDrawable2 = new ColorDrawable();
                this.f37427o0 = colorDrawable2;
                this.f37429p0 = i;
                colorDrawable2.setBounds(0, 0, i, 1);
            }
            Drawable drawable4 = m33090a4[2];
            Drawable drawable5 = this.f37427o0;
            if (drawable4 != drawable5) {
                this.f37431q0 = m33090a4[2];
                C0649k.m33079l(this.f37414i, m33090a4[0], m33090a4[1], drawable5, m33090a4[3]);
                z = true;
            }
        } else {
            this.f37429p0 = i;
            drawable3.setBounds(0, 0, i, 1);
            C0649k.m33079l(this.f37414i, m33090a4[0], m33090a4[1], this.f37427o0, m33090a4[3]);
            z = true;
        }
        z2 = z;
        return z2;
    }

    /* renamed from: r */
    private Rect m4014r(Rect rect) {
        if (this.f37414i != null) {
            Rect rect2 = this.f37396R;
            boolean z = C1679w.m29346C(this) == 1;
            rect2.bottom = rect.bottom;
            int i = this.f37384J;
            if (i == 1) {
                rect2.left = m4068G(rect.left, z);
                rect2.top = rect.top + this.f37386K;
                rect2.right = m4067H(rect.right, z);
                return rect2;
            } else if (i != 2) {
                rect2.left = m4068G(rect.left, z);
                rect2.top = getPaddingTop();
                rect2.right = m4067H(rect.right, z);
                return rect2;
            } else {
                rect2.left = rect.left + this.f37414i.getPaddingLeft();
                rect2.top = rect.top - m4006v();
                rect2.right = rect.right - this.f37414i.getPaddingRight();
                return rect2;
            }
        }
        throw new IllegalStateException();
    }

    /* renamed from: s */
    private int m4012s(Rect rect, Rect rect2, float f) {
        return m4059P() ? (int) (rect2.top + f) : rect.bottom - this.f37414i.getCompoundPaddingBottom();
    }

    /* renamed from: s0 */
    private boolean m4011s0() {
        int max;
        if (this.f37414i != null && this.f37414i.getMeasuredHeight() < (max = Math.max(this.f37410g.getMeasuredHeight(), this.f37408f.getMeasuredHeight()))) {
            this.f37414i.setMinimumHeight(max);
            return true;
        }
        return false;
    }

    private void setEditText(EditText editText) {
        if (this.f37414i == null) {
            if (this.f37411g0 != 3 && !(editText instanceof TextInputEditText)) {
                Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
            }
            this.f37414i = editText;
            m4056S();
            setTextInputAccessibilityDelegate(new C8289e(this));
            this.f37381H0.m4575k0(this.f37414i.getTypeface());
            this.f37381H0.m4595a0(this.f37414i.getTextSize());
            int gravity = this.f37414i.getGravity();
            this.f37381H0.m4605R((gravity & (-113)) | 48);
            this.f37381H0.m4597Z(gravity);
            this.f37414i.addTextChangedListener(new C8285a());
            if (this.f37441v0 == null) {
                this.f37441v0 = this.f37414i.getHintTextColors();
            }
            if (this.f37370C) {
                if (TextUtils.isEmpty(this.f37372D)) {
                    CharSequence hint = this.f37414i.getHint();
                    this.f37416j = hint;
                    setHint(hint);
                    this.f37414i.setHint((CharSequence) null);
                }
                this.f37374E = true;
            }
            if (this.f37426o != null) {
                m4021n0(this.f37414i.getText().length());
            }
            m4013r0();
            this.f37418k.m3922e();
            this.f37408f.bringToFront();
            this.f37410g.bringToFront();
            this.f37412h.bringToFront();
            this.f37437t0.bringToFront();
            m4077B();
            m3997z0();
            m4074C0();
            if (!isEnabled()) {
                editText.setEnabled(false);
            }
            m4005v0(false, true);
            return;
        }
        throw new IllegalArgumentException("We already have an EditText, can only have one");
    }

    private void setErrorIconVisible(boolean z) {
        this.f37437t0.setVisibility(z ? 0 : 8);
        FrameLayout frameLayout = this.f37412h;
        int i = 0;
        if (z) {
            i = 8;
        }
        frameLayout.setVisibility(i);
        m4074C0();
        if (!m4066I()) {
            m4015q0();
        }
    }

    private void setHintInternal(CharSequence charSequence) {
        if (!TextUtils.equals(charSequence, this.f37372D)) {
            this.f37372D = charSequence;
            this.f37381H0.m4579i0(charSequence);
            if (this.f37379G0) {
                return;
            }
            m4055T();
        }
    }

    private void setPlaceholderTextEnabled(boolean z) {
        if (this.f37434s == z) {
            return;
        }
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
            this.f37436t = appCompatTextView;
            appCompatTextView.setId(C1890f.textinput_placeholder);
            C1679w.m29269t0(this.f37436t, 1);
            setPlaceholderTextAppearance(this.f37440v);
            setPlaceholderTextColor(this.f37438u);
            m4036g();
        } else {
            m4049Z();
            this.f37436t = null;
        }
        this.f37434s = z;
    }

    /* renamed from: t */
    private int m4010t(Rect rect, float f) {
        return m4059P() ? (int) (rect.centerY() - (f / 2.0f)) : rect.top + this.f37414i.getCompoundPaddingTop();
    }

    /* renamed from: t0 */
    private void m4009t0() {
        if (this.f37384J != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f37406e.getLayoutParams();
            int m4006v = m4006v();
            if (m4006v == layoutParams.topMargin) {
                return;
            }
            layoutParams.topMargin = m4006v;
            this.f37406e.requestLayout();
        }
    }

    /* renamed from: u */
    private Rect m4008u(Rect rect) {
        if (this.f37414i != null) {
            Rect rect2 = this.f37396R;
            float m4561x = this.f37381H0.m4561x();
            rect2.left = rect.left + this.f37414i.getCompoundPaddingLeft();
            rect2.top = m4010t(rect, m4561x);
            rect2.right = rect.right - this.f37414i.getCompoundPaddingRight();
            rect2.bottom = m4012s(rect, rect2, m4561x);
            return rect2;
        }
        throw new IllegalStateException();
    }

    /* renamed from: v */
    private int m4006v() {
        float m4569p;
        if (!this.f37370C) {
            return 0;
        }
        int i = this.f37384J;
        if (i == 0 || i == 1) {
            m4569p = this.f37381H0.m4569p();
        } else if (i != 2) {
            return 0;
        } else {
            m4569p = this.f37381H0.m4569p() / 2.0f;
        }
        return (int) m4569p;
    }

    /* renamed from: v0 */
    private void m4005v0(boolean z, boolean z2) {
        ColorStateList colorStateList;
        TextView textView;
        boolean isEnabled = isEnabled();
        EditText editText = this.f37414i;
        boolean z3 = editText != null && !TextUtils.isEmpty(editText.getText());
        EditText editText2 = this.f37414i;
        boolean z4 = editText2 != null && editText2.hasFocus();
        boolean m3916k = this.f37418k.m3916k();
        ColorStateList colorStateList2 = this.f37441v0;
        if (colorStateList2 != null) {
            this.f37381H0.m4606Q(colorStateList2);
            this.f37381H0.m4598Y(this.f37441v0);
        }
        if (!isEnabled) {
            ColorStateList colorStateList3 = this.f37441v0;
            int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.f37377F0) : this.f37377F0;
            this.f37381H0.m4606Q(ColorStateList.valueOf(colorForState));
            this.f37381H0.m4598Y(ColorStateList.valueOf(colorForState));
        } else if (m3916k) {
            this.f37381H0.m4606Q(this.f37418k.m3911p());
        } else if (this.f37424n && (textView = this.f37426o) != null) {
            this.f37381H0.m4606Q(textView.getTextColors());
        } else if (z4 && (colorStateList = this.f37443w0) != null) {
            this.f37381H0.m4606Q(colorStateList);
        }
        if (z3 || !this.f37383I0 || (isEnabled() && z4)) {
            if (!z2 && !this.f37379G0) {
                return;
            }
            m3998z(z);
        } else if (!z2 && this.f37379G0) {
        } else {
            m4069F(z);
        }
    }

    /* renamed from: w */
    private boolean m4004w() {
        return this.f37384J == 2 && m4002x();
    }

    /* renamed from: w0 */
    private void m4003w0() {
        EditText editText;
        if (this.f37436t == null || (editText = this.f37414i) == null) {
            return;
        }
        this.f37436t.setGravity(editText.getGravity());
        this.f37436t.setPadding(this.f37414i.getCompoundPaddingLeft(), this.f37414i.getCompoundPaddingTop(), this.f37414i.getCompoundPaddingRight(), this.f37414i.getCompoundPaddingBottom());
    }

    /* renamed from: x */
    private boolean m4002x() {
        return this.f37388L > -1 && this.f37393O != 0;
    }

    /* renamed from: x0 */
    private void m4001x0() {
        EditText editText = this.f37414i;
        m3999y0(editText == null ? 0 : editText.getText().length());
    }

    /* renamed from: y */
    private void m4000y() {
        if (m4079A()) {
            ((C8304c) this.f37376F).m3981t0();
        }
    }

    /* renamed from: y0 */
    public void m3999y0(int i) {
        if (i != 0 || this.f37379G0) {
            m4065J();
        } else {
            m4031i0();
        }
    }

    /* renamed from: z */
    private void m3998z(boolean z) {
        ValueAnimator valueAnimator = this.f37387K0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f37387K0.cancel();
        }
        if (!z || !this.f37385J0) {
            this.f37381H0.m4589d0(1.0f);
        } else {
            m4032i(1.0f);
        }
        this.f37379G0 = false;
        if (m4079A()) {
            m4055T();
        }
        m4001x0();
        m4078A0();
        m4072D0();
    }

    /* renamed from: z0 */
    private void m3997z0() {
        if (this.f37414i == null) {
            return;
        }
        C1679w.m29339F0(this.f37448z, m4058Q() ? 0 : C1679w.m29334I(this.f37414i), this.f37414i.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(C1888d.material_input_text_to_prefix_suffix_padding), this.f37414i.getCompoundPaddingBottom());
    }

    /* renamed from: E0 */
    public void m4070E0() {
        TextView textView;
        EditText editText;
        EditText editText2;
        if (this.f37376F == null || this.f37384J == 0) {
            return;
        }
        boolean z = isFocused() || ((editText2 = this.f37414i) != null && editText2.hasFocus());
        boolean z2 = isHovered() || ((editText = this.f37414i) != null && editText.isHovered());
        if (!isEnabled()) {
            this.f37393O = this.f37377F0;
        } else if (this.f37418k.m3916k()) {
            if (this.f37367A0 != null) {
                m4076B0(z, z2);
            } else {
                this.f37393O = this.f37418k.m3912o();
            }
        } else if (!this.f37424n || (textView = this.f37426o) == null) {
            if (z) {
                this.f37393O = this.f37449z0;
            } else if (z2) {
                this.f37393O = this.f37447y0;
            } else {
                this.f37393O = this.f37445x0;
            }
        } else if (this.f37367A0 != null) {
            m4076B0(z, z2);
        } else {
            this.f37393O = textView.getCurrentTextColor();
        }
        boolean z3 = false;
        if (getErrorIconDrawable() != null) {
            z3 = false;
            if (this.f37418k.m3903x()) {
                z3 = false;
                if (this.f37418k.m3916k()) {
                    z3 = true;
                }
            }
        }
        setErrorIconVisible(z3);
        m4052W();
        m4050Y();
        m4053V();
        if (getEndIconDelegate().mo3942d()) {
            m4029j0(this.f37418k.m3916k());
        }
        if (!z || !isEnabled()) {
            this.f37388L = this.f37390M;
        } else {
            this.f37388L = this.f37392N;
        }
        if (this.f37384J == 1) {
            if (!isEnabled()) {
                this.f37394P = this.f37371C0;
            } else if (z2 && !z) {
                this.f37394P = this.f37375E0;
            } else if (z) {
                this.f37394P = this.f37373D0;
            } else {
                this.f37394P = this.f37369B0;
            }
        }
        m4030j();
    }

    /* renamed from: K */
    public boolean m4064K() {
        return this.f37412h.getVisibility() == 0 && this.f37415i0.getVisibility() == 0;
    }

    /* renamed from: M */
    public boolean m4062M() {
        return this.f37418k.m3902y();
    }

    /* renamed from: N */
    final boolean m4061N() {
        return this.f37379G0;
    }

    /* renamed from: O */
    public boolean m4060O() {
        return this.f37374E;
    }

    /* renamed from: Q */
    public boolean m4058Q() {
        return this.f37399U.getVisibility() == 0;
    }

    /* renamed from: V */
    public void m4053V() {
        m4051X(this.f37415i0, this.f37419k0);
    }

    /* renamed from: W */
    public void m4052W() {
        m4051X(this.f37437t0, this.f37439u0);
    }

    /* renamed from: Y */
    public void m4050Y() {
        m4051X(this.f37399U, this.f37400V);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        this.f37406e.addView(view, layoutParams2);
        this.f37406e.setLayoutParams(layoutParams);
        m4009t0();
        setEditText((EditText) view);
    }

    @Override // android.view.ViewGroup, android.view.View
    @TargetApi(26)
    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        EditText editText = this.f37414i;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        if (this.f37416j != null) {
            boolean z = this.f37374E;
            this.f37374E = false;
            CharSequence hint = editText.getHint();
            this.f37414i.setHint(this.f37416j);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
                return;
            } finally {
                this.f37414i.setHint(hint);
                this.f37374E = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i);
        onProvideAutofillVirtualStructure(viewStructure, i);
        viewStructure.setChildCount(this.f37406e.getChildCount());
        for (int i2 = 0; i2 < this.f37406e.getChildCount(); i2++) {
            View childAt = this.f37406e.getChildAt(i2);
            ViewStructure newChild = viewStructure.newChild(i2);
            childAt.dispatchProvideAutofillStructure(newChild, i);
            if (childAt == this.f37414i) {
                newChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.f37391M0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f37391M0 = false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        m4071E(canvas);
        m4073D(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.f37389L0) {
            return;
        }
        boolean z = true;
        this.f37389L0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        C8173a c8173a = this.f37381H0;
        boolean m4581h0 = c8173a != null ? c8173a.m4581h0(drawableState) | false : false;
        if (this.f37414i != null) {
            if (!C1679w.m29313V(this) || !isEnabled()) {
                z = false;
            }
            m4007u0(z);
        }
        m4013r0();
        m4070E0();
        if (m4581h0) {
            invalidate();
        }
        this.f37389L0 = false;
    }

    /* renamed from: e */
    public void m4040e(AbstractC8290f abstractC8290f) {
        this.f37409f0.add(abstractC8290f);
        if (this.f37414i != null) {
            abstractC8290f.mo3895a(this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* renamed from: e0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m4039e0(android.widget.TextView r5, int r6) {
        /*
            r4 = this;
            r0 = 1
            r7 = r0
            r0 = r5
            r1 = r6
            androidx.core.widget.C0649k.m33074q(r0, r1)     // Catch: java.lang.Exception -> L28
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L28
            r1 = 23
            if (r0 < r1) goto L23
            r0 = r5
            android.content.res.ColorStateList r0 = r0.getTextColors()     // Catch: java.lang.Exception -> L28
            int r0 = r0.getDefaultColor()     // Catch: java.lang.Exception -> L28
            r6 = r0
            r0 = r6
            r1 = -65281(0xffffffffffff00ff, float:NaN)
            if (r0 != r1) goto L23
            r0 = r7
            r6 = r0
            goto L2c
        L23:
            r0 = 0
            r6 = r0
            goto L2c
        L28:
            r8 = move-exception
            r0 = r7
            r6 = r0
        L2c:
            r0 = r6
            if (r0 == 0) goto L45
            r0 = r5
            int r1 = p078c.p084c.p085a.p096b.C1895k.TextAppearance_AppCompat_Caption
            androidx.core.widget.C0649k.m33074q(r0, r1)
            r0 = r5
            r1 = r4
            android.content.Context r1 = r1.getContext()
            int r2 = p078c.p084c.p085a.p096b.C1887c.design_error
            int r1 = androidx.core.content.C0586a.m33350d(r1, r2)
            r0.setTextColor(r1)
        L45:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.m4039e0(android.widget.TextView, int):void");
    }

    /* renamed from: f */
    public void m4038f(AbstractC8291g abstractC8291g) {
        this.f37417j0.add(abstractC8291g);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f37414i;
        return editText != null ? editText.getBaseline() + getPaddingTop() + m4006v() : super.getBaseline();
    }

    public C1938h getBoxBackground() {
        int i = this.f37384J;
        if (i == 1 || i == 2) {
            return this.f37376F;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.f37394P;
    }

    public int getBoxBackgroundMode() {
        return this.f37384J;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return this.f37376F.m28592s();
    }

    public float getBoxCornerRadiusBottomStart() {
        return this.f37376F.m28591t();
    }

    public float getBoxCornerRadiusTopEnd() {
        return this.f37376F.m28642J();
    }

    public float getBoxCornerRadiusTopStart() {
        return this.f37376F.m28643I();
    }

    public int getBoxStrokeColor() {
        return this.f37449z0;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.f37367A0;
    }

    public int getBoxStrokeWidth() {
        return this.f37390M;
    }

    public int getBoxStrokeWidthFocused() {
        return this.f37392N;
    }

    public int getCounterMaxLength() {
        return this.f37422m;
    }

    CharSequence getCounterOverflowDescription() {
        TextView textView;
        if (!this.f37420l || !this.f37424n || (textView = this.f37426o) == null) {
            return null;
        }
        return textView.getContentDescription();
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.f37442w;
    }

    public ColorStateList getCounterTextColor() {
        return this.f37442w;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.f37441v0;
    }

    public EditText getEditText() {
        return this.f37414i;
    }

    public CharSequence getEndIconContentDescription() {
        return this.f37415i0.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.f37415i0.getDrawable();
    }

    public int getEndIconMode() {
        return this.f37411g0;
    }

    public CheckableImageButton getEndIconView() {
        return this.f37415i0;
    }

    public CharSequence getError() {
        return this.f37418k.m3903x() ? this.f37418k.m3913n() : null;
    }

    public CharSequence getErrorContentDescription() {
        return this.f37418k.m3914m();
    }

    public int getErrorCurrentTextColors() {
        return this.f37418k.m3912o();
    }

    public Drawable getErrorIconDrawable() {
        return this.f37437t0.getDrawable();
    }

    final int getErrorTextCurrentColor() {
        return this.f37418k.m3912o();
    }

    public CharSequence getHelperText() {
        return this.f37418k.m3902y() ? this.f37418k.m3910q() : null;
    }

    public int getHelperTextCurrentTextColor() {
        return this.f37418k.m3909r();
    }

    public CharSequence getHint() {
        return this.f37370C ? this.f37372D : null;
    }

    final float getHintCollapsedTextHeight() {
        return this.f37381H0.m4569p();
    }

    final int getHintCurrentCollapsedTextColor() {
        return this.f37381H0.m4565t();
    }

    public ColorStateList getHintTextColor() {
        return this.f37443w0;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f37415i0.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f37415i0.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        return this.f37434s ? this.f37432r : null;
    }

    public int getPlaceholderTextAppearance() {
        return this.f37440v;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.f37438u;
    }

    public CharSequence getPrefixText() {
        return this.f37446y;
    }

    public ColorStateList getPrefixTextColor() {
        return this.f37448z.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.f37448z;
    }

    public CharSequence getStartIconContentDescription() {
        return this.f37399U.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.f37399U.getDrawable();
    }

    public CharSequence getSuffixText() {
        return this.f37366A;
    }

    public ColorStateList getSuffixTextColor() {
        return this.f37368B.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.f37368B;
    }

    public Typeface getTypeface() {
        return this.f37398T;
    }

    /* renamed from: i */
    void m4032i(float f) {
        if (this.f37381H0.m4559z() == f) {
            return;
        }
        if (this.f37387K0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f37387K0 = valueAnimator;
            valueAnimator.setInterpolator(C1897a.f6814b);
            this.f37387K0.setDuration(167L);
            this.f37387K0.addUpdateListener(new C8288d());
        }
        this.f37387K0.setFloatValues(this.f37381H0.m4559z(), f);
        this.f37387K0.start();
    }

    /* renamed from: n0 */
    void m4021n0(int i) {
        boolean z = this.f37424n;
        int i2 = this.f37422m;
        if (i2 == -1) {
            this.f37426o.setText(String.valueOf(i));
            this.f37426o.setContentDescription(null);
            this.f37424n = false;
        } else {
            this.f37424n = i > i2;
            m4019o0(getContext(), this.f37426o, i, this.f37422m, this.f37424n);
            if (z != this.f37424n) {
                m4017p0();
            }
            this.f37426o.setText(C1574a.m29713c().m29706j(getContext().getString(C1894j.character_counter_pattern, Integer.valueOf(i), Integer.valueOf(this.f37422m))));
        }
        if (this.f37414i == null || z == this.f37424n) {
            return;
        }
        m4007u0(false);
        m4070E0();
        m4013r0();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.f37414i;
        if (editText != null) {
            Rect rect = this.f37395Q;
            C8177c.m4556a(this, editText, rect);
            m4025l0(rect);
            if (!this.f37370C) {
                return;
            }
            this.f37381H0.m4595a0(this.f37414i.getTextSize());
            int gravity = this.f37414i.getGravity();
            this.f37381H0.m4605R((gravity & (-113)) | 48);
            this.f37381H0.m4597Z(gravity);
            this.f37381H0.m4609N(m4014r(rect));
            this.f37381H0.m4601V(m4008u(rect));
            this.f37381H0.m4612K();
            if (!m4079A() || this.f37379G0) {
                return;
            }
            m4055T();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        boolean m4011s0 = m4011s0();
        boolean m4015q0 = m4015q0();
        if (m4011s0 || m4015q0) {
            this.f37414i.post(new RunnableC8287c());
        }
        m4003w0();
        m3997z0();
        m4074C0();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m33061a());
        setError(savedState.f37450f);
        if (savedState.f37451g) {
            this.f37415i0.post(new RunnableC8286b());
        }
        setHint(savedState.f37452h);
        setHelperText(savedState.f37453i);
        setPlaceholderText(savedState.f37454j);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.f37418k.m3916k()) {
            savedState.f37450f = getError();
        }
        savedState.f37451g = m4066I() && this.f37415i0.isChecked();
        savedState.f37452h = getHint();
        savedState.f37453i = getHelperText();
        savedState.f37454j = getPlaceholderText();
        return savedState;
    }

    /* renamed from: r0 */
    public void m4013r0() {
        Drawable background;
        TextView textView;
        EditText editText = this.f37414i;
        if (editText == null || this.f37384J != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        Drawable drawable = background;
        if (C0317q.m34777a(background)) {
            drawable = background.mutate();
        }
        if (this.f37418k.m3916k()) {
            drawable.setColorFilter(C0287f.m34940e(this.f37418k.m3912o(), PorterDuff.Mode.SRC_IN));
        } else if (this.f37424n && (textView = this.f37426o) != null) {
            drawable.setColorFilter(C0287f.m34940e(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            C0615a.m33227c(drawable);
            this.f37414i.refreshDrawableState();
        }
    }

    public void setBoxBackgroundColor(int i) {
        if (this.f37394P != i) {
            this.f37394P = i;
            this.f37369B0 = i;
            this.f37373D0 = i;
            this.f37375E0 = i;
            m4030j();
        }
    }

    public void setBoxBackgroundColorResource(int i) {
        setBoxBackgroundColor(C0586a.m33350d(getContext(), i));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.f37369B0 = defaultColor;
        this.f37394P = defaultColor;
        this.f37371C0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.f37373D0 = colorStateList.getColorForState(new int[]{16842908, 16842910}, -1);
        this.f37375E0 = colorStateList.getColorForState(new int[]{16843623, 16842910}, -1);
        m4030j();
    }

    public void setBoxBackgroundMode(int i) {
        if (i == this.f37384J) {
            return;
        }
        this.f37384J = i;
        if (this.f37414i == null) {
            return;
        }
        m4056S();
    }

    public void setBoxCornerRadii(float f, float f2, float f3, float f4) {
        C1938h c1938h = this.f37376F;
        if (c1938h != null && c1938h.m28643I() == f && this.f37376F.m28642J() == f2 && this.f37376F.m28591t() == f4 && this.f37376F.m28592s() == f3) {
            return;
        }
        this.f37380H = this.f37380H.m28554v().m28546E(f).m28542I(f2).m28515z(f4).m28519v(f3).m28528m();
        m4030j();
    }

    public void setBoxCornerRadiiResources(int i, int i2, int i3, int i4) {
        setBoxCornerRadii(getContext().getResources().getDimension(i), getContext().getResources().getDimension(i2), getContext().getResources().getDimension(i4), getContext().getResources().getDimension(i3));
    }

    public void setBoxStrokeColor(int i) {
        if (this.f37449z0 != i) {
            this.f37449z0 = i;
            m4070E0();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.f37445x0 = colorStateList.getDefaultColor();
            this.f37377F0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.f37447y0 = colorStateList.getColorForState(new int[]{16843623, 16842910}, -1);
            this.f37449z0 = colorStateList.getColorForState(new int[]{16842908, 16842910}, -1);
        } else if (this.f37449z0 != colorStateList.getDefaultColor()) {
            this.f37449z0 = colorStateList.getDefaultColor();
        }
        m4070E0();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) {
        if (this.f37367A0 != colorStateList) {
            this.f37367A0 = colorStateList;
            m4070E0();
        }
    }

    public void setBoxStrokeWidth(int i) {
        this.f37390M = i;
        m4070E0();
    }

    public void setBoxStrokeWidthFocused(int i) {
        this.f37392N = i;
        m4070E0();
    }

    public void setBoxStrokeWidthFocusedResource(int i) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i));
    }

    public void setBoxStrokeWidthResource(int i) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public void setCounterEnabled(boolean z) {
        if (this.f37420l != z) {
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.f37426o = appCompatTextView;
                appCompatTextView.setId(C1890f.textinput_counter);
                Typeface typeface = this.f37398T;
                if (typeface != null) {
                    this.f37426o.setTypeface(typeface);
                }
                this.f37426o.setMaxLines(1);
                this.f37418k.m3923d(this.f37426o, 2);
                C1664h.m29399d((ViewGroup.MarginLayoutParams) this.f37426o.getLayoutParams(), getResources().getDimensionPixelOffset(C1888d.mtrl_textinput_counter_margin_start));
                m4017p0();
                m4023m0();
            } else {
                this.f37418k.m3901z(this.f37426o, 2);
                this.f37426o = null;
            }
            this.f37420l = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.f37422m != i) {
            if (i > 0) {
                this.f37422m = i;
            } else {
                this.f37422m = -1;
            }
            if (!this.f37420l) {
                return;
            }
            m4023m0();
        }
    }

    public void setCounterOverflowTextAppearance(int i) {
        if (this.f37428p != i) {
            this.f37428p = i;
            m4017p0();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.f37444x != colorStateList) {
            this.f37444x = colorStateList;
            m4017p0();
        }
    }

    public void setCounterTextAppearance(int i) {
        if (this.f37430q != i) {
            this.f37430q = i;
            m4017p0();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.f37442w != colorStateList) {
            this.f37442w = colorStateList;
            m4017p0();
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.f37441v0 = colorStateList;
        this.f37443w0 = colorStateList;
        if (this.f37414i != null) {
            m4007u0(false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        m4054U(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.f37415i0.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.f37415i0.setCheckable(z);
    }

    public void setEndIconContentDescription(int i) {
        setEndIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        if (getEndIconContentDescription() != charSequence) {
            this.f37415i0.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(int i) {
        setEndIconDrawable(i != 0 ? C1433a.m30126d(getContext(), i) : null);
    }

    public void setEndIconDrawable(Drawable drawable) {
        this.f37415i0.setImageDrawable(drawable);
        m4053V();
    }

    public void setEndIconMode(int i) {
        int i2 = this.f37411g0;
        this.f37411g0 = i;
        m4075C(i2);
        setEndIconVisible(i != 0);
        if (getEndIconDelegate().mo3944b(this.f37384J)) {
            getEndIconDelegate().mo3900a();
            m4024m();
            return;
        }
        throw new IllegalStateException("The current box background mode " + this.f37384J + " is not supported by the end icon mode " + i);
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        m4043c0(this.f37415i0, onClickListener, this.f37433r0);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f37433r0 = onLongClickListener;
        m4041d0(this.f37415i0, onLongClickListener);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        if (this.f37419k0 != colorStateList) {
            this.f37419k0 = colorStateList;
            this.f37421l0 = true;
            m4024m();
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        if (this.f37423m0 != mode) {
            this.f37423m0 = mode;
            this.f37425n0 = true;
            m4024m();
        }
    }

    public void setEndIconVisible(boolean z) {
        if (m4064K() != z) {
            this.f37415i0.setVisibility(z ? 0 : 8);
            m4074C0();
            m4015q0();
        }
    }

    public void setError(CharSequence charSequence) {
        if (!this.f37418k.m3903x()) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            setErrorEnabled(true);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            this.f37418k.m3929M(charSequence);
        } else {
            this.f37418k.m3907t();
        }
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        this.f37418k.m3940B(charSequence);
    }

    public void setErrorEnabled(boolean z) {
        this.f37418k.m3939C(z);
    }

    public void setErrorIconDrawable(int i) {
        setErrorIconDrawable(i != 0 ? C1433a.m30126d(getContext(), i) : null);
        m4052W();
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.f37437t0.setImageDrawable(drawable);
        setErrorIconVisible(drawable != null && this.f37418k.m3903x());
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        m4043c0(this.f37437t0, onClickListener, this.f37435s0);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f37435s0 = onLongClickListener;
        m4041d0(this.f37437t0, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        this.f37439u0 = colorStateList;
        Drawable drawable = this.f37437t0.getDrawable();
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = C0615a.m33212r(drawable).mutate();
            C0615a.m33215o(drawable2, colorStateList);
        }
        if (this.f37437t0.getDrawable() != drawable2) {
            this.f37437t0.setImageDrawable(drawable2);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f37437t0.getDrawable();
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = C0615a.m33212r(drawable).mutate();
            C0615a.m33214p(drawable2, mode);
        }
        if (this.f37437t0.getDrawable() != drawable2) {
            this.f37437t0.setImageDrawable(drawable2);
        }
    }

    public void setErrorTextAppearance(int i) {
        this.f37418k.m3938D(i);
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        this.f37418k.m3937E(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z) {
        if (this.f37383I0 != z) {
            this.f37383I0 = z;
            m4007u0(false);
        }
    }

    public void setHelperText(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (!m4062M()) {
                return;
            }
            setHelperTextEnabled(false);
            return;
        }
        if (!m4062M()) {
            setHelperTextEnabled(true);
        }
        this.f37418k.m3928N(charSequence);
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        this.f37418k.m3934H(colorStateList);
    }

    public void setHelperTextEnabled(boolean z) {
        this.f37418k.m3935G(z);
    }

    public void setHelperTextTextAppearance(int i) {
        this.f37418k.m3936F(i);
    }

    public void setHint(int i) {
        setHint(i != 0 ? getResources().getText(i) : null);
    }

    public void setHint(CharSequence charSequence) {
        if (this.f37370C) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.f37385J0 = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.f37370C) {
            this.f37370C = z;
            if (!z) {
                this.f37374E = false;
                if (!TextUtils.isEmpty(this.f37372D) && TextUtils.isEmpty(this.f37414i.getHint())) {
                    this.f37414i.setHint(this.f37372D);
                }
                setHintInternal(null);
            } else {
                CharSequence hint = this.f37414i.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.f37372D)) {
                        setHint(hint);
                    }
                    this.f37414i.setHint((CharSequence) null);
                }
                this.f37374E = true;
            }
            if (this.f37414i == null) {
                return;
            }
            m4009t0();
        }
    }

    public void setHintTextAppearance(int i) {
        this.f37381H0.m4608O(i);
        this.f37443w0 = this.f37381H0.m4571n();
        if (this.f37414i != null) {
            m4007u0(false);
            m4009t0();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.f37443w0 != colorStateList) {
            if (this.f37441v0 == null) {
                this.f37381H0.m4606Q(colorStateList);
            }
            this.f37443w0 = colorStateList;
            if (this.f37414i == null) {
                return;
            }
            m4007u0(false);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i) {
        setPasswordVisibilityToggleContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.f37415i0.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i) {
        setPasswordVisibilityToggleDrawable(i != 0 ? C1433a.m30126d(getContext(), i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.f37415i0.setImageDrawable(drawable);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        if (z && this.f37411g0 != 1) {
            setEndIconMode(1);
        } else if (z) {
        } else {
            setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        this.f37419k0 = colorStateList;
        this.f37421l0 = true;
        m4024m();
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        this.f37423m0 = mode;
        this.f37425n0 = true;
        m4024m();
    }

    public void setPlaceholderText(CharSequence charSequence) {
        if (!this.f37434s || !TextUtils.isEmpty(charSequence)) {
            if (!this.f37434s) {
                setPlaceholderTextEnabled(true);
            }
            this.f37432r = charSequence;
        } else {
            setPlaceholderTextEnabled(false);
        }
        m4001x0();
    }

    public void setPlaceholderTextAppearance(int i) {
        this.f37440v = i;
        TextView textView = this.f37436t;
        if (textView != null) {
            C0649k.m33074q(textView, i);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.f37438u != colorStateList) {
            this.f37438u = colorStateList;
            TextView textView = this.f37436t;
            if (textView == null || colorStateList == null) {
                return;
            }
            textView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        this.f37446y = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f37448z.setText(charSequence);
        m4078A0();
    }

    public void setPrefixTextAppearance(int i) {
        C0649k.m33074q(this.f37448z, i);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.f37448z.setTextColor(colorStateList);
    }

    public void setStartIconCheckable(boolean z) {
        this.f37399U.setCheckable(z);
    }

    public void setStartIconContentDescription(int i) {
        setStartIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        if (getStartIconContentDescription() != charSequence) {
            this.f37399U.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(int i) {
        setStartIconDrawable(i != 0 ? C1433a.m30126d(getContext(), i) : null);
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.f37399U.setImageDrawable(drawable);
        if (drawable != null) {
            setStartIconVisible(true);
            m4050Y();
            return;
        }
        setStartIconVisible(false);
        setStartIconOnClickListener(null);
        setStartIconOnLongClickListener(null);
        setStartIconContentDescription((CharSequence) null);
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        m4043c0(this.f37399U, onClickListener, this.f37407e0);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f37407e0 = onLongClickListener;
        m4041d0(this.f37399U, onLongClickListener);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        if (this.f37400V != colorStateList) {
            this.f37400V = colorStateList;
            this.f37401W = true;
            m4020o();
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        if (this.f37402a0 != mode) {
            this.f37402a0 = mode;
            this.f37403b0 = true;
            m4020o();
        }
    }

    public void setStartIconVisible(boolean z) {
        if (m4058Q() != z) {
            this.f37399U.setVisibility(z ? 0 : 8);
            m3997z0();
            m4015q0();
        }
    }

    public void setSuffixText(CharSequence charSequence) {
        this.f37366A = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f37368B.setText(charSequence);
        m4072D0();
    }

    public void setSuffixTextAppearance(int i) {
        C0649k.m33074q(this.f37368B, i);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.f37368B.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(C8289e c8289e) {
        EditText editText = this.f37414i;
        if (editText != null) {
            C1679w.m29273r0(editText, c8289e);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.f37398T) {
            this.f37398T = typeface;
            this.f37381H0.m4575k0(typeface);
            this.f37418k.m3932J(typeface);
            TextView textView = this.f37426o;
            if (textView == null) {
                return;
            }
            textView.setTypeface(typeface);
        }
    }

    /* renamed from: u0 */
    public void m4007u0(boolean z) {
        m4005v0(z, false);
    }
}
