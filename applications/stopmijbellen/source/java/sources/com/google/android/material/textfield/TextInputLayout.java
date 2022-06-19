package com.google.android.material.textfield;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
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
import android.support.p012v4.media.C0082b;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.C0212c0;
import androidx.appcompat.widget.C0233h0;
import androidx.appcompat.widget.C0242j;
import androidx.appcompat.widget.C0303z0;
import com.google.android.material.internal.CheckableImageButton;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.WeakHashMap;
import p007a6.C0033h;
import p029c4.C0822f;
import p029c4.C0827i;
import p066d0.C2134a;
import p090f3.C2727a;
import p091f4.AbstractC2746k;
import p091f4.C2740e;
import p091f4.C2741f;
import p091f4.C2747l;
import p091f4.C2751o;
import p097g.C2788a;
import p098g0.C2789a;
import p102g4.C2811a;
import p134j4.C3260w0;
import p141k0.AbstractC3312c;
import p141k0.C3308a;
import p153l1.C3441c;
import p153l1.C3459k;
import p163m0.C3546a;
import p163m0.C3589v;
import p163m0.C3611y;
import p174n0.C3694b;
import p196p0.C3992g;
import p216r0.AbstractC4178a;
import p262v3.C4601b;
import p262v3.C4602c;
import p262v3.C4603d;
import p262v3.C4634p;
import p262v3.C4638t;
import p304z3.C5068a;
import p304z3.C5071c;
import p304z3.C5072d;
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout.class */
public class TextInputLayout extends LinearLayout {

    /* renamed from: A */
    public CharSequence f6750A;

    /* renamed from: A0 */
    public int f6751A0;

    /* renamed from: B */
    public final TextView f6752B;

    /* renamed from: B0 */
    public ColorStateList f6753B0;

    /* renamed from: C */
    public boolean f6754C;

    /* renamed from: C0 */
    public int f6755C0;

    /* renamed from: D */
    public CharSequence f6756D;

    /* renamed from: D0 */
    public int f6757D0;

    /* renamed from: E */
    public boolean f6758E;

    /* renamed from: E0 */
    public int f6759E0;

    /* renamed from: F */
    public C0822f f6760F;

    /* renamed from: F0 */
    public int f6761F0;

    /* renamed from: G */
    public C0822f f6762G;

    /* renamed from: G0 */
    public int f6763G0;

    /* renamed from: H */
    public C0827i f6764H;

    /* renamed from: H0 */
    public boolean f6765H0;

    /* renamed from: I */
    public final int f6766I;

    /* renamed from: I0 */
    public final C4602c f6767I0;

    /* renamed from: J */
    public int f6768J;

    /* renamed from: J0 */
    public boolean f6769J0;

    /* renamed from: K */
    public int f6770K;

    /* renamed from: K0 */
    public boolean f6771K0;

    /* renamed from: L */
    public int f6772L;

    /* renamed from: L0 */
    public ValueAnimator f6773L0;

    /* renamed from: M */
    public int f6774M;

    /* renamed from: M0 */
    public boolean f6775M0;

    /* renamed from: N */
    public int f6776N;

    /* renamed from: N0 */
    public boolean f6777N0;

    /* renamed from: O */
    public int f6778O;

    /* renamed from: P */
    public int f6779P;

    /* renamed from: U */
    public Typeface f6783U;

    /* renamed from: V */
    public final CheckableImageButton f6784V;

    /* renamed from: W */
    public ColorStateList f6785W;

    /* renamed from: a */
    public final FrameLayout f6786a;

    /* renamed from: a0 */
    public boolean f6787a0;

    /* renamed from: b */
    public final LinearLayout f6788b;

    /* renamed from: b0 */
    public PorterDuff.Mode f6789b0;

    /* renamed from: c */
    public final LinearLayout f6790c;

    /* renamed from: c0 */
    public boolean f6791c0;

    /* renamed from: d */
    public final FrameLayout f6792d;

    /* renamed from: d0 */
    public Drawable f6793d0;

    /* renamed from: e */
    public EditText f6794e;

    /* renamed from: e0 */
    public int f6795e0;

    /* renamed from: f */
    public CharSequence f6796f;

    /* renamed from: f0 */
    public View.OnLongClickListener f6797f0;

    /* renamed from: i0 */
    public final SparseArray<AbstractC2746k> f6803i0;

    /* renamed from: j */
    public boolean f6804j;

    /* renamed from: j0 */
    public final CheckableImageButton f6805j0;

    /* renamed from: k */
    public int f6806k;

    /* renamed from: l */
    public boolean f6808l;

    /* renamed from: l0 */
    public ColorStateList f6809l0;

    /* renamed from: m */
    public TextView f6810m;

    /* renamed from: m0 */
    public boolean f6811m0;

    /* renamed from: n */
    public int f6812n;

    /* renamed from: n0 */
    public PorterDuff.Mode f6813n0;

    /* renamed from: o */
    public int f6814o;

    /* renamed from: o0 */
    public boolean f6815o0;

    /* renamed from: p */
    public CharSequence f6816p;

    /* renamed from: p0 */
    public Drawable f6817p0;

    /* renamed from: q */
    public boolean f6818q;

    /* renamed from: q0 */
    public int f6819q0;

    /* renamed from: r */
    public TextView f6820r;

    /* renamed from: r0 */
    public Drawable f6821r0;

    /* renamed from: s */
    public ColorStateList f6822s;

    /* renamed from: s0 */
    public View.OnLongClickListener f6823s0;

    /* renamed from: t */
    public int f6824t;

    /* renamed from: t0 */
    public View.OnLongClickListener f6825t0;

    /* renamed from: u */
    public C3441c f6826u;

    /* renamed from: u0 */
    public final CheckableImageButton f6827u0;

    /* renamed from: v */
    public C3441c f6828v;

    /* renamed from: v0 */
    public ColorStateList f6829v0;

    /* renamed from: w */
    public ColorStateList f6830w;

    /* renamed from: w0 */
    public ColorStateList f6831w0;

    /* renamed from: x */
    public ColorStateList f6832x;

    /* renamed from: x0 */
    public ColorStateList f6833x0;

    /* renamed from: y */
    public CharSequence f6834y;

    /* renamed from: y0 */
    public int f6835y0;

    /* renamed from: z */
    public final TextView f6836z;

    /* renamed from: z0 */
    public int f6837z0;

    /* renamed from: g */
    public int f6798g = -1;

    /* renamed from: h */
    public int f6800h = -1;

    /* renamed from: i */
    public final C2747l f6802i = new C2747l(this);

    /* renamed from: R */
    public final Rect f6780R = new Rect();

    /* renamed from: S */
    public final Rect f6781S = new Rect();

    /* renamed from: T */
    public final RectF f6782T = new RectF();

    /* renamed from: g0 */
    public final LinkedHashSet<AbstractC1804f> f6799g0 = new LinkedHashSet<>();

    /* renamed from: h0 */
    public int f6801h0 = 0;

    /* renamed from: k0 */
    public final LinkedHashSet<AbstractC1805g> f6807k0 = new LinkedHashSet<>();

