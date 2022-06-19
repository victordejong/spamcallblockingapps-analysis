package androidx.appcompat.widget;

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
import androidx.appcompat.p006a.p007a.C0062a;
import androidx.core.graphics.C0573c;
import androidx.core.p021e.C0483c;
import androidx.core.p023g.AbstractC0551t;
import androidx.core.widget.AbstractC0598b;
import androidx.core.widget.AbstractC0608k;
import androidx.core.widget.C0605i;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatTextView.class */
public class AppCompatTextView extends TextView implements AbstractC0551t, AbstractC0598b, AbstractC0608k {

    /* renamed from: a */
    private final C0331e f962a;

    /* renamed from: b */
    private final C0349v f963b;

    /* renamed from: c */
    private final C0348u f964c;

    /* renamed from: e */
    private Future<C0483c> f965e;

    public AppCompatTextView(Context context) {
        this(context, null);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet, int i) {
        super(C0308ap.m7167a(context), attributeSet, i);
        this.f962a = new C0331e(this);
        this.f962a.m7088a(attributeSet, i);
        this.f963b = new C0349v(this);
        this.f963b.m7016a(attributeSet, i);
        this.f963b.m7011b();
        this.f964c = new C0348u(this);
    }

    /* renamed from: a */
    private void m7396a() {
        Future<C0483c> future = this.f965e;
        if (future != null) {
            try {
                this.f965e = null;
                C0605i.m5973a(this, future.get());
            } catch (InterruptedException | ExecutionException e) {
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0331e c0331e = this.f962a;
        if (c0331e != null) {
            c0331e.m7084c();
        }
        C0349v c0349v = this.f963b;
        if (c0349v != null) {
            c0349v.m7011b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (f2027d) {
            return super.getAutoSizeMaxTextSize();
        }
        C0349v c0349v = this.f963b;
        if (c0349v == null) {
            return -1;
        }
        return c0349v.m7004h();
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (f2027d) {
            return super.getAutoSizeMinTextSize();
        }
        C0349v c0349v = this.f963b;
        if (c0349v == null) {
            return -1;
        }
        return c0349v.m7005g();
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (f2027d) {
            return super.getAutoSizeStepGranularity();
        }
        C0349v c0349v = this.f963b;
        if (c0349v == null) {
            return -1;
        }
        return c0349v.m7006f();
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (f2027d) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C0349v c0349v = this.f963b;
        return c0349v != null ? c0349v.m7003i() : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        int i = 0;
        if (f2027d) {
            if (super.getAutoSizeTextType() == 1) {
                i = 1;
            }
            return i;
        }
        C0349v c0349v = this.f963b;
        if (c0349v == null) {
            return 0;
        }
        return c0349v.m7007e();
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return C0605i.m5968c(this);
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return C0605i.m5966d(this);
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public ColorStateList getSupportBackgroundTintList() {
        C0331e c0331e = this.f962a;
        return c0331e != null ? c0331e.m7093a() : null;
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0331e c0331e = this.f962a;
        return c0331e != null ? c0331e.m7087b() : null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f963b.m7002j();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f963b.m7001k();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        m7396a();
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        C0348u c0348u;
        return (Build.VERSION.SDK_INT >= 28 || (c0348u = this.f964c) == null) ? super.getTextClassifier() : c0348u.m7030a();
    }

    public C0483c.C0484a getTextMetricsParamsCompat() {
        return C0605i.m5964e(this);
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return C0338k.m7053a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C0349v c0349v = this.f963b;
        if (c0349v != null) {
            c0349v.m7013a(z, i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        m7396a();
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        if (this.f963b == null || f2027d || !this.f963b.m7008d()) {
            return;
        }
        this.f963b.m7009c();
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (f2027d) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C0349v c0349v = this.f963b;
        if (c0349v == null) {
            return;
        }
        c0349v.m7025a(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        if (f2027d) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        C0349v c0349v = this.f963b;
        if (c0349v == null) {
            return;
        }
        c0349v.m7012a(iArr, i);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (f2027d) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        C0349v c0349v = this.f963b;
        if (c0349v == null) {
            return;
        }
        c0349v.m7027a(i);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0331e c0331e = this.f962a;
        if (c0331e != null) {
            c0331e.m7089a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0331e c0331e = this.f962a;
        if (c0331e != null) {
            c0331e.m7092a(i);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C0349v c0349v = this.f963b;
        if (c0349v != null) {
            c0349v.m7028a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C0349v c0349v = this.f963b;
        if (c0349v != null) {
            c0349v.m7028a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable m7983b = i != 0 ? C0062a.m7983b(context, i) : null;
        Drawable m7983b2 = i2 != 0 ? C0062a.m7983b(context, i2) : null;
        Drawable m7983b3 = i3 != 0 ? C0062a.m7983b(context, i3) : null;
        if (i4 != 0) {
            drawable = C0062a.m7983b(context, i4);
        }
        setCompoundDrawablesRelativeWithIntrinsicBounds(m7983b, m7983b2, m7983b3, drawable);
        C0349v c0349v = this.f963b;
        if (c0349v != null) {
            c0349v.m7028a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C0349v c0349v = this.f963b;
        if (c0349v != null) {
            c0349v.m7028a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable m7983b = i != 0 ? C0062a.m7983b(context, i) : null;
        Drawable m7983b2 = i2 != 0 ? C0062a.m7983b(context, i2) : null;
        Drawable m7983b3 = i3 != 0 ? C0062a.m7983b(context, i3) : null;
        if (i4 != 0) {
            drawable = C0062a.m7983b(context, i4);
        }
        setCompoundDrawablesWithIntrinsicBounds(m7983b, m7983b2, m7983b3, drawable);
        C0349v c0349v = this.f963b;
        if (c0349v != null) {
            c0349v.m7028a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C0349v c0349v = this.f963b;
        if (c0349v != null) {
            c0349v.m7028a();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0605i.m5975a(this, callback));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i);
        } else {
            C0605i.m5969b(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i);
        } else {
            C0605i.m5967c(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i) {
        C0605i.m5965d(this, i);
    }

    public void setPrecomputedText(C0483c c0483c) {
        C0605i.m5973a(this, c0483c);
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0331e c0331e = this.f962a;
        if (c0331e != null) {
            c0331e.m7091a(colorStateList);
        }
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0331e c0331e = this.f962a;
        if (c0331e != null) {
            c0331e.m7090a(mode);
        }
    }

    @Override // androidx.core.widget.AbstractC0608k
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f963b.m7021a(colorStateList);
        this.f963b.m7011b();
    }

    @Override // androidx.core.widget.AbstractC0608k
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f963b.m7020a(mode);
        this.f963b.m7011b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0349v c0349v = this.f963b;
        if (c0349v != null) {
            c0349v.m7024a(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        C0348u c0348u;
        if (Build.VERSION.SDK_INT >= 28 || (c0348u = this.f964c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            c0348u.m7029a(textClassifier);
        }
    }

    public void setTextFuture(Future<C0483c> future) {
        this.f965e = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(C0483c.C0484a c0484a) {
        C0605i.m5974a(this, c0484a);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (f2027d) {
            super.setTextSize(i, f);
            return;
        }
        C0349v c0349v = this.f963b;
        if (c0349v == null) {
            return;
        }
        c0349v.m7026a(i, f);
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface, int i) {
        Typeface m6153a = (typeface == null || i <= 0) ? null : C0573c.m6153a(getContext(), typeface, i);
        if (m6153a != null) {
            typeface = m6153a;
        }
        super.setTypeface(typeface, i);
    }
}
