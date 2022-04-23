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
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import p012b.p016b.p018l.p019a.C0601a;
import p012b.p016b.p026q.C0675a0;
import p012b.p016b.p026q.C0684c0;
import p012b.p016b.p026q.C0685d;
import p012b.p016b.p026q.C0692g;
import p012b.p016b.p026q.C0704k;
import p012b.p016b.p026q.C0706l;
import p012b.p042i.p046j.C0896e;
import p012b.p042i.p052n.C0938a;
import p012b.p042i.p054p.AbstractC1001t;
import p012b.p042i.p056q.AbstractC1025b;
import p012b.p042i.p056q.AbstractC1035k;
import p012b.p042i.p056q.C1032i;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatTextView.class */
public class AppCompatTextView extends TextView implements AbstractC1001t, AbstractC1035k, AbstractC1025b {

    /* renamed from: a */
    public final C0685d f595a;

    /* renamed from: b */
    public final C0706l f596b;

    /* renamed from: c */
    public final C0704k f597c;

    /* renamed from: d */
    public Future<C0938a> f598d;

    public AppCompatTextView(Context context) {
        this(context, null);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet, int i) {
        super(C0684c0.m36459b(context), attributeSet, i);
        C0675a0.m36481a(this, getContext());
        C0685d dVar = new C0685d(this);
        this.f595a = dVar;
        dVar.m36453a(attributeSet, i);
        C0706l lVar = new C0706l(this);
        this.f596b = lVar;
        lVar.m36336a(attributeSet, i);
        this.f596b.m36347a();
        this.f597c = new C0704k(this);
    }

