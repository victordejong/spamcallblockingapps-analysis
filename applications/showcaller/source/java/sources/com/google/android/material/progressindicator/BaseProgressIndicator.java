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
import com.google.android.material.internal.C8203l;
import com.google.android.material.progressindicator.AbstractC8225b;
import com.google.android.material.theme.p275a.C8328a;
import java.util.Arrays;
import p020b.p041h.p050l.C1679w;
import p020b.p074t.p075a.p076a.AbstractC1793b;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p099o.C1909a;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/BaseProgressIndicator.class */
public abstract class BaseProgressIndicator<S extends AbstractC8225b> extends ProgressBar {

    /* renamed from: d */
    static final int f37060d = C1895k.Widget_MaterialComponents_ProgressIndicator;

    /* renamed from: e */
    S f37061e;

    /* renamed from: f */
    private int f37062f;

    /* renamed from: g */
    private boolean f37063g;

    /* renamed from: i */
    private final int f37065i;

    /* renamed from: j */
    private final int f37066j;

    /* renamed from: k */
    private long f37067k = -1;

    /* renamed from: m */
    private boolean f37069m = false;

    /* renamed from: n */
    private int f37070n = 4;

    /* renamed from: o */
    private final Runnable f37071o = new RunnableC8220a();

    /* renamed from: p */
    private final Runnable f37072p = new RunnableC8221b();

    /* renamed from: q */
    private final AbstractC1793b f37073q = new C8222c();

    /* renamed from: r */
    private final AbstractC1793b f37074r = new C8223d();

    /* renamed from: l */
    C8224a f37068l = new C8224a();

