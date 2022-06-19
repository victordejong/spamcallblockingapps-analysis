package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.core.widget.AbstractC0642d;
import androidx.core.widget.AbstractC0655n;
import androidx.core.widget.C0649k;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p041h.p042e.C1527d;
import p020b.p041h.p048j.C1578c;
import p020b.p041h.p050l.AbstractC1678v;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatTextView.class */
public class AppCompatTextView extends TextView implements AbstractC1678v, AbstractC0655n, AbstractC0642d {

    /* renamed from: d */
    private final C0283d f940d;

    /* renamed from: e */
    private final C0308m f941e;

    /* renamed from: f */
    private final C0306l f942f;

    /* renamed from: g */
    private boolean f943g;

    /* renamed from: h */
    private Future<C1578c> f944h;

    public AppCompatTextView(Context context) {
        this(context, null);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet, int i) {
        super(C0280b0.m34988b(context), attributeSet, i);
        this.f943g = false;
        C0339z.m34687a(this, getContext());
        C0283d c0283d = new C0283d(this);
        this.f940d = c0283d;
        c0283d.m34982e(attributeSet, i);
        C0308m c0308m = new C0308m(this);
        this.f941e = c0308m;
        c0308m.m34849m(attributeSet, i);
        c0308m.m34860b();
        this.f942f = new C0306l(this);
    }

