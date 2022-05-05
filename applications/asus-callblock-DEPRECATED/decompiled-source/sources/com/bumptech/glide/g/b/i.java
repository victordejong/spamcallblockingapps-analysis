package com.bumptech.glide.g.b;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.resource.a.b;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/b/i.class */
public final class i extends b {

    /* renamed from: a  reason: collision with root package name */
    private b f3437a;

    /* renamed from: b  reason: collision with root package name */
    private a f3438b;
    private boolean c;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/b/i$a.class */
    static final class a extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        private final Drawable.ConstantState f3439a;

        /* renamed from: b  reason: collision with root package name */
        private final int f3440b;

        a(Drawable.ConstantState constantState, int i) {
            this.f3439a = constantState;
            this.f3440b = i;
        }

        a(a aVar) {
            this(aVar.f3439a, aVar.f3440b);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return newDrawable(null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new i(this, null, resources);
        }
    }

    i(a aVar, b bVar, Resources resources) {
        this.f3438b = aVar;
        if (bVar != null) {
            this.f3437a = bVar;
        } else if (resources != null) {
            this.f3437a = (b) aVar.f3439a.newDrawable(resources);
        } else {
            this.f3437a = (b) aVar.f3439a.newDrawable();
        }
    }

    public i(b bVar, int i) {
        this(new a(bVar.getConstantState(), i), bVar, null);
    }

    @Override // com.bumptech.glide.load.resource.a.b
    public final void a(int i) {
        this.f3437a.a(i);
    }

    @Override // com.bumptech.glide.load.resource.a.b
    public final boolean a() {
        return this.f3437a.a();
    }

    @Override // android.graphics.drawable.Drawable
    public final void clearColorFilter() {
        this.f3437a.clearColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        this.f3437a.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(19)
    public final int getAlpha() {
        return this.f3437a.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(11)
    public final Drawable.Callback getCallback() {
        return this.f3437a.getCallback();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        return this.f3437a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f3438b;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable getCurrent() {
        return this.f3437a.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f3438b.f3440b;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f3438b.f3440b;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() {
        return this.f3437a.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() {
        return this.f3437a.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.f3437a.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        return this.f3437a.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        super.invalidateSelf();
        this.f3437a.invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.f3437a.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.c && super.mutate() == this) {
            this.f3437a = (b) this.f3437a.mutate();
            this.f3438b = new a(this.f3438b);
            this.c = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void scheduleSelf(Runnable runnable, long j) {
        super.scheduleSelf(runnable, j);
        this.f3437a.scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f3437a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        this.f3437a.setBounds(i, i2, i3, i4);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setBounds(Rect rect) {
        super.setBounds(rect);
        this.f3437a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setChangingConfigurations(int i) {
        this.f3437a.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(int i, PorterDuff.Mode mode) {
        this.f3437a.setColorFilter(i, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f3437a.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setDither(boolean z) {
        this.f3437a.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setFilterBitmap(boolean z) {
        this.f3437a.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        return this.f3437a.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        this.f3437a.start();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.f3437a.stop();
    }

    @Override // android.graphics.drawable.Drawable
    public final void unscheduleSelf(Runnable runnable) {
        super.unscheduleSelf(runnable);
        this.f3437a.unscheduleSelf(runnable);
    }
}
