package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.widget.ProgressBar;
import androidx.core.view.v;
import androidx.l.a.a.b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.internal.l;
import com.google.android.material.progressindicator.b;
import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/BaseProgressIndicator.class */
public abstract class BaseProgressIndicator<S extends b> extends ProgressBar {

    /* renamed from: a  reason: collision with root package name */
    static final int f30735a = a.k.Widget_MaterialComponents_ProgressIndicator;

    /* renamed from: b  reason: collision with root package name */
    S f30736b;

    /* renamed from: d  reason: collision with root package name */
    private int f30738d;
    private boolean e;
    private final int g;
    private final int h;
    private long i = -1;
    private boolean j = false;
    private int k = 4;
    private final Runnable l = new Runnable() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator.1
        @Override // java.lang.Runnable
        public final void run() {
            BaseProgressIndicator.this.d();
        }
    };
    private final Runnable m = new Runnable() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator.2
        @Override // java.lang.Runnable
        public final void run() {
            BaseProgressIndicator.b(BaseProgressIndicator.this);
            BaseProgressIndicator.this.i = -1L;
        }
    };
    private final b.a n = new b.a() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator.3
        @Override // androidx.l.a.a.b.a
        public final void a(Drawable drawable) {
            BaseProgressIndicator.this.setIndeterminate(false);
            BaseProgressIndicator.this.setProgressCompat(0, false);
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            baseProgressIndicator.setProgressCompat(baseProgressIndicator.f30738d, BaseProgressIndicator.this.e);
        }
    };
    private final b.a o = new b.a() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator.4
        @Override // androidx.l.a.a.b.a
        public final void a(Drawable drawable) {
            super.a(drawable);
            if (!BaseProgressIndicator.this.j) {
                BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
                baseProgressIndicator.setVisibility(baseProgressIndicator.k);
            }
        }
    };

    /* renamed from: c  reason: collision with root package name */
    a f30737c = new a();
    private boolean f = true;

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseProgressIndicator(Context context, AttributeSet attributeSet, int i, int i2) {
        super(com.google.android.material.theme.a.a.a(context, attributeSet, i, f30735a), attributeSet, i);
        Context context2 = getContext();
        this.f30736b = a(context2, attributeSet);
        TypedArray a2 = l.a(context2, attributeSet, a.l.BaseProgressIndicator, i, i2, new int[0]);
        this.g = a2.getInt(a.l.BaseProgressIndicator_showDelay, -1);
        this.h = Math.min(a2.getInt(a.l.BaseProgressIndicator_minHideDelay, -1), 1000);
        a2.recycle();
    }

    private void a(boolean z) {
        if (this.f) {
            ((f) getCurrentDrawable()).b(c(), false, z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0028, code lost:
        if (((com.google.android.material.progressindicator.e) super.getProgressDrawable()).isVisible() == false) goto L_0x002b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0041, code lost:
        if (((com.google.android.material.progressindicator.i) super.getIndeterminateDrawable()).isVisible() == false) goto L_0x0044;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ void b(com.google.android.material.progressindicator.BaseProgressIndicator r5) {
        /*
            r0 = r5
            android.graphics.drawable.Drawable r0 = r0.getCurrentDrawable()
            com.google.android.material.progressindicator.f r0 = (com.google.android.material.progressindicator.f) r0
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            r1 = 0
            r2 = 0
            r3 = 1
            boolean r0 = r0.b(r1, r2, r3)
            r0 = r5
            android.graphics.drawable.Drawable r0 = super.getProgressDrawable()
            com.google.android.material.progressindicator.e r0 = (com.google.android.material.progressindicator.e) r0
            if (r0 == 0) goto L_0x002b
            r0 = r7
            r8 = r0
            r0 = r5
            android.graphics.drawable.Drawable r0 = super.getProgressDrawable()
            com.google.android.material.progressindicator.e r0 = (com.google.android.material.progressindicator.e) r0
            boolean r0 = r0.isVisible()
            if (r0 != 0) goto L_0x0046
        L_0x002b:
            r0 = r5
            android.graphics.drawable.Drawable r0 = super.getIndeterminateDrawable()
            com.google.android.material.progressindicator.i r0 = (com.google.android.material.progressindicator.i) r0
            if (r0 == 0) goto L_0x0044
            r0 = r7
            r8 = r0
            r0 = r5
            android.graphics.drawable.Drawable r0 = super.getIndeterminateDrawable()
            com.google.android.material.progressindicator.i r0 = (com.google.android.material.progressindicator.i) r0
            boolean r0 = r0.isVisible()
            if (r0 != 0) goto L_0x0046
        L_0x0044:
            r0 = 1
            r8 = r0
        L_0x0046:
            r0 = r8
            if (r0 == 0) goto L_0x004f
            r0 = r5
            r1 = 4
            r0.setVisibility(r1)
        L_0x004f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.progressindicator.BaseProgressIndicator.b(com.google.android.material.progressindicator.BaseProgressIndicator):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.h > 0) {
            this.i = SystemClock.uptimeMillis();
        }
        setVisibility(0);
    }

    private boolean e() {
        View view = this;
        while (view.getVisibility() == 0) {
            ViewParent parent = view.getParent();
            if (parent == null) {
                return getWindowVisibility() == 0;
            }
            if (!(parent instanceof View)) {
                return true;
            }
            view = (View) parent;
        }
        return false;
    }

    abstract S a(Context context, AttributeSet attributeSet);

    public final e<S> a() {
        return (e) super.getProgressDrawable();
    }

    public final i<S> b() {
        return (i) super.getIndeterminateDrawable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c() {
        return v.E(this) && getWindowVisibility() == 0 && e();
    }

    @Override // android.widget.ProgressBar
    public Drawable getCurrentDrawable() {
        return isIndeterminate() ? (i) super.getIndeterminateDrawable() : (e) super.getProgressDrawable();
    }

    @Override // android.widget.ProgressBar
    public /* bridge */ /* synthetic */ Drawable getIndeterminateDrawable() {
        return (i) super.getIndeterminateDrawable();
    }

    @Override // android.widget.ProgressBar
    public /* bridge */ /* synthetic */ Drawable getProgressDrawable() {
        return (e) super.getProgressDrawable();
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        if (getCurrentDrawable() != null) {
            getCurrentDrawable().invalidateSelf();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!(((e) super.getProgressDrawable()) == null || ((i) super.getIndeterminateDrawable()) == null)) {
            ((i) super.getIndeterminateDrawable()).f.a(this.n);
        }
        if (((e) super.getProgressDrawable()) != null) {
            ((e) super.getProgressDrawable()).b(this.o);
        }
        if (((i) super.getIndeterminateDrawable()) != null) {
            ((i) super.getIndeterminateDrawable()).b(this.o);
        }
        if (c()) {
            d();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.m);
        removeCallbacks(this.l);
        ((f) getCurrentDrawable()).a();
        if (((i) super.getIndeterminateDrawable()) != null) {
            ((i) super.getIndeterminateDrawable()).a(this.o);
            ((i) super.getIndeterminateDrawable()).f.e();
        }
        if (((e) super.getProgressDrawable()) != null) {
            ((e) super.getProgressDrawable()).a(this.o);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onDraw(Canvas canvas) {
        synchronized (this) {
            int save = canvas.save();
            if (!(getPaddingLeft() == 0 && getPaddingTop() == 0)) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            if (!(getPaddingRight() == 0 && getPaddingBottom() == 0)) {
                canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
            }
            getCurrentDrawable().draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onMeasure(int i, int i2) {
        synchronized (this) {
            super.onMeasure(i, i2);
            g<S> gVar = null;
            if (isIndeterminate()) {
                if (((i) super.getIndeterminateDrawable()) != null) {
                    gVar = ((i) super.getIndeterminateDrawable()).f30767a;
                }
            } else if (((e) super.getProgressDrawable()) != null) {
                gVar = ((e) super.getProgressDrawable()).f30755a;
            }
            if (gVar != null) {
                int a2 = gVar.a();
                int b2 = gVar.b();
                setMeasuredDimension(a2 < 0 ? getMeasuredWidth() : a2 + getPaddingLeft() + getPaddingRight(), b2 < 0 ? getMeasuredHeight() : b2 + getPaddingTop() + getPaddingBottom());
            }
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        a(i == 0);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        a(false);
    }

    public void setAnimatorDurationScaleProvider(a aVar) {
        this.f30737c = aVar;
        if (((e) super.getProgressDrawable()) != null) {
            ((e) super.getProgressDrawable()).f30759d = aVar;
        }
        if (((i) super.getIndeterminateDrawable()) != null) {
            ((i) super.getIndeterminateDrawable()).f30759d = aVar;
        }
    }

    public void setHideAnimationBehavior(int i) {
        this.f30736b.f = i;
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminate(boolean z) {
        synchronized (this) {
            if (z != isIndeterminate()) {
                if (!c() || !z) {
                    f fVar = (f) getCurrentDrawable();
                    if (fVar != null) {
                        fVar.a();
                    }
                    super.setIndeterminate(z);
                    f fVar2 = (f) getCurrentDrawable();
                    if (fVar2 != null) {
                        fVar2.b(c(), false, false);
                    }
                    this.j = false;
                    return;
                }
                throw new IllegalStateException("Cannot switch to indeterminate mode while the progress indicator is visible.");
            }
        }
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateDrawable(Drawable drawable) {
        if (drawable == null) {
            super.setIndeterminateDrawable(null);
        } else if (drawable instanceof i) {
            ((f) drawable).a();
            super.setIndeterminateDrawable(drawable);
        } else {
            throw new IllegalArgumentException("Cannot set framework drawable as indeterminate drawable.");
        }
    }

    public void setIndicatorColor(int... iArr) {
        int[] iArr2 = iArr;
        if (iArr.length == 0) {
            iArr2 = new int[]{com.google.android.material.b.a.a(getContext(), a.b.colorPrimary, -1)};
        }
        if (!Arrays.equals(this.f30736b.f30748c, iArr2)) {
            this.f30736b.f30748c = iArr2;
            ((i) super.getIndeterminateDrawable()).f.d();
            invalidate();
        }
    }

    @Override // android.widget.ProgressBar
    public void setProgress(int i) {
        synchronized (this) {
            if (!isIndeterminate()) {
                setProgressCompat(i, false);
            }
        }
    }

    public void setProgressCompat(int i, boolean z) {
        if (!isIndeterminate()) {
            super.setProgress(i);
            if (((e) super.getProgressDrawable()) != null && !z) {
                ((e) super.getProgressDrawable()).jumpToCurrentState();
            }
        } else if (((e) super.getProgressDrawable()) != null) {
            this.f30738d = i;
            this.e = z;
            this.j = true;
            if (!((i) super.getIndeterminateDrawable()).isVisible() || a.a(getContext().getContentResolver()) == BitmapDescriptorFactory.HUE_RED) {
                this.n.a((i) super.getIndeterminateDrawable());
            } else {
                ((i) super.getIndeterminateDrawable()).f.c();
            }
        }
    }

    @Override // android.widget.ProgressBar
    public void setProgressDrawable(Drawable drawable) {
        if (drawable == null) {
            super.setProgressDrawable(null);
        } else if (drawable instanceof e) {
            e eVar = (e) drawable;
            eVar.a();
            super.setProgressDrawable(eVar);
            eVar.setLevel((int) ((getProgress() / getMax()) * 10000.0f));
        } else {
            throw new IllegalArgumentException("Cannot set framework drawable as progress drawable.");
        }
    }

    public void setShowAnimationBehavior(int i) {
        this.f30736b.e = i;
        invalidate();
    }

    public void setTrackColor(int i) {
        if (this.f30736b.f30749d != i) {
            this.f30736b.f30749d = i;
            invalidate();
        }
    }

    public void setTrackCornerRadius(int i) {
        if (this.f30736b.f30747b != i) {
            S s = this.f30736b;
            s.f30747b = Math.min(i, s.f30746a / 2);
        }
    }

    public void setTrackThickness(int i) {
        if (this.f30736b.f30746a != i) {
            this.f30736b.f30746a = i;
            requestLayout();
        }
    }

    public void setVisibilityAfterHide(int i) {
        if (i == 0 || i == 4 || i == 8) {
            this.k = i;
            return;
        }
        throw new IllegalArgumentException("The component's visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View.");
    }
}
