package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1734b.p1743f.C25499c;
import p1727n3.p1734b.p1743f.C25529m0;
import p1727n3.p1734b.p1743f.C25533o0;
import p1727n3.p1734b.p1743f.C25534p;
import p1727n3.p1734b.p1743f.C25535p0;
import p1727n3.p1734b.p1743f.C25536q;
import p1727n3.p1807k.p1812c.C26496d;
import p1727n3.p1807k.p1812c.C26502k;
import p1727n3.p1807k.p1818g.C26538b;
import p1727n3.p1807k.p1824j.AbstractC26635f;
import p1727n3.p1807k.p1824j.AbstractC26639j;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatTextView.class */
public class AppCompatTextView extends TextView implements AbstractC26639j, AbstractC26635f {

    /* renamed from: a */
    public final C25499c f292a;

    /* renamed from: b */
    public final C25536q f293b;

    /* renamed from: c */
    public final C25534p f294c;

    /* renamed from: d */
    public boolean f295d;

    /* renamed from: e */
    public Future<C26538b> f296e;

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C25533o0.m3337a(context);
        this.f295d = false;
        C25529m0.m3344a(this, getContext());
        C25499c c25499c = new C25499c(this);
        this.f292a = c25499c;
        c25499c.m3390d(attributeSet, i);
        C25536q c25536q = new C25536q(this);
        this.f293b = c25536q;
        c25536q.m3331e(attributeSet, i);
        c25536q.m3334b();
        this.f294c = new C25534p(this);
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C25499c c25499c = this.f292a;
        if (c25499c != null) {
            c25499c.m3393a();
        }
        C25536q c25536q = this.f293b;
        if (c25536q != null) {
            c25536q.m3334b();
        }
    }

    /* renamed from: e */
    public final void m43135e() {
        Future<C26538b> future = this.f296e;
        if (future != null) {
            try {
                this.f296e = null;
                C26538b c26538b = future.get();
                if (Build.VERSION.SDK_INT >= 29) {
                    Objects.requireNonNull(c26538b);
                    setText((CharSequence) null);
                    return;
                }
                MediaSessionCompat.m43183y0(this);
                Objects.requireNonNull(c26538b);
                throw null;
            } catch (InterruptedException | ExecutionException e) {
            }
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (AbstractC26635f.f74562F) {
            return super.getAutoSizeMaxTextSize();
        }
        C25536q c25536q = this.f293b;
        if (c25536q == null) {
            return -1;
        }
        return Math.round(c25536q.f71453i.f71475e);
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (AbstractC26635f.f74562F) {
            return super.getAutoSizeMinTextSize();
        }
        C25536q c25536q = this.f293b;
        if (c25536q == null) {
            return -1;
        }
        return Math.round(c25536q.f71453i.f71474d);
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (AbstractC26635f.f74562F) {
            return super.getAutoSizeStepGranularity();
        }
        C25536q c25536q = this.f293b;
        if (c25536q == null) {
            return -1;
        }
        return Math.round(c25536q.f71453i.f71473c);
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (AbstractC26635f.f74562F) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C25536q c25536q = this.f293b;
        return c25536q != null ? c25536q.f71453i.f71476f : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        int i = 0;
        if (AbstractC26635f.f74562F) {
            if (super.getAutoSizeTextType() == 1) {
                i = 1;
            }
            return i;
        }
        C25536q c25536q = this.f293b;
        if (c25536q == null) {
            return 0;
        }
        return c25536q.f71453i.f71471a;
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    public ColorStateList getSupportBackgroundTintList() {
        C25499c c25499c = this.f292a;
        return c25499c != null ? c25499c.m3392b() : null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C25499c c25499c = this.f292a;
        return c25499c != null ? c25499c.m3391c() : null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        C25535p0 c25535p0 = this.f293b.f71452h;
        return c25535p0 != null ? c25535p0.f71441a : null;
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        C25535p0 c25535p0 = this.f293b.f71452h;
        return c25535p0 != null ? c25535p0.f71442b : null;
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        m43135e();
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        C25534p c25534p;
        return (Build.VERSION.SDK_INT >= 28 || (c25534p = this.f294c) == null) ? super.getTextClassifier() : c25534p.m3336a();
    }

    public C26538b.C26539a getTextMetricsParamsCompat() {
        return MediaSessionCompat.m43183y0(this);
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f293b.m3329g(this, onCreateInputConnection, editorInfo);
        MediaSessionCompat.m43254a1(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C25536q c25536q = this.f293b;
        if (c25536q == null || AbstractC26635f.f74562F) {
            return;
        }
        c25536q.f71453i.m3305a();
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        m43135e();
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        C25536q c25536q = this.f293b;
        if (c25536q == null || AbstractC26635f.f74562F || !c25536q.m3332d()) {
            return;
        }
        this.f293b.f71453i.m3305a();
    }

    @Override // android.widget.TextView, p1727n3.p1807k.p1824j.AbstractC26635f
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (AbstractC26635f.f74562F) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C25536q c25536q = this.f293b;
        if (c25536q == null) {
            return;
        }
        c25536q.m3328h(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) throws IllegalArgumentException {
        if (AbstractC26635f.f74562F) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        C25536q c25536q = this.f293b;
        if (c25536q == null) {
            return;
        }
        c25536q.m3327i(iArr, i);
    }

    @Override // android.widget.TextView, p1727n3.p1807k.p1824j.AbstractC26635f
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (AbstractC26635f.f74562F) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        C25536q c25536q = this.f293b;
        if (c25536q == null) {
            return;
        }
        c25536q.m3326j(i);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C25499c c25499c = this.f292a;
        if (c25499c != null) {
            c25499c.m3389e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C25499c c25499c = this.f292a;
        if (c25499c != null) {
            c25499c.m3388f(i);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C25536q c25536q = this.f293b;
        if (c25536q != null) {
            c25536q.m3334b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C25536q c25536q = this.f293b;
        if (c25536q != null) {
            c25536q.m3334b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable m3540a = i != 0 ? C25440a.m3540a(context, i) : null;
        Drawable m3540a2 = i2 != 0 ? C25440a.m3540a(context, i2) : null;
        Drawable m3540a3 = i3 != 0 ? C25440a.m3540a(context, i3) : null;
        if (i4 != 0) {
            drawable = C25440a.m3540a(context, i4);
        }
        setCompoundDrawablesRelativeWithIntrinsicBounds(m3540a, m3540a2, m3540a3, drawable);
        C25536q c25536q = this.f293b;
        if (c25536q != null) {
            c25536q.m3334b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C25536q c25536q = this.f293b;
        if (c25536q != null) {
            c25536q.m3334b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable m3540a = i != 0 ? C25440a.m3540a(context, i) : null;
        Drawable m3540a2 = i2 != 0 ? C25440a.m3540a(context, i2) : null;
        Drawable m3540a3 = i3 != 0 ? C25440a.m3540a(context, i3) : null;
        if (i4 != 0) {
            drawable = C25440a.m3540a(context, i4);
        }
        setCompoundDrawablesWithIntrinsicBounds(m3540a, m3540a2, m3540a3, drawable);
        C25536q c25536q = this.f293b;
        if (c25536q != null) {
            c25536q.m3334b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C25536q c25536q = this.f293b;
        if (c25536q != null) {
            c25536q.m3334b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(MediaSessionCompat.m43281N1(this, callback));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i);
        } else {
            MediaSessionCompat.m43206q1(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i);
        } else {
            MediaSessionCompat.m43200s1(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i) {
        MediaSessionCompat.m43197t1(this, i);
    }

    public void setPrecomputedText(C26538b c26538b) {
        if (Build.VERSION.SDK_INT >= 29) {
            Objects.requireNonNull(c26538b);
            setText((CharSequence) null);
            return;
        }
        MediaSessionCompat.m43183y0(this);
        Objects.requireNonNull(c26538b);
        throw null;
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C25499c c25499c = this.f292a;
        if (c25499c != null) {
            c25499c.m3386h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C25499c c25499c = this.f292a;
        if (c25499c != null) {
            c25499c.m3385i(mode);
        }
    }

    @Override // p1727n3.p1807k.p1824j.AbstractC26639j
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f293b.m3325k(colorStateList);
        this.f293b.m3334b();
    }

    @Override // p1727n3.p1807k.p1824j.AbstractC26639j
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f293b.m3324l(mode);
        this.f293b.m3334b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C25536q c25536q = this.f293b;
        if (c25536q != null) {
            c25536q.m3330f(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        C25534p c25534p;
        if (Build.VERSION.SDK_INT >= 28 || (c25534p = this.f294c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            c25534p.f71440b = textClassifier;
        }
    }

    public void setTextFuture(Future<C26538b> future) {
        this.f296e = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(C26538b.C26539a c26539a) {
        TextDirectionHeuristic textDirectionHeuristic = c26539a.f74365b;
        int i = 1;
        if (textDirectionHeuristic != TextDirectionHeuristics.FIRSTSTRONG_RTL && textDirectionHeuristic != TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            if (textDirectionHeuristic == TextDirectionHeuristics.ANYRTL_LTR) {
                i = 2;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.LTR) {
                i = 3;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.RTL) {
                i = 4;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.LOCALE) {
                i = 5;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
                i = 6;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL) {
                i = 7;
            }
        }
        setTextDirection(i);
        getPaint().set(c26539a.f74364a);
        setBreakStrategy(c26539a.f74366c);
        setHyphenationFrequency(c26539a.f74367d);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        boolean z = AbstractC26635f.f74562F;
        if (z) {
            super.setTextSize(i, f);
            return;
        }
        C25536q c25536q = this.f293b;
        if (c25536q == null || z || c25536q.m3332d()) {
            return;
        }
        c25536q.f71453i.m3300f(i, f);
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface, int i) {
        if (this.f295d) {
            return;
        }
        Typeface typeface2 = null;
        if (typeface != null) {
            typeface2 = null;
            if (i > 0) {
                Context context = getContext();
                C26502k c26502k = C26496d.f74283a;
                if (context == null) {
                    throw new IllegalArgumentException("Context cannot be null");
                }
                typeface2 = Typeface.create(typeface, i);
            }
        }
        this.f295d = true;
        if (typeface2 != null) {
            typeface = typeface2;
        }
        try {
            super.setTypeface(typeface, i);
        } finally {
            this.f295d = false;
        }
    }
}
