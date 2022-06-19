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
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.p027a.C0553c;
import com.google.android.material.C4492a;
import com.google.android.material.p142a.C4505a;
import com.google.android.material.p149g.C4680a;
import com.google.android.material.p159q.C4736g;
import com.google.android.material.p159q.C4743k;
import com.google.android.material.textfield.TextInputLayout;
/* renamed from: com.google.android.material.textfield.d */
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/d.class */
public class C4823d extends AbstractC4834e {

    /* renamed from: d */
    private static final boolean f20824d;

    /* renamed from: e */
    private final TextWatcher f20825e = new TextWatcher() { // from class: com.google.android.material.textfield.d.1
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            final AutoCompleteTextView m2294a = C4823d.this.m2294a(C4823d.this.f20848a.getEditText());
            m2294a.post(new Runnable() { // from class: com.google.android.material.textfield.d.1.1
                @Override // java.lang.Runnable
                public void run() {
                    boolean isPopupShowing = m2294a.isPopupShowing();
                    C4823d.this.m2288a(isPopupShowing);
                    C4823d.this.f20828h = isPopupShowing;
                }
            });
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    };

    /* renamed from: f */
    private final TextInputLayout.C4808a f20826f = new TextInputLayout.C4808a(this.f20848a) { // from class: com.google.android.material.textfield.d.2
        @Override // com.google.android.material.textfield.TextInputLayout.C4808a, androidx.core.p026h.C0549a
        /* renamed from: a */
        public void mo2272a(View view, C0553c c0553c) {
            super.mo2272a(view, c0553c);
            c0553c.m20504b((CharSequence) Spinner.class.getName());
            if (c0553c.m20457v()) {
                c0553c.m20484f((CharSequence) null);
            }
        }

        @Override // androidx.core.p026h.C0549a
        /* renamed from: c */
        public void mo2271c(View view, AccessibilityEvent accessibilityEvent) {
            super.mo2271c(view, accessibilityEvent);
            AutoCompleteTextView m2294a = C4823d.this.m2294a(C4823d.this.f20848a.getEditText());
            if (accessibilityEvent.getEventType() != 1 || !C4823d.this.f20833m.isTouchExplorationEnabled()) {
                return;
            }
            C4823d.this.m2296a(m2294a);
        }
    };

    /* renamed from: g */
    private final TextInputLayout.AbstractC4809b f20827g = new TextInputLayout.AbstractC4809b() { // from class: com.google.android.material.textfield.d.3
        @Override // com.google.android.material.textfield.TextInputLayout.AbstractC4809b
        /* renamed from: a */
        public void mo2226a(TextInputLayout textInputLayout) {
            AutoCompleteTextView m2294a = C4823d.this.m2294a(textInputLayout.getEditText());
            C4823d.this.m2287b(m2294a);
            C4823d.this.m2281c(m2294a);
            C4823d.this.m2277d(m2294a);
            m2294a.setThreshold(0);
            m2294a.removeTextChangedListener(C4823d.this.f20825e);
            m2294a.addTextChangedListener(C4823d.this.f20825e);
            textInputLayout.setErrorIconDrawable((Drawable) null);
            textInputLayout.setTextInputAccessibilityDelegate(C4823d.this.f20826f);
            textInputLayout.setEndIconVisible(true);
        }
    };

    /* renamed from: h */
    private boolean f20828h = false;

    /* renamed from: i */
    private boolean f20829i = false;

    /* renamed from: j */
    private long f20830j = Long.MAX_VALUE;

    /* renamed from: k */
    private StateListDrawable f20831k;

    /* renamed from: l */
    private C4736g f20832l;

    /* renamed from: m */
    private AccessibilityManager f20833m;

    /* renamed from: n */
    private ValueAnimator f20834n;

    /* renamed from: o */
    private ValueAnimator f20835o;

    static {
        f20824d = Build.VERSION.SDK_INT >= 21;
    }

    public C4823d(TextInputLayout textInputLayout) {
        super(textInputLayout);
    }

    /* renamed from: a */
    private ValueAnimator m2297a(int i, float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(C4505a.f19569a);
        ofFloat.setDuration(i);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.d.9
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                C4823d.this.f20850c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        return ofFloat;
    }

