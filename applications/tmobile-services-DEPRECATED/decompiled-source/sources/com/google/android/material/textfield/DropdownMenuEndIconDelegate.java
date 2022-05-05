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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.C1027R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.textfield.TextInputLayout;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/DropdownMenuEndIconDelegate.class */
public class DropdownMenuEndIconDelegate extends EndIconDelegate {

    /* renamed from: q */
    private static final boolean f11439q;

    /* renamed from: d */
    private final TextWatcher f11440d = new TextWatcher() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.1
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = DropdownMenuEndIconDelegate.this;
            final AutoCompleteTextView x = dropdownMenuEndIconDelegate.m8849x(dropdownMenuEndIconDelegate.f11466a.getEditText());
            x.post(new Runnable() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.1.1
                @Override // java.lang.Runnable
                public void run() {
                    boolean isPopupShowing = x.isPopupShowing();
                    DropdownMenuEndIconDelegate.this.m8872C(isPopupShowing);
                    DropdownMenuEndIconDelegate.this.f11445i = isPopupShowing;
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

    /* renamed from: e */
    private final View.OnFocusChangeListener f11441e = new View.OnFocusChangeListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.2
        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            DropdownMenuEndIconDelegate.this.f11466a.setEndIconActivated(z);
            if (!z) {
                DropdownMenuEndIconDelegate.this.m8872C(false);
                DropdownMenuEndIconDelegate.this.f11445i = false;
            }
        }
    };

    /* renamed from: f */
    private final TextInputLayout.AccessibilityDelegate f11442f = new TextInputLayout.AccessibilityDelegate(this.f11466a) { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.3
        @Override // com.google.android.material.textfield.TextInputLayout.AccessibilityDelegate, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (DropdownMenuEndIconDelegate.this.f11466a.getEditText().getKeyListener() == null) {
                accessibilityNodeInfoCompat.m19026c0(Spinner.class.getName());
            }
            if (accessibilityNodeInfoCompat.m19045M()) {
                accessibilityNodeInfoCompat.m19004n0(null);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onPopulateAccessibilityEvent(View view, @NonNull AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = DropdownMenuEndIconDelegate.this;
            AutoCompleteTextView x = dropdownMenuEndIconDelegate.m8849x(dropdownMenuEndIconDelegate.f11466a.getEditText());
            if (accessibilityEvent.getEventType() == 1 && DropdownMenuEndIconDelegate.this.f11450n.isTouchExplorationEnabled()) {
                DropdownMenuEndIconDelegate.this.m8869F(x);
            }
        }
    };

