package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.core.graphics.C0839d;
import androidx.core.p035d.C0815c;
import androidx.core.view.AbstractC0925u;
import androidx.core.widget.AbstractC0953b;
import androidx.core.widget.AbstractC0962j;
import androidx.core.widget.C0959h;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatTextView.class */
public class AppCompatTextView extends TextView implements AbstractC0925u, AbstractC0953b, AbstractC0962j {

    /* renamed from: a */
    private final C0390d f1188a;

    /* renamed from: b */
    private final C0399l f1189b;

    /* renamed from: c */
    private final C0398k f1190c;

    /* renamed from: e */
    private Future<C0815c> f1191e;

    public AppCompatTextView(Context context) {
        this(context, null);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet, int i) {
        super(C0426y.m45569a(context), attributeSet, i);
        C0425x.m45572a(this, getContext());
        C0390d c0390d = new C0390d(this);
        this.f1188a = c0390d;
        c0390d.m45744a(attributeSet, i);
        C0399l c0399l = new C0399l(this);
        this.f1189b = c0399l;
        c0399l.m45694a(attributeSet, i);
        c0399l.m45705a();
        this.f1190c = new C0398k(this);
    }

    /* renamed from: a */
    private void m45962a() {
        Future<C0815c> future = this.f1191e;
        if (future != null) {
            try {
                this.f1191e = null;
                C0959h.m43960a(this, future.get());
            } catch (InterruptedException | ExecutionException e) {
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0390d c0390d = this.f1188a;
        if (c0390d != null) {
            c0390d.m45740d();
        }
        C0399l c0399l = this.f1189b;
        if (c0399l != null) {
            c0399l.m45705a();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (f3859d) {
            return super.getAutoSizeMaxTextSize();
        }
        C0399l c0399l = this.f1189b;
        if (c0399l == null) {
            return -1;
        }
        return Math.round(c0399l.f1599a.f1622d);
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (f3859d) {
            return super.getAutoSizeMinTextSize();
        }
        C0399l c0399l = this.f1189b;
        if (c0399l == null) {
            return -1;
        }
        return Math.round(c0399l.f1599a.f1621c);
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (f3859d) {
            return super.getAutoSizeStepGranularity();
        }
        C0399l c0399l = this.f1189b;
        if (c0399l == null) {
            return -1;
        }
        return Math.round(c0399l.f1599a.f1620b);
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (f3859d) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C0399l c0399l = this.f1189b;
        return c0399l != null ? c0399l.f1599a.f1623e : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        if (f3859d) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        C0399l c0399l = this.f1189b;
        if (c0399l == null) {
            return 0;
        }
        return c0399l.f1599a.f1619a;
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    @Override // androidx.core.view.AbstractC0925u
    public ColorStateList getSupportBackgroundTintList() {
        C0390d c0390d = this.f1188a;
        if (c0390d != null) {
            return c0390d.m45743b();
        }
        return null;
    }

    @Override // androidx.core.view.AbstractC0925u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0390d c0390d = this.f1188a;
        if (c0390d != null) {
            return c0390d.m45741c();
        }
        return null;
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        m45962a();
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        C0398k c0398k;
        return (Build.VERSION.SDK_INT >= 28 || (c0398k = this.f1190c) == null) ? super.getTextClassifier() : c0398k.m45706a();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return C0394g.m45720a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C0399l c0399l = this.f1189b;
        if (c0399l != null) {
            c0399l.m45691b();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        m45962a();
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        if (this.f1189b == null || f3859d || !this.f1189b.f1599a.m45673b()) {
            return;
        }
        this.f1189b.f1599a.m45688a();
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (f3859d) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C0399l c0399l = this.f1189b;
        if (c0399l == null) {
            return;
        }
        c0399l.m45702a(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) throws IllegalArgumentException {
        if (f3859d) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        C0399l c0399l = this.f1189b;
        if (c0399l == null) {
            return;
        }
        c0399l.m45692a(iArr, i);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (f3859d) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        C0399l c0399l = this.f1189b;
        if (c0399l == null) {
            return;
        }
        c0399l.m45704a(i);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0390d c0390d = this.f1188a;
        if (c0390d != null) {
            c0390d.m45749a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0390d c0390d = this.f1188a;
        if (c0390d != null) {
            c0390d.m45748a(i);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C0399l c0399l = this.f1189b;
        if (c0399l != null) {
            c0399l.m45705a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C0399l c0399l = this.f1189b;
        if (c0399l != null) {
            c0399l.m45705a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable m46374b = i != 0 ? C0153a.m46374b(context, i) : null;
        Drawable m46374b2 = i2 != 0 ? C0153a.m46374b(context, i2) : null;
        Drawable m46374b3 = i3 != 0 ? C0153a.m46374b(context, i3) : null;
        if (i4 != 0) {
            drawable = C0153a.m46374b(context, i4);
        }
        setCompoundDrawablesRelativeWithIntrinsicBounds(m46374b, m46374b2, m46374b3, drawable);
        C0399l c0399l = this.f1189b;
        if (c0399l != null) {
            c0399l.m45705a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C0399l c0399l = this.f1189b;
        if (c0399l != null) {
            c0399l.m45705a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable m46374b = i != 0 ? C0153a.m46374b(context, i) : null;
        Drawable m46374b2 = i2 != 0 ? C0153a.m46374b(context, i2) : null;
        Drawable m46374b3 = i3 != 0 ? C0153a.m46374b(context, i3) : null;
        if (i4 != 0) {
            drawable = C0153a.m46374b(context, i4);
        }
        setCompoundDrawablesWithIntrinsicBounds(m46374b, m46374b2, m46374b3, drawable);
        C0399l c0399l = this.f1189b;
        if (c0399l != null) {
            c0399l.m45705a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C0399l c0399l = this.f1189b;
        if (c0399l != null) {
            c0399l.m45705a();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0959h.m43961a(this, callback));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i);
        } else {
            C0959h.m43956b(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i);
        } else {
            C0959h.m43954c(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i) {
        C0959h.m43953d(this, i);
    }

    public void setPrecomputedText(C0815c c0815c) {
        C0959h.m43960a(this, c0815c);
    }

    @Override // androidx.core.view.AbstractC0925u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0390d c0390d = this.f1188a;
        if (c0390d != null) {
            c0390d.m45747a(colorStateList);
        }
    }

    @Override // androidx.core.view.AbstractC0925u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0390d c0390d = this.f1188a;
        if (c0390d != null) {
            c0390d.m45746a(mode);
        }
    }

    @Override // androidx.core.widget.AbstractC0962j
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f1189b.m45698a(colorStateList);
        this.f1189b.m45705a();
    }

    @Override // androidx.core.widget.AbstractC0962j
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f1189b.m45697a(mode);
        this.f1189b.m45705a();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0399l c0399l = this.f1189b;
        if (c0399l != null) {
            c0399l.m45701a(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        C0398k c0398k;
        if (Build.VERSION.SDK_INT >= 28 || (c0398k = this.f1190c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            c0398k.f1597a = textClassifier;
        }
    }

    public void setTextFuture(Future<C0815c> future) {
        this.f1191e = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(C0815c.C0816a c0816a) {
        int i;
        if (Build.VERSION.SDK_INT >= 18) {
            TextDirectionHeuristic textDirectionHeuristic = c0816a.f3535b;
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
                setTextDirection(i);
            }
            i = 1;
            setTextDirection(i);
        }
        if (Build.VERSION.SDK_INT >= 23) {
            getPaint().set(c0816a.f3534a);
            setBreakStrategy(c0816a.f3536c);
            setHyphenationFrequency(c0816a.f3537d);
            return;
        }
        float textScaleX = c0816a.f3534a.getTextScaleX();
        getPaint().set(c0816a.f3534a);
        if (textScaleX == getTextScaleX()) {
            setTextScaleX((textScaleX / 2.0f) + 1.0f);
        }
        setTextScaleX(textScaleX);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (f3859d) {
            super.setTextSize(i, f);
            return;
        }
        C0399l c0399l = this.f1189b;
        if (c0399l == null) {
            return;
        }
        c0399l.m45703a(i, f);
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface, int i) {
        Typeface m44378a = (typeface == null || i <= 0) ? null : C0839d.m44378a(getContext(), typeface, i);
        if (m44378a != null) {
            typeface = m44378a;
        }
        super.setTypeface(typeface, i);
    }
}
