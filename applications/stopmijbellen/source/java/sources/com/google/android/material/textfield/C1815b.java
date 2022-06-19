package com.google.android.material.textfield;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Objects;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import p029c4.C0822f;
import p029c4.C0827i;
import p090f3.C2727a;
import p091f4.AbstractC2746k;
import p091f4.C2742g;
import p091f4.C2744i;
import p091f4.C2745j;
import p091f4.View$OnTouchListenerC2743h;
import p124i4.C3102d;
import p163m0.C3589v;
import p163m0.C3611y;
import p174n0.C3694b;
import p230s3.C4285a;
import p262v3.C4633o;
import p304z3.C5070b;
/* renamed from: com.google.android.material.textfield.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/b.class */
public class C1815b extends AbstractC2746k {

    /* renamed from: e */
    public final TextWatcher f6861e = new C1816a();

    /* renamed from: f */
    public final View.OnFocusChangeListener f6862f = new View$OnFocusChangeListenerC1818b();

    /* renamed from: g */
    public final TextInputLayout.C1803e f6863g = new C1819c(this.f9403a);

    /* renamed from: h */
    public final TextInputLayout.AbstractC1804f f6864h = new C1820d();
    @SuppressLint({"ClickableViewAccessibility"})

    /* renamed from: i */
    public final TextInputLayout.AbstractC1805g f6865i = new C1821e();

    /* renamed from: j */
    public boolean f6866j = false;

    /* renamed from: k */
    public boolean f6867k = false;

    /* renamed from: l */
    public long f6868l = Long.MAX_VALUE;

    /* renamed from: m */
    public StateListDrawable f6869m;

    /* renamed from: n */
    public C0822f f6870n;

    /* renamed from: o */
    public AccessibilityManager f6871o;

    /* renamed from: p */
    public ValueAnimator f6872p;

    /* renamed from: q */
    public ValueAnimator f6873q;

    /* renamed from: com.google.android.material.textfield.b$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/b$a.class */
    public class C1816a extends C4633o {

        /* renamed from: com.google.android.material.textfield.b$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/b$a$a.class */
        public class RunnableC1817a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AutoCompleteTextView f6875a;

            public RunnableC1817a(AutoCompleteTextView autoCompleteTextView) {
                C1816a.this = r4;
                this.f6875a = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean isPopupShowing = this.f6875a.isPopupShowing();
                C1815b.m4509f(C1815b.this, isPopupShowing);
                C1815b.this.f6866j = isPopupShowing;
            }
        }

        public C1816a() {
            C1815b.this = r4;
        }

