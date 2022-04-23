package com.google.android.gms.internal.base;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import p131c.p161d.p170b.p224d.p252g.p254b.C4311c;
import p131c.p161d.p170b.p224d.p252g.p254b.C4312d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/base/zaf.class */
public final class zaf extends Drawable implements Drawable.Callback {

    /* renamed from: a */
    public int f29179a;

    /* renamed from: b */
    public long f29180b;

    /* renamed from: c */
    public int f29181c;

    /* renamed from: d */
    public int f29182d;

    /* renamed from: e */
    public int f29183e;

    /* renamed from: f */
    public int f29184f;

    /* renamed from: g */
    public boolean f29185g;

    /* renamed from: h */
    public boolean f29186h;

    /* renamed from: i */
    public C4312d f29187i;

    /* renamed from: j */
    public Drawable f29188j;

    /* renamed from: k */
    public Drawable f29189k;

    /* renamed from: l */
    public boolean f29190l;

    /* renamed from: m */
    public boolean f29191m;

    /* renamed from: n */
    public boolean f29192n;

    /* renamed from: o */
    public int f29193o;

    public zaf(Drawable drawable, Drawable drawable2) {
        this(null);
        Drawable drawable3 = drawable == null ? C4311c.f16474a : drawable;
        this.f29188j = drawable3;
        drawable3.setCallback(this);
        C4312d dVar = this.f29187i;
        dVar.f16477b = drawable3.getChangingConfigurations() | dVar.f16477b;
        Drawable drawable4 = drawable2 == null ? C4311c.f16474a : drawable2;
        this.f29189k = drawable4;
        drawable4.setCallback(this);
        C4312d dVar2 = this.f29187i;
        dVar2.f16477b = drawable4.getChangingConfigurations() | dVar2.f16477b;
    }

    public zaf(C4312d dVar) {
        this.f29179a = 0;
        this.f29182d = 255;
        this.f29184f = 0;
        this.f29185g = true;
        this.f29187i = new C4312d(dVar);
    }

    /* renamed from: a */
    public final Drawable m10883a() {
        return this.f29189k;
    }

    /* renamed from: a */
    public final void m10882a(int i) {
        this.f29181c = this.f29182d;
        this.f29184f = 0;
        this.f29183e = 250;
        this.f29179a = 1;
        invalidateSelf();
    }

    /* renamed from: b */
    public final boolean m10881b() {
        if (!this.f29190l) {
            this.f29191m = (this.f29188j.getConstantState() == null || this.f29189k.getConstantState() == null) ? false : true;
            this.f29190l = true;
        }
        return this.f29191m;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i = this.f29179a;
        r9 = false;
        boolean z = true;
        if (i == 1) {
            this.f29180b = SystemClock.uptimeMillis();
            this.f29179a = 2;
        } else if (i == 2 && this.f29180b >= 0) {
            float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.f29180b)) / this.f29183e;
            if (uptimeMillis < 1.0f) {
                z = false;
            }
            if (z) {
                this.f29179a = 0;
            }
            this.f29184f = (int) ((this.f29181c * Math.min(uptimeMillis, 1.0f)) + 0.0f);
        } else {
            z = true;
        }
        int i2 = this.f29184f;
        boolean z2 = this.f29185g;
        Drawable drawable = this.f29188j;
        Drawable drawable2 = this.f29189k;
        if (z) {
            if (!z2 || i2 == 0) {
                drawable.draw(canvas);
            }
            int i3 = this.f29182d;
            if (i2 == i3) {
                drawable2.setAlpha(i3);
                drawable2.draw(canvas);
                return;
            }
            return;
        }
        if (z2) {
            drawable.setAlpha(this.f29182d - i2);
        }
        drawable.draw(canvas);
        if (z2) {
            drawable.setAlpha(this.f29182d);
        }
        if (i2 > 0) {
            drawable2.setAlpha(i2);
            drawable2.draw(canvas);
            drawable2.setAlpha(this.f29182d);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        C4312d dVar = this.f29187i;
        return changingConfigurations | dVar.f16476a | dVar.f16477b;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!m10881b()) {
            return null;
        }
        this.f29187i.f16476a = getChangingConfigurations();
        return this.f29187i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return Math.max(this.f29188j.getIntrinsicHeight(), this.f29189k.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.max(this.f29188j.getIntrinsicWidth(), this.f29189k.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        if (!this.f29192n) {
            this.f29193o = Drawable.resolveOpacity(this.f29188j.getOpacity(), this.f29189k.getOpacity());
            this.f29192n = true;
        }
        return this.f29193o;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.f29186h && super.mutate() == this) {
            if (m10881b()) {
                this.f29188j.mutate();
                this.f29189k.mutate();
                this.f29186h = true;
            } else {
                throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            }
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.f29188j.setBounds(rect);
        this.f29189k.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.f29184f == this.f29182d) {
            this.f29184f = i;
        }
        this.f29182d = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f29188j.setColorFilter(colorFilter);
        this.f29189k.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }
}
