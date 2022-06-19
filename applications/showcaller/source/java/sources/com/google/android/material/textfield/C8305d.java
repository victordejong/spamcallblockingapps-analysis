package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import com.google.android.material.internal.C8202k;
import com.google.android.material.textfield.TextInputLayout;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.C1634c;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1889e;
import p078c.p084c.p085a.p096b.C1894j;
import p078c.p084c.p085a.p096b.p097m.C1897a;
import p078c.p084c.p085a.p096b.p099o.C1909a;
import p078c.p084c.p085a.p096b.p108x.C1938h;
import p078c.p084c.p085a.p096b.p108x.C1946m;
/* renamed from: com.google.android.material.textfield.d */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/d.class */
public class C8305d extends AbstractC8318e {

    /* renamed from: d */
    private static final boolean f37480d;

    /* renamed from: e */
    private final TextWatcher f37481e = new C8306a();

    /* renamed from: f */
    private final View.OnFocusChangeListener f37482f = new View$OnFocusChangeListenerC8309c();

    /* renamed from: g */
    private final TextInputLayout.C8289e f37483g = new C8310d(this.f37509a);

    /* renamed from: h */
    private final TextInputLayout.AbstractC8290f f37484h = new C8311e();
    @SuppressLint({"ClickableViewAccessibility"})

    /* renamed from: i */
    private final TextInputLayout.AbstractC8291g f37485i = new C8312f();

    /* renamed from: j */
    private boolean f37486j = false;

    /* renamed from: k */
    private boolean f37487k = false;

    /* renamed from: l */
    private long f37488l = Long.MAX_VALUE;

    /* renamed from: m */
    private StateListDrawable f37489m;

    /* renamed from: n */
    private C1938h f37490n;

    /* renamed from: o */
    private AccessibilityManager f37491o;

    /* renamed from: p */
    private ValueAnimator f37492p;

    /* renamed from: q */
    private ValueAnimator f37493q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.textfield.d$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/d$a.class */
    public class C8306a extends C8202k {

        /* renamed from: com.google.android.material.textfield.d$a$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/d$a$a.class */
        class RunnableC8307a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ AutoCompleteTextView f37495d;

            RunnableC8307a(AutoCompleteTextView autoCompleteTextView) {
                C8306a.this = r4;
                this.f37495d = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean isPopupShowing = this.f37495d.isPopupShowing();
                C8305d.this.m3971E(isPopupShowing);
                C8305d.this.f37486j = isPopupShowing;
            }
        }

        C8306a() {
            C8305d.this = r4;
        }

