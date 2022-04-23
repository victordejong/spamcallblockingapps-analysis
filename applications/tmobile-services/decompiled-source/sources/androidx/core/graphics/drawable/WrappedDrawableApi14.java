package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/WrappedDrawableApi14.class */
public class WrappedDrawableApi14 extends Drawable implements Drawable.Callback, WrappedDrawable, TintAwareDrawable {

    /* renamed from: l */
    static final PorterDuff.Mode f3073l = PorterDuff.Mode.SRC_IN;

    /* renamed from: f */
    private int f3074f;

    /* renamed from: g */
    private PorterDuff.Mode f3075g;

    /* renamed from: h */
    private boolean f3076h;

    /* renamed from: i */
    WrappedDrawableState f3077i;

    /* renamed from: j */
    private boolean f3078j;

    /* renamed from: k */
    Drawable f3079k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WrappedDrawableApi14(@Nullable Drawable drawable) {
        this.f3077i = m19465d();
        mo19467a(drawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WrappedDrawableApi14(@NonNull WrappedDrawableState wrappedDrawableState, @Nullable Resources resources) {
        this.f3077i = wrappedDrawableState;
        m19464e(resources);
    }

    @NonNull
    /* renamed from: d */
    private WrappedDrawableState m19465d() {
        return new WrappedDrawableState(this.f3077i);
    }

    /* renamed from: e */
    private void m19464e(@Nullable Resources resources) {
        Drawable.ConstantState constantState;
        WrappedDrawableState wrappedDrawableState = this.f3077i;
        if (wrappedDrawableState != null && (constantState = wrappedDrawableState.f3082b) != null) {
            mo19467a(constantState.newDrawable(resources));
        }
    }

    /* renamed from: f */
    private boolean m19463f(int[] iArr) {
        if (!mo19462c()) {
            return false;
        }
        WrappedDrawableState wrappedDrawableState = this.f3077i;
        ColorStateList colorStateList = wrappedDrawableState.f3083c;
        PorterDuff.Mode mode = wrappedDrawableState.f3084d;
        if (colorStateList == null || mode == null) {
            this.f3076h = false;
            clearColorFilter();
            return false;
        }
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f3076h && colorForState == this.f3074f && mode == this.f3075g) {
            return false;
        }
        setColorFilter(colorForState, mode);
        this.f3074f = colorForState;
        this.f3075g = mode;
        this.f3076h = true;
        return true;
    }

    @Override // androidx.core.graphics.drawable.WrappedDrawable
    /* renamed from: a */
    public final void mo19467a(Drawable drawable) {
        Drawable drawable2 = this.f3079k;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f3079k = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            WrappedDrawableState wrappedDrawableState = this.f3077i;
            if (wrappedDrawableState != null) {
                wrappedDrawableState.f3082b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    @Override // androidx.core.graphics.drawable.WrappedDrawable
    /* renamed from: b */
    public final Drawable mo19466b() {
        return this.f3079k;
    }

    /* renamed from: c */
    protected boolean mo19462c() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        this.f3079k.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        WrappedDrawableState wrappedDrawableState = this.f3077i;
        return changingConfigurations | (wrappedDrawableState != null ? wrappedDrawableState.getChangingConfigurations() : 0) | this.f3079k.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        WrappedDrawableState wrappedDrawableState = this.f3077i;
        if (wrappedDrawableState == null || !wrappedDrawableState.m19460a()) {
            return null;
        }
        this.f3077i.f3081a = getChangingConfigurations();
        return this.f3077i;
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable getCurrent() {
        return this.f3079k.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f3079k.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f3079k.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f3079k.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f3079k.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f3079k.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        return this.f3079k.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public int[] getState() {
        return this.f3079k.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.f3079k.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi
    public boolean isAutoMirrored() {
        return this.f3079k.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        WrappedDrawableState wrappedDrawableState;
        ColorStateList colorStateList = (!mo19462c() || (wrappedDrawableState = this.f3077i) == null) ? null : wrappedDrawableState.f3083c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f3079k.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f3079k.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.f3078j && super.mutate() == this) {
            this.f3077i = m19465d();
            Drawable drawable = this.f3079k;
            if (drawable != null) {
                drawable.mutate();
            }
            WrappedDrawableState wrappedDrawableState = this.f3077i;
            if (wrappedDrawableState != null) {
                Drawable drawable2 = this.f3079k;
                wrappedDrawableState.f3082b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.f3078j = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f3079k;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        return this.f3079k.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f3079k.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi
    public void setAutoMirrored(boolean z) {
        this.f3079k.setAutoMirrored(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        this.f3079k.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f3079k.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f3079k.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f3079k.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(@NonNull int[] iArr) {
        return m19463f(iArr) || this.f3079k.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        this.f3077i.f3083c = colorStateList;
        m19463f(getState());
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        this.f3077i.f3084d = mode;
        m19463f(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f3079k.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
