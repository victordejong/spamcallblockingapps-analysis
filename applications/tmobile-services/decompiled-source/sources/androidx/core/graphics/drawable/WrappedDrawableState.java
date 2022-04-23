package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/WrappedDrawableState.class */
public final class WrappedDrawableState extends Drawable.ConstantState {

    /* renamed from: a */
    int f3081a;

    /* renamed from: b */
    Drawable.ConstantState f3082b;

    /* renamed from: c */
    ColorStateList f3083c;

    /* renamed from: d */
    PorterDuff.Mode f3084d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WrappedDrawableState(@Nullable WrappedDrawableState wrappedDrawableState) {
        this.f3083c = null;
        this.f3084d = WrappedDrawableApi14.f3073l;
        if (wrappedDrawableState != null) {
            this.f3081a = wrappedDrawableState.f3081a;
            this.f3082b = wrappedDrawableState.f3082b;
            this.f3083c = wrappedDrawableState.f3083c;
            this.f3084d = wrappedDrawableState.f3084d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public boolean m19460a() {
        return this.f3082b != null;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        int i = this.f3081a;
        Drawable.ConstantState constantState = this.f3082b;
        return i | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    @NonNull
    public Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    @NonNull
    public Drawable newDrawable(@Nullable Resources resources) {
        return Build.VERSION.SDK_INT >= 21 ? new WrappedDrawableApi21(this, resources) : new WrappedDrawableApi14(this, resources);
    }
}