        @Override // p262v3.C4633o, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            AutoCompleteTextView m4511d = C1815b.m4511d(C1815b.this.f9403a.getEditText());
            if (C1815b.this.f6871o.isTouchExplorationEnabled() && C1815b.m4510e(m4511d) && !C1815b.this.f9405c.hasFocus()) {
                m4511d.dismissDropDown();
            }
            m4511d.post(new RunnableC1817a(m4511d));
        }
    }

    /* renamed from: com.google.android.material.textfield.b$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/b$b.class */
    public class View$OnFocusChangeListenerC1818b implements View.OnFocusChangeListener {
        public View$OnFocusChangeListenerC1818b() {
            C1815b.this = r4;
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            C1815b.this.f9403a.setEndIconActivated(z);
            if (!z) {
                C1815b.m4509f(C1815b.this, false);
                C1815b.this.f6866j = false;
            }
        }
    }

    /* renamed from: com.google.android.material.textfield.b$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/b$c.class */
    public class C1819c extends TextInputLayout.C1803e {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1819c(TextInputLayout textInputLayout) {
            super(textInputLayout);
            C1815b.this = r4;
        }

        @Override // com.google.android.material.textfield.TextInputLayout.C1803e, p163m0.C3546a
        /* renamed from: d */
        public void mo697d(View view, C3694b c3694b) {
            boolean z;
            super.mo697d(view, c3694b);
            if (!C1815b.m4510e(C1815b.this.f9403a.getEditText())) {
                c3694b.f12070a.setClassName(Spinner.class.getName());
            }
            if (Build.VERSION.SDK_INT >= 26) {
                z = c3694b.f12070a.isShowingHintText();
            } else {
                Bundle m1876h = c3694b.m1876h();
                z = m1876h != null && (m1876h.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & 4) == 4;
            }
            if (z) {
                c3694b.m1870n(null);
            }
        }

        @Override // p163m0.C3546a
        /* renamed from: e */
        public void mo2195e(View view, AccessibilityEvent accessibilityEvent) {
            this.f11715a.onPopulateAccessibilityEvent(view, accessibilityEvent);
            AutoCompleteTextView m4511d = C1815b.m4511d(C1815b.this.f9403a.getEditText());
            if (accessibilityEvent.getEventType() != 1 || !C1815b.this.f6871o.isTouchExplorationEnabled() || C1815b.m4510e(C1815b.this.f9403a.getEditText())) {
                return;
            }
            C1815b.m4508g(C1815b.this, m4511d);
        }
    }

    /* renamed from: com.google.android.material.textfield.b$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/b$d.class */
    public class C1820d implements TextInputLayout.AbstractC1804f {
        public C1820d() {
            C1815b.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v51, types: [int[], int[][]] */
        @Override // com.google.android.material.textfield.TextInputLayout.AbstractC1804f
        /* renamed from: a */
        public void mo4504a(TextInputLayout textInputLayout) {
            AutoCompleteTextView m4511d = C1815b.m4511d(textInputLayout.getEditText());
            C1815b c1815b = C1815b.this;
            int boxBackgroundMode = c1815b.f9403a.getBoxBackgroundMode();
            if (boxBackgroundMode == 2) {
                m4511d.setDropDownBackgroundDrawable(c1815b.f6870n);
            } else if (boxBackgroundMode == 1) {
                m4511d.setDropDownBackgroundDrawable(c1815b.f6869m);
            }
            C1815b c1815b2 = C1815b.this;
            Objects.requireNonNull(c1815b2);
            if (!(m4511d.getKeyListener() != null)) {
                int boxBackgroundMode2 = c1815b2.f9403a.getBoxBackgroundMode();
                C0822f boxBackground = c1815b2.f9403a.getBoxBackground();
                int m2619t = C3102d.m2619t(m4511d, C3681R.attr.colorControlHighlight);
                ?? r0 = {new int[]{16842919}, new int[0]};
                if (boxBackgroundMode2 == 2) {
                    int m2619t2 = C3102d.m2619t(m4511d, 2130968849);
                    C0822f c0822f = new C0822f(boxBackground.f3010a.f3034a);
                    int m2650B = C3102d.m2650B(m2619t, m2619t2, 0.1f);
                    c0822f.m7314q(new ColorStateList(r0, new int[]{m2650B, 0}));
                    c0822f.setTint(m2619t2);
                    ColorStateList colorStateList = new ColorStateList(r0, new int[]{m2650B, m2619t2});
                    C0822f c0822f2 = new C0822f(boxBackground.f3010a.f3034a);
                    c0822f2.setTint(-1);
                    LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, c0822f, c0822f2), boxBackground});
                    WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                    C3589v.C3593d.m2077q(m4511d, layerDrawable);
                } else if (boxBackgroundMode2 == 1) {
                    int boxBackgroundColor = c1815b2.f9403a.getBoxBackgroundColor();
                    RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(r0, new int[]{C3102d.m2650B(m2619t, boxBackgroundColor, 0.1f), boxBackgroundColor}), boxBackground, boxBackground);
                    WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
                    C3589v.C3593d.m2077q(m4511d, rippleDrawable);
                }
            }
            C1815b c1815b3 = C1815b.this;
            Objects.requireNonNull(c1815b3);
            m4511d.setOnTouchListener(new View$OnTouchListenerC2743h(c1815b3, m4511d));
            m4511d.setOnFocusChangeListener(c1815b3.f6862f);
            m4511d.setOnDismissListener(new C2744i(c1815b3));
            m4511d.setThreshold(0);
            m4511d.removeTextChangedListener(C1815b.this.f6861e);
            m4511d.addTextChangedListener(C1815b.this.f6861e);
            textInputLayout.setEndIconCheckable(true);
            textInputLayout.setErrorIconDrawable((Drawable) null);
            boolean z = false;
            if (m4511d.getKeyListener() != null) {
                z = true;
            }
            if (!z) {
                CheckableImageButton checkableImageButton = C1815b.this.f9405c;
                WeakHashMap<View, C3611y> weakHashMap3 = C3589v.f11780a;
                C3589v.C3593d.m2075s(checkableImageButton, 2);
            }
            textInputLayout.setTextInputAccessibilityDelegate(C1815b.this.f6863g);
            textInputLayout.setEndIconVisible(true);
        }
    }

    /* renamed from: com.google.android.material.textfield.b$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/b$e.class */
    public class C1821e implements TextInputLayout.AbstractC1805g {

        /* renamed from: com.google.android.material.textfield.b$e$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/b$e$a.class */
        public class RunnableC1822a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AutoCompleteTextView f6881a;

            public RunnableC1822a(AutoCompleteTextView autoCompleteTextView) {
                C1821e.this = r4;
                this.f6881a = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f6881a.removeTextChangedListener(C1815b.this.f6861e);
            }
        }

        public C1821e() {
            C1815b.this = r4;
        }

        @Override // com.google.android.material.textfield.TextInputLayout.AbstractC1805g
        /* renamed from: a */
        public void mo4503a(TextInputLayout textInputLayout, int i) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) textInputLayout.getEditText();
            if (autoCompleteTextView == null || i != 3) {
                return;
            }
            autoCompleteTextView.post(new RunnableC1822a(autoCompleteTextView));
            if (autoCompleteTextView.getOnFocusChangeListener() == C1815b.this.f6862f) {
                autoCompleteTextView.setOnFocusChangeListener(null);
            }
            autoCompleteTextView.setOnTouchListener(null);
            autoCompleteTextView.setOnDismissListener(null);
        }
    }

    /* renamed from: com.google.android.material.textfield.b$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/b$f.class */
    public class View$OnClickListenerC1823f implements View.OnClickListener {
        public View$OnClickListenerC1823f() {
            C1815b.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C1815b.m4508g(C1815b.this, (AutoCompleteTextView) C1815b.this.f9403a.getEditText());
        }
    }

    public C1815b(TextInputLayout textInputLayout, int i) {
        super(textInputLayout, i);
    }

    /* renamed from: d */
    public static AutoCompleteTextView m4511d(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    /* renamed from: e */
    public static boolean m4510e(EditText editText) {
        return editText.getKeyListener() != null;
    }

    /* renamed from: f */
    public static void m4509f(C1815b c1815b, boolean z) {
        if (c1815b.f6867k != z) {
            c1815b.f6867k = z;
            c1815b.f6873q.cancel();
            c1815b.f6872p.start();
        }
    }

    /* renamed from: g */
    public static void m4508g(C1815b c1815b, AutoCompleteTextView autoCompleteTextView) {
        Objects.requireNonNull(c1815b);
        if (autoCompleteTextView == null) {
            return;
        }
        if (c1815b.m4506i()) {
            c1815b.f6866j = false;
        }
        if (c1815b.f6866j) {
            c1815b.f6866j = false;
            return;
        }
        boolean z = c1815b.f6867k;
        boolean z2 = !z;
        if (z != z2) {
            c1815b.f6867k = z2;
            c1815b.f6873q.cancel();
            c1815b.f6872p.start();
        }
        if (!c1815b.f6867k) {
            autoCompleteTextView.dismissDropDown();
            return;
        }
        autoCompleteTextView.requestFocus();
        autoCompleteTextView.showDropDown();
    }

    @Override // p091f4.AbstractC2746k
    /* renamed from: a */
    public void mo3168a() {
        float dimensionPixelOffset = this.f9404b.getResources().getDimensionPixelOffset(2131165779);
        float dimensionPixelOffset2 = this.f9404b.getResources().getDimensionPixelOffset(2131165712);
        int dimensionPixelOffset3 = this.f9404b.getResources().getDimensionPixelOffset(2131165714);
        C0822f m4507h = m4507h(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        C0822f m4507h2 = m4507h(0.0f, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.f6870n = m4507h;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.f6869m = stateListDrawable;
        stateListDrawable.addState(new int[]{16842922}, m4507h);
        this.f6869m.addState(new int[0], m4507h2);
        int i = this.f9406d;
        int i2 = i;
        if (i == 0) {
            i2 = 2131231053;
        }
        this.f9403a.setEndIconDrawable(i2);
        TextInputLayout textInputLayout = this.f9403a;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(2131820754));
        this.f9403a.setEndIconOnClickListener(new View$OnClickListenerC1823f());
        this.f9403a.m4539a(this.f6864h);
        this.f9403a.f6807k0.add(this.f6865i);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = C2727a.f9372a;
        ofFloat.setInterpolator(timeInterpolator);
        ofFloat.setDuration(67);
        ofFloat.addUpdateListener(new C2742g(this));
        this.f6873q = ofFloat;
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat2.setInterpolator(timeInterpolator);
        ofFloat2.setDuration(50);
        ofFloat2.addUpdateListener(new C2742g(this));
        this.f6872p = ofFloat2;
        ofFloat2.addListener(new C2745j(this));
        this.f6871o = (AccessibilityManager) this.f9404b.getSystemService("accessibility");
    }

    @Override // p091f4.AbstractC2746k
    /* renamed from: b */
    public boolean mo3184b(int i) {
        return i != 0;
    }

    /* renamed from: h */
    public final C0822f m4507h(float f, float f2, float f3, int i) {
        C0827i.C0829b c0829b = new C0827i.C0829b();
        c0829b.m7295e(f);
        c0829b.m7294f(f);
        c0829b.m7297c(f2);
        c0829b.m7296d(f2);
        C0827i m7299a = c0829b.m7299a();
        Context context = this.f9404b;
        String str = C0822f.f3008x;
        int m73c = C5070b.m73c(context, 2130968849, C0822f.class.getSimpleName());
        C0822f c0822f = new C0822f();
        c0822f.f3010a.f3035b = new C4285a(context);
        c0822f.m7307x();
        c0822f.m7314q(ColorStateList.valueOf(m73c));
        C0822f.C0824b c0824b = c0822f.f3010a;
        if (c0824b.f3048o != f3) {
            c0824b.f3048o = f3;
            c0822f.m7307x();
        }
        c0822f.f3010a.f3034a = m7299a;
        c0822f.invalidateSelf();
        C0822f.C0824b c0824b2 = c0822f.f3010a;
        if (c0824b2.f3042i == null) {
            c0824b2.f3042i = new Rect();
        }
        c0822f.f3010a.f3042i.set(0, i, 0, i);
        c0822f.invalidateSelf();
        return c0822f;
    }

    /* renamed from: i */
    public final boolean m4506i() {
        long currentTimeMillis = System.currentTimeMillis() - this.f6868l;
        return currentTimeMillis < 0 || currentTimeMillis > 300;
    }
}