    /* renamed from: a */
    public AutoCompleteTextView m2294a(EditText editText) {
        if (!(editText instanceof AutoCompleteTextView)) {
            throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
        }
        return (AutoCompleteTextView) editText;
    }

    /* renamed from: a */
    private C4736g m2298a(float f, float f2, float f3, int i) {
        C4743k m2654a = C4743k.m2678a().m2648b(f).m2643c(f).m2633e(f2).m2638d(f2).m2654a();
        C4736g m2721a = C4736g.m2721a(this.f20849b, f3);
        m2721a.setShapeAppearanceModel(m2654a);
        m2721a.m2723a(0, i, 0, i);
        return m2721a;
    }

    /* renamed from: a */
    public void m2296a(AutoCompleteTextView autoCompleteTextView) {
        boolean z = true;
        if (autoCompleteTextView == null) {
            return;
        }
        if (m2282c()) {
            this.f20828h = false;
        }
        if (this.f20828h) {
            this.f20828h = false;
            return;
        }
        if (f20824d) {
            if (this.f20829i) {
                z = false;
            }
            m2288a(z);
        } else {
            this.f20829i = !this.f20829i;
            this.f20850c.toggle();
        }
        if (!this.f20829i) {
            autoCompleteTextView.dismissDropDown();
            return;
        }
        autoCompleteTextView.requestFocus();
        autoCompleteTextView.showDropDown();
    }

