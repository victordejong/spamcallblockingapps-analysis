package p081h.p119d.p120a.p145w.p147j;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import p081h.p119d.p120a.p124s.p134k.p137g.AbstractC5979b;
/* renamed from: h.d.a.w.j.j */
/* loaded from: classes-dex2jar.jar:h/d/a/w/j/j.class */
public class C6080j extends AbstractC5979b {

    /* renamed from: a */
    public AbstractC5979b f15124a;

    /* renamed from: b */
    public C6081a f15125b;

    /* renamed from: c */
    public boolean f15126c;

    /* renamed from: h.d.a.w.j.j$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/w/j/j$a.class */
    public static class C6081a extends Drawable.ConstantState {

        /* renamed from: a */
        public final Drawable.ConstantState f15127a;

        /* renamed from: b */
        public final int f15128b;

        public C6081a(Drawable.ConstantState constantState, int i) {
            this.f15127a = constantState;
            this.f15128b = i;
        }

        public C6081a(C6081a aVar) {
            this(aVar.f15127a, aVar.f15128b);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return newDrawable(null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C6080j(this, null, resources);
        }
    }

    public C6080j(AbstractC5979b bVar, int i) {
        this(new C6081a(bVar.getConstantState(), i), bVar, null);
    }

    public C6080j(C6081a aVar, AbstractC5979b bVar, Resources resources) {
        this.f15125b = aVar;
        if (bVar != null) {
            this.f15124a = bVar;
        } else if (resources != null) {
            this.f15124a = (AbstractC5979b) aVar.f15127a.newDrawable(resources);
        } else {
            this.f15124a = (AbstractC5979b) aVar.f15127a.newDrawable();
        }
    }

    @Override // p081h.p119d.p120a.p124s.p134k.p137g.AbstractC5979b
    /* renamed from: a */
    public boolean mo23912a() {
        return this.f15124a.mo23912a();
    }

    @Override // p081h.p119d.p120a.p124s.p134k.p137g.AbstractC5979b
    /* renamed from: b */
    public void mo23911b(int i) {
        this.f15124a.mo23911b(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void clearColorFilter() {
        this.f15124a.clearColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f15124a.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(19)
    public int getAlpha() {
        return this.f15124a.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(11)
    public Drawable.Callback getCallback() {
        return this.f15124a.getCallback();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.f15124a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f15125b;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f15124a.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f15125b.f15128b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f15125b.f15128b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f15124a.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f15124a.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f15124a.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.f15124a.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        super.invalidateSelf();
        this.f15124a.invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f15124a.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f15126c && super.mutate() == this) {
            this.f15124a = (AbstractC5979b) this.f15124a.mutate();
            this.f15125b = new C6081a(this.f15125b);
            this.f15126c = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        super.scheduleSelf(runnable, j);
        this.f15124a.scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f15124a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        this.f15124a.setBounds(i, i2, i3, i4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(Rect rect) {
        super.setBounds(rect);
        this.f15124a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        this.f15124a.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(int i, PorterDuff.Mode mode) {
        this.f15124a.setColorFilter(i, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f15124a.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f15124a.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f15124a.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return this.f15124a.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f15124a.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f15124a.stop();
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        super.unscheduleSelf(runnable);
        this.f15124a.unscheduleSelf(runnable);
    }
}
