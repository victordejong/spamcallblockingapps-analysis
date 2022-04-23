package com.google.android.material.i;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.drawable.b;
import com.google.android.material.k.h;
import com.google.android.material.k.m;
import com.google.android.material.k.q;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/i/a.class */
public final class a extends Drawable implements b, q {

    /* renamed from: a  reason: collision with root package name */
    private C0490a f30572a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.i.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/i/a$a.class */
    public static final class C0490a extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        h f30573a;

        /* renamed from: b  reason: collision with root package name */
        boolean f30574b;

        public C0490a(C0490a aVar) {
            this.f30573a = (h) aVar.f30573a.getConstantState().newDrawable();
            this.f30574b = aVar.f30574b;
        }

        public C0490a(h hVar) {
            this.f30573a = hVar;
            this.f30574b = false;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final /* synthetic */ Drawable newDrawable() {
            return new a(new C0490a(this));
        }
    }

    private a(C0490a aVar) {
        this.f30572a = aVar;
    }

    public a(m mVar) {
        this(new C0490a(new h(mVar)));
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f30572a.f30574b) {
            this.f30572a.f30573a.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f30572a;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.f30572a.f30573a.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final /* synthetic */ Drawable mutate() {
        this.f30572a = new C0490a(this.f30572a);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f30572a.f30573a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        onStateChange = true;
        if (this.f30572a.f30573a.setState(iArr)) {
            onStateChange = true;
        }
        boolean a2 = b.a(iArr);
        if (this.f30572a.f30574b != a2) {
            this.f30572a.f30574b = a2;
        }
        return onStateChange;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f30572a.f30573a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f30572a.f30573a.setColorFilter(colorFilter);
    }

    @Override // com.google.android.material.k.q
    public final void setShapeAppearanceModel(m mVar) {
        this.f30572a.f30573a.setShapeAppearanceModel(mVar);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public final void setTint(int i) {
        this.f30572a.f30573a.setTint(i);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public final void setTintList(ColorStateList colorStateList) {
        this.f30572a.f30573a.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public final void setTintMode(PorterDuff.Mode mode) {
        this.f30572a.f30573a.setTintMode(mode);
    }
}
