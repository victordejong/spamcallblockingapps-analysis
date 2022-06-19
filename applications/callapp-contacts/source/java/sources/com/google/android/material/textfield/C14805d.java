package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0869c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.internal.C14646k;
import com.google.android.material.p364a.C14389a;
import com.google.android.material.p365b.C14416a;
import com.google.android.material.p371h.C14597b;
import com.google.android.material.p374k.C14670h;
import com.google.android.material.p374k.C14678m;
import com.google.android.material.textfield.TextInputLayout;
/* renamed from: com.google.android.material.textfield.d */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/d.class */
public final class C14805d extends AbstractC14818e {

    /* renamed from: a */
    private static final boolean f54091a;

    /* renamed from: b */
    private final TextWatcher f54092b = new C14646k() { // from class: com.google.android.material.textfield.d.1
        @Override // com.google.android.material.internal.C14646k, android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            final AutoCompleteTextView m9982a = C14805d.m9982a(C14805d.this.f54120c.f54005a);
            if (C14805d.this.f54102o.isTouchExplorationEnabled() && C14805d.m9971c(m9982a) && !C14805d.this.f54122e.hasFocus()) {
                m9982a.dismissDropDown();
            }
            m9982a.post(new Runnable() { // from class: com.google.android.material.textfield.d.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    boolean isPopupShowing = m9982a.isPopupShowing();
                    C14805d.this.m9973b(isPopupShowing);
                    C14805d.this.f54097j = isPopupShowing;
                }
            });
        }
    };

    /* renamed from: f */
    private final View.OnFocusChangeListener f54093f = new View.OnFocusChangeListener() { // from class: com.google.android.material.textfield.d.3
        @Override // android.view.View.OnFocusChangeListener
        public final void onFocusChange(View view, boolean z) {
            C14805d.this.f54120c.setEndIconActivated(z);
            if (!z) {
                C14805d.this.m9973b(false);
                C14805d.this.f54097j = false;
            }
        }
    };

    /* renamed from: g */
    private final TextInputLayout.C14789a f54094g = new TextInputLayout.C14789a(this.f54120c) { // from class: com.google.android.material.textfield.d.4
        @Override // com.google.android.material.textfield.TextInputLayout.C14789a, androidx.core.view.C0865a
        /* renamed from: a */
        public final void mo9886a(View view, C0869c c0869c) {
            boolean z;
            super.mo9886a(view, c0869c);
            if (!C14805d.m9971c(C14805d.this.f54120c.f54005a)) {
                c0869c.m44265b((CharSequence) Spinner.class.getName());
            }
            if (Build.VERSION.SDK_INT >= 26) {
                z = c0869c.f3644a.isShowingHintText();
            } else {
                Bundle m44252e = c0869c.m44252e();
                z = false;
                if (m44252e != null) {
                    z = false;
                    if ((m44252e.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & 4) == 4) {
                        z = true;
                    }
                }
            }
            if (z) {
                c0869c.m44246f((CharSequence) null);
            }
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: c */
        public final void mo9962c(View view, AccessibilityEvent accessibilityEvent) {
            super.mo9962c(view, accessibilityEvent);
            AutoCompleteTextView m9982a = C14805d.m9982a(C14805d.this.f54120c.f54005a);
            if (accessibilityEvent.getEventType() != 1 || !C14805d.this.f54102o.isTouchExplorationEnabled() || C14805d.m9971c(C14805d.this.f54120c.f54005a)) {
                return;
            }
            C14805d.m9979a(C14805d.this, m9982a);
        }
    };

    /* renamed from: h */
    private final TextInputLayout.AbstractC14790b f54095h = new TextInputLayout.AbstractC14790b() { // from class: com.google.android.material.textfield.d.5
        @Override // com.google.android.material.textfield.TextInputLayout.AbstractC14790b
        /* renamed from: a */
        public final void mo9933a(TextInputLayout textInputLayout) {
            AutoCompleteTextView m9982a = C14805d.m9982a(textInputLayout.f54005a);
            C14805d.m9975b(C14805d.this, m9982a);
            C14805d.m9969c(C14805d.this, m9982a);
            C14805d.m9966d(C14805d.this, m9982a);
            m9982a.setThreshold(0);
            m9982a.removeTextChangedListener(C14805d.this.f54092b);
            m9982a.addTextChangedListener(C14805d.this.f54092b);
            textInputLayout.setEndIconCheckable(true);
            textInputLayout.setErrorIconDrawable((Drawable) null);
            if (!C14805d.m9971c(m9982a)) {
                C0926v.m44102c((View) C14805d.this.f54122e, 2);
            }
            textInputLayout.setTextInputAccessibilityDelegate(C14805d.this.f54094g);
            textInputLayout.setEndIconVisible(true);
        }
    };

    /* renamed from: i */
    private final TextInputLayout.AbstractC14791c f54096i = new TextInputLayout.AbstractC14791c() { // from class: com.google.android.material.textfield.d.6
        @Override // com.google.android.material.textfield.TextInputLayout.AbstractC14791c
        /* renamed from: a */
        public final void mo9932a(TextInputLayout textInputLayout, int i) {
            final AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) textInputLayout.f54005a;
            if (autoCompleteTextView == null || i != 3) {
                return;
            }
            autoCompleteTextView.post(new Runnable() { // from class: com.google.android.material.textfield.d.6.1
                @Override // java.lang.Runnable
                public final void run() {
                    autoCompleteTextView.removeTextChangedListener(C14805d.this.f54092b);
                }
            });
            if (autoCompleteTextView.getOnFocusChangeListener() == C14805d.this.f54093f) {
                autoCompleteTextView.setOnFocusChangeListener(null);
            }
            autoCompleteTextView.setOnTouchListener(null);
            if (!C14805d.f54091a) {
                return;
            }
            autoCompleteTextView.setOnDismissListener(null);
        }
    };

    /* renamed from: j */
    private boolean f54097j = false;

    /* renamed from: k */
    private boolean f54098k = false;

    /* renamed from: l */
    private long f54099l = Long.MAX_VALUE;

    /* renamed from: m */
    private StateListDrawable f54100m;

    /* renamed from: n */
    private C14670h f54101n;

    /* renamed from: o */
    private AccessibilityManager f54102o;

    /* renamed from: p */
    private ValueAnimator f54103p;

    /* renamed from: q */
    private ValueAnimator f54104q;

    static {
        f54091a = Build.VERSION.SDK_INT >= 21;
    }

    public C14805d(TextInputLayout textInputLayout) {
        super(textInputLayout);
    }

    /* renamed from: a */
    private ValueAnimator m9983a(int i, float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(C14389a.f52368a);
        ofFloat.setDuration(i);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.d.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                C14805d.this.f54122e.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        return ofFloat;
    }

    /* renamed from: a */
    static /* synthetic */ AutoCompleteTextView m9982a(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    /* renamed from: a */
    private C14670h m9984a(float f, float f2, float f3, int i) {
        C14678m m10421a = C14678m.m10430a().m10418b(f).m10416c(f).m10412e(f2).m10414d(f2).m10421a();
        C14670h m10478a = C14670h.m10478a(this.f54121d, f3);
        m10478a.setShapeAppearanceModel(m10421a);
        m10478a.m10480a(i, i);
        return m10478a;
    }

    /* renamed from: a */
    static /* synthetic */ void m9979a(C14805d c14805d, AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView != null) {
            if (c14805d.m9968d()) {
                c14805d.f54097j = false;
            }
            if (c14805d.f54097j) {
                c14805d.f54097j = false;
                return;
            }
            if (f54091a) {
                c14805d.m9973b(!c14805d.f54098k);
            } else {
                c14805d.f54098k = !c14805d.f54098k;
                c14805d.f54122e.toggle();
            }
            if (!c14805d.f54098k) {
                autoCompleteTextView.dismissDropDown();
                return;
            }
            autoCompleteTextView.requestFocus();
            autoCompleteTextView.showDropDown();
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m9975b(C14805d c14805d, AutoCompleteTextView autoCompleteTextView) {
        if (f54091a) {
            int i = c14805d.f54120c.f54049i;
            if (i == 2) {
                autoCompleteTextView.setDropDownBackgroundDrawable(c14805d.f54101n);
            } else if (i != 1) {
            } else {
                autoCompleteTextView.setDropDownBackgroundDrawable(c14805d.f54100m);
            }
        }
    }

    /* renamed from: b */
    public void m9973b(boolean z) {
        if (this.f54098k != z) {
            this.f54098k = z;
            this.f54104q.cancel();
            this.f54103p.start();
        }
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [int[], int[][]] */
    /* renamed from: c */
    static /* synthetic */ void m9969c(C14805d c14805d, AutoCompleteTextView autoCompleteTextView) {
        LayerDrawable layerDrawable;
        if (!m9971c(autoCompleteTextView)) {
            int i = c14805d.f54120c.f54049i;
            TextInputLayout textInputLayout = c14805d.f54120c;
            if (textInputLayout.f54049i != 1 && textInputLayout.f54049i != 2) {
                throw new IllegalStateException();
            }
            C14670h c14670h = textInputLayout.f54048h;
            int m10655a = C14597b.m10655a(autoCompleteTextView, C14376a.C14378b.colorControlHighlight);
            ?? r0 = {new int[]{16842919}, new int[0]};
            if (i == 2) {
                int m10655a2 = C14597b.m10655a(autoCompleteTextView, C14376a.C14378b.colorSurface);
                C14670h c14670h2 = new C14670h(c14670h.f53492t.f53500a);
                int m11241a = C14416a.m11241a(m10655a, m10655a2, 0.1f);
                c14670h2.m10456g(new ColorStateList(r0, new int[]{m11241a, 0}));
                if (f54091a) {
                    c14670h2.setTint(m10655a2);
                    ColorStateList colorStateList = new ColorStateList(r0, new int[]{m11241a, m10655a2});
                    C14670h c14670h3 = new C14670h(c14670h.f53492t.f53500a);
                    c14670h3.setTint(-1);
                    layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, c14670h2, c14670h3), c14670h});
                } else {
                    layerDrawable = new LayerDrawable(new Drawable[]{c14670h2, c14670h});
                }
                C0926v.m44128a(autoCompleteTextView, layerDrawable);
            } else if (i != 1) {
            } else {
                int i2 = c14805d.f54120c.f54050j;
                int[] iArr = {C14416a.m11241a(m10655a, i2, 0.1f), i2};
                if (f54091a) {
                    C0926v.m44128a(autoCompleteTextView, new RippleDrawable(new ColorStateList(r0, iArr), c14670h, c14670h));
                    return;
                }
                C14670h c14670h4 = new C14670h(c14670h.f53492t.f53500a);
                c14670h4.m10456g(new ColorStateList(r0, iArr));
                LayerDrawable layerDrawable2 = new LayerDrawable(new Drawable[]{c14670h, c14670h4});
                int m44091i = C0926v.m44091i(autoCompleteTextView);
                int paddingTop = autoCompleteTextView.getPaddingTop();
                int m44089j = C0926v.m44089j(autoCompleteTextView);
                int paddingBottom = autoCompleteTextView.getPaddingBottom();
                C0926v.m44128a(autoCompleteTextView, layerDrawable2);
                C0926v.m44109b(autoCompleteTextView, m44091i, paddingTop, m44089j, paddingBottom);
            }
        }
    }

    /* renamed from: c */
    public static boolean m9971c(EditText editText) {
        return editText.getKeyListener() != null;
    }

    /* renamed from: d */
    static /* synthetic */ void m9966d(C14805d c14805d, final AutoCompleteTextView autoCompleteTextView) {
        autoCompleteTextView.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.textfield.d.8
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    if (C14805d.this.m9968d()) {
                        C14805d.this.f54097j = false;
                    }
                    C14805d.m9979a(C14805d.this, autoCompleteTextView);
                    return false;
                }
                return false;
            }
        });
        autoCompleteTextView.setOnFocusChangeListener(c14805d.f54093f);
        if (f54091a) {
            autoCompleteTextView.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: com.google.android.material.textfield.d.9
                @Override // android.widget.AutoCompleteTextView.OnDismissListener
                public final void onDismiss() {
                    C14805d.this.f54097j = true;
                    C14805d.this.f54099l = System.currentTimeMillis();
                    C14805d.this.m9973b(false);
                }
            });
        }
    }

    /* renamed from: d */
    public boolean m9968d() {
        long currentTimeMillis = System.currentTimeMillis() - this.f54099l;
        return currentTimeMillis < 0 || currentTimeMillis > 300;
    }

    @Override // com.google.android.material.textfield.AbstractC14818e
    /* renamed from: a */
    public final void mo9935a() {
        float dimensionPixelOffset = this.f54121d.getResources().getDimensionPixelOffset(C14376a.C14380d.mtrl_shape_corner_size_small_component);
        float dimensionPixelOffset2 = this.f54121d.getResources().getDimensionPixelOffset(C14376a.C14380d.mtrl_exposed_dropdown_menu_popup_elevation);
        int dimensionPixelOffset3 = this.f54121d.getResources().getDimensionPixelOffset(C14376a.C14380d.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        C14670h m9984a = m9984a(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        C14670h m9984a2 = m9984a(BitmapDescriptorFactory.HUE_RED, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.f54101n = m9984a;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.f54100m = stateListDrawable;
        stateListDrawable.addState(new int[]{16842922}, m9984a);
        this.f54100m.addState(new int[0], m9984a2);
        this.f54120c.setEndIconDrawable(C0153a.m46374b(this.f54121d, f54091a ? C14376a.C14381e.mtrl_dropdown_arrow : C14376a.C14381e.mtrl_ic_arrow_drop_down));
        this.f54120c.setEndIconContentDescription(this.f54120c.getResources().getText(C14376a.C14386j.exposed_dropdown_menu_content_description));
        this.f54120c.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.textfield.d.7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C14805d.m9979a(C14805d.this, (AutoCompleteTextView) C14805d.this.f54120c.f54005a);
            }
        });
        this.f54120c.m10032a(this.f54095h);
        this.f54120c.m10031a(this.f54096i);
        this.f54104q = m9983a(67, BitmapDescriptorFactory.HUE_RED, 1.0f);
        ValueAnimator m9983a = m9983a(50, 1.0f, BitmapDescriptorFactory.HUE_RED);
        this.f54103p = m9983a;
        m9983a.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.d.10
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                C14805d.this.f54122e.setChecked(C14805d.this.f54098k);
                C14805d.this.f54104q.start();
            }
        });
        this.f54102o = (AccessibilityManager) this.f54121d.getSystemService("accessibility");
    }

    @Override // com.google.android.material.textfield.AbstractC14818e
    /* renamed from: a */
    public final boolean mo9961a(int i) {
        return i != 0;
    }

    @Override // com.google.android.material.textfield.AbstractC14818e
    /* renamed from: b */
    public final boolean mo9959b() {
        return true;
    }
}
