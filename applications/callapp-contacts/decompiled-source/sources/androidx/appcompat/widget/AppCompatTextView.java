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
import androidx.appcompat.a.a.a;
import androidx.core.d.c;
import androidx.core.graphics.d;
import androidx.core.view.u;
import androidx.core.widget.b;
import androidx.core.widget.h;
import androidx.core.widget.j;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatTextView.class */
public class AppCompatTextView extends TextView implements u, b, j {

    /* renamed from: a  reason: collision with root package name */
    private final d f939a;

    /* renamed from: b  reason: collision with root package name */
    private final l f940b;

    /* renamed from: c  reason: collision with root package name */
    private final k f941c;
    private Future<c> e;

    public AppCompatTextView(Context context) {
        this(context, null);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet, int i) {
        super(y.a(context), attributeSet, i);
        x.a(this, getContext());
        d dVar = new d(this);
        this.f939a = dVar;
        dVar.a(attributeSet, i);
        l lVar = new l(this);
        this.f940b = lVar;
        lVar.a(attributeSet, i);
        lVar.a();
        this.f941c = new k(this);
    }

    private void a() {
        Future<c> future = this.e;
        if (future != null) {
            try {
                this.e = null;
                h.a(this, future.get());
            } catch (InterruptedException | ExecutionException e) {
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        d dVar = this.f939a;
        if (dVar != null) {
            dVar.d();
        }
        l lVar = this.f940b;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (f2058d) {
            return super.getAutoSizeMaxTextSize();
        }
        l lVar = this.f940b;
        if (lVar != null) {
            return Math.round(lVar.f1108a.f1119d);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (f2058d) {
            return super.getAutoSizeMinTextSize();
        }
        l lVar = this.f940b;
        if (lVar != null) {
            return Math.round(lVar.f1108a.f1118c);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (f2058d) {
            return super.getAutoSizeStepGranularity();
        }
        l lVar = this.f940b;
        if (lVar != null) {
            return Math.round(lVar.f1108a.f1117b);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (f2058d) {
            return super.getAutoSizeTextAvailableSizes();
        }
        l lVar = this.f940b;
        return lVar != null ? lVar.f1108a.e : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        if (f2058d) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        l lVar = this.f940b;
        if (lVar != null) {
            return lVar.f1108a.f1116a;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    @Override // androidx.core.view.u
    public ColorStateList getSupportBackgroundTintList() {
        d dVar = this.f939a;
        if (dVar != null) {
            return dVar.b();
        }
        return null;
    }

    @Override // androidx.core.view.u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        d dVar = this.f939a;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        a();
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        k kVar;
        return (Build.VERSION.SDK_INT >= 28 || (kVar = this.f941c) == null) ? super.getTextClassifier() : kVar.a();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return g.a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        l lVar = this.f940b;
        if (lVar != null) {
            lVar.b();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        a();
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        if (this.f940b != null && !f2058d && this.f940b.f1108a.b()) {
            this.f940b.f1108a.a();
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (f2058d) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        l lVar = this.f940b;
        if (lVar != null) {
            lVar.a(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) throws IllegalArgumentException {
        if (f2058d) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        l lVar = this.f940b;
        if (lVar != null) {
            lVar.a(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (f2058d) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        l lVar = this.f940b;
        if (lVar != null) {
            lVar.a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d dVar = this.f939a;
        if (dVar != null) {
            dVar.a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        d dVar = this.f939a;
        if (dVar != null) {
            dVar.a(i);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        l lVar = this.f940b;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        l lVar = this.f940b;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable b2 = i != 0 ? a.b(context, i) : null;
        Drawable b3 = i2 != 0 ? a.b(context, i2) : null;
        Drawable b4 = i3 != 0 ? a.b(context, i3) : null;
        if (i4 != 0) {
            drawable = a.b(context, i4);
        }
        setCompoundDrawablesRelativeWithIntrinsicBounds(b2, b3, b4, drawable);
        l lVar = this.f940b;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        l lVar = this.f940b;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable b2 = i != 0 ? a.b(context, i) : null;
        Drawable b3 = i2 != 0 ? a.b(context, i2) : null;
        Drawable b4 = i3 != 0 ? a.b(context, i3) : null;
        if (i4 != 0) {
            drawable = a.b(context, i4);
        }
        setCompoundDrawablesWithIntrinsicBounds(b2, b3, b4, drawable);
        l lVar = this.f940b;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        l lVar = this.f940b;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(h.a(this, callback));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i);
        } else {
            h.b(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i);
        } else {
            h.c(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i) {
        h.d(this, i);
    }

    public void setPrecomputedText(c cVar) {
        h.a(this, cVar);
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        d dVar = this.f939a;
        if (dVar != null) {
            dVar.a(colorStateList);
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        d dVar = this.f939a;
        if (dVar != null) {
            dVar.a(mode);
        }
    }

    @Override // androidx.core.widget.j
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f940b.a(colorStateList);
        this.f940b.a();
    }

    @Override // androidx.core.widget.j
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f940b.a(mode);
        this.f940b.a();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        l lVar = this.f940b;
        if (lVar != null) {
            lVar.a(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        k kVar;
        if (Build.VERSION.SDK_INT >= 28 || (kVar = this.f941c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            kVar.f1106a = textClassifier;
        }
    }

    public void setTextFuture(Future<c> future) {
        this.e = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(c.a aVar) {
        int i;
        if (Build.VERSION.SDK_INT >= 18) {
            TextDirectionHeuristic textDirectionHeuristic = aVar.f1871b;
            if (!(textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL || textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR)) {
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
        if (Build.VERSION.SDK_INT < 23) {
            float textScaleX = aVar.f1870a.getTextScaleX();
            getPaint().set(aVar.f1870a);
            if (textScaleX == getTextScaleX()) {
                setTextScaleX((textScaleX / 2.0f) + 1.0f);
            }
            setTextScaleX(textScaleX);
            return;
        }
        getPaint().set(aVar.f1870a);
        setBreakStrategy(aVar.f1872c);
        setHyphenationFrequency(aVar.f1873d);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (f2058d) {
            super.setTextSize(i, f);
            return;
        }
        l lVar = this.f940b;
        if (lVar != null) {
            lVar.a(i, f);
        }
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface, int i) {
        Typeface a2 = (typeface == null || i <= 0) ? null : d.a(getContext(), typeface, i);
        if (a2 != null) {
            typeface = a2;
        }
        super.setTypeface(typeface, i);
    }
}
