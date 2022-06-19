package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import p087f0.C2699e;
import p087f0.C2706k;
import p097g.C2788a;
import p124i4.C3102d;
import p141k0.C3310b;
import p196p0.AbstractC3984b;
import p196p0.AbstractC3995i;
import p196p0.C3992g;
/* renamed from: androidx.appcompat.widget.c0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c0.class */
public class C0212c0 extends TextView implements AbstractC3995i, AbstractC3984b {

    /* renamed from: a */
    public final C0221e f868a;

    /* renamed from: b */
    public final C0196a0 f869b;

    /* renamed from: c */
    public final C0302z f870c;

    /* renamed from: d */
    public C0251m f871d;

    /* renamed from: e */
    public boolean f872e;

    /* renamed from: f */
    public Future<C3310b> f873f;

    public C0212c0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0212c0(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0287w0.m8420a(context);
        this.f872e = false;
        C0283u0.m8427a(this, getContext());
        C0221e c0221e = new C0221e(this);
        this.f868a = c0221e;
        c0221e.m8545d(attributeSet, i);
        C0196a0 c0196a0 = new C0196a0(this);
        this.f869b = c0196a0;
        c0196a0.m8583e(attributeSet, i);
        c0196a0.m8586b();
        this.f870c = new C0302z(this);
        getEmojiTextViewHelper().m8467a(attributeSet, i);
    }