    /* renamed from: c */
    private void m35181c() {
        Future<C1578c> future = this.f944h;
        if (future != null) {
            try {
                this.f944h = null;
                C0649k.m33075p(this, future.get());
            } catch (InterruptedException | ExecutionException e) {
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0283d c0283d = this.f940d;
        if (c0283d != null) {
            c0283d.m34985b();
        }
        C0308m c0308m = this.f941e;
        if (c0308m != null) {
            c0308m.m34860b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (AbstractC0642d.f3097a) {
            return super.getAutoSizeMaxTextSize();
        }
        C0308m c0308m = this.f941e;
        if (c0308m == null) {
            return -1;
        }
        return c0308m.m34857e();
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (AbstractC0642d.f3097a) {
            return super.getAutoSizeMinTextSize();
        }
        C0308m c0308m = this.f941e;
        if (c0308m == null) {
            return -1;
        }
        return c0308m.m34856f();
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (AbstractC0642d.f3097a) {
            return super.getAutoSizeStepGranularity();
        }
        C0308m c0308m = this.f941e;
        if (c0308m == null) {
            return -1;
        }
        return c0308m.m34855g();
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (AbstractC0642d.f3097a) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C0308m c0308m = this.f941e;
        return c0308m != null ? c0308m.m34854h() : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        int i = 0;
        if (AbstractC0642d.f3097a) {
            if (super.getAutoSizeTextType() == 1) {
                i = 1;
            }
            return i;
        }
        C0308m c0308m = this.f941e;
        if (c0308m == null) {
            return 0;
        }
        return c0308m.m34853i();
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return C0649k.m33089b(this);
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return C0649k.m33088c(this);
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public ColorStateList getSupportBackgroundTintList() {
        C0283d c0283d = this.f940d;
        return c0283d != null ? c0283d.m34984c() : null;
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0283d c0283d = this.f940d;
        return c0283d != null ? c0283d.m34983d() : null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f941e.m34852j();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f941e.m34851k();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        m35181c();
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        C0306l c0306l;
        return (Build.VERSION.SDK_INT >= 28 || (c0306l = this.f942f) == null) ? super.getTextClassifier() : c0306l.m34867a();
    }

    public C1578c.C1579a getTextMetricsParamsCompat() {
        return C0649k.m33084g(this);
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f941e.m34844r(this, onCreateInputConnection, editorInfo);
        return C0292g.m34914a(onCreateInputConnection, editorInfo, this);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C0308m c0308m = this.f941e;
        if (c0308m != null) {
            c0308m.m34847o(z, i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        m35181c();
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        C0308m c0308m = this.f941e;
        if (c0308m == null || AbstractC0642d.f3097a || !c0308m.m34850l()) {
            return;
        }
        this.f941e.m34859c();
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (AbstractC0642d.f3097a) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C0308m c0308m = this.f941e;
        if (c0308m == null) {
            return;
        }
        c0308m.m34842t(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        if (AbstractC0642d.f3097a) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        C0308m c0308m = this.f941e;
        if (c0308m == null) {
            return;
        }
        c0308m.m34841u(iArr, i);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (AbstractC0642d.f3097a) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        C0308m c0308m = this.f941e;
        if (c0308m == null) {
            return;
        }
        c0308m.m34840v(i);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0283d c0283d = this.f940d;
        if (c0283d != null) {
            c0283d.m34981f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0283d c0283d = this.f940d;
        if (c0283d != null) {
            c0283d.m34980g(i);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C0308m c0308m = this.f941e;
        if (c0308m != null) {
            c0308m.m34846p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C0308m c0308m = this.f941e;
        if (c0308m != null) {
            c0308m.m34846p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable m30126d = i != 0 ? C1433a.m30126d(context, i) : null;
        Drawable m30126d2 = i2 != 0 ? C1433a.m30126d(context, i2) : null;
        Drawable m30126d3 = i3 != 0 ? C1433a.m30126d(context, i3) : null;
        if (i4 != 0) {
            drawable = C1433a.m30126d(context, i4);
        }
        setCompoundDrawablesRelativeWithIntrinsicBounds(m30126d, m30126d2, m30126d3, drawable);
        C0308m c0308m = this.f941e;
        if (c0308m != null) {
            c0308m.m34846p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C0308m c0308m = this.f941e;
        if (c0308m != null) {
            c0308m.m34846p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable m30126d = i != 0 ? C1433a.m30126d(context, i) : null;
        Drawable m30126d2 = i2 != 0 ? C1433a.m30126d(context, i2) : null;
        Drawable m30126d3 = i3 != 0 ? C1433a.m30126d(context, i3) : null;
        if (i4 != 0) {
            drawable = C1433a.m30126d(context, i4);
        }
        setCompoundDrawablesWithIntrinsicBounds(m30126d, m30126d2, m30126d3, drawable);
        C0308m c0308m = this.f941e;
        if (c0308m != null) {
            c0308m.m34846p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C0308m c0308m = this.f941e;
        if (c0308m != null) {
            c0308m.m34846p();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0649k.m33072s(this, callback));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i);
        } else {
            C0649k.m33078m(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i);
        } else {
            C0649k.m33077n(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i) {
        C0649k.m33076o(this, i);
    }

    public void setPrecomputedText(C1578c c1578c) {
        C0649k.m33075p(this, c1578c);
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0283d c0283d = this.f940d;
        if (c0283d != null) {
            c0283d.m34978i(colorStateList);
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0283d c0283d = this.f940d;
        if (c0283d != null) {
            c0283d.m34977j(mode);
        }
    }

    @Override // androidx.core.widget.AbstractC0655n
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f941e.m34839w(colorStateList);
        this.f941e.m34860b();
    }

    @Override // androidx.core.widget.AbstractC0655n
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f941e.m34838x(mode);
        this.f941e.m34860b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0308m c0308m = this.f941e;
        if (c0308m != null) {
            c0308m.m34845q(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        C0306l c0306l;
        if (Build.VERSION.SDK_INT >= 28 || (c0306l = this.f942f) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            c0306l.m34866b(textClassifier);
        }
    }

    public void setTextFuture(Future<C1578c> future) {
        this.f944h = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(C1578c.C1579a c1579a) {
        C0649k.m33073r(this, c1579a);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (AbstractC0642d.f3097a) {
            super.setTextSize(i, f);
            return;
        }
        C0308m c0308m = this.f941e;
        if (c0308m == null) {
            return;
        }
        c0308m.m34864A(i, f);
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface, int i) {
        if (this.f943g) {
            return;
        }
        Typeface typeface2 = null;
        if (typeface != null) {
            typeface2 = null;
            if (i > 0) {
                typeface2 = C1527d.m29827a(getContext(), typeface, i);
            }
        }
        this.f943g = true;
        if (typeface2 != null) {
            typeface = typeface2;
        }
        try {
            super.setTypeface(typeface, i);
        } finally {
            this.f943g = false;
        }
    }
}
