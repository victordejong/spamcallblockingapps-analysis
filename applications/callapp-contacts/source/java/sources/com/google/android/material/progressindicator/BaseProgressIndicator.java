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
import androidx.core.view.C0926v;
import androidx.p057l.p058a.p059a.AbstractC1196b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.internal.C14647l;
import com.google.android.material.p365b.C14416a;
import com.google.android.material.progressindicator.AbstractC14707b;
import com.google.android.material.theme.p376a.C14828a;
import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/BaseProgressIndicator.class */
public abstract class BaseProgressIndicator<S extends AbstractC14707b> extends ProgressBar {

    /* renamed from: a */
    static final int f53628a = C14376a.C14387k.Widget_MaterialComponents_ProgressIndicator;

    /* renamed from: b */
    S f53629b;

    /* renamed from: d */
    private int f53631d;

    /* renamed from: e */
    private boolean f53632e;

    /* renamed from: g */
    private final int f53634g;

    /* renamed from: h */
    private final int f53635h;

    /* renamed from: i */
    private long f53636i = -1;

    /* renamed from: j */
    private boolean f53637j = false;

    /* renamed from: k */
    private int f53638k = 4;

    /* renamed from: l */
    private final Runnable f53639l = new Runnable() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator.1
        @Override // java.lang.Runnable
        public final void run() {
            BaseProgressIndicator.this.m10352d();
        }
    };

    /* renamed from: m */
    private final Runnable f53640m = new Runnable() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator.2
        @Override // java.lang.Runnable
        public final void run() {
            BaseProgressIndicator.m10355b(BaseProgressIndicator.this);
            BaseProgressIndicator.this.f53636i = -1L;
        }
    };

    /* renamed from: n */
    private final AbstractC1196b.AbstractC1197a f53641n = new AbstractC1196b.AbstractC1197a() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator.3
        @Override // androidx.p057l.p058a.p059a.AbstractC1196b.AbstractC1197a
        /* renamed from: a */
        public final void mo10346a(Drawable drawable) {
            BaseProgressIndicator.this.setIndeterminate(false);
            BaseProgressIndicator.this.setProgressCompat(0, false);
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            baseProgressIndicator.setProgressCompat(baseProgressIndicator.f53631d, BaseProgressIndicator.this.f53632e);
        }
    };

    /* renamed from: o */
    private final AbstractC1196b.AbstractC1197a f53642o = new AbstractC1196b.AbstractC1197a() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator.4
        @Override // androidx.p057l.p058a.p059a.AbstractC1196b.AbstractC1197a
        /* renamed from: a */
        public final void mo10346a(Drawable drawable) {
            super.mo10346a(drawable);
            if (!BaseProgressIndicator.this.f53637j) {
                BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
                baseProgressIndicator.setVisibility(baseProgressIndicator.f53638k);
            }
        }
    };

    /* renamed from: c */
    C14706a f53630c = new C14706a();

    /* renamed from: f */
    private boolean f53633f = true;

    public BaseProgressIndicator(Context context, AttributeSet attributeSet, int i, int i2) {
        super(C14828a.m9923a(context, attributeSet, i, f53628a), attributeSet, i);
        Context context2 = getContext();
        this.f53629b = mo10345a(context2, attributeSet);
        TypedArray m10508a = C14647l.m10508a(context2, attributeSet, C14376a.C14388l.BaseProgressIndicator, i, i2, new int[0]);
        this.f53634g = m10508a.getInt(C14376a.C14388l.BaseProgressIndicator_showDelay, -1);
        this.f53635h = Math.min(m10508a.getInt(C14376a.C14388l.BaseProgressIndicator_minHideDelay, -1), 1000);
        m10508a.recycle();
    }

    /* renamed from: a */
    private void m10357a(boolean z) {
        if (!this.f53633f) {
            return;
        }
        ((AbstractC14716f) getCurrentDrawable()).mo10306b(m10354c(), false, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0028, code lost:
        if (((com.google.android.material.progressindicator.C14714e) super.getProgressDrawable()).isVisible() == false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0041, code lost:
        if (((com.google.android.material.progressindicator.C14722i) super.getIndeterminateDrawable()).isVisible() == false) goto L10;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ void m10355b(com.google.android.material.progressindicator.BaseProgressIndicator r5) {
        /*
            r0 = r5
            android.graphics.drawable.Drawable r0 = r0.getCurrentDrawable()
            com.google.android.material.progressindicator.f r0 = (com.google.android.material.progressindicator.AbstractC14716f) r0
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            r1 = 0
            r2 = 0
            r3 = 1
            boolean r0 = r0.mo10306b(r1, r2, r3)
            r0 = r5
            android.graphics.drawable.Drawable r0 = super.getProgressDrawable()
            com.google.android.material.progressindicator.e r0 = (com.google.android.material.progressindicator.C14714e) r0
            if (r0 == 0) goto L2b
            r0 = r7
            r8 = r0
            r0 = r5
            android.graphics.drawable.Drawable r0 = super.getProgressDrawable()
            com.google.android.material.progressindicator.e r0 = (com.google.android.material.progressindicator.C14714e) r0
            boolean r0 = r0.isVisible()
            if (r0 != 0) goto L46
        L2b:
            r0 = r5
            android.graphics.drawable.Drawable r0 = super.getIndeterminateDrawable()
            com.google.android.material.progressindicator.i r0 = (com.google.android.material.progressindicator.C14722i) r0
            if (r0 == 0) goto L44
            r0 = r7
            r8 = r0
            r0 = r5
            android.graphics.drawable.Drawable r0 = super.getIndeterminateDrawable()
            com.google.android.material.progressindicator.i r0 = (com.google.android.material.progressindicator.C14722i) r0
            boolean r0 = r0.isVisible()
            if (r0 != 0) goto L46
        L44:
            r0 = 1
            r8 = r0
        L46:
            r0 = r8
            if (r0 == 0) goto L4f
            r0 = r5
            r1 = 4
            r0.setVisibility(r1)
        L4f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.progressindicator.BaseProgressIndicator.m10355b(com.google.android.material.progressindicator.BaseProgressIndicator):void");
    }

    /* renamed from: d */
    public void m10352d() {
        if (this.f53635h > 0) {
            this.f53636i = SystemClock.uptimeMillis();
        }
        setVisibility(0);
    }

    /* renamed from: e */
    private boolean m10350e() {
        View view = this;
        while (true) {
            View view2 = view;
            if (view2.getVisibility() != 0) {
                return false;
            }
            ViewParent parent = view2.getParent();
            if (parent == null) {
                return getWindowVisibility() == 0;
            } else if (!(parent instanceof View)) {
                return true;
            } else {
                view = (View) parent;
            }
        }
    }

    /* renamed from: a */
    abstract S mo10345a(Context context, AttributeSet attributeSet);

    /* renamed from: a */
    public final C14714e<S> m10359a() {
        return (C14714e) super.getProgressDrawable();
    }

    /* renamed from: b */
    public final C14722i<S> m10356b() {
        return (C14722i) super.getIndeterminateDrawable();
    }

    /* renamed from: c */
    public final boolean m10354c() {
        return C0926v.m44154E(this) && getWindowVisibility() == 0 && m10350e();
    }

    @Override // android.widget.ProgressBar
    public Drawable getCurrentDrawable() {
        return isIndeterminate() ? (C14722i) super.getIndeterminateDrawable() : (C14714e) super.getProgressDrawable();
    }

    @Override // android.widget.ProgressBar
    public /* bridge */ /* synthetic */ Drawable getIndeterminateDrawable() {
        return (C14722i) super.getIndeterminateDrawable();
    }

    @Override // android.widget.ProgressBar
    public /* bridge */ /* synthetic */ Drawable getProgressDrawable() {
        return (C14714e) super.getProgressDrawable();
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
        if (((C14714e) super.getProgressDrawable()) != null && ((C14722i) super.getIndeterminateDrawable()) != null) {
            ((C14722i) super.getIndeterminateDrawable()).f53710f.mo10289a(this.f53641n);
        }
        if (((C14714e) super.getProgressDrawable()) != null) {
            ((C14714e) super.getProgressDrawable()).mo10307b(this.f53642o);
        }
        if (((C14722i) super.getIndeterminateDrawable()) != null) {
            ((C14722i) super.getIndeterminateDrawable()).mo10307b(this.f53642o);
        }
        if (m10354c()) {
            m10352d();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f53640m);
        removeCallbacks(this.f53639l);
        ((AbstractC14716f) getCurrentDrawable()).mo10314a();
        if (((C14722i) super.getIndeterminateDrawable()) != null) {
            ((C14722i) super.getIndeterminateDrawable()).mo10311a(this.f53642o);
            ((C14722i) super.getIndeterminateDrawable()).f53710f.mo10280e();
        }
        if (((C14714e) super.getProgressDrawable()) != null) {
            ((C14714e) super.getProgressDrawable()).mo10311a(this.f53642o);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onDraw(Canvas canvas) {
        synchronized (this) {
            int save = canvas.save();
            if (getPaddingLeft() != 0 || getPaddingTop() != 0) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            if (getPaddingRight() != 0 || getPaddingBottom() != 0) {
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
            AbstractC14720g<S> abstractC14720g = null;
            if (isIndeterminate()) {
                if (((C14722i) super.getIndeterminateDrawable()) != null) {
                    abstractC14720g = ((C14722i) super.getIndeterminateDrawable()).f53709a;
                }
            } else if (((C14714e) super.getProgressDrawable()) != null) {
                abstractC14720g = ((C14714e) super.getProgressDrawable()).f53682a;
            }
            if (abstractC14720g == null) {
                return;
            }
            int mo10304a = abstractC14720g.mo10304a();
            int mo10299b = abstractC14720g.mo10299b();
            setMeasuredDimension(mo10304a < 0 ? getMeasuredWidth() : mo10304a + getPaddingLeft() + getPaddingRight(), mo10299b < 0 ? getMeasuredHeight() : mo10299b + getPaddingTop() + getPaddingBottom());
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        m10357a(i == 0);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        m10357a(false);
    }

    public void setAnimatorDurationScaleProvider(C14706a c14706a) {
        this.f53630c = c14706a;
        if (((C14714e) super.getProgressDrawable()) != null) {
            ((C14714e) super.getProgressDrawable()).f53691d = c14706a;
        }
        if (((C14722i) super.getIndeterminateDrawable()) != null) {
            ((C14722i) super.getIndeterminateDrawable()).f53691d = c14706a;
        }
    }

    public void setHideAnimationBehavior(int i) {
        this.f53629b.f53661f = i;
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminate(boolean z) {
        synchronized (this) {
            if (z == isIndeterminate()) {
                return;
            }
            if (m10354c() && z) {
                throw new IllegalStateException("Cannot switch to indeterminate mode while the progress indicator is visible.");
            }
            AbstractC14716f abstractC14716f = (AbstractC14716f) getCurrentDrawable();
            if (abstractC14716f != null) {
                abstractC14716f.mo10314a();
            }
            super.setIndeterminate(z);
            AbstractC14716f abstractC14716f2 = (AbstractC14716f) getCurrentDrawable();
            if (abstractC14716f2 != null) {
                abstractC14716f2.mo10306b(m10354c(), false, false);
            }
            this.f53637j = false;
        }
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateDrawable(Drawable drawable) {
        if (drawable == null) {
            super.setIndeterminateDrawable(null);
        } else if (!(drawable instanceof C14722i)) {
            throw new IllegalArgumentException("Cannot set framework drawable as indeterminate drawable.");
        } else {
            ((AbstractC14716f) drawable).mo10314a();
            super.setIndeterminateDrawable(drawable);
        }
    }

    public void setIndicatorColor(int... iArr) {
        int[] iArr2 = iArr;
        if (iArr.length == 0) {
            iArr2 = new int[]{C14416a.m11240a(getContext(), C14376a.C14378b.colorPrimary, -1)};
        }
        if (!Arrays.equals(this.f53629b.f53658c, iArr2)) {
            this.f53629b.f53658c = iArr2;
            ((C14722i) super.getIndeterminateDrawable()).f53710f.mo10282d();
            invalidate();
        }
    }

    @Override // android.widget.ProgressBar
    public void setProgress(int i) {
        synchronized (this) {
            if (isIndeterminate()) {
                return;
            }
            setProgressCompat(i, false);
        }
    }

    public void setProgressCompat(int i, boolean z) {
        if (!isIndeterminate()) {
            super.setProgress(i);
            if (((C14714e) super.getProgressDrawable()) == null || z) {
                return;
            }
            ((C14714e) super.getProgressDrawable()).jumpToCurrentState();
        } else if (((C14714e) super.getProgressDrawable()) == null) {
        } else {
            this.f53631d = i;
            this.f53632e = z;
            this.f53637j = true;
            if (!((C14722i) super.getIndeterminateDrawable()).isVisible() || C14706a.m10344a(getContext().getContentResolver()) == BitmapDescriptorFactory.HUE_RED) {
                this.f53641n.mo10346a((C14722i) super.getIndeterminateDrawable());
            } else {
                ((C14722i) super.getIndeterminateDrawable()).f53710f.mo10284c();
            }
        }
    }

    @Override // android.widget.ProgressBar
    public void setProgressDrawable(Drawable drawable) {
        if (drawable == null) {
            super.setProgressDrawable(null);
        } else if (!(drawable instanceof C14714e)) {
            throw new IllegalArgumentException("Cannot set framework drawable as progress drawable.");
        } else {
            C14714e c14714e = (C14714e) drawable;
            c14714e.mo10314a();
            super.setProgressDrawable(c14714e);
            c14714e.setLevel((int) ((getProgress() / getMax()) * 10000.0f));
        }
    }

    public void setShowAnimationBehavior(int i) {
        this.f53629b.f53660e = i;
        invalidate();
    }

    public void setTrackColor(int i) {
        if (this.f53629b.f53659d != i) {
            this.f53629b.f53659d = i;
            invalidate();
        }
    }

    public void setTrackCornerRadius(int i) {
        if (this.f53629b.f53657b != i) {
            S s = this.f53629b;
            s.f53657b = Math.min(i, s.f53656a / 2);
        }
    }

    public void setTrackThickness(int i) {
        if (this.f53629b.f53656a != i) {
            this.f53629b.f53656a = i;
            requestLayout();
        }
    }

    public void setVisibilityAfterHide(int i) {
        if (i == 0 || i == 4 || i == 8) {
            this.f53638k = i;
            return;
        }
        throw new IllegalArgumentException("The component's visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View.");
    }
}