        @Override // com.google.android.material.internal.C8202k, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            AutoCompleteTextView m3947y = C8305d.m3947y(C8305d.this.f37509a.getEditText());
            if (C8305d.this.f37491o.isTouchExplorationEnabled() && C8305d.m3972D(m3947y) && !C8305d.this.f37511c.hasFocus()) {
                m3947y.dismissDropDown();
            }
            m3947y.post(new RunnableC8307a(m3947y));
        }
    }

    /* renamed from: com.google.android.material.textfield.d$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/d$b.class */
    public class C8308b implements ValueAnimator.AnimatorUpdateListener {
        C8308b() {
            C8305d.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            C8305d.this.f37511c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.textfield.d$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/d$c.class */
    public class View$OnFocusChangeListenerC8309c implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC8309c() {
            C8305d.this = r4;
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            C8305d.this.f37509a.setEndIconActivated(z);
            if (!z) {
                C8305d.this.m3971E(false);
                C8305d.this.f37486j = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.textfield.d$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/d$d.class */
    public class C8310d extends TextInputLayout.C8289e {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8310d(TextInputLayout textInputLayout) {
            super(textInputLayout);
            C8305d.this = r4;
        }

        @Override // com.google.android.material.textfield.TextInputLayout.C8289e, p020b.p041h.p050l.C1599a
        /* renamed from: g */
        public void mo3869g(View view, C1634c c1634c) {
            super.mo3869g(view, c1634c);
            if (!C8305d.m3972D(C8305d.this.f37509a.getEditText())) {
                c1634c.m29489c0(Spinner.class.getName());
            }
            if (c1634c.m29508M()) {
                c1634c.m29469m0(null);
            }
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: h */
        public void mo3945h(View view, AccessibilityEvent accessibilityEvent) {
            super.mo3945h(view, accessibilityEvent);
            AutoCompleteTextView m3947y = C8305d.m3947y(C8305d.this.f37509a.getEditText());
            if (accessibilityEvent.getEventType() != 1 || !C8305d.this.f37491o.isTouchExplorationEnabled() || C8305d.m3972D(C8305d.this.f37509a.getEditText())) {
                return;
            }
            C8305d.this.m3968H(m3947y);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.textfield.d$e */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/d$e.class */
    public class C8311e implements TextInputLayout.AbstractC8290f {
        C8311e() {
            C8305d.this = r4;
        }

        @Override // com.google.android.material.textfield.TextInputLayout.AbstractC8290f
        /* renamed from: a */
        public void mo3895a(TextInputLayout textInputLayout) {
            AutoCompleteTextView m3947y = C8305d.m3947y(textInputLayout.getEditText());
            C8305d.this.m3970F(m3947y);
            C8305d.this.m3950v(m3947y);
            C8305d.this.m3969G(m3947y);
            m3947y.setThreshold(0);
            m3947y.removeTextChangedListener(C8305d.this.f37481e);
            m3947y.addTextChangedListener(C8305d.this.f37481e);
            textInputLayout.setEndIconCheckable(true);
            textInputLayout.setErrorIconDrawable((Drawable) null);
            if (!C8305d.m3972D(m3947y)) {
                C1679w.m29347B0(C8305d.this.f37511c, 2);
            }
            textInputLayout.setTextInputAccessibilityDelegate(C8305d.this.f37483g);
            textInputLayout.setEndIconVisible(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.textfield.d$f */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/d$f.class */
    public class C8312f implements TextInputLayout.AbstractC8291g {

        /* renamed from: com.google.android.material.textfield.d$f$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/d$f$a.class */
        class RunnableC8313a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ AutoCompleteTextView f37502d;

            RunnableC8313a(AutoCompleteTextView autoCompleteTextView) {
                C8312f.this = r4;
                this.f37502d = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f37502d.removeTextChangedListener(C8305d.this.f37481e);
            }
        }

        C8312f() {
            C8305d.this = r4;
        }

        @Override // com.google.android.material.textfield.TextInputLayout.AbstractC8291g
        /* renamed from: a */
        public void mo3894a(TextInputLayout textInputLayout, int i) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) textInputLayout.getEditText();
            if (autoCompleteTextView == null || i != 3) {
                return;
            }
            autoCompleteTextView.post(new RunnableC8313a(autoCompleteTextView));
            if (autoCompleteTextView.getOnFocusChangeListener() == C8305d.this.f37482f) {
                autoCompleteTextView.setOnFocusChangeListener(null);
            }
            autoCompleteTextView.setOnTouchListener(null);
            if (!C8305d.f37480d) {
                return;
            }
            autoCompleteTextView.setOnDismissListener(null);
        }
    }

    /* renamed from: com.google.android.material.textfield.d$g */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/d$g.class */
    class View$OnClickListenerC8314g implements View.OnClickListener {
        View$OnClickListenerC8314g() {
            C8305d.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C8305d.this.m3968H((AutoCompleteTextView) C8305d.this.f37509a.getEditText());
        }
    }

    /* renamed from: com.google.android.material.textfield.d$h */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/d$h.class */
    public class View$OnTouchListenerC8315h implements View.OnTouchListener {

        /* renamed from: d */
        final /* synthetic */ AutoCompleteTextView f37505d;

        View$OnTouchListenerC8315h(AutoCompleteTextView autoCompleteTextView) {
            C8305d.this = r4;
            this.f37505d = autoCompleteTextView;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                if (C8305d.this.m3973C()) {
                    C8305d.this.f37486j = false;
                }
                C8305d.this.m3968H(this.f37505d);
                return false;
            }
            return false;
        }
    }

    /* renamed from: com.google.android.material.textfield.d$i */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/d$i.class */
    public class C8316i implements AutoCompleteTextView.OnDismissListener {
        C8316i() {
            C8305d.this = r4;
        }

        @Override // android.widget.AutoCompleteTextView.OnDismissListener
        public void onDismiss() {
            C8305d.this.f37486j = true;
            C8305d.this.f37488l = System.currentTimeMillis();
            C8305d.this.m3971E(false);
        }
    }

    /* renamed from: com.google.android.material.textfield.d$j */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/d$j.class */
    public class C8317j extends AnimatorListenerAdapter {
        C8317j() {
            C8305d.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C8305d c8305d = C8305d.this;
            c8305d.f37511c.setChecked(c8305d.f37487k);
            C8305d.this.f37493q.start();
        }
    }

    static {
        f37480d = Build.VERSION.SDK_INT >= 21;
    }

    public C8305d(TextInputLayout textInputLayout) {
        super(textInputLayout);
    }

    /* renamed from: A */
    private C1938h m3975A(float f, float f2, float f3, int i) {
        C1946m m28528m = C1946m.m28575a().m28546E(f).m28542I(f).m28519v(f2).m28515z(f2).m28528m();
        C1938h m28602m = C1938h.m28602m(this.f37510b, f3);
        m28602m.setShapeAppearanceModel(m28528m);
        m28602m.m28621c0(0, i, 0, i);
        return m28602m;
    }

    /* renamed from: B */
    private void m3974B() {
        this.f37493q = m3946z(67, 0.0f, 1.0f);
        ValueAnimator m3946z = m3946z(50, 1.0f, 0.0f);
        this.f37492p = m3946z;
        m3946z.addListener(new C8317j());
    }

    /* renamed from: C */
    public boolean m3973C() {
        long currentTimeMillis = System.currentTimeMillis() - this.f37488l;
        return currentTimeMillis < 0 || currentTimeMillis > 300;
    }

    /* renamed from: D */
    public static boolean m3972D(EditText editText) {
        return editText.getKeyListener() != null;
    }

    /* renamed from: E */
    public void m3971E(boolean z) {
        if (this.f37487k != z) {
            this.f37487k = z;
            this.f37493q.cancel();
            this.f37492p.start();
        }
    }

    /* renamed from: F */
    public void m3970F(AutoCompleteTextView autoCompleteTextView) {
        if (f37480d) {
            int boxBackgroundMode = this.f37509a.getBoxBackgroundMode();
            if (boxBackgroundMode == 2) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.f37490n);
            } else if (boxBackgroundMode != 1) {
            } else {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.f37489m);
            }
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: G */
    public void m3969G(AutoCompleteTextView autoCompleteTextView) {
        autoCompleteTextView.setOnTouchListener(new View$OnTouchListenerC8315h(autoCompleteTextView));
        autoCompleteTextView.setOnFocusChangeListener(this.f37482f);
        if (f37480d) {
            autoCompleteTextView.setOnDismissListener(new C8316i());
        }
    }

    /* renamed from: H */
    public void m3968H(AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView == null) {
            return;
        }
        if (m3973C()) {
            this.f37486j = false;
        }
        if (this.f37486j) {
            this.f37486j = false;
            return;
        }
        if (f37480d) {
            m3971E(!this.f37487k);
        } else {
            this.f37487k = !this.f37487k;
            this.f37511c.toggle();
        }
        if (!this.f37487k) {
            autoCompleteTextView.dismissDropDown();
            return;
        }
        autoCompleteTextView.requestFocus();
        autoCompleteTextView.showDropDown();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [int[], int[][]] */
    /* renamed from: v */
    public void m3950v(AutoCompleteTextView autoCompleteTextView) {
        if (m3972D(autoCompleteTextView)) {
            return;
        }
        int boxBackgroundMode = this.f37509a.getBoxBackgroundMode();
        C1938h boxBackground = this.f37509a.getBoxBackground();
        int m28715d = C1909a.m28715d(autoCompleteTextView, C1886b.colorControlHighlight);
        ?? r0 = {new int[]{16842919}, new int[0]};
        if (boxBackgroundMode == 2) {
            m3948x(autoCompleteTextView, m28715d, r0, boxBackground);
        } else if (boxBackgroundMode != 1) {
        } else {
            m3949w(autoCompleteTextView, m28715d, r0, boxBackground);
        }
    }

    /* renamed from: w */
    private void m3949w(AutoCompleteTextView autoCompleteTextView, int i, int[][] iArr, C1938h c1938h) {
        int boxBackgroundColor = this.f37509a.getBoxBackgroundColor();
        int[] iArr2 = {C1909a.m28712g(i, boxBackgroundColor, 0.1f), boxBackgroundColor};
        if (f37480d) {
            C1679w.m29267u0(autoCompleteTextView, new RippleDrawable(new ColorStateList(iArr, iArr2), c1938h, c1938h));
            return;
        }
        C1938h c1938h2 = new C1938h(c1938h.m28648D());
        c1938h2.m28625a0(new ColorStateList(iArr, iArr2));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{c1938h, c1938h2});
        int m29334I = C1679w.m29334I(autoCompleteTextView);
        int paddingTop = autoCompleteTextView.getPaddingTop();
        int m29336H = C1679w.m29336H(autoCompleteTextView);
        int paddingBottom = autoCompleteTextView.getPaddingBottom();
        C1679w.m29267u0(autoCompleteTextView, layerDrawable);
        C1679w.m29339F0(autoCompleteTextView, m29334I, paddingTop, m29336H, paddingBottom);
    }

    /* renamed from: x */
    private void m3948x(AutoCompleteTextView autoCompleteTextView, int i, int[][] iArr, C1938h c1938h) {
        LayerDrawable layerDrawable;
        int m28715d = C1909a.m28715d(autoCompleteTextView, C1886b.colorSurface);
        C1938h c1938h2 = new C1938h(c1938h.m28648D());
        int m28712g = C1909a.m28712g(i, m28715d, 0.1f);
        c1938h2.m28625a0(new ColorStateList(iArr, new int[]{m28712g, 0}));
        if (f37480d) {
            c1938h2.setTint(m28715d);
            ColorStateList colorStateList = new ColorStateList(iArr, new int[]{m28712g, m28715d});
            C1938h c1938h3 = new C1938h(c1938h.m28648D());
            c1938h3.setTint(-1);
            layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, c1938h2, c1938h3), c1938h});
        } else {
            layerDrawable = new LayerDrawable(new Drawable[]{c1938h2, c1938h});
        }
        C1679w.m29267u0(autoCompleteTextView, layerDrawable);
    }

    /* renamed from: y */
    public static AutoCompleteTextView m3947y(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    /* renamed from: z */
    private ValueAnimator m3946z(int i, float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(C1897a.f6813a);
        ofFloat.setDuration(i);
        ofFloat.addUpdateListener(new C8308b());
        return ofFloat;
    }

    @Override // com.google.android.material.textfield.AbstractC8318e
    /* renamed from: a */
    public void mo3900a() {
        float dimensionPixelOffset = this.f37510b.getResources().getDimensionPixelOffset(C1888d.mtrl_shape_corner_size_small_component);
        float dimensionPixelOffset2 = this.f37510b.getResources().getDimensionPixelOffset(C1888d.mtrl_exposed_dropdown_menu_popup_elevation);
        int dimensionPixelOffset3 = this.f37510b.getResources().getDimensionPixelOffset(C1888d.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        C1938h m3975A = m3975A(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        C1938h m3975A2 = m3975A(0.0f, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.f37490n = m3975A;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.f37489m = stateListDrawable;
        stateListDrawable.addState(new int[]{16842922}, m3975A);
        this.f37489m.addState(new int[0], m3975A2);
        this.f37509a.setEndIconDrawable(C1433a.m30126d(this.f37510b, f37480d ? C1889e.mtrl_dropdown_arrow : C1889e.mtrl_ic_arrow_drop_down));
        TextInputLayout textInputLayout = this.f37509a;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(C1894j.exposed_dropdown_menu_content_description));
        this.f37509a.setEndIconOnClickListener(new View$OnClickListenerC8314g());
        this.f37509a.m4040e(this.f37484h);
        this.f37509a.m4038f(this.f37485i);
        m3974B();
        this.f37491o = (AccessibilityManager) this.f37510b.getSystemService("accessibility");
    }

    @Override // com.google.android.material.textfield.AbstractC8318e
    /* renamed from: b */
    public boolean mo3944b(int i) {
        return i != 0;
    }

    @Override // com.google.android.material.textfield.AbstractC8318e
    /* renamed from: d */
    public boolean mo3942d() {
        return true;
    }
}
