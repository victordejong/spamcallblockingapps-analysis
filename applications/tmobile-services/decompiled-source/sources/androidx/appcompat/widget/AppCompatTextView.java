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
import androidx.annotation.AbstractC0040Px;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.text.PrecomputedTextCompat;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.AutoSizeableTextView;
import androidx.core.widget.TextViewCompat;
import androidx.core.widget.TintableCompoundDrawablesView;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatTextView.class */
public class AppCompatTextView extends TextView implements TintableBackgroundView, TintableCompoundDrawablesView, AutoSizeableTextView {

    /* renamed from: f */
    private final AppCompatBackgroundHelper f1021f;

    /* renamed from: g */
    private final AppCompatTextHelper f1022g;

    /* renamed from: h */
    private final AppCompatTextClassifierHelper f1023h;
    @Nullable

    /* renamed from: i */
    private Future<PrecomputedTextCompat> f1024i;

    public AppCompatTextView(@NonNull Context context) {
        this(context, null);
    }

    public AppCompatTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    public AppCompatTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(TintContextWrapper.m21267b(context), attributeSet, i);
        ThemeUtils.m21274a(this, getContext());
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this);
        this.f1021f = appCompatBackgroundHelper;
        appCompatBackgroundHelper.m21653e(attributeSet, i);
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this);
        this.f1022g = appCompatTextHelper;
        appCompatTextHelper.m21564m(attributeSet, i);
        this.f1022g.m21575b();
        this.f1023h = new AppCompatTextClassifierHelper(this);
    }

    /* renamed from: c */
    private void m21550c() {
        Future<PrecomputedTextCompat> future = this.f1024i;
        if (future != null) {
            try {
                this.f1024i = null;
                TextViewCompat.m18818q(this, future.get());
            } catch (InterruptedException | ExecutionException e) {
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1021f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.m21656b();
        }
        AppCompatTextHelper appCompatTextHelper = this.f1022g;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m21575b();
        }
    }

    @Override // android.widget.TextView
    @RestrictTo
    public int getAutoSizeMaxTextSize() {
        if (AutoSizeableTextView.f3388a) {
            return super.getAutoSizeMaxTextSize();
        }
        AppCompatTextHelper appCompatTextHelper = this.f1022g;
        if (appCompatTextHelper != null) {
            return appCompatTextHelper.m21572e();
        }
        return -1;
    }

    @Override // android.widget.TextView
    @RestrictTo
    public int getAutoSizeMinTextSize() {
        if (AutoSizeableTextView.f3388a) {
            return super.getAutoSizeMinTextSize();
        }
        AppCompatTextHelper appCompatTextHelper = this.f1022g;
        if (appCompatTextHelper != null) {
            return appCompatTextHelper.m21571f();
        }
        return -1;
    }

    @Override // android.widget.TextView
    @RestrictTo
    public int getAutoSizeStepGranularity() {
        if (AutoSizeableTextView.f3388a) {
            return super.getAutoSizeStepGranularity();
        }
        AppCompatTextHelper appCompatTextHelper = this.f1022g;
        if (appCompatTextHelper != null) {
            return appCompatTextHelper.m21570g();
        }
        return -1;
    }

    @Override // android.widget.TextView
    @RestrictTo
    public int[] getAutoSizeTextAvailableSizes() {
        if (AutoSizeableTextView.f3388a) {
            return super.getAutoSizeTextAvailableSizes();
        }
        AppCompatTextHelper appCompatTextHelper = this.f1022g;
        return appCompatTextHelper != null ? appCompatTextHelper.m21569h() : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    @RestrictTo
    public int getAutoSizeTextType() {
        int i = 0;
        if (AutoSizeableTextView.f3388a) {
            if (super.getAutoSizeTextType() == 1) {
                i = 1;
            }
            return i;
        }
        AppCompatTextHelper appCompatTextHelper = this.f1022g;
        if (appCompatTextHelper != null) {
            return appCompatTextHelper.m21568i();
        }
        return 0;
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return TextViewCompat.m18833b(this);
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return TextViewCompat.m18832c(this);
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo
    public ColorStateList getSupportBackgroundTintList() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1021f;
        return appCompatBackgroundHelper != null ? appCompatBackgroundHelper.m21655c() : null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1021f;
        return appCompatBackgroundHelper != null ? appCompatBackgroundHelper.m21654d() : null;
    }

    @Nullable
    @RestrictTo
    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f1022g.m21567j();
    }

    @Nullable
    @RestrictTo
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f1022g.m21566k();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        m21550c();
        return super.getText();
    }

    @Override // android.widget.TextView
    @NonNull
    @RequiresApi
    public TextClassifier getTextClassifier() {
        AppCompatTextClassifierHelper appCompatTextClassifierHelper;
        return (Build.VERSION.SDK_INT >= 28 || (appCompatTextClassifierHelper = this.f1023h) == null) ? super.getTextClassifier() : appCompatTextClassifierHelper.m21580a();
    }

    @NonNull
    public PrecomputedTextCompat.Params getTextMetricsParamsCompat() {
        return TextViewCompat.m18828g(this);
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        AppCompatHintHelper.m21622a(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        AppCompatTextHelper appCompatTextHelper = this.f1022g;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m21562o(z, i, i2, i3, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        m21550c();
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        AppCompatTextHelper appCompatTextHelper = this.f1022g;
        if (appCompatTextHelper != null && !AutoSizeableTextView.f3388a && appCompatTextHelper.m21565l()) {
            this.f1022g.m21574c();
        }
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @RestrictTo
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (AutoSizeableTextView.f3388a) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        AppCompatTextHelper appCompatTextHelper = this.f1022g;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m21558s(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    @RestrictTo
    public void setAutoSizeTextTypeUniformWithPresetSizes(@NonNull int[] iArr, int i) throws IllegalArgumentException {
        if (AutoSizeableTextView.f3388a) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        AppCompatTextHelper appCompatTextHelper = this.f1022g;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m21557t(iArr, i);
        }
    }

    @Override // android.widget.TextView
    @RestrictTo
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (AutoSizeableTextView.f3388a) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        AppCompatTextHelper appCompatTextHelper = this.f1022g;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m21556u(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1021f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.m21652f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1021f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.m21651g(i);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.f1022g;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m21561p();
        }
    }

    @Override // android.widget.TextView
    @RequiresApi
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.f1022g;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m21561p();
        }
    }

    @Override // android.widget.TextView
    @RequiresApi
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable d = i != 0 ? AppCompatResources.m22069d(context, i) : null;
        Drawable d2 = i2 != 0 ? AppCompatResources.m22069d(context, i2) : null;
        Drawable d3 = i3 != 0 ? AppCompatResources.m22069d(context, i3) : null;
        if (i4 != 0) {
            drawable = AppCompatResources.m22069d(context, i4);
        }
        setCompoundDrawablesRelativeWithIntrinsicBounds(d, d2, d3, drawable);
        AppCompatTextHelper appCompatTextHelper = this.f1022g;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m21561p();
        }
    }

    @Override // android.widget.TextView
    @RequiresApi
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.f1022g;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m21561p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable d = i != 0 ? AppCompatResources.m22069d(context, i) : null;
        Drawable d2 = i2 != 0 ? AppCompatResources.m22069d(context, i2) : null;
        Drawable d3 = i3 != 0 ? AppCompatResources.m22069d(context, i3) : null;
        if (i4 != 0) {
            drawable = AppCompatResources.m22069d(context, i4);
        }
        setCompoundDrawablesWithIntrinsicBounds(d, d2, d3, drawable);
        AppCompatTextHelper appCompatTextHelper = this.f1022g;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m21561p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.f1022g;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m21561p();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.m18815t(this, callback));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(@IntRange(from = 0) @AbstractC0040Px int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i);
        } else {
            TextViewCompat.m18821n(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(@IntRange(from = 0) @AbstractC0040Px int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i);
        } else {
            TextViewCompat.m18820o(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(@IntRange(from = 0) @AbstractC0040Px int i) {
        TextViewCompat.m18819p(this, i);
    }

    public void setPrecomputedText(@NonNull PrecomputedTextCompat precomputedTextCompat) {
        TextViewCompat.m18818q(this, precomputedTextCompat);
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1021f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.m21649i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1021f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.m21648j(mode);
        }
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @RestrictTo
    public void setSupportCompoundDrawablesTintList(@Nullable ColorStateList colorStateList) {
        this.f1022g.m21555v(colorStateList);
        this.f1022g.m21575b();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @RestrictTo
    public void setSupportCompoundDrawablesTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1022g.m21554w(mode);
        this.f1022g.m21575b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        AppCompatTextHelper appCompatTextHelper = this.f1022g;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m21560q(context, i);
        }
    }

    @Override // android.widget.TextView
    @RequiresApi
    public void setTextClassifier(@Nullable TextClassifier textClassifier) {
        AppCompatTextClassifierHelper appCompatTextClassifierHelper;
        if (Build.VERSION.SDK_INT >= 28 || (appCompatTextClassifierHelper = this.f1023h) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            appCompatTextClassifierHelper.m21579b(textClassifier);
        }
    }

    public void setTextFuture(@Nullable Future<PrecomputedTextCompat> future) {
        this.f1024i = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(@NonNull PrecomputedTextCompat.Params params) {
        TextViewCompat.m18816s(this, params);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (AutoSizeableTextView.f3388a) {
            super.setTextSize(i, f);
            return;
        }
        AppCompatTextHelper appCompatTextHelper = this.f1022g;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m21551z(i, f);
        }
    }

    @Override // android.widget.TextView
    public void setTypeface(@Nullable Typeface typeface, int i) {
        Typeface a = (typeface == null || i <= 0) ? null : TypefaceCompat.m19565a(getContext(), typeface, i);
        if (a != null) {
            typeface = a;
        }
        super.setTypeface(typeface, i);
    }
}
