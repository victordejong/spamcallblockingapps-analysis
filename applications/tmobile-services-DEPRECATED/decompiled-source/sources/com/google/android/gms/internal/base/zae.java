package com.google.android.gms.internal.base;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/base/zae.class */
public final class zae extends Drawable implements Drawable.Callback {

    /* renamed from: f */
    private int f7819f;

    /* renamed from: g */
    private long f7820g;

    /* renamed from: h */
    private int f7821h;

    /* renamed from: i */
    private int f7822i;

    /* renamed from: j */
    private int f7823j;

    /* renamed from: k */
    private int f7824k;

    /* renamed from: l */
    private boolean f7825l;

    /* renamed from: m */
    private boolean f7826m;

    /* renamed from: n */
    private zah f7827n;

    /* renamed from: o */
    private Drawable f7828o;

    /* renamed from: p */
    private Drawable f7829p;

    /* renamed from: q */
    private boolean f7830q;

    /* renamed from: r */
    private boolean f7831r;

    /* renamed from: s */
    private boolean f7832s;

    /* renamed from: t */
    private int f7833t;

    public zae(Drawable drawable, Drawable drawable2) {
        this(null);
        Drawable drawable3 = drawable == null ? zaf.f7834a : drawable;
        this.f7828o = drawable3;
        drawable3.setCallback(this);
        zah zahVar = this.f7827n;
        zahVar.f7837b = drawable3.getChangingConfigurations() | zahVar.f7837b;
        Drawable drawable4 = drawable2 == null ? zaf.f7834a : drawable2;
        this.f7829p = drawable4;
        drawable4.setCallback(this);
        zah zahVar2 = this.f7827n;
        zahVar2.f7837b = drawable4.getChangingConfigurations() | zahVar2.f7837b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zae(zah zahVar) {
        this.f7819f = 0;
        this.f7822i = 255;
        this.f7824k = 0;
        this.f7825l = true;
        this.f7827n = new zah(zahVar);
    }

    /* renamed from: a */
    private final boolean m14109a() {
        if (!this.f7830q) {
            this.f7831r = (this.f7828o.getConstantState() == null || this.f7829p.getConstantState() == null) ? false : true;
            this.f7830q = true;
        }
        return this.f7831r;
    }

    /* renamed from: b */
    public final void m14108b(int i) {
        this.f7821h = this.f7822i;
        this.f7824k = 0;
        this.f7823j = 250;
        this.f7819f = 1;
        invalidateSelf();
    }

    /* renamed from: c */
    public final Drawable m14107c() {
        return this.f7829p;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i = this.f7819f;
        boolean z = false;
        z = true;
        if (i == 1) {
            this.f7820g = SystemClock.uptimeMillis();
            this.f7819f = 2;
        } else if (i == 2 && this.f7820g >= 0) {
            float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.f7820g)) / this.f7823j;
            if (uptimeMillis < 1.0f) {
                z = false;
            }
            if (z) {
                this.f7819f = 0;
            }
            this.f7824k = (int) ((this.f7821h * Math.min(uptimeMillis, 1.0f)) + 0.0f);
        } else {
            z = true;
        }
        int i2 = this.f7824k;
        boolean z2 = this.f7825l;
        Drawable drawable = this.f7828o;
        Drawable drawable2 = this.f7829p;
        if (z) {
            if (!z2 || i2 == 0) {
                drawable.draw(canvas);
            }
            int i3 = this.f7822i;
            if (i2 == i3) {
                drawable2.setAlpha(i3);
                drawable2.draw(canvas);
                return;
            }
            return;
        }
        if (z2) {
            drawable.setAlpha(this.f7822i - i2);
        }
        drawable.draw(canvas);
        if (z2) {
            drawable.setAlpha(this.f7822i);
        }
        if (i2 > 0) {
            drawable2.setAlpha(i2);
            drawable2.draw(canvas);
            drawable2.setAlpha(this.f7822i);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        zah zahVar = this.f7827n;
        return changingConfigurations | zahVar.f7836a | zahVar.f7837b;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!m14109a()) {
            return null;
        }
        this.f7827n.f7836a = getChangingConfigurations();
        return this.f7827n;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return Math.max(this.f7828o.getIntrinsicHeight(), this.f7829p.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.max(this.f7828o.getIntrinsicWidth(), this.f7829p.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        if (!this.f7832s) {
            this.f7833t = Drawable.resolveOpacity(this.f7828o.getOpacity(), this.f7829p.getOpacity());
            this.f7832s = true;
        }
        return this.f7833t;
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
        if (!this.f7826m && super.mutate() == this) {
            if (m14109a()) {
                this.f7828o.mutate();
                this.f7829p.mutate();
                this.f7826m = true;
            } else {
                throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            }
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        this.f7828o.setBounds(rect);
        this.f7829p.setBounds(rect);
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
        if (this.f7824k == this.f7822i) {
            this.f7824k = i;
        }
        this.f7822i = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f7828o.setColorFilter(colorFilter);
        this.f7829p.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }
}