    /* renamed from: h */
    private boolean f37064h = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.progressindicator.BaseProgressIndicator$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/BaseProgressIndicator$a.class */
    public class RunnableC8220a implements Runnable {
        RunnableC8220a() {
            BaseProgressIndicator.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseProgressIndicator.this.m4414k();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.progressindicator.BaseProgressIndicator$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/BaseProgressIndicator$b.class */
    public class RunnableC8221b implements Runnable {
        RunnableC8221b() {
            BaseProgressIndicator.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseProgressIndicator.this.m4415j();
            BaseProgressIndicator.this.f37067k = -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.progressindicator.BaseProgressIndicator$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/BaseProgressIndicator$c.class */
    public class C8222c extends AbstractC1793b {
        C8222c() {
            BaseProgressIndicator.this = r4;
        }

        @Override // p020b.p074t.p075a.p076a.AbstractC1793b
        /* renamed from: a */
        public void mo4408a(Drawable drawable) {
            BaseProgressIndicator.this.setIndeterminate(false);
            BaseProgressIndicator.this.setProgressCompat(0, false);
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            baseProgressIndicator.setProgressCompat(baseProgressIndicator.f37062f, BaseProgressIndicator.this.f37063g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.progressindicator.BaseProgressIndicator$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/BaseProgressIndicator$d.class */
    public class C8223d extends AbstractC1793b {
        C8223d() {
            BaseProgressIndicator.this = r4;
        }

        @Override // p020b.p074t.p075a.p076a.AbstractC1793b
        /* renamed from: a */
        public void mo4408a(Drawable drawable) {
            super.mo4408a(drawable);
            if (!BaseProgressIndicator.this.f37069m) {
                BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
                baseProgressIndicator.setVisibility(baseProgressIndicator.f37070n);
            }
        }
    }

    public BaseProgressIndicator(Context context, AttributeSet attributeSet, int i, int i2) {
        super(C8328a.m3881c(context, attributeSet, i, f37060d), attributeSet, i);
        Context context2 = getContext();
        this.f37061e = mo4405i(context2, attributeSet);
        TypedArray m4462h = C8203l.m4462h(context2, attributeSet, C1896l.BaseProgressIndicator, i, i2, new int[0]);
        this.f37065i = m4462h.getInt(C1896l.BaseProgressIndicator_showDelay, -1);
        this.f37066j = Math.min(m4462h.getInt(C1896l.BaseProgressIndicator_minHideDelay, -1), 1000);
        m4462h.recycle();
    }

    private AbstractC8238g<S> getCurrentDrawingDelegate() {
        AbstractC8238g<S> abstractC8238g = null;
        if (!isIndeterminate()) {
            return getProgressDrawable() == null ? null : getProgressDrawable().m4371w();
        }
        if (getIndeterminateDrawable() != null) {
            abstractC8238g = getIndeterminateDrawable().m4336v();
        }
        return abstractC8238g;
    }

    /* renamed from: j */
    public void m4415j() {
        ((AbstractC8234f) getCurrentDrawable()).mo4342p(false, false, true);
        if (m4412m()) {
            setVisibility(4);
        }
    }

    /* renamed from: k */
    public void m4414k() {
        if (this.f37066j > 0) {
            this.f37067k = SystemClock.uptimeMillis();
        }
        setVisibility(0);
    }

    /* renamed from: m */
    private boolean m4412m() {
        return (getProgressDrawable() == null || !getProgressDrawable().isVisible()) && (getIndeterminateDrawable() == null || !getIndeterminateDrawable().isVisible());
    }

    /* renamed from: n */
    private void m4411n() {
        if (getProgressDrawable() != null && getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().m4337u().mo4312d(this.f37073q);
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().mo4343l(this.f37074r);
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().mo4343l(this.f37074r);
        }
    }

    /* renamed from: o */
    private void m4410o() {
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().mo4340r(this.f37074r);
            getIndeterminateDrawable().m4337u().mo4309h();
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().mo4340r(this.f37074r);
        }
    }

    @Override // android.widget.ProgressBar
    public Drawable getCurrentDrawable() {
        return isIndeterminate() ? getIndeterminateDrawable() : getProgressDrawable();
    }

    public int getHideAnimationBehavior() {
        return this.f37061e.f37093f;
    }

    @Override // android.widget.ProgressBar
    public C8240i<S> getIndeterminateDrawable() {
        return (C8240i) super.getIndeterminateDrawable();
    }

    public int[] getIndicatorColor() {
        return this.f37061e.f37090c;
    }

    @Override // android.widget.ProgressBar
    public C8232e<S> getProgressDrawable() {
        return (C8232e) super.getProgressDrawable();
    }

    public int getShowAnimationBehavior() {
        return this.f37061e.f37092e;
    }

    public int getTrackColor() {
        return this.f37061e.f37091d;
    }

    public int getTrackCornerRadius() {
        return this.f37061e.f37089b;
    }

    public int getTrackThickness() {
        return this.f37061e.f37088a;
    }

    /* renamed from: h */
    protected void m4416h(boolean z) {
        if (!this.f37064h) {
            return;
        }
        ((AbstractC8234f) getCurrentDrawable()).mo4342p(m4409p(), false, z);
    }

    /* renamed from: i */
    abstract S mo4405i(Context context, AttributeSet attributeSet);

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        if (getCurrentDrawable() != null) {
            getCurrentDrawable().invalidateSelf();
        }
    }

    /* renamed from: l */
    boolean m4413l() {
        View view = this;
        while (true) {
            View view2 = view;
            boolean z = false;
            if (view2.getVisibility() != 0) {
                return false;
            }
            ViewParent parent = view2.getParent();
            if (parent == null) {
                if (getWindowVisibility() == 0) {
                    z = true;
                }
                return z;
            } else if (!(parent instanceof View)) {
                return true;
            } else {
                view = (View) parent;
            }
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        m4411n();
        if (m4409p()) {
            m4414k();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f37072p);
        removeCallbacks(this.f37071o);
        ((AbstractC8234f) getCurrentDrawable()).mo4346h();
        m4410o();
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
            AbstractC8238g<S> currentDrawingDelegate = getCurrentDrawingDelegate();
            if (currentDrawingDelegate == null) {
                return;
            }
            int mo4329e = currentDrawingDelegate.mo4329e();
            int mo4330d = currentDrawingDelegate.mo4330d();
            setMeasuredDimension(mo4329e < 0 ? getMeasuredWidth() : mo4329e + getPaddingLeft() + getPaddingRight(), mo4330d < 0 ? getMeasuredHeight() : mo4330d + getPaddingTop() + getPaddingBottom());
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        m4416h(i == 0);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        m4416h(false);
    }

    /* renamed from: p */
    public boolean m4409p() {
        return C1679w.m29314U(this) && getWindowVisibility() == 0 && m4413l();
    }

    public void setAnimatorDurationScaleProvider(C8224a c8224a) {
        this.f37068l = c8224a;
        if (getProgressDrawable() != null) {
            getProgressDrawable().f37122g = c8224a;
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().f37122g = c8224a;
        }
    }

    public void setHideAnimationBehavior(int i) {
        this.f37061e.f37093f = i;
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminate(boolean z) {
        synchronized (this) {
            if (z == isIndeterminate()) {
                return;
            }
            if (m4409p() && z) {
                throw new IllegalStateException("Cannot switch to indeterminate mode while the progress indicator is visible.");
            }
            AbstractC8234f abstractC8234f = (AbstractC8234f) getCurrentDrawable();
            if (abstractC8234f != null) {
                abstractC8234f.mo4346h();
            }
            super.setIndeterminate(z);
            AbstractC8234f abstractC8234f2 = (AbstractC8234f) getCurrentDrawable();
            if (abstractC8234f2 != null) {
                abstractC8234f2.mo4342p(m4409p(), false, false);
            }
            this.f37069m = false;
        }
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateDrawable(Drawable drawable) {
        if (drawable == null) {
            super.setIndeterminateDrawable(null);
        } else if (!(drawable instanceof C8240i)) {
            throw new IllegalArgumentException("Cannot set framework drawable as indeterminate drawable.");
        } else {
            ((AbstractC8234f) drawable).mo4346h();
            super.setIndeterminateDrawable(drawable);
        }
    }

    public void setIndicatorColor(int... iArr) {
        int[] iArr2 = iArr;
        if (iArr.length == 0) {
            iArr2 = new int[]{C1909a.m28717b(getContext(), C1886b.colorPrimary, -1)};
        }
        if (!Arrays.equals(getIndicatorColor(), iArr2)) {
            this.f37061e.f37090c = iArr2;
            getIndeterminateDrawable().m4337u().mo4313c();
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
            if (getProgressDrawable() == null || z) {
                return;
            }
            getProgressDrawable().jumpToCurrentState();
        } else if (getProgressDrawable() == null) {
        } else {
            this.f37062f = i;
            this.f37063g = z;
            this.f37069m = true;
            if (!getIndeterminateDrawable().isVisible() || this.f37068l.m4402a(getContext().getContentResolver()) == 0.0f) {
                this.f37073q.mo4408a(getIndeterminateDrawable());
            } else {
                getIndeterminateDrawable().m4337u().mo4311f();
            }
        }
    }

    @Override // android.widget.ProgressBar
    public void setProgressDrawable(Drawable drawable) {
        if (drawable == null) {
            super.setProgressDrawable(null);
        } else if (!(drawable instanceof C8232e)) {
            throw new IllegalArgumentException("Cannot set framework drawable as progress drawable.");
        } else {
            C8232e c8232e = (C8232e) drawable;
            c8232e.mo4346h();
            super.setProgressDrawable(c8232e);
            c8232e.m4376A(getProgress() / getMax());
        }
    }

    public void setShowAnimationBehavior(int i) {
        this.f37061e.f37092e = i;
        invalidate();
    }

    public void setTrackColor(int i) {
        S s = this.f37061e;
        if (s.f37091d != i) {
            s.f37091d = i;
            invalidate();
        }
    }

    public void setTrackCornerRadius(int i) {
        S s = this.f37061e;
        if (s.f37089b != i) {
            s.f37089b = Math.min(i, s.f37088a / 2);
        }
    }

    public void setTrackThickness(int i) {
        S s = this.f37061e;
        if (s.f37088a != i) {
            s.f37088a = i;
            requestLayout();
        }
    }

    public void setVisibilityAfterHide(int i) {
        if (i == 0 || i == 4 || i == 8) {
            this.f37070n = i;
            return;
        }
        throw new IllegalArgumentException("The component's visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View.");
    }
}
