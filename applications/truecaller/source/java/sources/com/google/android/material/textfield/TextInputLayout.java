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
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.C2080R;
import com.google.android.material.internal.CheckableImageButton;
import e.m.a.g.o.b;
import e.m.a.g.o.c;
import e.m.a.g.u.h;
import e.m.a.g.u.l;
import e.m.a.g.y.g;
import e.m.a.g.y.m;
import e.m.a.g.y.n;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1734b.p1743f.C25502e;
import p1727n3.p1734b.p1743f.C25553w;
import p1727n3.p1789g0.C26232y;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1818g.C26536a;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1677g.p1678a.C25156a;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/textfield/TextInputLayout.class */
public class TextInputLayout extends LinearLayout {

    /* renamed from: W0 */
    public static final int f6868W0 = C2080R.style.Widget_Design_TextInputLayout;

    /* renamed from: A */
    public boolean f6869A;

    /* renamed from: A0 */
    public View.OnLongClickListener f6870A0;

    /* renamed from: B */
    public CharSequence f6871B;

    /* renamed from: B0 */
    public View.OnLongClickListener f6872B0;

    /* renamed from: C */
    public boolean f6873C;

    /* renamed from: C0 */
    public final CheckableImageButton f6874C0;

    /* renamed from: D */
    public h f6875D;

    /* renamed from: D0 */
    public ColorStateList f6876D0;

    /* renamed from: E */
    public h f6877E;

    /* renamed from: E0 */
    public ColorStateList f6878E0;

    /* renamed from: F0 */
    public ColorStateList f6879F0;

    /* renamed from: G0 */
    public int f6880G0;

    /* renamed from: H0 */
    public int f6881H0;

    /* renamed from: I0 */
    public int f6882I0;

    /* renamed from: J */
    public l f6883J;

    /* renamed from: J0 */
    public ColorStateList f6884J0;

    /* renamed from: K */
    public final int f6885K;

    /* renamed from: K0 */
    public int f6886K0;

    /* renamed from: L */
    public int f6887L;

    /* renamed from: L0 */
    public int f6888L0;

    /* renamed from: M */
    public int f6889M;

    /* renamed from: M0 */
    public int f6890M0;

    /* renamed from: N */
    public int f6891N;

    /* renamed from: N0 */
    public int f6892N0;

    /* renamed from: O */
    public int f6893O;

    /* renamed from: O0 */
    public int f6894O0;

    /* renamed from: P */
    public int f6895P;

    /* renamed from: P0 */
    public boolean f6896P0;

    /* renamed from: Q */
    public int f6897Q;

    /* renamed from: Q0 */
    public final b f6898Q0;

    /* renamed from: R */
    public int f6899R;

    /* renamed from: R0 */
    public boolean f6900R0;

    /* renamed from: S */
    public int f6901S;

    /* renamed from: S0 */
    public boolean f6902S0;

    /* renamed from: T0 */
    public ValueAnimator f6904T0;

    /* renamed from: U0 */
    public boolean f6906U0;

    /* renamed from: V0 */
    public boolean f6908V0;

    /* renamed from: W */
    public Typeface f6909W;

    /* renamed from: a */
    public final FrameLayout f6910a;

    /* renamed from: b */
    public final LinearLayout f6911b;

    /* renamed from: c */
    public final LinearLayout f6912c;

    /* renamed from: d */
    public final FrameLayout f6913d;

    /* renamed from: e */
    public EditText f6914e;

    /* renamed from: f */
    public CharSequence f6915f;

    /* renamed from: g0 */
    public final CheckableImageButton f6917g0;

    /* renamed from: h0 */
    public ColorStateList f6919h0;

    /* renamed from: i0 */
    public boolean f6921i0;

    /* renamed from: j */
    public boolean f6922j;

    /* renamed from: j0 */
    public PorterDuff.Mode f6923j0;

    /* renamed from: k */
    public int f6924k;

    /* renamed from: k0 */
    public boolean f6925k0;

    /* renamed from: l */
    public boolean f6926l;

    /* renamed from: l0 */
    public Drawable f6927l0;

    /* renamed from: m */
    public TextView f6928m;

    /* renamed from: m0 */
    public int f6929m0;

    /* renamed from: n */
    public int f6930n;

    /* renamed from: n0 */
    public View.OnLongClickListener f6931n0;

    /* renamed from: o */
    public int f6932o;

    /* renamed from: p */
    public CharSequence f6934p;

    /* renamed from: q */
    public boolean f6936q;

    /* renamed from: r */
    public TextView f6938r;

    /* renamed from: r0 */
    public final CheckableImageButton f6939r0;

    /* renamed from: s */
    public ColorStateList f6940s;

    /* renamed from: t */
    public int f6942t;

    /* renamed from: t0 */
    public ColorStateList f6943t0;

    /* renamed from: u */
    public ColorStateList f6944u;

    /* renamed from: u0 */
    public boolean f6945u0;

    /* renamed from: v */
    public ColorStateList f6946v;

    /* renamed from: v0 */
    public PorterDuff.Mode f6947v0;

    /* renamed from: w */
    public CharSequence f6948w;

    /* renamed from: w0 */
    public boolean f6949w0;

    /* renamed from: x */
    public final TextView f6950x;

    /* renamed from: x0 */
    public Drawable f6951x0;

    /* renamed from: y */
    public CharSequence f6952y;

    /* renamed from: y0 */
    public int f6953y0;

    /* renamed from: z */
    public final TextView f6954z;

    /* renamed from: z0 */
    public Drawable f6955z0;

    /* renamed from: g */
    public int f6916g = -1;

    /* renamed from: h */
    public int f6918h = -1;

    /* renamed from: i */
    public final n f6920i = new n(this);

    /* renamed from: T */
    public final Rect f6903T = new Rect();

    /* renamed from: U */
    public final Rect f6905U = new Rect();

    /* renamed from: V */
    public final RectF f6907V = new RectF();

    /* renamed from: o0 */
    public final LinkedHashSet<AbstractC2120f> f6933o0 = new LinkedHashSet<>();

    /* renamed from: p0 */
    public int f6935p0 = 0;

    /* renamed from: q0 */
    public final SparseArray<m> f6937q0 = new SparseArray<>();

    /* renamed from: s0 */
    public final LinkedHashSet<AbstractC2121g> f6941s0 = new LinkedHashSet<>();