    /* renamed from: com.google.android.material.textfield.TextInputLayout$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$a.class */
    public class C1799a implements TextWatcher {
        public C1799a() {
            TextInputLayout.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            TextInputLayout textInputLayout = TextInputLayout.this;
            textInputLayout.m4547A(!textInputLayout.f6777N0, false);
            TextInputLayout textInputLayout2 = TextInputLayout.this;
            if (textInputLayout2.f6804j) {
                textInputLayout2.m4518v(editable.length());
            }
            TextInputLayout textInputLayout3 = TextInputLayout.this;
            if (textInputLayout3.f6818q) {
                textInputLayout3.m4546B(editable.length());
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
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$b.class */
    public class RunnableC1800b implements Runnable {
        public RunnableC1800b() {
            TextInputLayout.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.f6805j0.performClick();
            TextInputLayout.this.f6805j0.jumpDrawablesToCurrentState();
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$c.class */
    public class RunnableC1801c implements Runnable {
        public RunnableC1801c() {
            TextInputLayout.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.f6794e.requestLayout();
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$d.class */
    public class C1802d implements ValueAnimator.AnimatorUpdateListener {
        public C1802d() {
            TextInputLayout.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TextInputLayout.this.f6767I0.m723n(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$e.class */
    public static class C1803e extends C3546a {

        /* renamed from: d */
        public final TextInputLayout f6842d;

        public C1803e(TextInputLayout textInputLayout) {
            this.f6842d = textInputLayout;
        }

        @Override // p163m0.C3546a
        /* renamed from: d */
        public void mo697d(View view, C3694b c3694b) {
            this.f11715a.onInitializeAccessibilityNodeInfo(view, c3694b.f12070a);
            EditText editText = this.f6842d.getEditText();
            Editable text = editText != null ? editText.getText() : null;
            CharSequence hint = this.f6842d.getHint();
            CharSequence error = this.f6842d.getError();
            CharSequence placeholderText = this.f6842d.getPlaceholderText();
            int counterMaxLength = this.f6842d.getCounterMaxLength();
            CharSequence counterOverflowDescription = this.f6842d.getCounterOverflowDescription();
            boolean z = !TextUtils.isEmpty(text);
            boolean isEmpty = TextUtils.isEmpty(hint);
            boolean z2 = this.f6842d.f6765H0;
            boolean z3 = !TextUtils.isEmpty(error);
            boolean z4 = z3 || !TextUtils.isEmpty(counterOverflowDescription);
            String charSequence = isEmpty ^ true ? hint.toString() : "";
            if (z) {
                c3694b.f12070a.setText(text);
            } else if (!TextUtils.isEmpty(charSequence)) {
                c3694b.f12070a.setText(charSequence);
                if ((!z2) && placeholderText != null) {
                    c3694b.f12070a.setText(charSequence + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                c3694b.f12070a.setText(placeholderText);
            }
            if (!TextUtils.isEmpty(charSequence)) {
                int i = Build.VERSION.SDK_INT;
                if (i >= 26) {
                    c3694b.m1870n(charSequence);
                } else {
                    String str = charSequence;
                    if (z) {
                        str = ((Object) text) + ", " + charSequence;
                    }
                    c3694b.f12070a.setText(str);
                }
                boolean z5 = !z;
                if (i >= 26) {
                    c3694b.f12070a.setShowingHintText(z5);
                } else {
                    c3694b.m1873k(4, z5);
                }
            }
            if (text == null || text.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            c3694b.f12070a.setMaxTextLength(counterMaxLength);
            if (z4) {
                c3694b.f12070a.setError(z3 ? error : counterOverflowDescription);
            }
            if (editText != null) {
                editText.setLabelFor(2131297145);
            }
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$f.class */
    public interface AbstractC1804f {
        /* renamed from: a */
        void mo4504a(TextInputLayout textInputLayout);
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$g */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$g.class */
    public interface AbstractC1805g {
        /* renamed from: a */
        void mo4503a(TextInputLayout textInputLayout, int i);
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$h */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$h.class */
    public static class C1806h extends AbstractC4178a {
        public static final Parcelable.Creator<C1806h> CREATOR = new C1807a();

        /* renamed from: c */
        public CharSequence f6843c;

        /* renamed from: d */
        public boolean f6844d;

        /* renamed from: e */
        public CharSequence f6845e;

        /* renamed from: f */
        public CharSequence f6846f;

        /* renamed from: g */
        public CharSequence f6847g;

        /* renamed from: com.google.android.material.textfield.TextInputLayout$h$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$h$a.class */
        public static final class C1807a implements Parcelable.ClassLoaderCreator<C1806h> {
            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new C1806h(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public C1806h createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C1806h(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new C1806h[i];
            }
        }

        public C1806h(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f6843c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f6844d = parcel.readInt() != 1 ? false : true;
            this.f6845e = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f6846f = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f6847g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        }

        public C1806h(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            StringBuilder m8752j = C0082b.m8752j("TextInputLayout.SavedState{");
            m8752j.append(Integer.toHexString(System.identityHashCode(this)));
            m8752j.append(" error=");
            m8752j.append((Object) this.f6843c);
            m8752j.append(" hint=");
            m8752j.append((Object) this.f6845e);
            m8752j.append(" helperText=");
            m8752j.append((Object) this.f6846f);
            m8752j.append(" placeholderText=");
            m8752j.append((Object) this.f6847g);
            m8752j.append("}");
            return m8752j.toString();
        }

        @Override // p216r0.AbstractC4178a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f13167a, i);
            TextUtils.writeToParcel(this.f6843c, parcel, i);
            parcel.writeInt(this.f6844d ? 1 : 0);
            TextUtils.writeToParcel(this.f6845e, parcel, i);
            TextUtils.writeToParcel(this.f6846f, parcel, i);
            TextUtils.writeToParcel(this.f6847g, parcel, i);
        }
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        super(C2811a.m2970a(context, attributeSet, 2130969737, 2131886893), attributeSet, 2130969737);
        SparseArray<AbstractC2746k> sparseArray = new SparseArray<>();
        this.f6803i0 = sparseArray;
        C4602c c4602c = new C4602c(this);
        this.f6767I0 = c4602c;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f6786a = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        addView(frameLayout);
        LinearLayout linearLayout = new LinearLayout(context2);
        this.f6788b = linearLayout;
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        frameLayout.addView(linearLayout);
        LinearLayout linearLayout2 = new LinearLayout(context2);
        this.f6790c = linearLayout2;
        linearLayout2.setOrientation(0);
        linearLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        frameLayout.addView(linearLayout2);
        FrameLayout frameLayout2 = new FrameLayout(context2);
        this.f6792d = frameLayout2;
        frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
        TimeInterpolator timeInterpolator = C2727a.f9372a;
        c4602c.f14202I = timeInterpolator;
        c4602c.m727j();
        c4602c.f14201H = timeInterpolator;
        c4602c.m727j();
        c4602c.m724m(8388659);
        int[] iArr = C3260w0.f11015I;
        C4634p.m690a(context2, attributeSet, 2130969737, 2131886893);
        C4634p.m689b(context2, attributeSet, iArr, 2130969737, 2131886893, 20, 18, 33, 38, 42);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, 2130969737, 2131886893);
        C0303z0 c0303z0 = new C0303z0(context2, obtainStyledAttributes);
        this.f6754C = c0303z0.m8399a(41, true);
        setHint(c0303z0.m8386n(4));
        this.f6771K0 = c0303z0.m8399a(40, true);
        this.f6769J0 = c0303z0.m8399a(35, true);
        if (c0303z0.m8385o(3)) {
            setMinWidth(c0303z0.m8394f(3, -1));
        }
        if (c0303z0.m8385o(2)) {
            setMaxWidth(c0303z0.m8394f(2, -1));
        }
        this.f6764H = C0827i.m7304b(context2, attributeSet, 2130969737, 2131886893).m7299a();
        this.f6766I = context2.getResources().getDimensionPixelOffset(2131165799);
        this.f6770K = c0303z0.m8395e(7, 0);
        this.f6774M = c0303z0.m8394f(14, context2.getResources().getDimensionPixelSize(2131165800));
        this.f6776N = c0303z0.m8394f(15, context2.getResources().getDimensionPixelSize(2131165801));
        this.f6772L = this.f6774M;
        float m8396d = c0303z0.m8396d(11, -1.0f);
        float m8396d2 = c0303z0.m8396d(10, -1.0f);
        float m8396d3 = c0303z0.m8396d(8, -1.0f);
        float m8396d4 = c0303z0.m8396d(9, -1.0f);
        C0827i c0827i = this.f6764H;
        Objects.requireNonNull(c0827i);
        C0827i.C0829b c0829b = new C0827i.C0829b(c0827i);
        if (m8396d >= 0.0f) {
            c0829b.m7295e(m8396d);
        }
        if (m8396d2 >= 0.0f) {
            c0829b.m7294f(m8396d2);
        }
        if (m8396d3 >= 0.0f) {
            c0829b.m7296d(m8396d3);
        }
        if (m8396d4 >= 0.0f) {
            c0829b.m7297c(m8396d4);
        }
        this.f6764H = c0829b.m7299a();
        ColorStateList m71b = C5071c.m71b(context2, c0303z0, 5);
        if (m71b != null) {
            int defaultColor = m71b.getDefaultColor();
            this.f6755C0 = defaultColor;
            this.f6779P = defaultColor;
            if (m71b.isStateful()) {
                this.f6757D0 = m71b.getColorForState(new int[]{-16842910}, -1);
                this.f6759E0 = m71b.getColorForState(new int[]{16842908, 16842910}, -1);
                this.f6761F0 = m71b.getColorForState(new int[]{16843623, 16842910}, -1);
            } else {
                this.f6759E0 = this.f6755C0;
                ColorStateList m3016a = C2788a.m3016a(context2, 2131100253);
                this.f6757D0 = m3016a.getColorForState(new int[]{-16842910}, -1);
                this.f6761F0 = m3016a.getColorForState(new int[]{16843623}, -1);
            }
        } else {
            this.f6779P = 0;
            this.f6755C0 = 0;
            this.f6757D0 = 0;
            this.f6759E0 = 0;
            this.f6761F0 = 0;
        }
        if (c0303z0.m8385o(1)) {
            ColorStateList m8397c = c0303z0.m8397c(1);
            this.f6833x0 = m8397c;
            this.f6831w0 = m8397c;
        }
        ColorStateList m71b2 = C5071c.m71b(context2, c0303z0, 12);
        this.f6751A0 = c0303z0.m8398b(12, 0);
        this.f6835y0 = C2134a.m3845b(context2, 2131100276);
        this.f6763G0 = C2134a.m3845b(context2, 2131100277);
        this.f6837z0 = C2134a.m3845b(context2, 2131100280);
        if (m71b2 != null) {
            setBoxStrokeColorStateList(m71b2);
        }
        if (c0303z0.m8385o(13)) {
            setBoxStrokeErrorColor(C5071c.m71b(context2, c0303z0, 13));
        }
        if (c0303z0.m8388l(42, -1) != -1) {
            setHintTextAppearance(c0303z0.m8388l(42, 0));
        }
        int m8388l = c0303z0.m8388l(33, 0);
        CharSequence m8386n = c0303z0.m8386n(28);
        boolean m8399a = c0303z0.m8399a(29, false);
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(2131492936, (ViewGroup) linearLayout2, false);
        this.f6827u0 = checkableImageButton;
        checkableImageButton.setId(2131297141);
        checkableImageButton.setVisibility(8);
        if (C5071c.m69d(context2)) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginStart(0);
        }
        if (c0303z0.m8385o(30)) {
            setErrorIconDrawable(c0303z0.m8393g(30));
        }
        if (c0303z0.m8385o(31)) {
            setErrorIconTintList(C5071c.m71b(context2, c0303z0, 31));
        }
        if (c0303z0.m8385o(32)) {
            setErrorIconTintMode(C4638t.m684b(c0303z0.m8390j(32, -1), null));
        }
        checkableImageButton.setContentDescription(getResources().getText(2131820753));
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3593d.m2075s(checkableImageButton, 2);
        checkableImageButton.setClickable(false);
        checkableImageButton.setPressable(false);
        checkableImageButton.setFocusable(false);
        int m8388l2 = c0303z0.m8388l(38, 0);
        boolean m8399a2 = c0303z0.m8399a(37, false);
        CharSequence m8386n2 = c0303z0.m8386n(36);
        int m8388l3 = c0303z0.m8388l(50, 0);
        CharSequence m8386n3 = c0303z0.m8386n(49);
        int m8388l4 = c0303z0.m8388l(53, 0);
        CharSequence m8386n4 = c0303z0.m8386n(52);
        int m8388l5 = c0303z0.m8388l(63, 0);
        CharSequence m8386n5 = c0303z0.m8386n(62);
        boolean m8399a3 = c0303z0.m8399a(16, false);
        setCounterMaxLength(c0303z0.m8390j(17, -1));
        this.f6814o = c0303z0.m8388l(20, 0);
        this.f6812n = c0303z0.m8388l(18, 0);
        CheckableImageButton checkableImageButton2 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(2131492937, (ViewGroup) linearLayout, false);
        this.f6784V = checkableImageButton2;
        checkableImageButton2.setVisibility(8);
        if (C5071c.m69d(context2)) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton2.getLayoutParams()).setMarginEnd(0);
        }
        setStartIconOnClickListener(null);
        setStartIconOnLongClickListener(null);
        if (c0303z0.m8385o(59)) {
            setStartIconDrawable(c0303z0.m8393g(59));
            if (c0303z0.m8385o(58)) {
                setStartIconContentDescription(c0303z0.m8386n(58));
            }
            setStartIconCheckable(c0303z0.m8399a(57, true));
        }
        if (c0303z0.m8385o(60)) {
            setStartIconTintList(C5071c.m71b(context2, c0303z0, 60));
        }
        if (c0303z0.m8385o(61)) {
            setStartIconTintMode(C4638t.m684b(c0303z0.m8390j(61, -1), null));
        }
        setBoxBackgroundMode(c0303z0.m8390j(6, 0));
        CheckableImageButton checkableImageButton3 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(2131492936, (ViewGroup) frameLayout2, false);
        this.f6805j0 = checkableImageButton3;
        frameLayout2.addView(checkableImageButton3);
        checkableImageButton3.setVisibility(8);
        if (C5071c.m69d(context2)) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton3.getLayoutParams()).setMarginStart(0);
        }
        int m8388l6 = c0303z0.m8388l(24, 0);
        sparseArray.append(-1, new C2740e(this, m8388l6));
        sparseArray.append(0, new C2751o(this));
        sparseArray.append(1, new C1824c(this, m8388l6 == 0 ? c0303z0.m8388l(45, 0) : m8388l6));
        sparseArray.append(2, new C1808a(this, m8388l6));
        sparseArray.append(3, new C1815b(this, m8388l6));
        if (c0303z0.m8385o(25)) {
            setEndIconMode(c0303z0.m8390j(25, 0));
            if (c0303z0.m8385o(23)) {
                setEndIconContentDescription(c0303z0.m8386n(23));
            }
            setEndIconCheckable(c0303z0.m8399a(22, true));
        } else if (c0303z0.m8385o(46)) {
            setEndIconMode(c0303z0.m8399a(46, false) ? 1 : 0);
            setEndIconContentDescription(c0303z0.m8386n(44));
            if (c0303z0.m8385o(47)) {
                setEndIconTintList(C5071c.m71b(context2, c0303z0, 47));
            }
            if (c0303z0.m8385o(48)) {
                setEndIconTintMode(C4638t.m684b(c0303z0.m8390j(48, -1), null));
            }
        }
        if (!c0303z0.m8385o(46)) {
            if (c0303z0.m8385o(26)) {
                setEndIconTintList(C5071c.m71b(context2, c0303z0, 26));
            }
            if (c0303z0.m8385o(27)) {
                setEndIconTintMode(C4638t.m684b(c0303z0.m8390j(27, -1), null));
            }
        }
        C0212c0 c0212c0 = new C0212c0(context2, null);
        this.f6836z = c0212c0;
        c0212c0.setId(2131297147);
        c0212c0.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        C3589v.C3596g.m2055f(c0212c0, 1);
        linearLayout.addView(checkableImageButton2);
        linearLayout.addView(c0212c0);
        C0212c0 c0212c02 = new C0212c0(context2, null);
        this.f6752B = c0212c02;
        c0212c02.setId(2131297148);
        c0212c02.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 80));
        C3589v.C3596g.m2055f(c0212c02, 1);
        linearLayout2.addView(c0212c02);
        linearLayout2.addView(checkableImageButton);
        linearLayout2.addView(frameLayout2);
        setHelperTextEnabled(m8399a2);
        setHelperText(m8386n2);
        setHelperTextTextAppearance(m8388l2);
        setErrorEnabled(m8399a);
        setErrorTextAppearance(m8388l);
        setErrorContentDescription(m8386n);
        setCounterTextAppearance(this.f6814o);
        setCounterOverflowTextAppearance(this.f6812n);
        setPlaceholderText(m8386n3);
        setPlaceholderTextAppearance(m8388l3);
        setPrefixText(m8386n4);
        setPrefixTextAppearance(m8388l4);
        setSuffixText(m8386n5);
        setSuffixTextAppearance(m8388l5);
        if (c0303z0.m8385o(34)) {
            setErrorTextColor(c0303z0.m8397c(34));
        }
        if (c0303z0.m8385o(39)) {
            setHelperTextColor(c0303z0.m8397c(39));
        }
        if (c0303z0.m8385o(43)) {
            setHintTextColor(c0303z0.m8397c(43));
        }
        if (c0303z0.m8385o(21)) {
            setCounterTextColor(c0303z0.m8397c(21));
        }
        if (c0303z0.m8385o(19)) {
            setCounterOverflowTextColor(c0303z0.m8397c(19));
        }
        if (c0303z0.m8385o(51)) {
            setPlaceholderTextColor(c0303z0.m8397c(51));
        }
        if (c0303z0.m8385o(54)) {
            setPrefixTextColor(c0303z0.m8397c(54));
        }
        if (c0303z0.m8385o(64)) {
            setSuffixTextColor(c0303z0.m8397c(64));
        }
        setCounterEnabled(m8399a3);
        setEnabled(c0303z0.m8399a(0, true));
        obtainStyledAttributes.recycle();
        C3589v.C3593d.m2075s(this, 2);
        int i = Build.VERSION.SDK_INT;
        if (i < 26 || i < 26) {
            return;
        }
        C3589v.C3601k.m2009l(this, 1);
    }

    private AbstractC2746k getEndIconDelegate() {
        AbstractC2746k abstractC2746k = this.f6803i0.get(this.f6801h0);
        if (abstractC2746k == null) {
            abstractC2746k = this.f6803i0.get(0);
        }
        return abstractC2746k;
    }

    private CheckableImageButton getEndIconToUpdateDummyDrawable() {
        if (this.f6827u0.getVisibility() == 0) {
            return this.f6827u0;
        }
        if (m4529k() && m4527m()) {
            return this.f6805j0;
        }
        return null;
    }

    /* renamed from: p */
    public static void m4524p(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                m4524p((ViewGroup) childAt, z);
            }
        }
    }

    /* renamed from: s */
    public static void m4521s(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        boolean m2094a = C3589v.C3592c.m2094a(checkableImageButton);
        boolean z = false;
        int i = 1;
        boolean z2 = onLongClickListener != null;
        if (m2094a || z2) {
            z = true;
        }
        checkableImageButton.setFocusable(z);
        checkableImageButton.setClickable(m2094a);
        checkableImageButton.setPressable(m2094a);
        checkableImageButton.setLongClickable(z2);
        if (!z) {
            i = 2;
        }
        C3589v.C3593d.m2075s(checkableImageButton, i);
    }

    private void setEditText(EditText editText) {
        if (this.f6794e == null) {
            if (this.f6801h0 != 3 && !(editText instanceof TextInputEditText)) {
                Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
            }
            this.f6794e = editText;
            setMinWidth(this.f6798g);
            setMaxWidth(this.f6800h);
            m4526n();
            setTextInputAccessibilityDelegate(new C1803e(this));
            this.f6767I0.m721p(this.f6794e.getTypeface());
            C4602c c4602c = this.f6767I0;
            float textSize = this.f6794e.getTextSize();
            if (c4602c.f14223j != textSize) {
                c4602c.f14223j = textSize;
                c4602c.m727j();
            }
            int gravity = this.f6794e.getGravity();
            this.f6767I0.m724m((gravity & (-113)) | 48);
            C4602c c4602c2 = this.f6767I0;
            if (c4602c2.f14221h != gravity) {
                c4602c2.f14221h = gravity;
                c4602c2.m727j();
            }
            this.f6794e.addTextChangedListener(new C1799a());
            if (this.f6831w0 == null) {
                this.f6831w0 = this.f6794e.getHintTextColors();
            }
            if (this.f6754C) {
                if (TextUtils.isEmpty(this.f6756D)) {
                    CharSequence hint = this.f6794e.getHint();
                    this.f6796f = hint;
                    setHint(hint);
                    this.f6794e.setHint((CharSequence) null);
                }
                this.f6758E = true;
            }
            if (this.f6810m != null) {
                m4518v(this.f6794e.getText().length());
            }
            m4515y();
            this.f6802i.m3181b();
            this.f6788b.bringToFront();
            this.f6790c.bringToFront();
            this.f6792d.bringToFront();
            this.f6827u0.bringToFront();
            Iterator<AbstractC1804f> it2 = this.f6799g0.iterator();
            while (it2.hasNext()) {
                it2.next().mo4504a(this);
            }
            m4545C();
            m4542F();
            if (!isEnabled()) {
                editText.setEnabled(false);
            }
            m4547A(false, true);
            return;
        }
        throw new IllegalArgumentException("We already have an EditText, can only have one");
    }

    private void setErrorIconVisible(boolean z) {
        this.f6827u0.setVisibility(z ? 0 : 8);
        FrameLayout frameLayout = this.f6792d;
        int i = 0;
        if (z) {
            i = 8;
        }
        frameLayout.setVisibility(i);
        m4542F();
        if (!m4529k()) {
            m4516x();
        }
    }

    private void setHintInternal(CharSequence charSequence) {
        if (!TextUtils.equals(charSequence, this.f6756D)) {
            this.f6756D = charSequence;
            C4602c c4602c = this.f6767I0;
            if (charSequence == null || !TextUtils.equals(c4602c.f14237x, charSequence)) {
                c4602c.f14237x = charSequence;
                c4602c.f14238y = null;
                Bitmap bitmap = c4602c.f14194A;
                if (bitmap != null) {
                    bitmap.recycle();
                    c4602c.f14194A = null;
                }
                c4602c.m727j();
            }
            if (this.f6765H0) {
                return;
            }
            m4525o();
        }
    }

    private void setPlaceholderTextEnabled(boolean z) {
        if (this.f6818q == z) {
            return;
        }
        if (z) {
            C0212c0 c0212c0 = new C0212c0(getContext(), null);
            this.f6820r = c0212c0;
            c0212c0.setId(2131297146);
            C3441c c3441c = new C3441c();
            c3441c.f11523c = 87L;
            TimeInterpolator timeInterpolator = C2727a.f9372a;
            c3441c.f11524d = timeInterpolator;
            this.f6826u = c3441c;
            c3441c.f11522b = 67L;
            C3441c c3441c2 = new C3441c();
            c3441c2.f11523c = 87L;
            c3441c2.f11524d = timeInterpolator;
            this.f6828v = c3441c2;
            TextView textView = this.f6820r;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3596g.m2055f(textView, 1);
            setPlaceholderTextAppearance(this.f6824t);
            setPlaceholderTextColor(this.f6822s);
            TextView textView2 = this.f6820r;
            if (textView2 != null) {
                this.f6786a.addView(textView2);
                this.f6820r.setVisibility(0);
            }
        } else {
            TextView textView3 = this.f6820r;
            if (textView3 != null) {
                textView3.setVisibility(8);
            }
            this.f6820r = null;
        }
        this.f6818q = z;
    }

    /* renamed from: A */
    public final void m4547A(boolean z, boolean z2) {
        ColorStateList colorStateList;
        TextView textView;
        boolean isEnabled = isEnabled();
        EditText editText = this.f6794e;
        boolean z3 = editText != null && !TextUtils.isEmpty(editText.getText());
        EditText editText2 = this.f6794e;
        boolean z4 = editText2 != null && editText2.hasFocus();
        boolean m3178e = this.f6802i.m3178e();
        ColorStateList colorStateList2 = this.f6831w0;
        if (colorStateList2 != null) {
            C4602c c4602c = this.f6767I0;
            if (c4602c.f14226m != colorStateList2) {
                c4602c.f14226m = colorStateList2;
                c4602c.m727j();
            }
            C4602c c4602c2 = this.f6767I0;
            ColorStateList colorStateList3 = this.f6831w0;
            if (c4602c2.f14225l != colorStateList3) {
                c4602c2.f14225l = colorStateList3;
                c4602c2.m727j();
            }
        }
        if (!isEnabled) {
            ColorStateList colorStateList4 = this.f6831w0;
            int colorForState = colorStateList4 != null ? colorStateList4.getColorForState(new int[]{-16842910}, this.f6763G0) : this.f6763G0;
            this.f6767I0.m725l(ColorStateList.valueOf(colorForState));
            C4602c c4602c3 = this.f6767I0;
            ColorStateList valueOf = ColorStateList.valueOf(colorForState);
            if (c4602c3.f14225l != valueOf) {
                c4602c3.f14225l = valueOf;
                c4602c3.m727j();
            }
        } else if (m3178e) {
            C4602c c4602c4 = this.f6767I0;
            TextView textView2 = this.f6802i.f9418l;
            c4602c4.m725l(textView2 != null ? textView2.getTextColors() : null);
        } else if (this.f6808l && (textView = this.f6810m) != null) {
            this.f6767I0.m725l(textView.getTextColors());
        } else if (z4 && (colorStateList = this.f6833x0) != null) {
            C4602c c4602c5 = this.f6767I0;
            if (c4602c5.f14226m != colorStateList) {
                c4602c5.f14226m = colorStateList;
                c4602c5.m727j();
            }
        }
        if (z3 || !this.f6769J0 || (isEnabled() && z4)) {
            if (!z2 && !this.f6765H0) {
                return;
            }
            ValueAnimator valueAnimator = this.f6773L0;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f6773L0.cancel();
            }
            if (!z || !this.f6771K0) {
                this.f6767I0.m723n(1.0f);
            } else {
                m4538b(1.0f);
            }
            this.f6765H0 = false;
            if (m4532h()) {
                m4525o();
            }
            EditText editText3 = this.f6794e;
            m4546B(editText3 == null ? 0 : editText3.getText().length());
            m4544D();
            m4541G();
        } else if (!z2 && this.f6765H0) {
        } else {
            ValueAnimator valueAnimator2 = this.f6773L0;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.f6773L0.cancel();
            }
            if (!z || !this.f6771K0) {
                this.f6767I0.m723n(0.0f);
            } else {
                m4538b(0.0f);
            }
            if (m4532h() && (!((C2741f) this.f6760F).f9395A.isEmpty()) && m4532h()) {
                ((C2741f) this.f6760F).m3185y(0.0f, 0.0f, 0.0f, 0.0f);
            }
            this.f6765H0 = true;
            m4528l();
            m4544D();
            m4541G();
        }
    }

    /* renamed from: B */
    public final void m4546B(int i) {
        if (i != 0 || this.f6765H0) {
            m4528l();
            return;
        }
        TextView textView = this.f6820r;
        if (textView == null || !this.f6818q) {
            return;
        }
        textView.setText(this.f6816p);
        C3459k.m2269a(this.f6786a, this.f6826u);
        this.f6820r.setVisibility(0);
        this.f6820r.bringToFront();
    }

    /* renamed from: C */
    public final void m4545C() {
        int i;
        if (this.f6794e == null) {
            return;
        }
        if (this.f6784V.getVisibility() == 0) {
            i = 0;
        } else {
            EditText editText = this.f6794e;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            i = C3589v.C3594e.m2069f(editText);
        }
        TextView textView = this.f6836z;
        int compoundPaddingTop = this.f6794e.getCompoundPaddingTop();
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(2131165567);
        int compoundPaddingBottom = this.f6794e.getCompoundPaddingBottom();
        WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
        C3589v.C3594e.m2064k(textView, i, compoundPaddingTop, dimensionPixelSize, compoundPaddingBottom);
    }

    /* renamed from: D */
    public final void m4544D() {
        this.f6836z.setVisibility((this.f6834y == null || this.f6765H0) ? 8 : 0);
        m4516x();
    }

    /* renamed from: E */
    public final void m4543E(boolean z, boolean z2) {
        int defaultColor = this.f6753B0.getDefaultColor();
        int colorForState = this.f6753B0.getColorForState(new int[]{16843623, 16842910}, defaultColor);
        int colorForState2 = this.f6753B0.getColorForState(new int[]{16843518, 16842910}, defaultColor);
        if (z) {
            this.f6778O = colorForState2;
        } else if (z2) {
            this.f6778O = colorForState;
        } else {
            this.f6778O = defaultColor;
        }
    }

    /* renamed from: F */
    public final void m4542F() {
        if (this.f6794e == null) {
            return;
        }
        int i = 0;
        if (!m4527m()) {
            if (this.f6827u0.getVisibility() == 0) {
                i = 0;
            } else {
                EditText editText = this.f6794e;
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                i = C3589v.C3594e.m2070e(editText);
            }
        }
        TextView textView = this.f6752B;
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(2131165567);
        int paddingTop = this.f6794e.getPaddingTop();
        int paddingBottom = this.f6794e.getPaddingBottom();
        WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
        C3589v.C3594e.m2064k(textView, dimensionPixelSize, paddingTop, i, paddingBottom);
    }

    /* renamed from: G */
    public final void m4541G() {
        int visibility = this.f6752B.getVisibility();
        int i = 0;
        boolean z = this.f6750A != null && !this.f6765H0;
        TextView textView = this.f6752B;
        if (!z) {
            i = 8;
        }
        textView.setVisibility(i);
        if (visibility != this.f6752B.getVisibility()) {
            getEndIconDelegate().mo3183c(z);
        }
        m4516x();
    }

    /* renamed from: H */
    public void m4540H() {
        TextView textView;
        EditText editText;
        EditText editText2;
        if (this.f6760F == null || this.f6768J == 0) {
            return;
        }
        boolean z = isFocused() || ((editText2 = this.f6794e) != null && editText2.hasFocus());
        boolean z2 = isHovered() || ((editText = this.f6794e) != null && editText.isHovered());
        if (!isEnabled()) {
            this.f6778O = this.f6763G0;
        } else if (this.f6802i.m3178e()) {
            if (this.f6753B0 != null) {
                m4543E(z, z2);
            } else {
                this.f6778O = this.f6802i.m3176g();
            }
        } else if (!this.f6808l || (textView = this.f6810m) == null) {
            if (z) {
                this.f6778O = this.f6751A0;
            } else if (z2) {
                this.f6778O = this.f6837z0;
            } else {
                this.f6778O = this.f6835y0;
            }
        } else if (this.f6753B0 != null) {
            m4543E(z, z2);
        } else {
            this.f6778O = textView.getCurrentTextColor();
        }
        boolean z3 = false;
        if (getErrorIconDrawable() != null) {
            C2747l c2747l = this.f6802i;
            z3 = false;
            if (c2747l.f9417k) {
                z3 = false;
                if (c2747l.m3178e()) {
                    z3 = true;
                }
            }
        }
        setErrorIconVisible(z3);
        m4522r(this.f6827u0, this.f6829v0);
        m4522r(this.f6784V, this.f6785W);
        m4523q();
        AbstractC2746k endIconDelegate = getEndIconDelegate();
        Objects.requireNonNull(endIconDelegate);
        if (endIconDelegate instanceof C1815b) {
            if (!this.f6802i.m3178e() || getEndIconDrawable() == null) {
                m4536d();
            } else {
                Drawable mutate = C2789a.m3007h(getEndIconDrawable()).mutate();
                mutate.setTint(this.f6802i.m3176g());
                this.f6805j0.setImageDrawable(mutate);
            }
        }
        int i = this.f6772L;
        if (!z || !isEnabled()) {
            this.f6772L = this.f6774M;
        } else {
            this.f6772L = this.f6776N;
        }
        if (this.f6772L != i && this.f6768J == 2 && m4532h() && !this.f6765H0) {
            if (m4532h()) {
                ((C2741f) this.f6760F).m3185y(0.0f, 0.0f, 0.0f, 0.0f);
            }
            m4525o();
        }
        if (this.f6768J == 1) {
            if (!isEnabled()) {
                this.f6779P = this.f6757D0;
            } else if (z2 && !z) {
                this.f6779P = this.f6761F0;
            } else if (z) {
                this.f6779P = this.f6759E0;
            } else {
                this.f6779P = this.f6755C0;
            }
        }
        m4537c();
    }

    /* renamed from: a */
    public void m4539a(AbstractC1804f abstractC1804f) {
        this.f6799g0.add(abstractC1804f);
        if (this.f6794e != null) {
            abstractC1804f.mo4504a(this);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        this.f6786a.addView(view, layoutParams2);
        this.f6786a.setLayoutParams(layoutParams);
        m4514z();
        setEditText((EditText) view);
    }

    /* renamed from: b */
    public void m4538b(float f) {
        if (this.f6767I0.f14216c == f) {
            return;
        }
        if (this.f6773L0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f6773L0 = valueAnimator;
            valueAnimator.setInterpolator(C2727a.f9373b);
            this.f6773L0.setDuration(167L);
            this.f6773L0.addUpdateListener(new C1802d());
        }
        this.f6773L0.setFloatValues(this.f6767I0.f14216c, f);
        this.f6773L0.start();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a3  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4537c() {
        /*
            Method dump skipped, instructions count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.m4537c():void");
    }

    /* renamed from: d */
    public final void m4536d() {
        m4535e(this.f6805j0, this.f6811m0, this.f6809l0, this.f6815o0, this.f6813n0);
    }

    @Override // android.view.ViewGroup, android.view.View
    @TargetApi(26)
    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        EditText editText = this.f6794e;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        if (this.f6796f != null) {
            boolean z = this.f6758E;
            this.f6758E = false;
            CharSequence hint = editText.getHint();
            this.f6794e.setHint(this.f6796f);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
                return;
            } finally {
                this.f6794e.setHint(hint);
                this.f6758E = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i);
        onProvideAutofillVirtualStructure(viewStructure, i);
        viewStructure.setChildCount(this.f6786a.getChildCount());
        for (int i2 = 0; i2 < this.f6786a.getChildCount(); i2++) {
            View childAt = this.f6786a.getChildAt(i2);
            ViewStructure newChild = viewStructure.newChild(i2);
            childAt.dispatchProvideAutofillStructure(newChild, i);
            if (childAt == this.f6794e) {
                newChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.f6777N0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f6777N0 = false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f6754C) {
            C4602c c4602c = this.f6767I0;
            Objects.requireNonNull(c4602c);
            int save = canvas.save();
            if (c4602c.f14238y != null && c4602c.f14215b) {
                c4602c.f14208O.getLineLeft(0);
                c4602c.f14199F.setTextSize(c4602c.f14196C);
                float f = c4602c.f14231r;
                float f2 = c4602c.f14232s;
                float f3 = c4602c.f14195B;
                if (f3 != 1.0f) {
                    canvas.scale(f3, f3, f, f2);
                }
                canvas.translate(f, f2);
                c4602c.f14208O.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
        C0822f c0822f = this.f6762G;
        if (c0822f != null) {
            Rect bounds = c0822f.getBounds();
            bounds.top = bounds.bottom - this.f6772L;
            this.f6762G.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        boolean z;
        boolean z2;
        ColorStateList colorStateList;
        if (this.f6775M0) {
            return;
        }
        boolean z3 = true;
        this.f6775M0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        C4602c c4602c = this.f6767I0;
        if (c4602c != null) {
            c4602c.f14197D = drawableState;
            ColorStateList colorStateList2 = c4602c.f14226m;
            if ((colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = c4602c.f14225l) != null && colorStateList.isStateful())) {
                c4602c.m727j();
                z2 = true;
            } else {
                z2 = false;
            }
            z = z2 | false;
        } else {
            z = false;
        }
        if (this.f6794e != null) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            if (!C3589v.C3596g.m2058c(this) || !isEnabled()) {
                z3 = false;
            }
            m4547A(z3, false);
        }
        m4515y();
        m4540H();
        if (z) {
            invalidate();
        }
        this.f6775M0 = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0019, code lost:
        if (r7 != false) goto L8;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4535e(com.google.android.material.internal.CheckableImageButton r4, boolean r5, android.content.res.ColorStateList r6, boolean r7, android.graphics.PorterDuff.Mode r8) {
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
            android.graphics.drawable.Drawable r0 = p098g0.C2789a.m3007h(r0)
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r9 = r0
            r0 = r5
            if (r0 == 0) goto L30
            r0 = r9
            r1 = r6
            r0.setTintList(r1)
        L30:
            r0 = r9
            r10 = r0
            r0 = r7
            if (r0 == 0) goto L44
            r0 = r9
            r1 = r8
            r0.setTintMode(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.m4535e(com.google.android.material.internal.CheckableImageButton, boolean, android.content.res.ColorStateList, boolean, android.graphics.PorterDuff$Mode):void");
    }

    /* renamed from: f */
    public final void m4534f() {
        m4535e(this.f6784V, this.f6787a0, this.f6785W, this.f6791c0, this.f6789b0);
    }

    /* renamed from: g */
    public final int m4533g() {
        float m732e;
        if (!this.f6754C) {
            return 0;
        }
        int i = this.f6768J;
        if (i == 0 || i == 1) {
            m732e = this.f6767I0.m732e();
        } else if (i != 2) {
            return 0;
        } else {
            m732e = this.f6767I0.m732e() / 2.0f;
        }
        return (int) m732e;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f6794e;
        if (editText != null) {
            int baseline = editText.getBaseline();
            return m4533g() + getPaddingTop() + baseline;
        }
        return super.getBaseline();
    }

    public C0822f getBoxBackground() {
        int i = this.f6768J;
        if (i == 1 || i == 2) {
            return this.f6760F;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.f6779P;
    }

    public int getBoxBackgroundMode() {
        return this.f6768J;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.f6770K;
    }

    public float getBoxCornerRadiusBottomEnd() {
        C0822f c0822f = this.f6760F;
        return c0822f.f3010a.f3034a.f3065h.mo7306a(c0822f.m7322i());
    }

    public float getBoxCornerRadiusBottomStart() {
        C0822f c0822f = this.f6760F;
        return c0822f.f3010a.f3034a.f3064g.mo7306a(c0822f.m7322i());
    }

    public float getBoxCornerRadiusTopEnd() {
        C0822f c0822f = this.f6760F;
        return c0822f.f3010a.f3034a.f3063f.mo7306a(c0822f.m7322i());
    }

    public float getBoxCornerRadiusTopStart() {
        return this.f6760F.m7318m();
    }

    public int getBoxStrokeColor() {
        return this.f6751A0;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.f6753B0;
    }

    public int getBoxStrokeWidth() {
        return this.f6774M;
    }

    public int getBoxStrokeWidthFocused() {
        return this.f6776N;
    }

    public int getCounterMaxLength() {
        return this.f6806k;
    }

    public CharSequence getCounterOverflowDescription() {
        TextView textView;
        if (!this.f6804j || !this.f6808l || (textView = this.f6810m) == null) {
            return null;
        }
        return textView.getContentDescription();
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.f6830w;
    }

    public ColorStateList getCounterTextColor() {
        return this.f6830w;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.f6831w0;
    }

    public EditText getEditText() {
        return this.f6794e;
    }

    public CharSequence getEndIconContentDescription() {
        return this.f6805j0.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.f6805j0.getDrawable();
    }

    public int getEndIconMode() {
        return this.f6801h0;
    }

    public CheckableImageButton getEndIconView() {
        return this.f6805j0;
    }

    public CharSequence getError() {
        C2747l c2747l = this.f6802i;
        return c2747l.f9417k ? c2747l.f9416j : null;
    }

    public CharSequence getErrorContentDescription() {
        return this.f6802i.f9419m;
    }

    public int getErrorCurrentTextColors() {
        return this.f6802i.m3176g();
    }

    public Drawable getErrorIconDrawable() {
        return this.f6827u0.getDrawable();
    }

    public final int getErrorTextCurrentColor() {
        return this.f6802i.m3176g();
    }

    public CharSequence getHelperText() {
        C2747l c2747l = this.f6802i;
        return c2747l.f9423q ? c2747l.f9422p : null;
    }

    public int getHelperTextCurrentTextColor() {
        TextView textView = this.f6802i.f9424r;
        return textView != null ? textView.getCurrentTextColor() : -1;
    }

    public CharSequence getHint() {
        return this.f6754C ? this.f6756D : null;
    }

    public final float getHintCollapsedTextHeight() {
        return this.f6767I0.m732e();
    }

    public final int getHintCurrentCollapsedTextColor() {
        return this.f6767I0.m731f();
    }

    public ColorStateList getHintTextColor() {
        return this.f6833x0;
    }

    public int getMaxWidth() {
        return this.f6800h;
    }

    public int getMinWidth() {
        return this.f6798g;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f6805j0.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f6805j0.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        return this.f6818q ? this.f6816p : null;
    }

    public int getPlaceholderTextAppearance() {
        return this.f6824t;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.f6822s;
    }

    public CharSequence getPrefixText() {
        return this.f6834y;
    }

    public ColorStateList getPrefixTextColor() {
        return this.f6836z.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.f6836z;
    }

    public CharSequence getStartIconContentDescription() {
        return this.f6784V.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.f6784V.getDrawable();
    }

    public CharSequence getSuffixText() {
        return this.f6750A;
    }

    public ColorStateList getSuffixTextColor() {
        return this.f6752B.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.f6752B;
    }

    public Typeface getTypeface() {
        return this.f6783U;
    }

    /* renamed from: h */
    public final boolean m4532h() {
        return this.f6754C && !TextUtils.isEmpty(this.f6756D) && (this.f6760F instanceof C2741f);
    }

    /* renamed from: i */
    public final int m4531i(int i, boolean z) {
        int compoundPaddingLeft = this.f6794e.getCompoundPaddingLeft() + i;
        int i2 = compoundPaddingLeft;
        if (this.f6834y != null) {
            i2 = compoundPaddingLeft;
            if (!z) {
                i2 = (compoundPaddingLeft - this.f6836z.getMeasuredWidth()) + this.f6836z.getPaddingLeft();
            }
        }
        return i2;
    }

    /* renamed from: j */
    public final int m4530j(int i, boolean z) {
        int compoundPaddingRight = i - this.f6794e.getCompoundPaddingRight();
        int i2 = compoundPaddingRight;
        if (this.f6834y != null) {
            i2 = compoundPaddingRight;
            if (z) {
                i2 = compoundPaddingRight + (this.f6836z.getMeasuredWidth() - this.f6836z.getPaddingRight());
            }
        }
        return i2;
    }

    /* renamed from: k */
    public final boolean m4529k() {
        return this.f6801h0 != 0;
    }

    /* renamed from: l */
    public final void m4528l() {
        TextView textView = this.f6820r;
        if (textView == null || !this.f6818q) {
            return;
        }
        textView.setText((CharSequence) null);
        C3459k.m2269a(this.f6786a, this.f6828v);
        this.f6820r.setVisibility(4);
    }

    /* renamed from: m */
    public boolean m4527m() {
        return this.f6792d.getVisibility() == 0 && this.f6805j0.getVisibility() == 0;
    }

    /* renamed from: n */
    public final void m4526n() {
        int i = this.f6768J;
        if (i == 0) {
            this.f6760F = null;
            this.f6762G = null;
        } else if (i == 1) {
            this.f6760F = new C0822f(this.f6764H);
            this.f6762G = new C0822f();
        } else if (i != 2) {
            throw new IllegalArgumentException(C0033h.m8885l(new StringBuilder(), this.f6768J, " is illegal; only @BoxBackgroundMode constants are supported."));
        } else {
            if (!this.f6754C || (this.f6760F instanceof C2741f)) {
                this.f6760F = new C0822f(this.f6764H);
            } else {
                this.f6760F = new C2741f(this.f6764H);
            }
            this.f6762G = null;
        }
        EditText editText = this.f6794e;
        if ((editText == null || this.f6760F == null || editText.getBackground() != null || this.f6768J == 0) ? false : true) {
            EditText editText2 = this.f6794e;
            C0822f c0822f = this.f6760F;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3593d.m2077q(editText2, c0822f);
        }
        m4540H();
        if (this.f6768J == 1) {
            if (C5071c.m68e(getContext())) {
                this.f6770K = getResources().getDimensionPixelSize(2131165563);
            } else if (C5071c.m69d(getContext())) {
                this.f6770K = getResources().getDimensionPixelSize(2131165562);
            }
        }
        if (this.f6794e != null && this.f6768J == 1) {
            if (C5071c.m68e(getContext())) {
                EditText editText3 = this.f6794e;
                WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
                C3589v.C3594e.m2064k(editText3, C3589v.C3594e.m2069f(editText3), getResources().getDimensionPixelSize(2131165561), C3589v.C3594e.m2070e(this.f6794e), getResources().getDimensionPixelSize(2131165560));
            } else if (C5071c.m69d(getContext())) {
                EditText editText4 = this.f6794e;
                WeakHashMap<View, C3611y> weakHashMap3 = C3589v.f11780a;
                C3589v.C3594e.m2064k(editText4, C3589v.C3594e.m2069f(editText4), getResources().getDimensionPixelSize(2131165559), C3589v.C3594e.m2070e(this.f6794e), getResources().getDimensionPixelSize(2131165558));
            }
        }
        if (this.f6768J != 0) {
            m4514z();
        }
    }

    /* renamed from: o */
    public final void m4525o() {
        float f;
        float f2;
        int i;
        float f3;
        float f4;
        int i2;
        if (!m4532h()) {
            return;
        }
        RectF rectF = this.f6782T;
        C4602c c4602c = this.f6767I0;
        int width = this.f6794e.getWidth();
        int gravity = this.f6794e.getGravity();
        boolean m735b = c4602c.m735b(c4602c.f14237x);
        c4602c.f14239z = m735b;
        if (gravity != 17 && (gravity & 7) != 1) {
            if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                Rect rect = c4602c.f14219f;
                if (m735b) {
                    i2 = rect.left;
                    f = i2;
                } else {
                    f4 = rect.right;
                    f3 = c4602c.f14209P;
                }
            } else {
                Rect rect2 = c4602c.f14219f;
                if (m735b) {
                    f4 = rect2.right;
                    f3 = c4602c.f14209P;
                } else {
                    i2 = rect2.left;
                    f = i2;
                }
            }
            rectF.left = f;
            Rect rect3 = c4602c.f14219f;
            float f5 = rect3.top;
            rectF.top = f5;
            if (gravity != 17 || (gravity & 7) == 1) {
                f2 = (width / 2.0f) + (c4602c.f14209P / 2.0f);
            } else if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                if (m735b) {
                    f2 = c4602c.f14209P + f;
                } else {
                    i = rect3.right;
                    f2 = i;
                }
            } else if (m735b) {
                i = rect3.right;
                f2 = i;
            } else {
                f2 = c4602c.f14209P + f;
            }
            rectF.right = f2;
            rectF.bottom = c4602c.m732e() + f5;
            float f6 = rectF.left;
            float f7 = this.f6766I;
            rectF.left = f6 - f7;
            rectF.right += f7;
            rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.f6772L);
            C2741f c2741f = (C2741f) this.f6760F;
            Objects.requireNonNull(c2741f);
            c2741f.m3185y(rectF.left, rectF.top, rectF.right, rectF.bottom);
        }
        f4 = width / 2.0f;
        f3 = c4602c.f14209P / 2.0f;
        f = f4 - f3;
        rectF.left = f;
        Rect rect32 = c4602c.f14219f;
        float f52 = rect32.top;
        rectF.top = f52;
        if (gravity != 17) {
        }
        f2 = (width / 2.0f) + (c4602c.f14209P / 2.0f);
        rectF.right = f2;
        rectF.bottom = c4602c.m732e() + f52;
        float f62 = rectF.left;
        float f72 = this.f6766I;
        rectF.left = f62 - f72;
        rectF.right += f72;
        rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.f6772L);
        C2741f c2741f2 = (C2741f) this.f6760F;
        Objects.requireNonNull(c2741f2);
        c2741f2.m3185y(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.f6794e;
        if (editText != null) {
            Rect rect = this.f6780R;
            C4603d.m720a(this, editText, rect);
            C0822f c0822f = this.f6762G;
            if (c0822f != null) {
                int i5 = rect.bottom;
                c0822f.setBounds(rect.left, i5 - this.f6776N, rect.right, i5);
            }
            if (!this.f6754C) {
                return;
            }
            C4602c c4602c = this.f6767I0;
            float textSize = this.f6794e.getTextSize();
            if (c4602c.f14223j != textSize) {
                c4602c.f14223j = textSize;
                c4602c.m727j();
            }
            int gravity = this.f6794e.getGravity();
            this.f6767I0.m724m((gravity & (-113)) | 48);
            C4602c c4602c2 = this.f6767I0;
            if (c4602c2.f14221h != gravity) {
                c4602c2.f14221h = gravity;
                c4602c2.m727j();
            }
            C4602c c4602c3 = this.f6767I0;
            if (this.f6794e == null) {
                throw new IllegalStateException();
            }
            Rect rect2 = this.f6781S;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            boolean z2 = C3589v.C3594e.m2071d(this) == 1;
            rect2.bottom = rect.bottom;
            int i6 = this.f6768J;
            if (i6 == 1) {
                rect2.left = m4531i(rect.left, z2);
                rect2.top = rect.top + this.f6770K;
                rect2.right = m4530j(rect.right, z2);
            } else if (i6 != 2) {
                rect2.left = m4531i(rect.left, z2);
                rect2.top = getPaddingTop();
                rect2.right = m4530j(rect.right, z2);
            } else {
                rect2.left = this.f6794e.getPaddingLeft() + rect.left;
                rect2.top = rect.top - m4533g();
                rect2.right = rect.right - this.f6794e.getPaddingRight();
            }
            Objects.requireNonNull(c4602c3);
            int i7 = rect2.left;
            int i8 = rect2.top;
            int i9 = rect2.right;
            int i10 = rect2.bottom;
            if (!C4602c.m726k(c4602c3.f14219f, i7, i8, i9, i10)) {
                c4602c3.f14219f.set(i7, i8, i9, i10);
                c4602c3.f14198E = true;
                c4602c3.m728i();
            }
            C4602c c4602c4 = this.f6767I0;
            if (this.f6794e == null) {
                throw new IllegalStateException();
            }
            Rect rect3 = this.f6781S;
            TextPaint textPaint = c4602c4.f14200G;
            textPaint.setTextSize(c4602c4.f14223j);
            textPaint.setTypeface(c4602c4.f14234u);
            textPaint.setLetterSpacing(0.0f);
            float f = -c4602c4.f14200G.ascent();
            rect3.left = this.f6794e.getCompoundPaddingLeft() + rect.left;
            rect3.top = this.f6768J == 1 && this.f6794e.getMinLines() <= 1 ? (int) (rect.centerY() - (f / 2.0f)) : rect.top + this.f6794e.getCompoundPaddingTop();
            rect3.right = rect.right - this.f6794e.getCompoundPaddingRight();
            boolean z3 = false;
            if (this.f6768J == 1) {
                z3 = false;
                if (this.f6794e.getMinLines() <= 1) {
                    z3 = true;
                }
            }
            int compoundPaddingBottom = z3 ? (int) (rect3.top + f) : rect.bottom - this.f6794e.getCompoundPaddingBottom();
            rect3.bottom = compoundPaddingBottom;
            int i11 = rect3.left;
            int i12 = rect3.top;
            int i13 = rect3.right;
            if (!C4602c.m726k(c4602c4.f14218e, i11, i12, i13, compoundPaddingBottom)) {
                c4602c4.f14218e.set(i11, i12, i13, compoundPaddingBottom);
                c4602c4.f14198E = true;
                c4602c4.m728i();
            }
            this.f6767I0.m727j();
            if (!m4532h() || this.f6765H0) {
                return;
            }
            m4525o();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        EditText editText;
        int max;
        super.onMeasure(i, i2);
        boolean z = false;
        if (this.f6794e != null && this.f6794e.getMeasuredHeight() < (max = Math.max(this.f6790c.getMeasuredHeight(), this.f6788b.getMeasuredHeight()))) {
            this.f6794e.setMinimumHeight(max);
            z = true;
        }
        boolean m4516x = m4516x();
        if (z || m4516x) {
            this.f6794e.post(new RunnableC1801c());
        }
        if (this.f6820r != null && (editText = this.f6794e) != null) {
            this.f6820r.setGravity(editText.getGravity());
            this.f6820r.setPadding(this.f6794e.getCompoundPaddingLeft(), this.f6794e.getCompoundPaddingTop(), this.f6794e.getCompoundPaddingRight(), this.f6794e.getCompoundPaddingBottom());
        }
        m4545C();
        m4542F();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C1806h)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1806h c1806h = (C1806h) parcelable;
        super.onRestoreInstanceState(c1806h.f13167a);
        setError(c1806h.f6843c);
        if (c1806h.f6844d) {
            this.f6805j0.post(new RunnableC1800b());
        }
        setHint(c1806h.f6845e);
        setHelperText(c1806h.f6846f);
        setPlaceholderText(c1806h.f6847g);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        C1806h c1806h = new C1806h(super.onSaveInstanceState());
        if (this.f6802i.m3178e()) {
            c1806h.f6843c = getError();
        }
        c1806h.f6844d = m4529k() && this.f6805j0.isChecked();
        c1806h.f6845e = getHint();
        c1806h.f6846f = getHelperText();
        c1806h.f6847g = getPlaceholderText();
        return c1806h;
    }

    /* renamed from: q */
    public void m4523q() {
        m4522r(this.f6805j0, this.f6809l0);
    }

    /* renamed from: r */
    public final void m4522r(CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int[] drawableState = getDrawableState();
        int[] drawableState2 = checkableImageButton.getDrawableState();
        int length = drawableState.length;
        int[] copyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
        System.arraycopy(drawableState2, 0, copyOf, length, drawableState2.length);
        int colorForState = colorStateList.getColorForState(copyOf, colorStateList.getDefaultColor());
        Drawable mutate = C2789a.m3007h(drawable).mutate();
        mutate.setTintList(ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(mutate);
    }

    public void setBoxBackgroundColor(int i) {
        if (this.f6779P != i) {
            this.f6779P = i;
            this.f6755C0 = i;
            this.f6759E0 = i;
            this.f6761F0 = i;
            m4537c();
        }
    }

    public void setBoxBackgroundColorResource(int i) {
        setBoxBackgroundColor(C2134a.m3845b(getContext(), i));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.f6755C0 = defaultColor;
        this.f6779P = defaultColor;
        this.f6757D0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.f6759E0 = colorStateList.getColorForState(new int[]{16842908, 16842910}, -1);
        this.f6761F0 = colorStateList.getColorForState(new int[]{16843623, 16842910}, -1);
        m4537c();
    }

    public void setBoxBackgroundMode(int i) {
        if (i == this.f6768J) {
            return;
        }
        this.f6768J = i;
        if (this.f6794e == null) {
            return;
        }
        m4526n();
    }

    public void setBoxCollapsedPaddingTop(int i) {
        this.f6770K = i;
    }

    public void setBoxStrokeColor(int i) {
        if (this.f6751A0 != i) {
            this.f6751A0 = i;
            m4540H();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.f6835y0 = colorStateList.getDefaultColor();
            this.f6763G0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.f6837z0 = colorStateList.getColorForState(new int[]{16843623, 16842910}, -1);
            this.f6751A0 = colorStateList.getColorForState(new int[]{16842908, 16842910}, -1);
        } else if (this.f6751A0 != colorStateList.getDefaultColor()) {
            this.f6751A0 = colorStateList.getDefaultColor();
        }
        m4540H();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) {
        if (this.f6753B0 != colorStateList) {
            this.f6753B0 = colorStateList;
            m4540H();
        }
    }

    public void setBoxStrokeWidth(int i) {
        this.f6774M = i;
        m4540H();
    }

    public void setBoxStrokeWidthFocused(int i) {
        this.f6776N = i;
        m4540H();
    }

    public void setBoxStrokeWidthFocusedResource(int i) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i));
    }

    public void setBoxStrokeWidthResource(int i) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public void setCounterEnabled(boolean z) {
        if (this.f6804j != z) {
            if (z) {
                C0212c0 c0212c0 = new C0212c0(getContext(), null);
                this.f6810m = c0212c0;
                c0212c0.setId(2131297143);
                Typeface typeface = this.f6783U;
                if (typeface != null) {
                    this.f6810m.setTypeface(typeface);
                }
                this.f6810m.setMaxLines(1);
                this.f6802i.m3182a(this.f6810m, 2);
                ((ViewGroup.MarginLayoutParams) this.f6810m.getLayoutParams()).setMarginStart(getResources().getDimensionPixelOffset(2131165802));
                m4517w();
                m4519u();
            } else {
                this.f6802i.m3173j(this.f6810m, 2);
                this.f6810m = null;
            }
            this.f6804j = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.f6806k != i) {
            if (i > 0) {
                this.f6806k = i;
            } else {
                this.f6806k = -1;
            }
            if (!this.f6804j) {
                return;
            }
            m4519u();
        }
    }

    public void setCounterOverflowTextAppearance(int i) {
        if (this.f6812n != i) {
            this.f6812n = i;
            m4517w();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.f6832x != colorStateList) {
            this.f6832x = colorStateList;
            m4517w();
        }
    }

    public void setCounterTextAppearance(int i) {
        if (this.f6814o != i) {
            this.f6814o = i;
            m4517w();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.f6830w != colorStateList) {
            this.f6830w = colorStateList;
            m4517w();
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.f6831w0 = colorStateList;
        this.f6833x0 = colorStateList;
        if (this.f6794e != null) {
            m4547A(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        m4524p(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.f6805j0.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.f6805j0.setCheckable(z);
    }

    public void setEndIconContentDescription(int i) {
        setEndIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        if (getEndIconContentDescription() != charSequence) {
            this.f6805j0.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(int i) {
        setEndIconDrawable(i != 0 ? C2788a.m3015b(getContext(), i) : null);
    }

    public void setEndIconDrawable(Drawable drawable) {
        this.f6805j0.setImageDrawable(drawable);
        if (drawable != null) {
            m4536d();
            m4523q();
        }
    }

    public void setEndIconMode(int i) {
        int i2 = this.f6801h0;
        this.f6801h0 = i;
        Iterator<AbstractC1805g> it2 = this.f6807k0.iterator();
        while (it2.hasNext()) {
            it2.next().mo4503a(this, i2);
        }
        setEndIconVisible(i != 0);
        if (getEndIconDelegate().mo3184b(this.f6768J)) {
            getEndIconDelegate().mo3168a();
            m4536d();
            return;
        }
        StringBuilder m8752j = C0082b.m8752j("The current box background mode ");
        m8752j.append(this.f6768J);
        m8752j.append(" is not supported by the end icon mode ");
        m8752j.append(i);
        throw new IllegalStateException(m8752j.toString());
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        CheckableImageButton checkableImageButton = this.f6805j0;
        View.OnLongClickListener onLongClickListener = this.f6823s0;
        checkableImageButton.setOnClickListener(onClickListener);
        m4521s(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f6823s0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.f6805j0;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        m4521s(checkableImageButton, onLongClickListener);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        if (this.f6809l0 != colorStateList) {
            this.f6809l0 = colorStateList;
            this.f6811m0 = true;
            m4536d();
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        if (this.f6813n0 != mode) {
            this.f6813n0 = mode;
            this.f6815o0 = true;
            m4536d();
        }
    }

    public void setEndIconVisible(boolean z) {
        if (m4527m() != z) {
            this.f6805j0.setVisibility(z ? 0 : 8);
            m4542F();
            m4516x();
        }
    }

    public void setError(CharSequence charSequence) {
        if (!this.f6802i.f9417k) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            setErrorEnabled(true);
        }
        if (TextUtils.isEmpty(charSequence)) {
            this.f6802i.m3174i();
            return;
        }
        C2747l c2747l = this.f6802i;
        c2747l.m3180c();
        c2747l.f9416j = charSequence;
        c2747l.f9418l.setText(charSequence);
        int i = c2747l.f9414h;
        if (i != 1) {
            c2747l.f9415i = 1;
        }
        c2747l.m3171l(i, c2747l.f9415i, c2747l.m3172k(c2747l.f9418l, charSequence));
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        C2747l c2747l = this.f6802i;
        c2747l.f9419m = charSequence;
        TextView textView = c2747l.f9418l;
        if (textView != null) {
            textView.setContentDescription(charSequence);
        }
    }

    public void setErrorEnabled(boolean z) {
        C2747l c2747l = this.f6802i;
        if (c2747l.f9417k == z) {
            return;
        }
        c2747l.m3180c();
        if (z) {
            C0212c0 c0212c0 = new C0212c0(c2747l.f9407a, null);
            c2747l.f9418l = c0212c0;
            c0212c0.setId(2131297144);
            c2747l.f9418l.setTextAlignment(5);
            Typeface typeface = c2747l.f9427u;
            if (typeface != null) {
                c2747l.f9418l.setTypeface(typeface);
            }
            int i = c2747l.f9420n;
            c2747l.f9420n = i;
            TextView textView = c2747l.f9418l;
            if (textView != null) {
                c2747l.f9408b.m4520t(textView, i);
            }
            ColorStateList colorStateList = c2747l.f9421o;
            c2747l.f9421o = colorStateList;
            TextView textView2 = c2747l.f9418l;
            if (textView2 != null && colorStateList != null) {
                textView2.setTextColor(colorStateList);
            }
            CharSequence charSequence = c2747l.f9419m;
            c2747l.f9419m = charSequence;
            TextView textView3 = c2747l.f9418l;
            if (textView3 != null) {
                textView3.setContentDescription(charSequence);
            }
            c2747l.f9418l.setVisibility(4);
            TextView textView4 = c2747l.f9418l;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3596g.m2055f(textView4, 1);
            c2747l.m3182a(c2747l.f9418l, 0);
        } else {
            c2747l.m3174i();
            c2747l.m3173j(c2747l.f9418l, 0);
            c2747l.f9418l = null;
            c2747l.f9408b.m4515y();
            c2747l.f9408b.m4540H();
        }
        c2747l.f9417k = z;
    }

    public void setErrorIconDrawable(int i) {
        setErrorIconDrawable(i != 0 ? C2788a.m3015b(getContext(), i) : null);
        m4522r(this.f6827u0, this.f6829v0);
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.f6827u0.setImageDrawable(drawable);
        setErrorIconVisible(drawable != null && this.f6802i.f9417k);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        CheckableImageButton checkableImageButton = this.f6827u0;
        View.OnLongClickListener onLongClickListener = this.f6825t0;
        checkableImageButton.setOnClickListener(onClickListener);
        m4521s(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f6825t0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.f6827u0;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        m4521s(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        this.f6829v0 = colorStateList;
        Drawable drawable = this.f6827u0.getDrawable();
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = C2789a.m3007h(drawable).mutate();
            drawable2.setTintList(colorStateList);
        }
        if (this.f6827u0.getDrawable() != drawable2) {
            this.f6827u0.setImageDrawable(drawable2);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f6827u0.getDrawable();
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = C2789a.m3007h(drawable).mutate();
            drawable2.setTintMode(mode);
        }
        if (this.f6827u0.getDrawable() != drawable2) {
            this.f6827u0.setImageDrawable(drawable2);
        }
    }

    public void setErrorTextAppearance(int i) {
        C2747l c2747l = this.f6802i;
        c2747l.f9420n = i;
        TextView textView = c2747l.f9418l;
        if (textView != null) {
            c2747l.f9408b.m4520t(textView, i);
        }
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        C2747l c2747l = this.f6802i;
        c2747l.f9421o = colorStateList;
        TextView textView = c2747l.f9418l;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z) {
        if (this.f6769J0 != z) {
            this.f6769J0 = z;
            m4547A(false, false);
        }
    }

    public void setHelperText(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (!this.f6802i.f9423q) {
                return;
            }
            setHelperTextEnabled(false);
            return;
        }
        if (!this.f6802i.f9423q) {
            setHelperTextEnabled(true);
        }
        C2747l c2747l = this.f6802i;
        c2747l.m3180c();
        c2747l.f9422p = charSequence;
        c2747l.f9424r.setText(charSequence);
        int i = c2747l.f9414h;
        if (i != 2) {
            c2747l.f9415i = 2;
        }
        c2747l.m3171l(i, c2747l.f9415i, c2747l.m3172k(c2747l.f9424r, charSequence));
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        C2747l c2747l = this.f6802i;
        c2747l.f9426t = colorStateList;
        TextView textView = c2747l.f9424r;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    public void setHelperTextEnabled(boolean z) {
        C2747l c2747l = this.f6802i;
        if (c2747l.f9423q == z) {
            return;
        }
        c2747l.m3180c();
        if (z) {
            C0212c0 c0212c0 = new C0212c0(c2747l.f9407a, null);
            c2747l.f9424r = c0212c0;
            c0212c0.setId(2131297145);
            c2747l.f9424r.setTextAlignment(5);
            Typeface typeface = c2747l.f9427u;
            if (typeface != null) {
                c2747l.f9424r.setTypeface(typeface);
            }
            c2747l.f9424r.setVisibility(4);
            TextView textView = c2747l.f9424r;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3596g.m2055f(textView, 1);
            int i = c2747l.f9425s;
            c2747l.f9425s = i;
            TextView textView2 = c2747l.f9424r;
            if (textView2 != null) {
                C3992g.m1556f(textView2, i);
            }
            ColorStateList colorStateList = c2747l.f9426t;
            c2747l.f9426t = colorStateList;
            TextView textView3 = c2747l.f9424r;
            if (textView3 != null && colorStateList != null) {
                textView3.setTextColor(colorStateList);
            }
            c2747l.m3182a(c2747l.f9424r, 1);
        } else {
            c2747l.m3180c();
            int i2 = c2747l.f9414h;
            if (i2 == 2) {
                c2747l.f9415i = 0;
            }
            c2747l.m3171l(i2, c2747l.f9415i, c2747l.m3172k(c2747l.f9424r, null));
            c2747l.m3173j(c2747l.f9424r, 1);
            c2747l.f9424r = null;
            c2747l.f9408b.m4515y();
            c2747l.f9408b.m4540H();
        }
        c2747l.f9423q = z;
    }

    public void setHelperTextTextAppearance(int i) {
        C2747l c2747l = this.f6802i;
        c2747l.f9425s = i;
        TextView textView = c2747l.f9424r;
        if (textView != null) {
            C3992g.m1556f(textView, i);
        }
    }

    public void setHint(int i) {
        setHint(i != 0 ? getResources().getText(i) : null);
    }

    public void setHint(CharSequence charSequence) {
        if (this.f6754C) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.f6771K0 = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.f6754C) {
            this.f6754C = z;
            if (!z) {
                this.f6758E = false;
                if (!TextUtils.isEmpty(this.f6756D) && TextUtils.isEmpty(this.f6794e.getHint())) {
                    this.f6794e.setHint(this.f6756D);
                }
                setHintInternal(null);
            } else {
                CharSequence hint = this.f6794e.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.f6756D)) {
                        setHint(hint);
                    }
                    this.f6794e.setHint((CharSequence) null);
                }
                this.f6758E = true;
            }
            if (this.f6794e == null) {
                return;
            }
            m4514z();
        }
    }

    public void setHintTextAppearance(int i) {
        C4602c c4602c = this.f6767I0;
        C5072d c5072d = new C5072d(c4602c.f14214a.getContext(), i);
        ColorStateList colorStateList = c5072d.f15389j;
        if (colorStateList != null) {
            c4602c.f14226m = colorStateList;
        }
        float f = c5072d.f15390k;
        if (f != 0.0f) {
            c4602c.f14224k = f;
        }
        ColorStateList colorStateList2 = c5072d.f15380a;
        if (colorStateList2 != null) {
            c4602c.f14206M = colorStateList2;
        }
        c4602c.f14204K = c5072d.f15384e;
        c4602c.f14205L = c5072d.f15385f;
        c4602c.f14203J = c5072d.f15386g;
        c4602c.f14207N = c5072d.f15388i;
        C5068a c5068a = c4602c.f14236w;
        if (c5068a != null) {
            c5068a.f15379c = true;
        }
        C4601b c4601b = new C4601b(c4602c);
        c5072d.m67a();
        c4602c.f14236w = new C5068a(c4601b, c5072d.f15393n);
        c5072d.m65c(c4602c.f14214a.getContext(), c4602c.f14236w);
        c4602c.m727j();
        this.f6833x0 = this.f6767I0.f14226m;
        if (this.f6794e != null) {
            m4547A(false, false);
            m4514z();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.f6833x0 != colorStateList) {
            if (this.f6831w0 == null) {
                C4602c c4602c = this.f6767I0;
                if (c4602c.f14226m != colorStateList) {
                    c4602c.f14226m = colorStateList;
                    c4602c.m727j();
                }
            }
            this.f6833x0 = colorStateList;
            if (this.f6794e == null) {
                return;
            }
            m4547A(false, false);
        }
    }

    public void setMaxWidth(int i) {
        this.f6800h = i;
        EditText editText = this.f6794e;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMaxWidth(i);
    }

    public void setMaxWidthResource(int i) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    public void setMinWidth(int i) {
        this.f6798g = i;
        EditText editText = this.f6794e;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMinWidth(i);
    }

    public void setMinWidthResource(int i) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i) {
        setPasswordVisibilityToggleContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.f6805j0.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i) {
        setPasswordVisibilityToggleDrawable(i != 0 ? C2788a.m3015b(getContext(), i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.f6805j0.setImageDrawable(drawable);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        if (z && this.f6801h0 != 1) {
            setEndIconMode(1);
        } else if (z) {
        } else {
            setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        this.f6809l0 = colorStateList;
        this.f6811m0 = true;
        m4536d();
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        this.f6813n0 = mode;
        this.f6815o0 = true;
        m4536d();
    }

    public void setPlaceholderText(CharSequence charSequence) {
        int i = 0;
        if (!this.f6818q || !TextUtils.isEmpty(charSequence)) {
            if (!this.f6818q) {
                setPlaceholderTextEnabled(true);
            }
            this.f6816p = charSequence;
        } else {
            setPlaceholderTextEnabled(false);
        }
        EditText editText = this.f6794e;
        if (editText != null) {
            i = editText.getText().length();
        }
        m4546B(i);
    }

    public void setPlaceholderTextAppearance(int i) {
        this.f6824t = i;
        TextView textView = this.f6820r;
        if (textView != null) {
            C3992g.m1556f(textView, i);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.f6822s != colorStateList) {
            this.f6822s = colorStateList;
            TextView textView = this.f6820r;
            if (textView == null || colorStateList == null) {
                return;
            }
            textView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        this.f6834y = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f6836z.setText(charSequence);
        m4544D();
    }

    public void setPrefixTextAppearance(int i) {
        C3992g.m1556f(this.f6836z, i);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.f6836z.setTextColor(colorStateList);
    }

    public void setStartIconCheckable(boolean z) {
        this.f6784V.setCheckable(z);
    }

    public void setStartIconContentDescription(int i) {
        setStartIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        if (getStartIconContentDescription() != charSequence) {
            this.f6784V.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(int i) {
        setStartIconDrawable(i != 0 ? C2788a.m3015b(getContext(), i) : null);
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.f6784V.setImageDrawable(drawable);
        if (drawable != null) {
            m4534f();
            setStartIconVisible(true);
            m4522r(this.f6784V, this.f6785W);
            return;
        }
        setStartIconVisible(false);
        setStartIconOnClickListener(null);
        setStartIconOnLongClickListener(null);
        setStartIconContentDescription((CharSequence) null);
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        CheckableImageButton checkableImageButton = this.f6784V;
        View.OnLongClickListener onLongClickListener = this.f6797f0;
        checkableImageButton.setOnClickListener(onClickListener);
        m4521s(checkableImageButton, onLongClickListener);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f6797f0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.f6784V;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        m4521s(checkableImageButton, onLongClickListener);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        if (this.f6785W != colorStateList) {
            this.f6785W = colorStateList;
            this.f6787a0 = true;
            m4534f();
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        if (this.f6789b0 != mode) {
            this.f6789b0 = mode;
            this.f6791c0 = true;
            m4534f();
        }
    }

    public void setStartIconVisible(boolean z) {
        int i = 0;
        if ((this.f6784V.getVisibility() == 0) != z) {
            CheckableImageButton checkableImageButton = this.f6784V;
            if (!z) {
                i = 8;
            }
            checkableImageButton.setVisibility(i);
            m4545C();
            m4516x();
        }
    }

    public void setSuffixText(CharSequence charSequence) {
        this.f6750A = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f6752B.setText(charSequence);
        m4541G();
    }

    public void setSuffixTextAppearance(int i) {
        C3992g.m1556f(this.f6752B, i);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.f6752B.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(C1803e c1803e) {
        EditText editText = this.f6794e;
        if (editText != null) {
            C3589v.m2103u(editText, c1803e);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.f6783U) {
            this.f6783U = typeface;
            this.f6767I0.m721p(typeface);
            C2747l c2747l = this.f6802i;
            if (typeface != c2747l.f9427u) {
                c2747l.f9427u = typeface;
                TextView textView = c2747l.f9418l;
                if (textView != null) {
                    textView.setTypeface(typeface);
                }
                TextView textView2 = c2747l.f9424r;
                if (textView2 != null) {
                    textView2.setTypeface(typeface);
                }
            }
            TextView textView3 = this.f6810m;
            if (textView3 == null) {
                return;
            }
            textView3.setTypeface(typeface);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m4520t(android.widget.TextView r5, int r6) {
        /*
            r4 = this;
            r0 = 1
            r7 = r0
            r0 = r5
            r1 = r6
            p196p0.C3992g.m1556f(r0, r1)     // Catch: java.lang.Exception -> L28
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
            r1 = 2131886504(0x7f1201a8, float:1.9407589E38)
            p196p0.C3992g.m1556f(r0, r1)
            r0 = r5
            r1 = r4
            android.content.Context r1 = r1.getContext()
            r2 = 2131099783(0x7f060087, float:1.7811929E38)
            int r1 = p066d0.C2134a.m3845b(r1, r2)
            r0.setTextColor(r1)
        L45:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.m4520t(android.widget.TextView, int):void");
    }

    /* renamed from: u */
    public final void m4519u() {
        if (this.f6810m != null) {
            EditText editText = this.f6794e;
            m4518v(editText == null ? 0 : editText.getText().length());
        }
    }

    /* renamed from: v */
    public void m4518v(int i) {
        boolean z = this.f6808l;
        int i2 = this.f6806k;
        String str = null;
        if (i2 == -1) {
            this.f6810m.setText(String.valueOf(i));
            this.f6810m.setContentDescription(null);
            this.f6808l = false;
        } else {
            this.f6808l = i > i2;
            this.f6810m.setContentDescription(getContext().getString(this.f6808l ? 2131820664 : 2131820663, Integer.valueOf(i), Integer.valueOf(this.f6806k)));
            if (z != this.f6808l) {
                m4517w();
            }
            C3308a m2393c = C3308a.m2393c();
            TextView textView = this.f6810m;
            String string = getContext().getString(2131820665, Integer.valueOf(i), Integer.valueOf(this.f6806k));
            AbstractC3312c abstractC3312c = m2393c.f11223c;
            if (string != null) {
                str = m2393c.m2392d(string, abstractC3312c, true).toString();
            }
            textView.setText(str);
        }
        if (this.f6794e == null || z == this.f6808l) {
            return;
        }
        m4547A(false, false);
        m4540H();
        m4515y();
    }

    /* renamed from: w */
    public final void m4517w() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        TextView textView = this.f6810m;
        if (textView != null) {
            m4520t(textView, this.f6808l ? this.f6812n : this.f6814o);
            if (!this.f6808l && (colorStateList2 = this.f6830w) != null) {
                this.f6810m.setTextColor(colorStateList2);
            }
            if (!this.f6808l || (colorStateList = this.f6832x) == null) {
                return;
            }
            this.f6810m.setTextColor(colorStateList);
        }
    }

    /* renamed from: x */
    public final boolean m4516x() {
        boolean z;
        boolean z2;
        if (this.f6794e == null) {
            return false;
        }
        if (!(getStartIconDrawable() == null && this.f6834y == null) && this.f6788b.getMeasuredWidth() > 0) {
            int measuredWidth = this.f6788b.getMeasuredWidth() - this.f6794e.getPaddingLeft();
            if (this.f6793d0 == null || this.f6795e0 != measuredWidth) {
                ColorDrawable colorDrawable = new ColorDrawable();
                this.f6793d0 = colorDrawable;
                this.f6795e0 = measuredWidth;
                colorDrawable.setBounds(0, 0, measuredWidth, 1);
            }
            Drawable[] compoundDrawablesRelative = this.f6794e.getCompoundDrawablesRelative();
            Drawable drawable = compoundDrawablesRelative[0];
            Drawable drawable2 = this.f6793d0;
            if (drawable != drawable2) {
                this.f6794e.setCompoundDrawablesRelative(drawable2, compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
                z = true;
            }
            z = false;
        } else {
            if (this.f6793d0 != null) {
                Drawable[] compoundDrawablesRelative2 = this.f6794e.getCompoundDrawablesRelative();
                this.f6794e.setCompoundDrawablesRelative(null, compoundDrawablesRelative2[1], compoundDrawablesRelative2[2], compoundDrawablesRelative2[3]);
                this.f6793d0 = null;
                z = true;
            }
            z = false;
        }
        if (!((this.f6827u0.getVisibility() == 0 || ((m4529k() && m4527m()) || this.f6750A != null)) && this.f6790c.getMeasuredWidth() > 0)) {
            z2 = z;
            if (this.f6817p0 != null) {
                Drawable[] compoundDrawablesRelative3 = this.f6794e.getCompoundDrawablesRelative();
                if (compoundDrawablesRelative3[2] == this.f6817p0) {
                    this.f6794e.setCompoundDrawablesRelative(compoundDrawablesRelative3[0], compoundDrawablesRelative3[1], this.f6821r0, compoundDrawablesRelative3[3]);
                    z = true;
                }
                this.f6817p0 = null;
            }
            return z2;
        }
        int measuredWidth2 = this.f6752B.getMeasuredWidth() - this.f6794e.getPaddingRight();
        CheckableImageButton endIconToUpdateDummyDrawable = getEndIconToUpdateDummyDrawable();
        int i = measuredWidth2;
        if (endIconToUpdateDummyDrawable != null) {
            i = ((ViewGroup.MarginLayoutParams) endIconToUpdateDummyDrawable.getLayoutParams()).getMarginStart() + endIconToUpdateDummyDrawable.getMeasuredWidth() + measuredWidth2;
        }
        Drawable[] compoundDrawablesRelative4 = this.f6794e.getCompoundDrawablesRelative();
        Drawable drawable3 = this.f6817p0;
        if (drawable3 == null || this.f6819q0 == i) {
            if (drawable3 == null) {
                ColorDrawable colorDrawable2 = new ColorDrawable();
                this.f6817p0 = colorDrawable2;
                this.f6819q0 = i;
                colorDrawable2.setBounds(0, 0, i, 1);
            }
            Drawable drawable4 = compoundDrawablesRelative4[2];
            Drawable drawable5 = this.f6817p0;
            if (drawable4 != drawable5) {
                this.f6821r0 = compoundDrawablesRelative4[2];
                this.f6794e.setCompoundDrawablesRelative(compoundDrawablesRelative4[0], compoundDrawablesRelative4[1], drawable5, compoundDrawablesRelative4[3]);
                z = true;
            }
        } else {
            this.f6819q0 = i;
            drawable3.setBounds(0, 0, i, 1);
            this.f6794e.setCompoundDrawablesRelative(compoundDrawablesRelative4[0], compoundDrawablesRelative4[1], this.f6817p0, compoundDrawablesRelative4[3]);
            z = true;
        }
        z2 = z;
        return z2;
    }

    /* renamed from: y */
    public void m4515y() {
        Drawable background;
        TextView textView;
        EditText editText = this.f6794e;
        if (editText == null || this.f6768J != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        Drawable drawable = background;
        if (C0233h0.m8499a(background)) {
            drawable = background.mutate();
        }
        if (this.f6802i.m3178e()) {
            drawable.setColorFilter(C0242j.m8484c(this.f6802i.m3176g(), PorterDuff.Mode.SRC_IN));
        } else if (this.f6808l && (textView = this.f6810m) != null) {
            drawable.setColorFilter(C0242j.m8484c(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            C2789a.m3014a(drawable);
            this.f6794e.refreshDrawableState();
        }
    }

    /* renamed from: z */
    public final void m4514z() {
        if (this.f6768J != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f6786a.getLayoutParams();
            int m4533g = m4533g();
            if (m4533g == layoutParams.topMargin) {
                return;
            }
            layoutParams.topMargin = m4533g;
            this.f6786a.requestLayout();
        }
    }
}
