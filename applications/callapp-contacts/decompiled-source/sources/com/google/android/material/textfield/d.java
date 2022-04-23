package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
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
import androidx.core.view.a.c;
import androidx.core.view.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.a.a;
import com.google.android.material.internal.k;
import com.google.android.material.k.h;
import com.google.android.material.k.m;
import com.google.android.material.textfield.TextInputLayout;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/d.class */
public final class d extends e {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f30905a;

    /* renamed from: b  reason: collision with root package name */
    private final TextWatcher f30906b = new k() { // from class: com.google.android.material.textfield.d.1
        @Override // com.google.android.material.internal.k, android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            final AutoCompleteTextView a2 = d.a(d.this.f30922c.f30880a);
            if (d.this.o.isTouchExplorationEnabled() && d.c(a2) && !d.this.e.hasFocus()) {
                a2.dismissDropDown();
            }
            a2.post(new Runnable() { // from class: com.google.android.material.textfield.d.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    boolean isPopupShowing = a2.isPopupShowing();
                    d.this.b(isPopupShowing);
                    d.this.j = isPopupShowing;
                }
            });
        }
    };
    private final View.OnFocusChangeListener f = new View.OnFocusChangeListener() { // from class: com.google.android.material.textfield.d.3
        @Override // android.view.View.OnFocusChangeListener
        public final void onFocusChange(View view, boolean z) {
            d.this.f30922c.setEndIconActivated(z);
            if (!z) {
                d.this.b(false);
                d.this.j = false;
            }
        }
    };
    private final TextInputLayout.a g = new TextInputLayout.a(this.f30922c) { // from class: com.google.android.material.textfield.d.4
        @Override // com.google.android.material.textfield.TextInputLayout.a, androidx.core.view.a
        public final void a(View view, c cVar) {
            boolean z;
            super.a(view, cVar);
            if (!d.c(d.this.f30922c.f30880a)) {
                cVar.b((CharSequence) Spinner.class.getName());
            }
            if (Build.VERSION.SDK_INT >= 26) {
                z = cVar.f1959a.isShowingHintText();
            } else {
                Bundle e = cVar.e();
                z = false;
                if (e != null) {
                    z = false;
                    if ((e.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & 4) == 4) {
                        z = true;
                    }
                }
            }
            if (z) {
                cVar.f((CharSequence) null);
            }
        }

        @Override // androidx.core.view.a
        public final void c(View view, AccessibilityEvent accessibilityEvent) {
            super.c(view, accessibilityEvent);
            AutoCompleteTextView a2 = d.a(d.this.f30922c.f30880a);
            if (accessibilityEvent.getEventType() == 1 && d.this.o.isTouchExplorationEnabled() && !d.c(d.this.f30922c.f30880a)) {
                d.a(d.this, a2);
            }
        }
    };
    private final TextInputLayout.b h = new TextInputLayout.b() { // from class: com.google.android.material.textfield.d.5
        @Override // com.google.android.material.textfield.TextInputLayout.b
        public final void a(TextInputLayout textInputLayout) {
            AutoCompleteTextView a2 = d.a(textInputLayout.f30880a);
            d.b(d.this, a2);
            d.c(d.this, a2);
            d.d(d.this, a2);
            a2.setThreshold(0);
            a2.removeTextChangedListener(d.this.f30906b);
            a2.addTextChangedListener(d.this.f30906b);
            textInputLayout.setEndIconCheckable(true);
            textInputLayout.setErrorIconDrawable((Drawable) null);
            if (!d.c(a2)) {
                v.c((View) d.this.e, 2);
            }
            textInputLayout.setTextInputAccessibilityDelegate(d.this.g);
            textInputLayout.setEndIconVisible(true);
        }
    };
    private final TextInputLayout.c i = new TextInputLayout.c() { // from class: com.google.android.material.textfield.d.6
        @Override // com.google.android.material.textfield.TextInputLayout.c
        public final void a(TextInputLayout textInputLayout, int i) {
            final AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) textInputLayout.f30880a;
            if (autoCompleteTextView != null && i == 3) {
                autoCompleteTextView.post(new Runnable() { // from class: com.google.android.material.textfield.d.6.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        autoCompleteTextView.removeTextChangedListener(d.this.f30906b);
                    }
                });
                if (autoCompleteTextView.getOnFocusChangeListener() == d.this.f) {
                    autoCompleteTextView.setOnFocusChangeListener(null);
                }
                autoCompleteTextView.setOnTouchListener(null);
                if (d.f30905a) {
                    autoCompleteTextView.setOnDismissListener(null);
                }
            }
        }
    };
    private boolean j = false;
    private boolean k = false;
    private long l = Long.MAX_VALUE;
    private StateListDrawable m;
    private h n;
    private AccessibilityManager o;
    private ValueAnimator p;
    private ValueAnimator q;

    static {
        f30905a = Build.VERSION.SDK_INT >= 21;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(TextInputLayout textInputLayout) {
        super(textInputLayout);
    }

    private ValueAnimator a(int i, float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(a.f30173a);
        ofFloat.setDuration(i);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.d.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                d.this.e.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        return ofFloat;
    }

    static /* synthetic */ AutoCompleteTextView a(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    private h a(float f, float f2, float f3, int i) {
        m a2 = m.a().b(f).c(f).e(f2).d(f2).a();
        h a3 = h.a(this.f30923d, f3);
        a3.setShapeAppearanceModel(a2);
        a3.a(i, i);
        return a3;
    }

    static /* synthetic */ void a(d dVar, AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView != null) {
            if (dVar.d()) {
                dVar.j = false;
            }
            if (!dVar.j) {
                if (f30905a) {
                    dVar.b(!dVar.k);
                } else {
                    dVar.k = !dVar.k;
                    dVar.e.toggle();
                }
                if (dVar.k) {
                    autoCompleteTextView.requestFocus();
                    autoCompleteTextView.showDropDown();
                    return;
                }
                autoCompleteTextView.dismissDropDown();
                return;
            }
            dVar.j = false;
        }
    }

    static /* synthetic */ void b(d dVar, AutoCompleteTextView autoCompleteTextView) {
        if (f30905a) {
            int i = dVar.f30922c.i;
            if (i == 2) {
                autoCompleteTextView.setDropDownBackgroundDrawable(dVar.n);
            } else if (i == 1) {
                autoCompleteTextView.setDropDownBackgroundDrawable(dVar.m);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        if (this.k != z) {
            this.k = z;
            this.q.cancel();
            this.p.start();
        }
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [int[], int[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ void c(com.google.android.material.textfield.d r11, android.widget.AutoCompleteTextView r12) {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.d.c(com.google.android.material.textfield.d, android.widget.AutoCompleteTextView):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean c(EditText editText) {
        return editText.getKeyListener() != null;
    }

    static /* synthetic */ void d(d dVar, final AutoCompleteTextView autoCompleteTextView) {
        autoCompleteTextView.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.textfield.d.8
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                if (d.this.d()) {
                    d.this.j = false;
                }
                d.a(d.this, autoCompleteTextView);
                return false;
            }
        });
        autoCompleteTextView.setOnFocusChangeListener(dVar.f);
        if (f30905a) {
            autoCompleteTextView.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: com.google.android.material.textfield.d.9
                @Override // android.widget.AutoCompleteTextView.OnDismissListener
                public final void onDismiss() {
                    d.this.j = true;
                    d.this.l = System.currentTimeMillis();
                    d.this.b(false);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d() {
        long currentTimeMillis = System.currentTimeMillis() - this.l;
        return currentTimeMillis < 0 || currentTimeMillis > 300;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.e
    public final void a() {
        float dimensionPixelOffset = this.f30923d.getResources().getDimensionPixelOffset(a.d.mtrl_shape_corner_size_small_component);
        float dimensionPixelOffset2 = this.f30923d.getResources().getDimensionPixelOffset(a.d.mtrl_exposed_dropdown_menu_popup_elevation);
        int dimensionPixelOffset3 = this.f30923d.getResources().getDimensionPixelOffset(a.d.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        h a2 = a(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        h a3 = a(BitmapDescriptorFactory.HUE_RED, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.n = a2;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.m = stateListDrawable;
        stateListDrawable.addState(new int[]{16842922}, a2);
        this.m.addState(new int[0], a3);
        this.f30922c.setEndIconDrawable(androidx.appcompat.a.a.a.b(this.f30923d, f30905a ? a.e.mtrl_dropdown_arrow : a.e.mtrl_ic_arrow_drop_down));
        this.f30922c.setEndIconContentDescription(this.f30922c.getResources().getText(a.j.exposed_dropdown_menu_content_description));
        this.f30922c.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.textfield.d.7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                d.a(d.this, (AutoCompleteTextView) d.this.f30922c.f30880a);
            }
        });
        this.f30922c.a(this.h);
        this.f30922c.a(this.i);
        this.q = a(67, BitmapDescriptorFactory.HUE_RED, 1.0f);
        ValueAnimator a4 = a(50, 1.0f, BitmapDescriptorFactory.HUE_RED);
        this.p = a4;
        a4.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.d.10
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                d.this.e.setChecked(d.this.k);
                d.this.q.start();
            }
        });
        this.o = (AccessibilityManager) this.f30923d.getSystemService("accessibility");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.e
    public final boolean a(int i) {
        return i != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.e
    public final boolean b() {
        return true;
    }
}