    /* renamed from: com.google.android.material.textfield.TextInputLayout$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$a.class */
    public class C2116a implements TextWatcher {
        public C2116a() {
            TextInputLayout.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            TextInputLayout textInputLayout = TextInputLayout.this;
            textInputLayout.m38332y(!textInputLayout.f6908V0, false);
            TextInputLayout textInputLayout2 = TextInputLayout.this;
            if (textInputLayout2.f6922j) {
                textInputLayout2.m38337t(editable.length());
            }
            TextInputLayout textInputLayout3 = TextInputLayout.this;
            if (textInputLayout3.f6936q) {
                textInputLayout3.m38331z(editable.length());
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
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$b.class */
    public class RunnableC2117b implements Runnable {
        public RunnableC2117b() {
            TextInputLayout.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.f6939r0.performClick();
            TextInputLayout.this.f6939r0.jumpDrawablesToCurrentState();
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$c.class */
    public class RunnableC2118c implements Runnable {
        public RunnableC2118c() {
            TextInputLayout.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.f6914e.requestLayout();
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$d.class */
    public class C2119d implements ValueAnimator.AnimatorUpdateListener {
        public C2119d() {
            TextInputLayout.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TextInputLayout.this.f6898Q0.w(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$f */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$f.class */
    public interface AbstractC2120f {
        /* renamed from: a */
        void m38330a(TextInputLayout textInputLayout);
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$g */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$g.class */
    public interface AbstractC2121g {
        /* renamed from: a */
        void m38329a(TextInputLayout textInputLayout, int i);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TextInputLayout(android.content.Context r11, android.util.AttributeSet r12) {
        /*
            Method dump skipped, instructions count: 2615
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    private m getEndIconDelegate() {
        m mVar = this.f6937q0.get(this.f6935p0);
        if (mVar == null) {
            mVar = this.f6937q0.get(0);
        }
        return mVar;
    }

    private CheckableImageButton getEndIconToUpdateDummyDrawable() {
        if (this.f6874C0.getVisibility() == 0) {
            return this.f6874C0;
        }
        if (m38347j() && m38346k()) {
            return this.f6939r0;
        }
        return null;
    }

    /* renamed from: n */
    public static void m38343n(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                m38343n((ViewGroup) childAt, z);
            }
        }
    }

    /* renamed from: q */
    public static void m38340q(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        AtomicInteger atomicInteger = C26614s.f74505a;
        boolean hasOnClickListeners = checkableImageButton.hasOnClickListeners();
        boolean z = false;
        int i = 1;
        boolean z2 = onLongClickListener != null;
        if (hasOnClickListeners || z2) {
            z = true;
        }
        checkableImageButton.setFocusable(z);
        checkableImageButton.setClickable(hasOnClickListeners);
        checkableImageButton.setPressable(hasOnClickListeners);
        checkableImageButton.setLongClickable(z2);
        if (!z) {
            i = 2;
        }
        checkableImageButton.setImportantForAccessibility(i);
    }

    private void setEditText(EditText editText) {
        if (this.f6914e == null) {
            if (this.f6935p0 != 3) {
                boolean z = editText instanceof TextInputEditText;
            }
            this.f6914e = editText;
            setMinWidth(this.f6916g);
            setMaxWidth(this.f6918h);
            m38345l();
            setTextInputAccessibilityDelegate(new e(this));
            this.f6898Q0.A(this.f6914e.getTypeface());
            b bVar = this.f6898Q0;
            float textSize = this.f6914e.getTextSize();
            if (bVar.m != textSize) {
                bVar.m = textSize;
                bVar.m(false);
            }
            int gravity = this.f6914e.getGravity();
            this.f6898Q0.q((gravity & (-113)) | 48);
            this.f6898Q0.u(gravity);
            this.f6914e.addTextChangedListener(new C2116a());
            if (this.f6878E0 == null) {
                this.f6878E0 = this.f6914e.getHintTextColors();
            }
            if (this.f6869A) {
                if (TextUtils.isEmpty(this.f6871B)) {
                    CharSequence hint = this.f6914e.getHint();
                    this.f6915f = hint;
                    setHint(hint);
                    this.f6914e.setHint((CharSequence) null);
                }
                this.f6873C = true;
            }
            if (this.f6928m != null) {
                m38337t(this.f6914e.getText().length());
            }
            m38334w();
            this.f6920i.b();
            this.f6911b.bringToFront();
            this.f6912c.bringToFront();
            this.f6913d.bringToFront();
            this.f6874C0.bringToFront();
            Iterator<AbstractC2120f> it = this.f6933o0.iterator();
            while (it.hasNext()) {
                it.next().m38330a(this);
            }
            m38362A();
            m38359D();
            if (!isEnabled()) {
                editText.setEnabled(false);
            }
            m38332y(false, true);
            return;
        }
        throw new IllegalArgumentException("We already have an EditText, can only have one");
    }

    private void setErrorIconVisible(boolean z) {
        this.f6874C0.setVisibility(z ? 0 : 8);
        FrameLayout frameLayout = this.f6913d;
        int i = 0;
        if (z) {
            i = 8;
        }
        frameLayout.setVisibility(i);
        m38359D();
        if (!m38347j()) {
            m38335v();
        }
    }

    private void setHintInternal(CharSequence charSequence) {
        if (!TextUtils.equals(charSequence, this.f6871B)) {
            this.f6871B = charSequence;
            this.f6898Q0.z(charSequence);
            if (this.f6896P0) {
                return;
            }
            m38344m();
        }
    }

    private void setPlaceholderTextEnabled(boolean z) {
        if (this.f6936q == z) {
            return;
        }
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
            this.f6938r = appCompatTextView;
            appCompatTextView.setId(C2080R.C2082id.textinput_placeholder);
            TextView textView = this.f6938r;
            AtomicInteger atomicInteger = C26614s.f74505a;
            textView.setAccessibilityLiveRegion(1);
            setPlaceholderTextAppearance(this.f6942t);
            setPlaceholderTextColor(this.f6940s);
            TextView textView2 = this.f6938r;
            if (textView2 != null) {
                this.f6910a.addView(textView2);
                this.f6938r.setVisibility(0);
            }
        } else {
            TextView textView3 = this.f6938r;
            if (textView3 != null) {
                textView3.setVisibility(8);
            }
            this.f6938r = null;
        }
        this.f6936q = z;
    }

    /* renamed from: A */
    public final void m38362A() {
        int i;
        if (this.f6914e == null) {
            return;
        }
        if (this.f6917g0.getVisibility() == 0) {
            i = 0;
        } else {
            EditText editText = this.f6914e;
            AtomicInteger atomicInteger = C26614s.f74505a;
            i = editText.getPaddingStart();
        }
        TextView textView = this.f6950x;
        int compoundPaddingTop = this.f6914e.getCompoundPaddingTop();
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(C2080R.dimen.material_input_text_to_prefix_suffix_padding);
        int compoundPaddingBottom = this.f6914e.getCompoundPaddingBottom();
        AtomicInteger atomicInteger2 = C26614s.f74505a;
        textView.setPaddingRelative(i, compoundPaddingTop, dimensionPixelSize, compoundPaddingBottom);
    }

    /* renamed from: B */
    public final void m38361B() {
        this.f6950x.setVisibility((this.f6948w == null || this.f6896P0) ? 8 : 0);
        m38335v();
    }

    /* renamed from: C */
    public final void m38360C(boolean z, boolean z2) {
        int defaultColor = this.f6884J0.getDefaultColor();
        int colorForState = this.f6884J0.getColorForState(new int[]{16843623, 16842910}, defaultColor);
        int colorForState2 = this.f6884J0.getColorForState(new int[]{16843518, 16842910}, defaultColor);
        if (z) {
            this.f6899R = colorForState2;
        } else if (z2) {
            this.f6899R = colorForState;
        } else {
            this.f6899R = defaultColor;
        }
    }

    /* renamed from: D */
    public final void m38359D() {
        if (this.f6914e == null) {
            return;
        }
        int i = 0;
        if (!m38346k()) {
            if (this.f6874C0.getVisibility() == 0) {
                i = 0;
            } else {
                EditText editText = this.f6914e;
                AtomicInteger atomicInteger = C26614s.f74505a;
                i = editText.getPaddingEnd();
            }
        }
        TextView textView = this.f6954z;
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(C2080R.dimen.material_input_text_to_prefix_suffix_padding);
        int paddingTop = this.f6914e.getPaddingTop();
        int paddingBottom = this.f6914e.getPaddingBottom();
        AtomicInteger atomicInteger2 = C26614s.f74505a;
        textView.setPaddingRelative(dimensionPixelSize, paddingTop, i, paddingBottom);
    }

    /* renamed from: E */
    public final void m38358E() {
        int visibility = this.f6954z.getVisibility();
        int i = 0;
        boolean z = this.f6952y != null && !this.f6896P0;
        TextView textView = this.f6954z;
        if (!z) {
            i = 8;
        }
        textView.setVisibility(i);
        if (visibility != this.f6954z.getVisibility()) {
            getEndIconDelegate().c(z);
        }
        m38335v();
    }

    /* renamed from: F */
    public void m38357F() {
        TextView textView;
        EditText editText;
        EditText editText2;
        if (this.f6875D == null || this.f6889M == 0) {
            return;
        }
        boolean z = isFocused() || ((editText2 = this.f6914e) != null && editText2.hasFocus());
        boolean z2 = isHovered() || ((editText = this.f6914e) != null && editText.isHovered());
        if (!isEnabled()) {
            this.f6899R = this.f6894O0;
        } else if (this.f6920i.e()) {
            if (this.f6884J0 != null) {
                m38360C(z, z2);
            } else {
                this.f6899R = this.f6920i.g();
            }
        } else if (!this.f6926l || (textView = this.f6928m) == null) {
            if (z) {
                this.f6899R = this.f6882I0;
            } else if (z2) {
                this.f6899R = this.f6881H0;
            } else {
                this.f6899R = this.f6880G0;
            }
        } else if (this.f6884J0 != null) {
            m38360C(z, z2);
        } else {
            this.f6899R = textView.getCurrentTextColor();
        }
        boolean z3 = false;
        if (getErrorIconDrawable() != null) {
            n nVar = this.f6920i;
            z3 = false;
            if (nVar.k) {
                z3 = false;
                if (nVar.e()) {
                    z3 = true;
                }
            }
        }
        setErrorIconVisible(z3);
        m38341p(this.f6874C0, this.f6876D0);
        m38341p(this.f6917g0, this.f6919h0);
        m38342o();
        if (getEndIconDelegate().d()) {
            if (!this.f6920i.e() || getEndIconDrawable() == null) {
                m38353d();
            } else {
                Drawable mutate = getEndIconDrawable().mutate();
                mutate.setTint(this.f6920i.g());
                this.f6939r0.setImageDrawable(mutate);
            }
        }
        if (!z || !isEnabled()) {
            this.f6893O = this.f6895P;
        } else {
            this.f6893O = this.f6897Q;
        }
        if (this.f6889M == 2 && m38350g() && !this.f6896P0 && this.f6887L != this.f6893O) {
            if (m38350g()) {
                this.f6875D.B(0.0f, 0.0f, 0.0f, 0.0f);
            }
            m38344m();
        }
        if (this.f6889M == 1) {
            if (!isEnabled()) {
                this.f6901S = this.f6888L0;
            } else if (z2 && !z) {
                this.f6901S = this.f6892N0;
            } else if (z) {
                this.f6901S = this.f6890M0;
            } else {
                this.f6901S = this.f6886K0;
            }
        }
        m38354c();
    }

    /* renamed from: a */
    public void m38356a(AbstractC2120f abstractC2120f) {
        this.f6933o0.add(abstractC2120f);
        if (this.f6914e != null) {
            abstractC2120f.m38330a(this);
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
        this.f6910a.addView(view, layoutParams2);
        this.f6910a.setLayoutParams(layoutParams);
        m38333x();
        setEditText((EditText) view);
    }

    /* renamed from: b */
    public void m38355b(float f) {
        if (this.f6898Q0.c == f) {
            return;
        }
        if (this.f6904T0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f6904T0 = valueAnimator;
            valueAnimator.setInterpolator(C25156a.f70398b);
            this.f6904T0.setDuration(167L);
            this.f6904T0.addUpdateListener(new C2119d());
        }
        this.f6904T0.setFloatValues(this.f6898Q0.c, f);
        this.f6904T0.start();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a5  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m38354c() {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.m38354c():void");
    }

    /* renamed from: d */
    public final void m38353d() {
        m38352e(this.f6939r0, this.f6945u0, this.f6943t0, this.f6949w0, this.f6947v0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        EditText editText = this.f6914e;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        if (this.f6915f != null) {
            boolean z = this.f6873C;
            this.f6873C = false;
            CharSequence hint = editText.getHint();
            this.f6914e.setHint(this.f6915f);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
                return;
            } finally {
                this.f6914e.setHint(hint);
                this.f6873C = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i);
        onProvideAutofillVirtualStructure(viewStructure, i);
        viewStructure.setChildCount(this.f6910a.getChildCount());
        for (int i2 = 0; i2 < this.f6910a.getChildCount(); i2++) {
            View childAt = this.f6910a.getChildAt(i2);
            ViewStructure newChild = viewStructure.newChild(i2);
            childAt.dispatchProvideAutofillStructure(newChild, i);
            if (childAt == this.f6914e) {
                newChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.f6908V0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f6908V0 = false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f6869A) {
            this.f6898Q0.g(canvas);
        }
        h hVar = this.f6877E;
        if (hVar != null) {
            Rect bounds = hVar.getBounds();
            bounds.top = bounds.bottom - this.f6893O;
            this.f6877E.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        if (this.f6906U0) {
            return;
        }
        boolean z = true;
        this.f6906U0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        b bVar = this.f6898Q0;
        boolean y = bVar != null ? bVar.y(drawableState) | false : false;
        if (this.f6914e != null) {
            AtomicInteger atomicInteger = C26614s.f74505a;
            if (!isLaidOut() || !isEnabled()) {
                z = false;
            }
            m38332y(z, false);
        }
        m38334w();
        m38357F();
        if (y) {
            invalidate();
        }
        this.f6906U0 = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0019, code lost:
        if (r7 != false) goto L8;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m38352e(com.google.android.material.internal.CheckableImageButton r4, boolean r5, android.content.res.ColorStateList r6, boolean r7, android.graphics.PorterDuff.Mode r8) {
        /*
            r3 = this;
            r0 = r4
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L41
            r0 = r5
            if (r0 != 0) goto L1c
            r0 = r9
            r10 = r0
            r0 = r7
            if (r0 == 0) goto L41
        L1c:
            r0 = r9
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r9 = r0
            r0 = r5
            if (r0 == 0) goto L2d
            r0 = r9
            r1 = r6
            r0.setTintList(r1)
        L2d:
            r0 = r9
            r10 = r0
            r0 = r7
            if (r0 == 0) goto L41
            r0 = r9
            r1 = r8
            r0.setTintMode(r1)
            r0 = r9
            r10 = r0
        L41:
            r0 = r4
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            r1 = r10
            if (r0 == r1) goto L50
            r0 = r4
            r1 = r10
            r0.setImageDrawable(r1)
        L50:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.m38352e(com.google.android.material.internal.CheckableImageButton, boolean, android.content.res.ColorStateList, boolean, android.graphics.PorterDuff$Mode):void");
    }

    /* renamed from: f */
    public final int m38351f() {
        float h;
        if (!this.f6869A) {
            return 0;
        }
        int i = this.f6889M;
        if (i == 0 || i == 1) {
            h = this.f6898Q0.h();
        } else if (i != 2) {
            return 0;
        } else {
            h = this.f6898Q0.h() / 2.0f;
        }
        return (int) h;
    }

    /* renamed from: g */
    public final boolean m38350g() {
        return this.f6869A && !TextUtils.isEmpty(this.f6871B) && (this.f6875D instanceof g);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f6914e;
        if (editText != null) {
            int baseline = editText.getBaseline();
            return m38351f() + getPaddingTop() + baseline;
        }
        return super.getBaseline();
    }

    public h getBoxBackground() {
        int i = this.f6889M;
        if (i == 1 || i == 2) {
            return this.f6875D;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.f6901S;
    }

    public int getBoxBackgroundMode() {
        return this.f6889M;
    }

    public float getBoxCornerRadiusBottomEnd() {
        h hVar = this.f6875D;
        return hVar.a.a.h.a(hVar.h());
    }

    public float getBoxCornerRadiusBottomStart() {
        h hVar = this.f6875D;
        return hVar.a.a.g.a(hVar.h());
    }

    public float getBoxCornerRadiusTopEnd() {
        h hVar = this.f6875D;
        return hVar.a.a.f.a(hVar.h());
    }

    public float getBoxCornerRadiusTopStart() {
        return this.f6875D.l();
    }

    public int getBoxStrokeColor() {
        return this.f6882I0;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.f6884J0;
    }

    public int getBoxStrokeWidth() {
        return this.f6895P;
    }

    public int getBoxStrokeWidthFocused() {
        return this.f6897Q;
    }

    public int getCounterMaxLength() {
        return this.f6924k;
    }

    public CharSequence getCounterOverflowDescription() {
        TextView textView;
        if (!this.f6922j || !this.f6926l || (textView = this.f6928m) == null) {
            return null;
        }
        return textView.getContentDescription();
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.f6944u;
    }

    public ColorStateList getCounterTextColor() {
        return this.f6944u;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.f6878E0;
    }

    public EditText getEditText() {
        return this.f6914e;
    }

    public CharSequence getEndIconContentDescription() {
        return this.f6939r0.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.f6939r0.getDrawable();
    }

    public int getEndIconMode() {
        return this.f6935p0;
    }

    public CheckableImageButton getEndIconView() {
        return this.f6939r0;
    }

    public CharSequence getError() {
        n nVar = this.f6920i;
        return nVar.k ? nVar.j : null;
    }

    public CharSequence getErrorContentDescription() {
        return this.f6920i.m;
    }

    public int getErrorCurrentTextColors() {
        return this.f6920i.g();
    }

    public Drawable getErrorIconDrawable() {
        return this.f6874C0.getDrawable();
    }

    public final int getErrorTextCurrentColor() {
        return this.f6920i.g();
    }

    public CharSequence getHelperText() {
        n nVar = this.f6920i;
        return nVar.q ? nVar.p : null;
    }

    public int getHelperTextCurrentTextColor() {
        TextView textView = this.f6920i.r;
        return textView != null ? textView.getCurrentTextColor() : -1;
    }

    public CharSequence getHint() {
        return this.f6869A ? this.f6871B : null;
    }

    public final float getHintCollapsedTextHeight() {
        return this.f6898Q0.h();
    }

    public final int getHintCurrentCollapsedTextColor() {
        return this.f6898Q0.i();
    }

    public ColorStateList getHintTextColor() {
        return this.f6879F0;
    }

    public int getMaxWidth() {
        return this.f6918h;
    }

    public int getMinWidth() {
        return this.f6916g;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f6939r0.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f6939r0.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        return this.f6936q ? this.f6934p : null;
    }

    public int getPlaceholderTextAppearance() {
        return this.f6942t;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.f6940s;
    }

    public CharSequence getPrefixText() {
        return this.f6948w;
    }

    public ColorStateList getPrefixTextColor() {
        return this.f6950x.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.f6950x;
    }

    public CharSequence getStartIconContentDescription() {
        return this.f6917g0.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.f6917g0.getDrawable();
    }

    public CharSequence getSuffixText() {
        return this.f6952y;
    }

    public ColorStateList getSuffixTextColor() {
        return this.f6954z.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.f6954z;
    }

    public Typeface getTypeface() {
        return this.f6909W;
    }

    /* renamed from: h */
    public final int m38349h(int i, boolean z) {
        int compoundPaddingLeft = this.f6914e.getCompoundPaddingLeft() + i;
        int i2 = compoundPaddingLeft;
        if (this.f6948w != null) {
            i2 = compoundPaddingLeft;
            if (!z) {
                i2 = (compoundPaddingLeft - this.f6950x.getMeasuredWidth()) + this.f6950x.getPaddingLeft();
            }
        }
        return i2;
    }

    /* renamed from: i */
    public final int m38348i(int i, boolean z) {
        int compoundPaddingRight = i - this.f6914e.getCompoundPaddingRight();
        int i2 = compoundPaddingRight;
        if (this.f6948w != null) {
            i2 = compoundPaddingRight;
            if (z) {
                i2 = compoundPaddingRight + (this.f6950x.getMeasuredWidth() - this.f6950x.getPaddingRight());
            }
        }
        return i2;
    }

    /* renamed from: j */
    public final boolean m38347j() {
        return this.f6935p0 != 0;
    }

    /* renamed from: k */
    public boolean m38346k() {
        return this.f6913d.getVisibility() == 0 && this.f6939r0.getVisibility() == 0;
    }

    /* renamed from: l */
    public final void m38345l() {
        int i = this.f6889M;
        if (i == 0) {
            this.f6875D = null;
            this.f6877E = null;
        } else if (i == 1) {
            this.f6875D = new h(this.f6883J);
            this.f6877E = new h();
        } else if (i != 2) {
            throw new IllegalArgumentException(C22128a.m8697J2(new StringBuilder(), this.f6889M, " is illegal; only @BoxBackgroundMode constants are supported."));
        } else {
            if (!this.f6869A || (this.f6875D instanceof g)) {
                this.f6875D = new h(this.f6883J);
            } else {
                this.f6875D = new g(this.f6883J);
            }
            this.f6877E = null;
        }
        EditText editText = this.f6914e;
        if ((editText == null || this.f6875D == null || editText.getBackground() != null || this.f6889M == 0) ? false : true) {
            EditText editText2 = this.f6914e;
            h hVar = this.f6875D;
            AtomicInteger atomicInteger = C26614s.f74505a;
            editText2.setBackground(hVar);
        }
        m38357F();
        if (this.f6889M == 1) {
            if (C26232y.m2411T0(getContext())) {
                this.f6891N = getResources().getDimensionPixelSize(C2080R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (C26232y.m2415S0(getContext())) {
                this.f6891N = getResources().getDimensionPixelSize(C2080R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
        if (this.f6914e != null && this.f6889M == 1) {
            if (C26232y.m2411T0(getContext())) {
                EditText editText3 = this.f6914e;
                AtomicInteger atomicInteger2 = C26614s.f74505a;
                editText3.setPaddingRelative(editText3.getPaddingStart(), getResources().getDimensionPixelSize(C2080R.dimen.material_filled_edittext_font_2_0_padding_top), this.f6914e.getPaddingEnd(), getResources().getDimensionPixelSize(C2080R.dimen.material_filled_edittext_font_2_0_padding_bottom));
            } else if (C26232y.m2415S0(getContext())) {
                EditText editText4 = this.f6914e;
                AtomicInteger atomicInteger3 = C26614s.f74505a;
                editText4.setPaddingRelative(editText4.getPaddingStart(), getResources().getDimensionPixelSize(C2080R.dimen.material_filled_edittext_font_1_3_padding_top), this.f6914e.getPaddingEnd(), getResources().getDimensionPixelSize(C2080R.dimen.material_filled_edittext_font_1_3_padding_bottom));
            }
        }
        if (this.f6889M != 0) {
            m38333x();
        }
    }

    /* renamed from: m */
    public final void m38344m() {
        float f;
        float f2;
        int i;
        float f3;
        float f4;
        float f5;
        int i2;
        if (!m38350g()) {
            return;
        }
        RectF rectF = this.f6907V;
        b bVar = this.f6898Q0;
        int width = this.f6914e.getWidth();
        int gravity = this.f6914e.getGravity();
        boolean c = bVar.c(bVar.B);
        bVar.D = c;
        if (gravity != 17 && (gravity & 7) != 1) {
            if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                if (c) {
                    i2 = bVar.i.left;
                    f = i2;
                } else {
                    f5 = bVar.i.right;
                    f4 = bVar.b();
                }
            } else if (c) {
                f5 = bVar.i.right;
                f4 = bVar.b();
            } else {
                i2 = bVar.i.left;
                f = i2;
            }
            rectF.left = f;
            Rect rect = bVar.i;
            rectF.top = rect.top;
            if (gravity != 17 || (gravity & 7) == 1) {
                f2 = (width / 2.0f) + (bVar.b() / 2.0f);
            } else if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                if (bVar.D) {
                    f3 = bVar.b();
                    f2 = f3 + f;
                } else {
                    i = rect.right;
                    f2 = i;
                }
            } else if (bVar.D) {
                i = rect.right;
                f2 = i;
            } else {
                f3 = bVar.b();
                f2 = f3 + f;
            }
            rectF.right = f2;
            rectF.bottom = bVar.h() + bVar.i.top;
            float f6 = rectF.left;
            float f7 = this.f6885K;
            rectF.left = f6 - f7;
            rectF.right += f7;
            int i3 = this.f6893O;
            this.f6887L = i3;
            rectF.top = 0.0f;
            rectF.bottom = i3;
            rectF.offset(-getPaddingLeft(), 0.0f);
            g gVar = this.f6875D;
            Objects.requireNonNull(gVar);
            gVar.B(rectF.left, rectF.top, rectF.right, rectF.bottom);
        }
        f5 = width / 2.0f;
        f4 = bVar.b() / 2.0f;
        f = f5 - f4;
        rectF.left = f;
        Rect rect2 = bVar.i;
        rectF.top = rect2.top;
        if (gravity != 17) {
        }
        f2 = (width / 2.0f) + (bVar.b() / 2.0f);
        rectF.right = f2;
        rectF.bottom = bVar.h() + bVar.i.top;
        float f62 = rectF.left;
        float f72 = this.f6885K;
        rectF.left = f62 - f72;
        rectF.right += f72;
        int i32 = this.f6893O;
        this.f6887L = i32;
        rectF.top = 0.0f;
        rectF.bottom = i32;
        rectF.offset(-getPaddingLeft(), 0.0f);
        g gVar2 = this.f6875D;
        Objects.requireNonNull(gVar2);
        gVar2.B(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    /* renamed from: o */
    public void m38342o() {
        m38341p(this.f6939r0, this.f6943t0);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.f6914e;
        if (editText != null) {
            Rect rect = this.f6903T;
            c.a(this, editText, rect);
            h hVar = this.f6877E;
            if (hVar != null) {
                int i5 = rect.bottom;
                hVar.setBounds(rect.left, i5 - this.f6897Q, rect.right, i5);
            }
            if (!this.f6869A) {
                return;
            }
            b bVar = this.f6898Q0;
            float textSize = this.f6914e.getTextSize();
            if (bVar.m != textSize) {
                bVar.m = textSize;
                bVar.m(false);
            }
            int gravity = this.f6914e.getGravity();
            this.f6898Q0.q((gravity & (-113)) | 48);
            this.f6898Q0.u(gravity);
            b bVar2 = this.f6898Q0;
            if (this.f6914e == null) {
                throw new IllegalStateException();
            }
            Rect rect2 = this.f6905U;
            AtomicInteger atomicInteger = C26614s.f74505a;
            boolean z2 = getLayoutDirection() == 1;
            rect2.bottom = rect.bottom;
            int i6 = this.f6889M;
            if (i6 == 1) {
                rect2.left = m38349h(rect.left, z2);
                rect2.top = rect.top + this.f6891N;
                rect2.right = m38348i(rect.right, z2);
            } else if (i6 != 2) {
                rect2.left = m38349h(rect.left, z2);
                rect2.top = getPaddingTop();
                rect2.right = m38348i(rect.right, z2);
            } else {
                rect2.left = this.f6914e.getPaddingLeft() + rect.left;
                rect2.top = rect.top - m38351f();
                rect2.right = rect.right - this.f6914e.getPaddingRight();
            }
            Objects.requireNonNull(bVar2);
            int i7 = rect2.left;
            int i8 = rect2.top;
            int i9 = rect2.right;
            int i10 = rect2.bottom;
            if (!b.n(bVar2.i, i7, i8, i9, i10)) {
                bVar2.i.set(i7, i8, i9, i10);
                bVar2.J = true;
                bVar2.l();
            }
            b bVar3 = this.f6898Q0;
            if (this.f6914e == null) {
                throw new IllegalStateException();
            }
            Rect rect3 = this.f6905U;
            TextPaint textPaint = bVar3.L;
            textPaint.setTextSize(bVar3.m);
            textPaint.setTypeface(bVar3.x);
            textPaint.setLetterSpacing(bVar3.X);
            float f = -bVar3.L.ascent();
            rect3.left = this.f6914e.getCompoundPaddingLeft() + rect.left;
            rect3.top = this.f6889M == 1 && this.f6914e.getMinLines() <= 1 ? (int) (rect.centerY() - (f / 2.0f)) : rect.top + this.f6914e.getCompoundPaddingTop();
            rect3.right = rect.right - this.f6914e.getCompoundPaddingRight();
            int compoundPaddingBottom = this.f6889M == 1 && this.f6914e.getMinLines() <= 1 ? (int) (rect3.top + f) : rect.bottom - this.f6914e.getCompoundPaddingBottom();
            rect3.bottom = compoundPaddingBottom;
            int i11 = rect3.left;
            int i12 = rect3.top;
            int i13 = rect3.right;
            if (!b.n(bVar3.h, i11, i12, i13, compoundPaddingBottom)) {
                bVar3.h.set(i11, i12, i13, compoundPaddingBottom);
                bVar3.J = true;
                bVar3.l();
            }
            this.f6898Q0.m(false);
            if (!m38350g() || this.f6896P0) {
                return;
            }
            m38344m();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        EditText editText;
        int max;
        super.onMeasure(i, i2);
        boolean z = false;
        if (this.f6914e != null && this.f6914e.getMeasuredHeight() < (max = Math.max(this.f6912c.getMeasuredHeight(), this.f6911b.getMeasuredHeight()))) {
            this.f6914e.setMinimumHeight(max);
            z = true;
        }
        boolean m38335v = m38335v();
        if (z || m38335v) {
            this.f6914e.post(new RunnableC2118c());
        }
        if (this.f6938r != null && (editText = this.f6914e) != null) {
            this.f6938r.setGravity(editText.getGravity());
            this.f6938r.setPadding(this.f6914e.getCompoundPaddingLeft(), this.f6914e.getCompoundPaddingTop(), this.f6914e.getCompoundPaddingRight(), this.f6914e.getCompoundPaddingBottom());
        }
        m38362A();
        m38359D();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f713a);
        setError(savedState.c);
        if (savedState.d) {
            this.f6939r0.post(new RunnableC2117b());
        }
        setHint(savedState.e);
        setHelperText(savedState.f);
        setPlaceholderText(savedState.g);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.f6920i.e()) {
            savedState.c = getError();
        }
        savedState.d = m38347j() && this.f6939r0.isChecked();
        savedState.e = getHint();
        savedState.f = getHelperText();
        savedState.g = getPlaceholderText();
        return savedState;
    }

    /* renamed from: p */
    public final void m38341p(CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
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
        Drawable mutate = drawable.mutate();
        mutate.setTintList(ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(mutate);
    }

    /* renamed from: r */
    public void m38339r(TextView textView, int i) {
        boolean z;
        try {
            textView.setTextAppearance(i);
            z = textView.getTextColors().getDefaultColor() == -65281;
        } catch (Exception e) {
            z = true;
        }
        if (z) {
            textView.setTextAppearance(C2080R.style.TextAppearance_AppCompat_Caption);
            Context context = getContext();
            int i2 = C2080R.color.design_error;
            Object obj = C26467a.f74235a;
            textView.setTextColor(C26467a.C26471d.m1787a(context, i2));
        }
    }

    /* renamed from: s */
    public final void m38338s() {
        if (this.f6928m != null) {
            EditText editText = this.f6914e;
            m38337t(editText == null ? 0 : editText.getText().length());
        }
    }

    public void setBoxBackgroundColor(int i) {
        if (this.f6901S != i) {
            this.f6901S = i;
            this.f6886K0 = i;
            this.f6890M0 = i;
            this.f6892N0 = i;
            m38354c();
        }
    }

    public void setBoxBackgroundColorResource(int i) {
        Context context = getContext();
        Object obj = C26467a.f74235a;
        setBoxBackgroundColor(C26467a.C26471d.m1787a(context, i));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.f6886K0 = defaultColor;
        this.f6901S = defaultColor;
        this.f6888L0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.f6890M0 = colorStateList.getColorForState(new int[]{16842908, 16842910}, -1);
        this.f6892N0 = colorStateList.getColorForState(new int[]{16843623, 16842910}, -1);
        m38354c();
    }

    public void setBoxBackgroundMode(int i) {
        if (i == this.f6889M) {
            return;
        }
        this.f6889M = i;
        if (this.f6914e == null) {
            return;
        }
        m38345l();
    }

    public void setBoxStrokeColor(int i) {
        if (this.f6882I0 != i) {
            this.f6882I0 = i;
            m38357F();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.f6880G0 = colorStateList.getDefaultColor();
            this.f6894O0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.f6881H0 = colorStateList.getColorForState(new int[]{16843623, 16842910}, -1);
            this.f6882I0 = colorStateList.getColorForState(new int[]{16842908, 16842910}, -1);
        } else if (this.f6882I0 != colorStateList.getDefaultColor()) {
            this.f6882I0 = colorStateList.getDefaultColor();
        }
        m38357F();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) {
        if (this.f6884J0 != colorStateList) {
            this.f6884J0 = colorStateList;
            m38357F();
        }
    }

    public void setBoxStrokeWidth(int i) {
        this.f6895P = i;
        m38357F();
    }

    public void setBoxStrokeWidthFocused(int i) {
        this.f6897Q = i;
        m38357F();
    }

    public void setBoxStrokeWidthFocusedResource(int i) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i));
    }

    public void setBoxStrokeWidthResource(int i) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public void setCounterEnabled(boolean z) {
        if (this.f6922j != z) {
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
                this.f6928m = appCompatTextView;
                appCompatTextView.setId(C2080R.C2082id.textinput_counter);
                Typeface typeface = this.f6909W;
                if (typeface != null) {
                    this.f6928m.setTypeface(typeface);
                }
                this.f6928m.setMaxLines(1);
                this.f6920i.a(this.f6928m, 2);
                ((ViewGroup.MarginLayoutParams) this.f6928m.getLayoutParams()).setMarginStart(getResources().getDimensionPixelOffset(C2080R.dimen.mtrl_textinput_counter_margin_start));
                m38336u();
                m38338s();
            } else {
                this.f6920i.j(this.f6928m, 2);
                this.f6928m = null;
            }
            this.f6922j = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.f6924k != i) {
            if (i > 0) {
                this.f6924k = i;
            } else {
                this.f6924k = -1;
            }
            if (!this.f6922j) {
                return;
            }
            m38338s();
        }
    }

    public void setCounterOverflowTextAppearance(int i) {
        if (this.f6930n != i) {
            this.f6930n = i;
            m38336u();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.f6946v != colorStateList) {
            this.f6946v = colorStateList;
            m38336u();
        }
    }

    public void setCounterTextAppearance(int i) {
        if (this.f6932o != i) {
            this.f6932o = i;
            m38336u();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.f6944u != colorStateList) {
            this.f6944u = colorStateList;
            m38336u();
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.f6878E0 = colorStateList;
        this.f6879F0 = colorStateList;
        if (this.f6914e != null) {
            m38332y(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        m38343n(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.f6939r0.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.f6939r0.setCheckable(z);
    }

    public void setEndIconContentDescription(int i) {
        setEndIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        if (getEndIconContentDescription() != charSequence) {
            this.f6939r0.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(int i) {
        setEndIconDrawable(i != 0 ? C25440a.m3540a(getContext(), i) : null);
    }

    public void setEndIconDrawable(Drawable drawable) {
        this.f6939r0.setImageDrawable(drawable);
        m38342o();
    }

    public void setEndIconMode(int i) {
        int i2 = this.f6935p0;
        this.f6935p0 = i;
        Iterator<AbstractC2121g> it = this.f6941s0.iterator();
        while (it.hasNext()) {
            it.next().m38329a(this, i2);
        }
        setEndIconVisible(i != 0);
        if (getEndIconDelegate().b(this.f6889M)) {
            getEndIconDelegate().a();
            m38353d();
            return;
        }
        StringBuilder m8728C = C22128a.m8728C("The current box background mode ");
        m8728C.append(this.f6889M);
        m8728C.append(" is not supported by the end icon mode ");
        m8728C.append(i);
        throw new IllegalStateException(m8728C.toString());
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        CheckableImageButton checkableImageButton = this.f6939r0;
        View.OnLongClickListener onLongClickListener = this.f6870A0;
        checkableImageButton.setOnClickListener(onClickListener);
        m38340q(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f6870A0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.f6939r0;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        m38340q(checkableImageButton, onLongClickListener);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        if (this.f6943t0 != colorStateList) {
            this.f6943t0 = colorStateList;
            this.f6945u0 = true;
            m38353d();
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        if (this.f6947v0 != mode) {
            this.f6947v0 = mode;
            this.f6949w0 = true;
            m38353d();
        }
    }

    public void setEndIconVisible(boolean z) {
        if (m38346k() != z) {
            this.f6939r0.setVisibility(z ? 0 : 8);
            m38359D();
            m38335v();
        }
    }

    public void setError(CharSequence charSequence) {
        if (!this.f6920i.k) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            setErrorEnabled(true);
        }
        if (TextUtils.isEmpty(charSequence)) {
            this.f6920i.i();
            return;
        }
        n nVar = this.f6920i;
        nVar.c();
        nVar.j = charSequence;
        nVar.l.setText(charSequence);
        int i = nVar.h;
        if (i != 1) {
            nVar.i = 1;
        }
        nVar.l(i, nVar.i, nVar.k(nVar.l, charSequence));
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        n nVar = this.f6920i;
        nVar.m = charSequence;
        TextView textView = nVar.l;
        if (textView != null) {
            textView.setContentDescription(charSequence);
        }
    }

    public void setErrorEnabled(boolean z) {
        n nVar = this.f6920i;
        if (nVar.k == z) {
            return;
        }
        nVar.c();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(nVar.a, null);
            nVar.l = appCompatTextView;
            appCompatTextView.setId(C2080R.C2082id.textinput_error);
            nVar.l.setTextAlignment(5);
            Typeface typeface = nVar.u;
            if (typeface != null) {
                nVar.l.setTypeface(typeface);
            }
            int i = nVar.n;
            nVar.n = i;
            TextView textView = nVar.l;
            if (textView != null) {
                nVar.b.m38339r(textView, i);
            }
            ColorStateList colorStateList = nVar.o;
            nVar.o = colorStateList;
            TextView textView2 = nVar.l;
            if (textView2 != null && colorStateList != null) {
                textView2.setTextColor(colorStateList);
            }
            CharSequence charSequence = nVar.m;
            nVar.m = charSequence;
            TextView textView3 = nVar.l;
            if (textView3 != null) {
                textView3.setContentDescription(charSequence);
            }
            nVar.l.setVisibility(4);
            TextView textView4 = nVar.l;
            AtomicInteger atomicInteger = C26614s.f74505a;
            textView4.setAccessibilityLiveRegion(1);
            nVar.a(nVar.l, 0);
        } else {
            nVar.i();
            nVar.j(nVar.l, 0);
            nVar.l = null;
            nVar.b.m38334w();
            nVar.b.m38357F();
        }
        nVar.k = z;
    }

    public void setErrorIconDrawable(int i) {
        setErrorIconDrawable(i != 0 ? C25440a.m3540a(getContext(), i) : null);
        m38341p(this.f6874C0, this.f6876D0);
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.f6874C0.setImageDrawable(drawable);
        setErrorIconVisible(drawable != null && this.f6920i.k);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        CheckableImageButton checkableImageButton = this.f6874C0;
        View.OnLongClickListener onLongClickListener = this.f6872B0;
        checkableImageButton.setOnClickListener(onClickListener);
        m38340q(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f6872B0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.f6874C0;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        m38340q(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        this.f6876D0 = colorStateList;
        Drawable drawable = this.f6874C0.getDrawable();
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = drawable.mutate();
            drawable2.setTintList(colorStateList);
        }
        if (this.f6874C0.getDrawable() != drawable2) {
            this.f6874C0.setImageDrawable(drawable2);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f6874C0.getDrawable();
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = drawable.mutate();
            drawable2.setTintMode(mode);
        }
        if (this.f6874C0.getDrawable() != drawable2) {
            this.f6874C0.setImageDrawable(drawable2);
        }
    }

    public void setErrorTextAppearance(int i) {
        n nVar = this.f6920i;
        nVar.n = i;
        TextView textView = nVar.l;
        if (textView != null) {
            nVar.b.m38339r(textView, i);
        }
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        n nVar = this.f6920i;
        nVar.o = colorStateList;
        TextView textView = nVar.l;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z) {
        if (this.f6900R0 != z) {
            this.f6900R0 = z;
            m38332y(false, false);
        }
    }

    public void setHelperText(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (!this.f6920i.q) {
                return;
            }
            setHelperTextEnabled(false);
            return;
        }
        if (!this.f6920i.q) {
            setHelperTextEnabled(true);
        }
        n nVar = this.f6920i;
        nVar.c();
        nVar.p = charSequence;
        nVar.r.setText(charSequence);
        int i = nVar.h;
        if (i != 2) {
            nVar.i = 2;
        }
        nVar.l(i, nVar.i, nVar.k(nVar.r, charSequence));
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        n nVar = this.f6920i;
        nVar.t = colorStateList;
        TextView textView = nVar.r;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    public void setHelperTextEnabled(boolean z) {
        n nVar = this.f6920i;
        if (nVar.q == z) {
            return;
        }
        nVar.c();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(nVar.a, null);
            nVar.r = appCompatTextView;
            appCompatTextView.setId(C2080R.C2082id.textinput_helper_text);
            nVar.r.setTextAlignment(5);
            Typeface typeface = nVar.u;
            if (typeface != null) {
                nVar.r.setTypeface(typeface);
            }
            nVar.r.setVisibility(4);
            TextView textView = nVar.r;
            AtomicInteger atomicInteger = C26614s.f74505a;
            textView.setAccessibilityLiveRegion(1);
            int i = nVar.s;
            nVar.s = i;
            TextView textView2 = nVar.r;
            if (textView2 != null) {
                textView2.setTextAppearance(i);
            }
            ColorStateList colorStateList = nVar.t;
            nVar.t = colorStateList;
            TextView textView3 = nVar.r;
            if (textView3 != null && colorStateList != null) {
                textView3.setTextColor(colorStateList);
            }
            nVar.a(nVar.r, 1);
        } else {
            nVar.c();
            int i2 = nVar.h;
            if (i2 == 2) {
                nVar.i = 0;
            }
            nVar.l(i2, nVar.i, nVar.k(nVar.r, (CharSequence) null));
            nVar.j(nVar.r, 1);
            nVar.r = null;
            nVar.b.m38334w();
            nVar.b.m38357F();
        }
        nVar.q = z;
    }

    public void setHelperTextTextAppearance(int i) {
        n nVar = this.f6920i;
        nVar.s = i;
        TextView textView = nVar.r;
        if (textView != null) {
            textView.setTextAppearance(i);
        }
    }

    public void setHint(int i) {
        setHint(i != 0 ? getResources().getText(i) : null);
    }

    public void setHint(CharSequence charSequence) {
        if (this.f6869A) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.f6902S0 = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.f6869A) {
            this.f6869A = z;
            if (!z) {
                this.f6873C = false;
                if (!TextUtils.isEmpty(this.f6871B) && TextUtils.isEmpty(this.f6914e.getHint())) {
                    this.f6914e.setHint(this.f6871B);
                }
                setHintInternal(null);
            } else {
                CharSequence hint = this.f6914e.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.f6871B)) {
                        setHint(hint);
                    }
                    this.f6914e.setHint((CharSequence) null);
                }
                this.f6873C = true;
            }
            if (this.f6914e == null) {
                return;
            }
            m38333x();
        }
    }

    public void setHintTextAppearance(int i) {
        this.f6898Q0.o(i);
        this.f6879F0 = this.f6898Q0.p;
        if (this.f6914e != null) {
            m38332y(false, false);
            m38333x();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.f6879F0 != colorStateList) {
            if (this.f6878E0 == null) {
                b bVar = this.f6898Q0;
                if (bVar.p != colorStateList) {
                    bVar.p = colorStateList;
                    bVar.m(false);
                }
            }
            this.f6879F0 = colorStateList;
            if (this.f6914e == null) {
                return;
            }
            m38332y(false, false);
        }
    }

    public void setMaxWidth(int i) {
        this.f6918h = i;
        EditText editText = this.f6914e;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMaxWidth(i);
    }

    public void setMaxWidthResource(int i) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    public void setMinWidth(int i) {
        this.f6916g = i;
        EditText editText = this.f6914e;
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
        this.f6939r0.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i) {
        setPasswordVisibilityToggleDrawable(i != 0 ? C25440a.m3540a(getContext(), i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.f6939r0.setImageDrawable(drawable);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        if (z && this.f6935p0 != 1) {
            setEndIconMode(1);
        } else if (z) {
        } else {
            setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        this.f6943t0 = colorStateList;
        this.f6945u0 = true;
        m38353d();
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        this.f6947v0 = mode;
        this.f6949w0 = true;
        m38353d();
    }

    public void setPlaceholderText(CharSequence charSequence) {
        int i = 0;
        if (!this.f6936q || !TextUtils.isEmpty(charSequence)) {
            if (!this.f6936q) {
                setPlaceholderTextEnabled(true);
            }
            this.f6934p = charSequence;
        } else {
            setPlaceholderTextEnabled(false);
        }
        EditText editText = this.f6914e;
        if (editText != null) {
            i = editText.getText().length();
        }
        m38331z(i);
    }

    public void setPlaceholderTextAppearance(int i) {
        this.f6942t = i;
        TextView textView = this.f6938r;
        if (textView != null) {
            textView.setTextAppearance(i);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.f6940s != colorStateList) {
            this.f6940s = colorStateList;
            TextView textView = this.f6938r;
            if (textView == null || colorStateList == null) {
                return;
            }
            textView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        this.f6948w = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f6950x.setText(charSequence);
        m38361B();
    }

    public void setPrefixTextAppearance(int i) {
        this.f6950x.setTextAppearance(i);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.f6950x.setTextColor(colorStateList);
    }

    public void setStartIconCheckable(boolean z) {
        this.f6917g0.setCheckable(z);
    }

    public void setStartIconContentDescription(int i) {
        setStartIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        if (getStartIconContentDescription() != charSequence) {
            this.f6917g0.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(int i) {
        setStartIconDrawable(i != 0 ? C25440a.m3540a(getContext(), i) : null);
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.f6917g0.setImageDrawable(drawable);
        if (drawable != null) {
            setStartIconVisible(true);
            m38341p(this.f6917g0, this.f6919h0);
            return;
        }
        setStartIconVisible(false);
        setStartIconOnClickListener(null);
        setStartIconOnLongClickListener(null);
        setStartIconContentDescription((CharSequence) null);
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        CheckableImageButton checkableImageButton = this.f6917g0;
        View.OnLongClickListener onLongClickListener = this.f6931n0;
        checkableImageButton.setOnClickListener(onClickListener);
        m38340q(checkableImageButton, onLongClickListener);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f6931n0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.f6917g0;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        m38340q(checkableImageButton, onLongClickListener);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        if (this.f6919h0 != colorStateList) {
            this.f6919h0 = colorStateList;
            this.f6921i0 = true;
            m38352e(this.f6917g0, true, colorStateList, this.f6925k0, this.f6923j0);
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        if (this.f6923j0 != mode) {
            this.f6923j0 = mode;
            this.f6925k0 = true;
            m38352e(this.f6917g0, this.f6921i0, this.f6919h0, true, mode);
        }
    }

    public void setStartIconVisible(boolean z) {
        int i = 0;
        if ((this.f6917g0.getVisibility() == 0) != z) {
            CheckableImageButton checkableImageButton = this.f6917g0;
            if (!z) {
                i = 8;
            }
            checkableImageButton.setVisibility(i);
            m38362A();
            m38335v();
        }
    }

    public void setSuffixText(CharSequence charSequence) {
        this.f6952y = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f6954z.setText(charSequence);
        m38358E();
    }

    public void setSuffixTextAppearance(int i) {
        this.f6954z.setTextAppearance(i);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.f6954z.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(e eVar) {
        EditText editText = this.f6914e;
        if (editText != null) {
            C26614s.m1564q(editText, eVar);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.f6909W) {
            this.f6909W = typeface;
            this.f6898Q0.A(typeface);
            n nVar = this.f6920i;
            if (typeface != nVar.u) {
                nVar.u = typeface;
                TextView textView = nVar.l;
                if (textView != null) {
                    textView.setTypeface(typeface);
                }
                TextView textView2 = nVar.r;
                if (textView2 != null) {
                    textView2.setTypeface(typeface);
                }
            }
            TextView textView3 = this.f6928m;
            if (textView3 == null) {
                return;
            }
            textView3.setTypeface(typeface);
        }
    }

    /* renamed from: t */
    public void m38337t(int i) {
        boolean z = this.f6926l;
        int i2 = this.f6924k;
        if (i2 == -1) {
            this.f6928m.setText(String.valueOf(i));
            this.f6928m.setContentDescription(null);
            this.f6926l = false;
        } else {
            this.f6926l = i > i2;
            Context context = getContext();
            this.f6928m.setContentDescription(context.getString(this.f6926l ? C2080R.string.character_counter_overflowed_content_description : C2080R.string.character_counter_content_description, Integer.valueOf(i), Integer.valueOf(this.f6924k)));
            if (z != this.f6926l) {
                m38336u();
            }
            this.f6928m.setText(C26536a.m1710c().m1707f(getContext().getString(C2080R.string.character_counter_pattern, Integer.valueOf(i), Integer.valueOf(this.f6924k))));
        }
        if (this.f6914e == null || z == this.f6926l) {
            return;
        }
        m38332y(false, false);
        m38357F();
        m38334w();
    }

    /* renamed from: u */
    public final void m38336u() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        TextView textView = this.f6928m;
        if (textView != null) {
            m38339r(textView, this.f6926l ? this.f6930n : this.f6932o);
            if (!this.f6926l && (colorStateList2 = this.f6944u) != null) {
                this.f6928m.setTextColor(colorStateList2);
            }
            if (!this.f6926l || (colorStateList = this.f6946v) == null) {
                return;
            }
            this.f6928m.setTextColor(colorStateList);
        }
    }

    /* renamed from: v */
    public final boolean m38335v() {
        boolean z;
        boolean z2;
        if (this.f6914e == null) {
            return false;
        }
        if (!(getStartIconDrawable() == null && this.f6948w == null) && this.f6911b.getMeasuredWidth() > 0) {
            int measuredWidth = this.f6911b.getMeasuredWidth() - this.f6914e.getPaddingLeft();
            if (this.f6927l0 == null || this.f6929m0 != measuredWidth) {
                ColorDrawable colorDrawable = new ColorDrawable();
                this.f6927l0 = colorDrawable;
                this.f6929m0 = measuredWidth;
                colorDrawable.setBounds(0, 0, measuredWidth, 1);
            }
            Drawable[] compoundDrawablesRelative = this.f6914e.getCompoundDrawablesRelative();
            Drawable drawable = compoundDrawablesRelative[0];
            Drawable drawable2 = this.f6927l0;
            if (drawable != drawable2) {
                this.f6914e.setCompoundDrawablesRelative(drawable2, compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
                z = true;
            }
            z = false;
        } else {
            if (this.f6927l0 != null) {
                Drawable[] compoundDrawablesRelative2 = this.f6914e.getCompoundDrawablesRelative();
                this.f6914e.setCompoundDrawablesRelative(null, compoundDrawablesRelative2[1], compoundDrawablesRelative2[2], compoundDrawablesRelative2[3]);
                this.f6927l0 = null;
                z = true;
            }
            z = false;
        }
        if (!((this.f6874C0.getVisibility() == 0 || ((m38347j() && m38346k()) || this.f6952y != null)) && this.f6912c.getMeasuredWidth() > 0)) {
            z2 = z;
            if (this.f6951x0 != null) {
                Drawable[] compoundDrawablesRelative3 = this.f6914e.getCompoundDrawablesRelative();
                if (compoundDrawablesRelative3[2] == this.f6951x0) {
                    this.f6914e.setCompoundDrawablesRelative(compoundDrawablesRelative3[0], compoundDrawablesRelative3[1], this.f6955z0, compoundDrawablesRelative3[3]);
                    z = true;
                }
                this.f6951x0 = null;
            }
            return z2;
        }
        int measuredWidth2 = this.f6954z.getMeasuredWidth() - this.f6914e.getPaddingRight();
        CheckableImageButton endIconToUpdateDummyDrawable = getEndIconToUpdateDummyDrawable();
        int i = measuredWidth2;
        if (endIconToUpdateDummyDrawable != null) {
            i = ((ViewGroup.MarginLayoutParams) endIconToUpdateDummyDrawable.getLayoutParams()).getMarginStart() + endIconToUpdateDummyDrawable.getMeasuredWidth() + measuredWidth2;
        }
        Drawable[] compoundDrawablesRelative4 = this.f6914e.getCompoundDrawablesRelative();
        Drawable drawable3 = this.f6951x0;
        if (drawable3 == null || this.f6953y0 == i) {
            if (drawable3 == null) {
                ColorDrawable colorDrawable2 = new ColorDrawable();
                this.f6951x0 = colorDrawable2;
                this.f6953y0 = i;
                colorDrawable2.setBounds(0, 0, i, 1);
            }
            Drawable drawable4 = compoundDrawablesRelative4[2];
            Drawable drawable5 = this.f6951x0;
            if (drawable4 != drawable5) {
                this.f6955z0 = compoundDrawablesRelative4[2];
                this.f6914e.setCompoundDrawablesRelative(compoundDrawablesRelative4[0], compoundDrawablesRelative4[1], drawable5, compoundDrawablesRelative4[3]);
                z = true;
            }
        } else {
            this.f6953y0 = i;
            drawable3.setBounds(0, 0, i, 1);
            this.f6914e.setCompoundDrawablesRelative(compoundDrawablesRelative4[0], compoundDrawablesRelative4[1], this.f6951x0, compoundDrawablesRelative4[3]);
            z = true;
        }
        z2 = z;
        return z2;
    }

    /* renamed from: w */
    public void m38334w() {
        Drawable background;
        TextView textView;
        EditText editText = this.f6914e;
        if (editText == null || this.f6889M != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        Drawable drawable = background;
        if (C25553w.m3250a(background)) {
            drawable = background.mutate();
        }
        if (this.f6920i.e()) {
            drawable.setColorFilter(C25502e.m3378c(this.f6920i.g(), PorterDuff.Mode.SRC_IN));
        } else if (this.f6926l && (textView = this.f6928m) != null) {
            drawable.setColorFilter(C25502e.m3378c(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            drawable.clearColorFilter();
            this.f6914e.refreshDrawableState();
        }
    }

    /* renamed from: x */
    public final void m38333x() {
        if (this.f6889M != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f6910a.getLayoutParams();
            int m38351f = m38351f();
            if (m38351f == layoutParams.topMargin) {
                return;
            }
            layoutParams.topMargin = m38351f;
            this.f6910a.requestLayout();
        }
    }

    /* renamed from: y */
    public final void m38332y(boolean z, boolean z2) {
        ColorStateList colorStateList;
        TextView textView;
        boolean isEnabled = isEnabled();
        EditText editText = this.f6914e;
        boolean z3 = editText != null && !TextUtils.isEmpty(editText.getText());
        EditText editText2 = this.f6914e;
        boolean z4 = editText2 != null && editText2.hasFocus();
        boolean e = this.f6920i.e();
        ColorStateList colorStateList2 = this.f6878E0;
        if (colorStateList2 != null) {
            this.f6898Q0.p(colorStateList2);
            this.f6898Q0.t(this.f6878E0);
        }
        if (!isEnabled) {
            ColorStateList colorStateList3 = this.f6878E0;
            int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.f6894O0) : this.f6894O0;
            this.f6898Q0.p(ColorStateList.valueOf(colorForState));
            this.f6898Q0.t(ColorStateList.valueOf(colorForState));
        } else if (e) {
            b bVar = this.f6898Q0;
            TextView textView2 = this.f6920i.l;
            bVar.p(textView2 != null ? textView2.getTextColors() : null);
        } else if (this.f6926l && (textView = this.f6928m) != null) {
            this.f6898Q0.p(textView.getTextColors());
        } else if (z4 && (colorStateList = this.f6879F0) != null) {
            this.f6898Q0.p(colorStateList);
        }
        if (z3 || !this.f6900R0 || (isEnabled() && z4)) {
            if (!z2 && !this.f6896P0) {
                return;
            }
            ValueAnimator valueAnimator = this.f6904T0;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f6904T0.cancel();
            }
            if (!z || !this.f6902S0) {
                this.f6898Q0.w(1.0f);
            } else {
                m38355b(1.0f);
            }
            this.f6896P0 = false;
            if (m38350g()) {
                m38344m();
            }
            EditText editText3 = this.f6914e;
            m38331z(editText3 == null ? 0 : editText3.getText().length());
            m38361B();
            m38358E();
        } else if (!z2 && this.f6896P0) {
        } else {
            ValueAnimator valueAnimator2 = this.f6904T0;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.f6904T0.cancel();
            }
            if (!z || !this.f6902S0) {
                this.f6898Q0.w(0.0f);
            } else {
                m38355b(0.0f);
            }
            if (m38350g() && (!this.f6875D.z.isEmpty()) && m38350g()) {
                this.f6875D.B(0.0f, 0.0f, 0.0f, 0.0f);
            }
            this.f6896P0 = true;
            TextView textView3 = this.f6938r;
            if (textView3 != null && this.f6936q) {
                textView3.setText((CharSequence) null);
                this.f6938r.setVisibility(4);
            }
            m38361B();
            m38358E();
        }
    }

    /* renamed from: z */
    public final void m38331z(int i) {
        if (i != 0 || this.f6896P0) {
            TextView textView = this.f6938r;
            if (textView == null || !this.f6936q) {
                return;
            }
            textView.setText((CharSequence) null);
            this.f6938r.setVisibility(4);
            return;
        }
        TextView textView2 = this.f6938r;
        if (textView2 == null || !this.f6936q) {
            return;
        }
        textView2.setText(this.f6934p);
        this.f6938r.setVisibility(0);
        this.f6938r.bringToFront();
    }
}