    /* renamed from: g */
    private final TextInputLayout.OnEditTextAttachedListener f11443g = new TextInputLayout.OnEditTextAttachedListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.4
        @Override // com.google.android.material.textfield.TextInputLayout.OnEditTextAttachedListener
        /* renamed from: a */
        public void mo8715a(@NonNull TextInputLayout textInputLayout) {
            AutoCompleteTextView x = DropdownMenuEndIconDelegate.this.m8849x(textInputLayout.getEditText());
            DropdownMenuEndIconDelegate.this.m8871D(x);
            DropdownMenuEndIconDelegate.this.m8852u(x);
            DropdownMenuEndIconDelegate.this.m8870E(x);
            x.setThreshold(0);
            x.removeTextChangedListener(DropdownMenuEndIconDelegate.this.f11440d);
            x.addTextChangedListener(DropdownMenuEndIconDelegate.this.f11440d);
            textInputLayout.setEndIconCheckable(true);
            textInputLayout.setErrorIconDrawable((Drawable) null);
            textInputLayout.setTextInputAccessibilityDelegate(DropdownMenuEndIconDelegate.this.f11442f);
            textInputLayout.setEndIconVisible(true);
        }
    };
    @SuppressLint({"ClickableViewAccessibility"})

    /* renamed from: h */
    private final TextInputLayout.OnEndIconChangedListener f11444h = new TextInputLayout.OnEndIconChangedListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.5
        @Override // com.google.android.material.textfield.TextInputLayout.OnEndIconChangedListener
        /* renamed from: a */
        public void mo8714a(@NonNull TextInputLayout textInputLayout, int i) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) textInputLayout.getEditText();
            if (autoCompleteTextView != null && i == 3) {
                autoCompleteTextView.removeTextChangedListener(DropdownMenuEndIconDelegate.this.f11440d);
                if (autoCompleteTextView.getOnFocusChangeListener() == DropdownMenuEndIconDelegate.this.f11441e) {
                    autoCompleteTextView.setOnFocusChangeListener(null);
                }
                autoCompleteTextView.setOnTouchListener(null);
                if (DropdownMenuEndIconDelegate.f11439q) {
                    autoCompleteTextView.setOnDismissListener(null);
                }
            }
        }
    };

    /* renamed from: i */
    private boolean f11445i = false;

    /* renamed from: j */
    private boolean f11446j = false;

    /* renamed from: k */
    private long f11447k = Long.MAX_VALUE;

    /* renamed from: l */
    private StateListDrawable f11448l;

    /* renamed from: m */
    private MaterialShapeDrawable f11449m;
    @Nullable

    /* renamed from: n */
    private AccessibilityManager f11450n;

    /* renamed from: o */
    private ValueAnimator f11451o;

    /* renamed from: p */
    private ValueAnimator f11452p;

    static {
        f11439q = Build.VERSION.SDK_INT >= 21;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DropdownMenuEndIconDelegate(@NonNull TextInputLayout textInputLayout) {
        super(textInputLayout);
    }

    /* renamed from: A */
    private void m8874A() {
        this.f11452p = m8848y(67, 0.0f, 1.0f);
        ValueAnimator y = m8848y(50, 1.0f, 0.0f);
        this.f11451o = y;
        y.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = DropdownMenuEndIconDelegate.this;
                dropdownMenuEndIconDelegate.f11468c.setChecked(dropdownMenuEndIconDelegate.f11446j);
                DropdownMenuEndIconDelegate.this.f11452p.start();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B */
    public boolean m8873B() {
        long currentTimeMillis = System.currentTimeMillis() - this.f11447k;
        return currentTimeMillis < 0 || currentTimeMillis > 300;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C */
    public void m8872C(boolean z) {
        if (this.f11446j != z) {
            this.f11446j = z;
            this.f11452p.cancel();
            this.f11451o.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D */
    public void m8871D(@NonNull AutoCompleteTextView autoCompleteTextView) {
        if (f11439q) {
            int boxBackgroundMode = this.f11466a.getBoxBackgroundMode();
            if (boxBackgroundMode == 2) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.f11449m);
            } else if (boxBackgroundMode == 1) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.f11448l);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: E */
    public void m8870E(@NonNull final AutoCompleteTextView autoCompleteTextView) {
        autoCompleteTextView.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.7
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(@NonNull View view, @NonNull MotionEvent motionEvent) {
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                if (DropdownMenuEndIconDelegate.this.m8873B()) {
                    DropdownMenuEndIconDelegate.this.f11445i = false;
                }
                DropdownMenuEndIconDelegate.this.m8869F(autoCompleteTextView);
                return false;
            }
        });
        autoCompleteTextView.setOnFocusChangeListener(this.f11441e);
        if (f11439q) {
            autoCompleteTextView.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.8
                @Override // android.widget.AutoCompleteTextView.OnDismissListener
                public void onDismiss() {
                    DropdownMenuEndIconDelegate.this.f11445i = true;
                    DropdownMenuEndIconDelegate.this.f11447k = System.currentTimeMillis();
                    DropdownMenuEndIconDelegate.this.m8872C(false);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F */
    public void m8869F(@Nullable AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView != null) {
            if (m8873B()) {
                this.f11445i = false;
            }
            if (!this.f11445i) {
                if (f11439q) {
                    m8872C(!this.f11446j);
                } else {
                    this.f11446j = !this.f11446j;
                    this.f11468c.toggle();
                }
                if (this.f11446j) {
                    autoCompleteTextView.requestFocus();
                    autoCompleteTextView.showDropDown();
                    return;
                }
                autoCompleteTextView.dismissDropDown();
                return;
            }
            this.f11445i = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [int[], int[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m8852u(@androidx.annotation.NonNull android.widget.AutoCompleteTextView r8) {
        /*
            r7 = this;
            r0 = r8
            android.text.method.KeyListener r0 = r0.getKeyListener()
            if (r0 == 0) goto L_0x0008
            return
        L_0x0008:
            r0 = r7
            com.google.android.material.textfield.TextInputLayout r0 = r0.f11466a
            int r0 = r0.getBoxBackgroundMode()
            r9 = r0
            r0 = r7
            com.google.android.material.textfield.TextInputLayout r0 = r0.f11466a
            com.google.android.material.shape.MaterialShapeDrawable r0 = r0.getBoxBackground()
            r10 = r0
            r0 = r8
            int r1 = com.google.android.material.C1027R.attr.colorControlHighlight
            int r0 = com.google.android.material.color.MaterialColors.m10014c(r0, r1)
            r11 = r0
            r0 = 2
            int[] r0 = new int[r0]
            r12 = r0
            r0 = r12
            r1 = 0
            r2 = 1
            int[] r2 = new int[r2]
            r3 = r2
            r4 = 0
            r5 = 16842919(0x10100a7, float:2.3694026E-38)
            r3[r4] = r5
            r0[r1] = r2
            r0 = r12
            r1 = 1
            r2 = 0
            int[] r2 = new int[r2]
            r0[r1] = r2
            r0 = r9
            r1 = 2
            if (r0 != r1) goto L_0x004c
            r0 = r7
            r1 = r8
            r2 = r11
            r3 = r12
            r4 = r10
            r0.m8850w(r1, r2, r3, r4)
            goto L_0x005b
        L_0x004c:
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L_0x005b
            r0 = r7
            r1 = r8
            r2 = r11
            r3 = r12
            r4 = r10
            r0.m8851v(r1, r2, r3, r4)
        L_0x005b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.DropdownMenuEndIconDelegate.m8852u(android.widget.AutoCompleteTextView):void");
    }

    /* renamed from: v */
    private void m8851v(@NonNull AutoCompleteTextView autoCompleteTextView, int i, int[][] iArr, @NonNull MaterialShapeDrawable materialShapeDrawable) {
        int boxBackgroundColor = this.f11466a.getBoxBackgroundColor();
        int[] iArr2 = {MaterialColors.m10011f(i, boxBackgroundColor, 0.1f), boxBackgroundColor};
        if (f11439q) {
            ViewCompat.m19177q0(autoCompleteTextView, new RippleDrawable(new ColorStateList(iArr, iArr2), materialShapeDrawable, materialShapeDrawable));
            return;
        }
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(materialShapeDrawable.getShapeAppearanceModel());
        materialShapeDrawable2.m9328W(new ColorStateList(iArr, iArr2));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{materialShapeDrawable, materialShapeDrawable2});
        int G = ViewCompat.m19232G(autoCompleteTextView);
        int paddingTop = autoCompleteTextView.getPaddingTop();
        int F = ViewCompat.m19234F(autoCompleteTextView);
        int paddingBottom = autoCompleteTextView.getPaddingBottom();
        ViewCompat.m19177q0(autoCompleteTextView, layerDrawable);
        ViewCompat.m19241B0(autoCompleteTextView, G, paddingTop, F, paddingBottom);
    }

    /* renamed from: w */
    private void m8850w(@NonNull AutoCompleteTextView autoCompleteTextView, int i, int[][] iArr, @NonNull MaterialShapeDrawable materialShapeDrawable) {
        LayerDrawable layerDrawable;
        int c = MaterialColors.m10014c(autoCompleteTextView, C1027R.attr.colorSurface);
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(materialShapeDrawable.getShapeAppearanceModel());
        int f = MaterialColors.m10011f(i, c, 0.1f);
        materialShapeDrawable2.m9328W(new ColorStateList(iArr, new int[]{f, 0}));
        if (f11439q) {
            materialShapeDrawable2.setTint(c);
            ColorStateList colorStateList = new ColorStateList(iArr, new int[]{f, c});
            MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(materialShapeDrawable.getShapeAppearanceModel());
            materialShapeDrawable3.setTint(-1);
            layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, materialShapeDrawable2, materialShapeDrawable3), materialShapeDrawable});
        } else {
            layerDrawable = new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable});
        }
        ViewCompat.m19177q0(autoCompleteTextView, layerDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    /* renamed from: x */
    public AutoCompleteTextView m8849x(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    /* renamed from: y */
    private ValueAnimator m8848y(int i, float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(AnimationUtils.f9923a);
        ofFloat.setDuration(i);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.10
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                DropdownMenuEndIconDelegate.this.f11468c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        return ofFloat;
    }

    /* renamed from: z */
    private MaterialShapeDrawable m8847z(float f, float f2, float f3, int i) {
        ShapeAppearanceModel.Builder a = ShapeAppearanceModel.m9277a();
        a.m9250D(f);
        a.m9246H(f);
        a.m9224u(f2);
        a.m9220y(f2);
        ShapeAppearanceModel m = a.m9232m();
        MaterialShapeDrawable m2 = MaterialShapeDrawable.m9301m(this.f11467b, f3);
        m2.setShapeAppearanceModel(m);
        m2.m9326Y(0, i, 0, i);
        return m2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.EndIconDelegate
    /* renamed from: a */
    public void mo8798a() {
        float dimensionPixelOffset = this.f11467b.getResources().getDimensionPixelOffset(C1027R.dimen.mtrl_shape_corner_size_small_component);
        float dimensionPixelOffset2 = this.f11467b.getResources().getDimensionPixelOffset(C1027R.dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        int dimensionPixelOffset3 = this.f11467b.getResources().getDimensionPixelOffset(C1027R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        MaterialShapeDrawable z = m8847z(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        MaterialShapeDrawable z2 = m8847z(0.0f, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.f11449m = z;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.f11448l = stateListDrawable;
        stateListDrawable.addState(new int[]{16842922}, z);
        this.f11448l.addState(new int[0], z2);
        this.f11466a.setEndIconDrawable(AppCompatResources.m22069d(this.f11467b, f11439q ? C1027R.C1029drawable.mtrl_dropdown_arrow : C1027R.C1029drawable.mtrl_ic_arrow_drop_down));
        TextInputLayout textInputLayout = this.f11466a;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(C1027R.string.exposed_dropdown_menu_content_description));
        this.f11466a.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DropdownMenuEndIconDelegate.this.m8869F((AutoCompleteTextView) DropdownMenuEndIconDelegate.this.f11466a.getEditText());
            }
        });
        this.f11466a.m8758e(this.f11443g);
        this.f11466a.m8756f(this.f11444h);
        m8874A();
        ViewCompat.m19163x0(this.f11468c, 2);
        this.f11450n = (AccessibilityManager) this.f11467b.getSystemService("accessibility");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.EndIconDelegate
    /* renamed from: b */
    public boolean mo8846b(int i) {
        return i != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.EndIconDelegate
    /* renamed from: d */
    public boolean mo8844d() {
        return true;
    }
}