    private C0251m getEmojiTextViewHelper() {
        if (this.f871d == null) {
            this.f871d = new C0251m(this);
        }
        return this.f871d;
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0221e c0221e = this.f868a;
        if (c0221e != null) {
            c0221e.m8548a();
        }
        C0196a0 c0196a0 = this.f869b;
        if (c0196a0 != null) {
            c0196a0.m8586b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (AbstractC3984b.f12534Q) {
            return super.getAutoSizeMaxTextSize();
        }
        C0196a0 c0196a0 = this.f869b;
        if (c0196a0 == null) {
            return -1;
        }
        return Math.round(c0196a0.f826i.f904e);
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (AbstractC3984b.f12534Q) {
            return super.getAutoSizeMinTextSize();
        }
        C0196a0 c0196a0 = this.f869b;
        if (c0196a0 == null) {
            return -1;
        }
        return Math.round(c0196a0.f826i.f903d);
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (AbstractC3984b.f12534Q) {
            return super.getAutoSizeStepGranularity();
        }
        C0196a0 c0196a0 = this.f869b;
        if (c0196a0 == null) {
            return -1;
        }
        return Math.round(c0196a0.f826i.f902c);
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (AbstractC3984b.f12534Q) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C0196a0 c0196a0 = this.f869b;
        return c0196a0 != null ? c0196a0.f826i.f905f : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        int i = 0;
        if (AbstractC3984b.f12534Q) {
            if (super.getAutoSizeTextType() == 1) {
                i = 1;
            }
            return i;
        }
        C0196a0 c0196a0 = this.f869b;
        if (c0196a0 == null) {
            return 0;
        }
        return c0196a0.f826i.f900a;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return C3992g.m1555g(super.getCustomSelectionActionModeCallback());
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
        C0221e c0221e = this.f868a;
        return c0221e != null ? c0221e.m8547b() : null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0221e c0221e = this.f868a;
        return c0221e != null ? c0221e.m8546c() : null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        C0289x0 c0289x0 = this.f869b.f825h;
        return c0289x0 != null ? c0289x0.f1131a : null;
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        C0289x0 c0289x0 = this.f869b.f825h;
        return c0289x0 != null ? c0289x0.f1132b : null;
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        Future<C3310b> future = this.f873f;
        if (future != null) {
            try {
                this.f873f = null;
                C3992g.m1557e(this, future.get());
            } catch (InterruptedException | ExecutionException e) {
            }
        }
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        C0302z c0302z;
        return (Build.VERSION.SDK_INT >= 28 || (c0302z = this.f870c) == null) ? super.getTextClassifier() : c0302z.m8401b();
    }

    public C3310b.C3311a getTextMetricsParamsCompat() {
        return C3992g.m1561a(this);
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f869b.m8581g(this, onCreateInputConnection, editorInfo);
        C3102d.m2648D(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C0196a0 c0196a0 = this.f869b;
        if (c0196a0 == null || AbstractC3984b.f12534Q) {
            return;
        }
        c0196a0.f826i.m8561a();
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        Future<C3310b> future = this.f873f;
        if (future != null) {
            try {
                this.f873f = null;
                C3992g.m1557e(this, future.get());
            } catch (InterruptedException | ExecutionException e) {
            }
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        C0196a0 c0196a0 = this.f869b;
        if (c0196a0 == null || AbstractC3984b.f12534Q || !c0196a0.m8584d()) {
            return;
        }
        this.f869b.f826i.m8561a();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().f1015b.f14578a.mo543c(z);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (AbstractC3984b.f12534Q) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C0196a0 c0196a0 = this.f869b;
        if (c0196a0 == null) {
            return;
        }
        c0196a0.m8580h(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) throws IllegalArgumentException {
        if (AbstractC3984b.f12534Q) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        C0196a0 c0196a0 = this.f869b;
        if (c0196a0 == null) {
            return;
        }
        c0196a0.m8579i(iArr, i);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (AbstractC3984b.f12534Q) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        C0196a0 c0196a0 = this.f869b;
        if (c0196a0 == null) {
            return;
        }
        c0196a0.m8578j(i);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0221e c0221e = this.f868a;
        if (c0221e != null) {
            c0221e.m8544e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0221e c0221e = this.f868a;
        if (c0221e != null) {
            c0221e.m8543f(i);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C0196a0 c0196a0 = this.f869b;
        if (c0196a0 != null) {
            c0196a0.m8586b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C0196a0 c0196a0 = this.f869b;
        if (c0196a0 != null) {
            c0196a0.m8586b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable m3015b = i != 0 ? C2788a.m3015b(context, i) : null;
        Drawable m3015b2 = i2 != 0 ? C2788a.m3015b(context, i2) : null;
        Drawable m3015b3 = i3 != 0 ? C2788a.m3015b(context, i3) : null;
        if (i4 != 0) {
            drawable = C2788a.m3015b(context, i4);
        }
        setCompoundDrawablesRelativeWithIntrinsicBounds(m3015b, m3015b2, m3015b3, drawable);
        C0196a0 c0196a0 = this.f869b;
        if (c0196a0 != null) {
            c0196a0.m8586b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C0196a0 c0196a0 = this.f869b;
        if (c0196a0 != null) {
            c0196a0.m8586b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable m3015b = i != 0 ? C2788a.m3015b(context, i) : null;
        Drawable m3015b2 = i2 != 0 ? C2788a.m3015b(context, i2) : null;
        Drawable m3015b3 = i3 != 0 ? C2788a.m3015b(context, i3) : null;
        if (i4 != 0) {
            drawable = C2788a.m3015b(context, i4);
        }
        setCompoundDrawablesWithIntrinsicBounds(m3015b, m3015b2, m3015b3, drawable);
        C0196a0 c0196a0 = this.f869b;
        if (c0196a0 != null) {
            c0196a0.m8586b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C0196a0 c0196a0 = this.f869b;
        if (c0196a0 != null) {
            c0196a0.m8586b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C3992g.m1554h(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().f1015b.f14578a.mo542d(z);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().f1015b.f14578a.mo545a(inputFilterArr));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i);
        } else {
            C3992g.m1560b(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i);
        } else {
            C3992g.m1559c(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i) {
        C3992g.m1558d(this, i);
    }

    public void setPrecomputedText(C3310b c3310b) {
        C3992g.m1557e(this, c3310b);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0221e c0221e = this.f868a;
        if (c0221e != null) {
            c0221e.m8541h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0221e c0221e = this.f868a;
        if (c0221e != null) {
            c0221e.m8540i(mode);
        }
    }

    @Override // p196p0.AbstractC3995i
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f869b.m8577k(colorStateList);
        this.f869b.m8586b();
    }

    @Override // p196p0.AbstractC3995i
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f869b.m8576l(mode);
        this.f869b.m8586b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0196a0 c0196a0 = this.f869b;
        if (c0196a0 != null) {
            c0196a0.m8582f(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        C0302z c0302z;
        if (Build.VERSION.SDK_INT >= 28 || (c0302z = this.f870c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            c0302z.f1162b = textClassifier;
        }
    }

    public void setTextFuture(Future<C3310b> future) {
        this.f873f = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(C3310b.C3311a c3311a) {
        int i = Build.VERSION.SDK_INT;
        TextDirectionHeuristic textDirectionHeuristic = c3311a.f11230b;
        int i2 = 1;
        if (textDirectionHeuristic != TextDirectionHeuristics.FIRSTSTRONG_RTL && textDirectionHeuristic != TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            if (textDirectionHeuristic == TextDirectionHeuristics.ANYRTL_LTR) {
                i2 = 2;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.LTR) {
                i2 = 3;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.RTL) {
                i2 = 4;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.LOCALE) {
                i2 = 5;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
                i2 = 6;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL) {
                i2 = 7;
            }
        }
        setTextDirection(i2);
        if (i >= 23) {
            getPaint().set(c3311a.f11229a);
            setBreakStrategy(c3311a.f11231c);
            setHyphenationFrequency(c3311a.f11232d);
            return;
        }
        float textScaleX = c3311a.f11229a.getTextScaleX();
        getPaint().set(c3311a.f11229a);
        if (textScaleX == getTextScaleX()) {
            setTextScaleX((textScaleX / 2.0f) + 1.0f);
        }
        setTextScaleX(textScaleX);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        boolean z = AbstractC3984b.f12534Q;
        if (z) {
            super.setTextSize(i, f);
            return;
        }
        C0196a0 c0196a0 = this.f869b;
        if (c0196a0 == null || z || c0196a0.m8584d()) {
            return;
        }
        c0196a0.f826i.m8556f(i, f);
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface, int i) {
        if (this.f872e) {
            return;
        }
        Typeface typeface2 = null;
        if (typeface != null) {
            typeface2 = null;
            if (i > 0) {
                Context context = getContext();
                C2706k c2706k = C2699e.f9279a;
                if (context == null) {
                    throw new IllegalArgumentException("Context cannot be null");
                }
                typeface2 = Typeface.create(typeface, i);
            }
        }
        this.f872e = true;
        if (typeface2 != null) {
            typeface = typeface2;
        }
        try {
            super.setTypeface(typeface, i);
        } finally {
            this.f872e = false;
        }
    }
}
