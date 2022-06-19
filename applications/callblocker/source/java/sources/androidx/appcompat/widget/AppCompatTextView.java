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
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.core.graphics.C0533c;
import androidx.core.p024f.C0507c;
import androidx.core.p026h.AbstractC0594t;
import androidx.core.widget.AbstractC0621b;
import androidx.core.widget.AbstractC0631k;
import androidx.core.widget.C0628i;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatTextView.class */
public class AppCompatTextView extends TextView implements AbstractC0594t, AbstractC0621b, AbstractC0631k {

    /* renamed from: a */
    private final C0347f f1024a;

    /* renamed from: b */
    private final C0362t f1025b;

    /* renamed from: c */
    private final C0361s f1026c;

    /* renamed from: e */
    private Future<C0507c> f1027e;

    public AppCompatTextView(Context context) {
        this(context, null);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet, int i) {
        super(C0314am.m21444a(context), attributeSet, i);
        this.f1024a = new C0347f(this);
        this.f1024a.m21327a(attributeSet, i);
        this.f1025b = new C0362t(this);
        this.f1025b.m21255a(attributeSet, i);
        this.f1025b.m21250b();
        this.f1026c = new C0361s(this);
    }

    /* renamed from: a */
    private void m21699a() {
        if (this.f1027e != null) {
            try {
                Future<C0507c> future = this.f1027e;
                this.f1027e = null;
                C0628i.m20138a(this, future.get());
            } catch (InterruptedException e) {
            } catch (ExecutionException e2) {
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f1024a != null) {
            this.f1024a.m21323c();
        }
        if (this.f1025b != null) {
            this.f1025b.m21250b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        return f2184d ? super.getAutoSizeMaxTextSize() : this.f1025b != null ? this.f1025b.m21243h() : -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        return f2184d ? super.getAutoSizeMinTextSize() : this.f1025b != null ? this.f1025b.m21244g() : -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        return f2184d ? super.getAutoSizeStepGranularity() : this.f1025b != null ? this.f1025b.m21245f() : -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        return f2184d ? super.getAutoSizeTextAvailableSizes() : this.f1025b != null ? this.f1025b.m21242i() : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        int i = 1;
        if (!f2184d) {
            i = this.f1025b != null ? this.f1025b.m21246e() : 0;
        } else if (super.getAutoSizeTextType() != 1) {
            i = 0;
        }
        return i;
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return C0628i.m20133c(this);
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return C0628i.m20131d(this);
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public ColorStateList getSupportBackgroundTintList() {
        return this.f1024a != null ? this.f1024a.m21332a() : null;
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return this.f1024a != null ? this.f1024a.m21326b() : null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f1025b.m21241j();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f1025b.m21240k();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        m21699a();
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        return (Build.VERSION.SDK_INT >= 28 || this.f1026c == null) ? super.getTextClassifier() : this.f1026c.m21269a();
    }

    public C0507c.C0508a getTextMetricsParamsCompat() {
        return C0628i.m20129e(this);
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return C0352j.m21292a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f1025b != null) {
            this.f1025b.m21252a(z, i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        m21699a();
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        if (this.f1025b == null || f2184d || !this.f1025b.m21247d()) {
            return;
        }
        this.f1025b.m21248c();
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (f2184d) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
        } else if (this.f1025b == null) {
        } else {
            this.f1025b.m21264a(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        if (f2184d) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
        } else if (this.f1025b == null) {
        } else {
            this.f1025b.m21251a(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (f2184d) {
            super.setAutoSizeTextTypeWithDefaults(i);
        } else if (this.f1025b == null) {
        } else {
            this.f1025b.m21266a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.f1024a != null) {
            this.f1024a.m21328a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        if (this.f1024a != null) {
            this.f1024a.m21331a(i);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        if (this.f1025b != null) {
            this.f1025b.m21267a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        if (this.f1025b != null) {
            this.f1025b.m21267a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Drawable drawable = null;
        Context context = getContext();
        Drawable m22275b = i != 0 ? C0094a.m22275b(context, i) : null;
        Drawable m22275b2 = i2 != 0 ? C0094a.m22275b(context, i2) : null;
        Drawable m22275b3 = i3 != 0 ? C0094a.m22275b(context, i3) : null;
        if (i4 != 0) {
            drawable = C0094a.m22275b(context, i4);
        }
        setCompoundDrawablesRelativeWithIntrinsicBounds(m22275b, m22275b2, m22275b3, drawable);
        if (this.f1025b != null) {
            this.f1025b.m21267a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        if (this.f1025b != null) {
            this.f1025b.m21267a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Drawable drawable = null;
        Context context = getContext();
        Drawable m22275b = i != 0 ? C0094a.m22275b(context, i) : null;
        Drawable m22275b2 = i2 != 0 ? C0094a.m22275b(context, i2) : null;
        Drawable m22275b3 = i3 != 0 ? C0094a.m22275b(context, i3) : null;
        if (i4 != 0) {
            drawable = C0094a.m22275b(context, i4);
        }
        setCompoundDrawablesWithIntrinsicBounds(m22275b, m22275b2, m22275b3, drawable);
        if (this.f1025b != null) {
            this.f1025b.m21267a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        if (this.f1025b != null) {
            this.f1025b.m21267a();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0628i.m20140a(this, callback));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i);
        } else {
            C0628i.m20134b(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i);
        } else {
            C0628i.m20132c(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i) {
        C0628i.m20130d(this, i);
    }

    public void setPrecomputedText(C0507c c0507c) {
        C0628i.m20138a(this, c0507c);
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (this.f1024a != null) {
            this.f1024a.m21330a(colorStateList);
        }
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f1024a != null) {
            this.f1024a.m21329a(mode);
        }
    }

    @Override // androidx.core.widget.AbstractC0631k
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f1025b.m21260a(colorStateList);
        this.f1025b.m21250b();
    }

    @Override // androidx.core.widget.AbstractC0631k
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f1025b.m21259a(mode);
        this.f1025b.m21250b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (this.f1025b != null) {
            this.f1025b.m21263a(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        if (Build.VERSION.SDK_INT >= 28 || this.f1026c == null) {
            super.setTextClassifier(textClassifier);
        } else {
            this.f1026c.m21268a(textClassifier);
        }
    }

    public void setTextFuture(Future<C0507c> future) {
        this.f1027e = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(C0507c.C0508a c0508a) {
        C0628i.m20139a(this, c0508a);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (f2184d) {
            super.setTextSize(i, f);
        } else if (this.f1025b == null) {
        } else {
            this.f1025b.m21265a(i, f);
        }
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface, int i) {
        Typeface typeface2 = null;
        if (typeface != null) {
            typeface2 = null;
            if (i > 0) {
                typeface2 = C0533c.m20615a(getContext(), typeface, i);
            }
        }
        if (typeface2 != null) {
            typeface = typeface2;
        }
        super.setTypeface(typeface, i);
    }
}