    /* renamed from: d */
    public final void m38992d() {
        Future<C0938a> future = this.f598d;
        if (future != null) {
            try {
                this.f598d = null;
                C1032i.m35096a(this, future.get());
            } catch (InterruptedException | ExecutionException e) {
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0685d dVar = this.f595a;
        if (dVar != null) {
            dVar.m36458a();
        }
        C0706l lVar = this.f596b;
        if (lVar != null) {
            lVar.m36347a();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (AbstractC1025b.f4312X) {
            return super.getAutoSizeMaxTextSize();
        }
        C0706l lVar = this.f596b;
        if (lVar != null) {
            return lVar.m36329c();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (AbstractC1025b.f4312X) {
            return super.getAutoSizeMinTextSize();
        }
        C0706l lVar = this.f596b;
        if (lVar != null) {
            return lVar.m36328d();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (AbstractC1025b.f4312X) {
            return super.getAutoSizeStepGranularity();
        }
        C0706l lVar = this.f596b;
        if (lVar != null) {
            return lVar.m36327e();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (AbstractC1025b.f4312X) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C0706l lVar = this.f596b;
        return lVar != null ? lVar.m36326f() : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        int i = 0;
        if (AbstractC1025b.f4312X) {
            if (super.getAutoSizeTextType() == 1) {
                i = 1;
            }
            return i;
        }
        C0706l lVar = this.f596b;
        if (lVar != null) {
            return lVar.m36325g();
        }
        return 0;
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return C1032i.m35102a(this);
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return C1032i.m35095b(this);
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public ColorStateList getSupportBackgroundTintList() {
        C0685d dVar = this.f595a;
        return dVar != null ? dVar.m36452b() : null;
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0685d dVar = this.f595a;
        return dVar != null ? dVar.m36449c() : null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f596b.m36324h();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f596b.m36323i();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        m38992d();
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        C0704k kVar;
        return (Build.VERSION.SDK_INT >= 28 || (kVar = this.f597c) == null) ? super.getTextClassifier() : kVar.m36352a();
    }

    public C0938a.C0939a getTextMetricsParamsCompat() {
        return C1032i.m35091d(this);
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        C0692g.m36400a(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C0706l lVar = this.f596b;
        if (lVar != null) {
            lVar.m36333a(z, i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        m38992d();
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        C0706l lVar = this.f596b;
        if (lVar != null && !AbstractC1025b.f4312X && lVar.m36322j()) {
            this.f596b.m36331b();
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (AbstractC1025b.f4312X) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C0706l lVar = this.f596b;
        if (lVar != null) {
            lVar.m36344a(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) throws IllegalArgumentException {
        if (AbstractC1025b.f4312X) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        C0706l lVar = this.f596b;
        if (lVar != null) {
            lVar.m36332a(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (AbstractC1025b.f4312X) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        C0706l lVar = this.f596b;
        if (lVar != null) {
            lVar.m36346a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0685d dVar = this.f595a;
        if (dVar != null) {
            dVar.m36450b(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0685d dVar = this.f595a;
        if (dVar != null) {
            dVar.m36457a(i);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C0706l lVar = this.f596b;
        if (lVar != null) {
            lVar.m36321k();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C0706l lVar = this.f596b;
        if (lVar != null) {
            lVar.m36321k();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable c = i != 0 ? C0601a.m36777c(context, i) : null;
        Drawable c2 = i2 != 0 ? C0601a.m36777c(context, i2) : null;
        Drawable c3 = i3 != 0 ? C0601a.m36777c(context, i3) : null;
        if (i4 != 0) {
            drawable = C0601a.m36777c(context, i4);
        }
        setCompoundDrawablesRelativeWithIntrinsicBounds(c, c2, c3, drawable);
        C0706l lVar = this.f596b;
        if (lVar != null) {
            lVar.m36321k();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C0706l lVar = this.f596b;
        if (lVar != null) {
            lVar.m36321k();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable c = i != 0 ? C0601a.m36777c(context, i) : null;
        Drawable c2 = i2 != 0 ? C0601a.m36777c(context, i2) : null;
        Drawable c3 = i3 != 0 ? C0601a.m36777c(context, i3) : null;
        if (i4 != 0) {
            drawable = C0601a.m36777c(context, i4);
        }
        setCompoundDrawablesWithIntrinsicBounds(c, c2, c3, drawable);
        C0706l lVar = this.f596b;
        if (lVar != null) {
            lVar.m36321k();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C0706l lVar = this.f596b;
        if (lVar != null) {
            lVar.m36321k();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C1032i.m35098a(this, callback));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i);
        } else {
            C1032i.m35101a(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i);
        } else {
            C1032i.m35094b(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i) {
        C1032i.m35092c(this, i);
    }

    public void setPrecomputedText(C0938a aVar) {
        C1032i.m35096a(this, aVar);
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0685d dVar = this.f595a;
        if (dVar != null) {
            dVar.m36451b(colorStateList);
        }
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0685d dVar = this.f595a;
        if (dVar != null) {
            dVar.m36455a(mode);
        }
    }

    @Override // p012b.p042i.p056q.AbstractC1035k
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f596b.m36340a(colorStateList);
        this.f596b.m36347a();
    }

    @Override // p012b.p042i.p056q.AbstractC1035k
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f596b.m36339a(mode);
        this.f596b.m36347a();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0706l lVar = this.f596b;
        if (lVar != null) {
            lVar.m36343a(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        C0704k kVar;
        if (Build.VERSION.SDK_INT >= 28 || (kVar = this.f597c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            kVar.m36351a(textClassifier);
        }
    }

    public void setTextFuture(Future<C0938a> future) {
        this.f598d = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(C0938a.C0939a aVar) {
        C1032i.m35097a(this, aVar);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (AbstractC1025b.f4312X) {
            super.setTextSize(i, f);
            return;
        }
        C0706l lVar = this.f596b;
        if (lVar != null) {
            lVar.m36345a(i, f);
        }
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface, int i) {
        Typeface a = (typeface == null || i <= 0) ? null : C0896e.m35582a(getContext(), typeface, i);
        if (a != null) {
            typeface = a;
        }
        super.setTypeface(typeface, i);
    }
}