    /* renamed from: a */
    private void m2295a(AutoCompleteTextView autoCompleteTextView, int i, int[][] iArr, C4736g c4736g) {
        LayerDrawable layerDrawable;
        int m2920a = C4680a.m2920a(autoCompleteTextView, C4492a.C4494b.colorSurface);
        C4736g c4736g2 = new C4736g(c4736g.m2743L());
        int m2923a = C4680a.m2923a(i, m2920a, 0.1f);
        c4736g2.m2697f(new ColorStateList(iArr, new int[]{m2923a, 0}));
        if (f20824d) {
            c4736g2.setTint(m2920a);
            ColorStateList colorStateList = new ColorStateList(iArr, new int[]{m2923a, m2920a});
            C4736g c4736g3 = new C4736g(c4736g.m2743L());
            c4736g3.setTint(-1);
            layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, c4736g2, c4736g3), c4736g});
        } else {
            layerDrawable = new LayerDrawable(new Drawable[]{c4736g2, c4736g});
        }
        C0595u.m20350a(autoCompleteTextView, layerDrawable);
    }

    /* renamed from: a */
    public void m2288a(boolean z) {
        if (this.f20829i != z) {
            this.f20829i = z;
            this.f20835o.cancel();
            this.f20834n.start();
        }
    }

    /* renamed from: b */
    public void m2287b(AutoCompleteTextView autoCompleteTextView) {
        if (f20824d) {
            int boxBackgroundMode = this.f20848a.getBoxBackgroundMode();
            if (boxBackgroundMode == 2) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.f20832l);
            } else if (boxBackgroundMode != 1) {
            } else {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.f20831k);
            }
        }
    }

    /* renamed from: b */
    private void m2286b(AutoCompleteTextView autoCompleteTextView, int i, int[][] iArr, C4736g c4736g) {
        int boxBackgroundColor = this.f20848a.getBoxBackgroundColor();
        int[] iArr2 = {C4680a.m2923a(i, boxBackgroundColor, 0.1f), boxBackgroundColor};
        if (f20824d) {
            C0595u.m20350a(autoCompleteTextView, new RippleDrawable(new ColorStateList(iArr, iArr2), c4736g, c4736g));
            return;
        }
        C4736g c4736g2 = new C4736g(c4736g.m2743L());
        c4736g2.m2697f(new ColorStateList(iArr, iArr2));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{c4736g, c4736g2});
        int m20316i = C0595u.m20316i(autoCompleteTextView);
        int paddingTop = autoCompleteTextView.getPaddingTop();
        int m20314j = C0595u.m20314j(autoCompleteTextView);
        int paddingBottom = autoCompleteTextView.getPaddingBottom();
        C0595u.m20350a(autoCompleteTextView, layerDrawable);
        C0595u.m20355a(autoCompleteTextView, m20316i, paddingTop, m20314j, paddingBottom);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [int[], int[][]] */
    /* renamed from: c */
    public void m2281c(AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView.getKeyListener() != null) {
            return;
        }
        int boxBackgroundMode = this.f20848a.getBoxBackgroundMode();
        C4736g boxBackground = this.f20848a.getBoxBackground();
        int m2920a = C4680a.m2920a(autoCompleteTextView, C4492a.C4494b.colorControlHighlight);
        ?? r0 = {new int[]{16842919}, new int[0]};
        if (boxBackgroundMode == 2) {
            m2295a(autoCompleteTextView, m2920a, (int[][]) r0, boxBackground);
        } else if (boxBackgroundMode != 1) {
        } else {
            m2286b(autoCompleteTextView, m2920a, r0, boxBackground);
        }
    }

    /* renamed from: c */
    public boolean m2282c() {
        long currentTimeMillis = System.currentTimeMillis() - this.f20830j;
        return currentTimeMillis < 0 || currentTimeMillis > 300;
    }

    /* renamed from: d */
    private void m2278d() {
        this.f20835o = m2297a(67, 0.0f, 1.0f);
        this.f20834n = m2297a(50, 1.0f, 0.0f);
        this.f20834n.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.d.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                C4823d.this.f20850c.setChecked(C4823d.this.f20829i);
                C4823d.this.f20835o.start();
            }
        });
    }

    /* renamed from: d */
    public void m2277d(final AutoCompleteTextView autoCompleteTextView) {
        autoCompleteTextView.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.textfield.d.5
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    if (C4823d.this.m2282c()) {
                        C4823d.this.f20828h = false;
                    }
                    C4823d.this.m2296a(autoCompleteTextView);
                    view.performClick();
                    return false;
                }
                return false;
            }
        });
        autoCompleteTextView.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.google.android.material.textfield.d.6
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                C4823d.this.f20848a.setEndIconActivated(z);
                if (!z) {
                    C4823d.this.m2288a(false);
                    C4823d.this.f20828h = false;
                }
            }
        });
        if (f20824d) {
            autoCompleteTextView.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: com.google.android.material.textfield.d.7
                @Override // android.widget.AutoCompleteTextView.OnDismissListener
                public void onDismiss() {
                    C4823d.this.f20828h = true;
                    C4823d.this.f20830j = System.currentTimeMillis();
                    C4823d.this.m2288a(false);
                }
            });
        }
    }

    @Override // com.google.android.material.textfield.AbstractC4834e
    /* renamed from: a */
    public void mo2230a() {
        float dimensionPixelOffset = this.f20849b.getResources().getDimensionPixelOffset(C4492a.C4496d.mtrl_shape_corner_size_small_component);
        float dimensionPixelOffset2 = this.f20849b.getResources().getDimensionPixelOffset(C4492a.C4496d.mtrl_exposed_dropdown_menu_popup_elevation);
        int dimensionPixelOffset3 = this.f20849b.getResources().getDimensionPixelOffset(C4492a.C4496d.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        C4736g m2298a = m2298a(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        C4736g m2298a2 = m2298a(0.0f, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.f20832l = m2298a;
        this.f20831k = new StateListDrawable();
        this.f20831k.addState(new int[]{16842922}, m2298a);
        this.f20831k.addState(new int[0], m2298a2);
        this.f20848a.setEndIconDrawable(C0094a.m22275b(this.f20849b, f20824d ? C4492a.C4497e.mtrl_dropdown_arrow : C4492a.C4497e.mtrl_ic_arrow_drop_down));
        this.f20848a.setEndIconContentDescription(this.f20848a.getResources().getText(C4492a.C4502j.exposed_dropdown_menu_content_description));
        this.f20848a.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.textfield.d.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C4823d.this.m2296a((AutoCompleteTextView) C4823d.this.f20848a.getEditText());
            }
        });
        this.f20848a.m2357a(this.f20827g);
        m2278d();
        C0595u.m20335b(this.f20850c, 2);
        this.f20833m = (AccessibilityManager) this.f20849b.getSystemService("accessibility");
    }

    @Override // com.google.android.material.textfield.AbstractC4834e
    /* renamed from: a */
    public boolean mo2270a(int i) {
        return i != 0;
    }

    @Override // com.google.android.material.textfield.AbstractC4834e
    /* renamed from: b */
    public boolean mo2269b() {
        return true;
    }
}
