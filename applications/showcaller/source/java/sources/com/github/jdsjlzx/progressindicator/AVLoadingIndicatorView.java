package com.github.jdsjlzx.progressindicator;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import com.github.jdsjlzx.progressindicator.indicators.BallPulseIndicator;
import p078c.p081b.p082a.C1818a;
import p078c.p081b.p082a.C1822e;
import p078c.p081b.p082a.C1823f;
/* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/progressindicator/AVLoadingIndicatorView.class */
public class AVLoadingIndicatorView extends View {

    /* renamed from: d */
    private static final BallPulseIndicator f13806d = new BallPulseIndicator();

    /* renamed from: e */
    private long f13807e = -1;

    /* renamed from: f */
    private boolean f13808f = false;

    /* renamed from: g */
    private boolean f13809g = false;

    /* renamed from: h */
    private boolean f13810h = false;

    /* renamed from: i */
    private final Runnable f13811i = new RunnableC4506a();

    /* renamed from: j */
    private final Runnable f13812j = new RunnableC4507b();

    /* renamed from: k */
    int f13813k;

    /* renamed from: l */
    int f13814l;

    /* renamed from: m */
    int f13815m;

    /* renamed from: n */
    int f13816n;

    /* renamed from: o */
    private AbstractC4508a f13817o;

    /* renamed from: p */
    private int f13818p;

    /* renamed from: q */
    private boolean f13819q;

    /* renamed from: com.github.jdsjlzx.progressindicator.AVLoadingIndicatorView$a */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/progressindicator/AVLoadingIndicatorView$a.class */
    class RunnableC4506a implements Runnable {
        RunnableC4506a() {
            AVLoadingIndicatorView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AVLoadingIndicatorView.this.f13808f = false;
            AVLoadingIndicatorView.this.f13807e = -1L;
            AVLoadingIndicatorView.this.setVisibility(8);
        }
    }

    /* renamed from: com.github.jdsjlzx.progressindicator.AVLoadingIndicatorView$b */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/progressindicator/AVLoadingIndicatorView$b.class */
    class RunnableC4507b implements Runnable {
        RunnableC4507b() {
            AVLoadingIndicatorView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AVLoadingIndicatorView.this.f13809g = false;
            if (!AVLoadingIndicatorView.this.f13810h) {
                AVLoadingIndicatorView.this.f13807e = System.currentTimeMillis();
                AVLoadingIndicatorView.this.setVisibility(0);
            }
        }
    }

    public AVLoadingIndicatorView(Context context) {
        super(context);
        m22284f(context, null, 0, 0);
    }

    public AVLoadingIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m22284f(context, attributeSet, 0, C1822e.AVLoadingIndicatorView1);
    }

    public AVLoadingIndicatorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m22284f(context, attributeSet, i, C1822e.AVLoadingIndicatorView1);
    }

    /* renamed from: f */
    private void m22284f(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f13813k = 24;
        this.f13814l = 48;
        this.f13815m = 24;
        this.f13816n = 48;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1823f.AVLoadingIndicatorView1, i, i2);
        this.f13813k = obtainStyledAttributes.getDimensionPixelSize(C1823f.AVLoadingIndicatorView1_minWidth, this.f13813k);
        this.f13814l = obtainStyledAttributes.getDimensionPixelSize(C1823f.AVLoadingIndicatorView1_maxWidth, this.f13814l);
        this.f13815m = obtainStyledAttributes.getDimensionPixelSize(C1823f.AVLoadingIndicatorView1_minHeight, this.f13815m);
        this.f13816n = obtainStyledAttributes.getDimensionPixelSize(C1823f.AVLoadingIndicatorView1_maxHeight, this.f13816n);
        String string = obtainStyledAttributes.getString(C1823f.AVLoadingIndicatorView1_indicatorName1);
        this.f13818p = obtainStyledAttributes.getColor(C1823f.AVLoadingIndicatorView1_indicatorColor1, getResources().getColor(C1818a.colorAccent));
        setIndicator(string);
        if (this.f13817o == null) {
            setIndicator(f13806d);
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: g */
    private void m22283g() {
        removeCallbacks(this.f13811i);
        removeCallbacks(this.f13812j);
    }

    /* renamed from: j */
    private void m22280j(int i, int i2) {
        AbstractC4508a abstractC4508a;
        int i3;
        int i4;
        int i5;
        int paddingRight = i - (getPaddingRight() + getPaddingLeft());
        int paddingTop = i2 - (getPaddingTop() + getPaddingBottom());
        if (this.f13817o != null) {
            float intrinsicWidth = abstractC4508a.getIntrinsicWidth() / this.f13817o.getIntrinsicHeight();
            float f = paddingRight;
            float f2 = paddingTop;
            float f3 = f / f2;
            int i6 = 0;
            int i7 = paddingRight;
            if (intrinsicWidth != f3) {
                if (f3 <= intrinsicWidth) {
                    int i8 = (int) (f * (1.0f / intrinsicWidth));
                    int i9 = (paddingTop - i8) / 2;
                    i5 = i9;
                    i3 = 0;
                    i7 = paddingRight;
                    i4 = i8 + i9;
                    this.f13817o.setBounds(i3, i5, i7, i4);
                }
                int i10 = (int) (f2 * intrinsicWidth);
                int i11 = (paddingRight - i10) / 2;
                i6 = i11;
                i7 = i10 + i11;
            }
            i4 = paddingTop;
            i3 = i6;
            i5 = 0;
            this.f13817o.setBounds(i3, i5, i7, i4);
        }
    }

    /* renamed from: k */
    private void m22279k() {
        int[] drawableState = getDrawableState();
        AbstractC4508a abstractC4508a = this.f13817o;
        if (abstractC4508a == null || !abstractC4508a.isStateful()) {
            return;
        }
        this.f13817o.setState(drawableState);
    }

    @Override // android.view.View
    @TargetApi(21)
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        AbstractC4508a abstractC4508a = this.f13817o;
        if (abstractC4508a != null) {
            abstractC4508a.setHotspot(f, f2);
        }
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        m22279k();
    }

    /* renamed from: e */
    void m22285e(Canvas canvas) {
        AbstractC4508a abstractC4508a = this.f13817o;
        if (abstractC4508a != null) {
            int save = canvas.save();
            canvas.translate(getPaddingLeft(), getPaddingTop());
            abstractC4508a.draw(canvas);
            canvas.restoreToCount(save);
            if (!this.f13819q) {
                return;
            }
            abstractC4508a.start();
            this.f13819q = false;
        }
    }

    public AbstractC4508a getIndicator() {
        return this.f13817o;
    }

    /* renamed from: h */
    void m22282h() {
        if (getVisibility() != 0) {
            return;
        }
        if (this.f13817o instanceof Animatable) {
            this.f13819q = true;
        }
        postInvalidate();
    }

    /* renamed from: i */
    void m22281i() {
        AbstractC4508a abstractC4508a = this.f13817o;
        if (abstractC4508a instanceof Animatable) {
            abstractC4508a.stop();
            this.f13819q = false;
        }
        postInvalidate();
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        if (!verifyDrawable(drawable)) {
            super.invalidateDrawable(drawable);
            return;
        }
        Rect bounds = drawable.getBounds();
        int scrollX = getScrollX() + getPaddingLeft();
        int scrollY = getScrollY() + getPaddingTop();
        invalidate(bounds.left + scrollX, bounds.top + scrollY, bounds.right + scrollX, bounds.bottom + scrollY);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        m22282h();
        m22283g();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        m22281i();
        super.onDetachedFromWindow();
        m22283g();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        synchronized (this) {
            super.onDraw(canvas);
            m22285e(canvas);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        synchronized (this) {
            AbstractC4508a abstractC4508a = this.f13817o;
            if (abstractC4508a != null) {
                i4 = Math.max(this.f13813k, Math.min(this.f13814l, abstractC4508a.getIntrinsicWidth()));
                i3 = Math.max(this.f13815m, Math.min(this.f13816n, abstractC4508a.getIntrinsicHeight()));
            } else {
                i3 = 0;
                i4 = 0;
            }
            m22279k();
            setMeasuredDimension(View.resolveSizeAndState(i4 + getPaddingLeft() + getPaddingRight(), i, 0), View.resolveSizeAndState(i3 + getPaddingTop() + getPaddingBottom(), i2, 0));
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        m22280j(i, i2);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 8 || i == 4) {
            m22281i();
        } else {
            m22282h();
        }
    }

    public void setIndicator(AbstractC4508a abstractC4508a) {
        AbstractC4508a abstractC4508a2 = this.f13817o;
        if (abstractC4508a2 != abstractC4508a) {
            if (abstractC4508a2 != null) {
                abstractC4508a2.setCallback(null);
                unscheduleDrawable(this.f13817o);
            }
            this.f13817o = abstractC4508a;
            setIndicatorColor(this.f13818p);
            if (abstractC4508a != null) {
                abstractC4508a.setCallback(this);
            }
            postInvalidate();
        }
    }

    public void setIndicator(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        if (!str.contains(".")) {
            sb.append(getClass().getPackage().getName());
            sb.append(".indicators");
            sb.append(".");
        }
        sb.append(str);
        try {
            setIndicator((AbstractC4508a) Class.forName(sb.toString()).newInstance());
        } catch (ClassNotFoundException e) {
            Log.e("AVLoadingIndicatorView", "Didn't find your class , check the name again !" + str);
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        } catch (InstantiationException e3) {
            e3.printStackTrace();
        }
    }

    public void setIndicatorColor(int i) {
        this.f13818p = i;
        this.f13817o.setColor(i);
    }

    public void setIndicatorId(int i) {
        String str = "BallPulseIndicator";
        switch (i) {
            case 0:
                break;
            case 1:
                str = "BallGridPulseIndicator";
                break;
            case 2:
                str = "BallClipRotateIndicator";
                break;
            case 3:
                str = "BallClipRotatePulseIndicator";
                break;
            case 4:
                str = "SquareSpinIndicator";
                break;
            case 5:
                str = "BallClipRotateMultipleIndicator";
                break;
            case 6:
                str = "BallPulseRiseIndicator";
                break;
            case 7:
                str = "BallRotateIndicator";
                break;
            case 8:
                str = "CubeTransitionIndicator";
                break;
            case 9:
                str = "BallZigZagIndicator";
                break;
            case 10:
                str = "BallZigZagDeflectIndicator";
                break;
            case 11:
                str = "BallTrianglePathIndicator";
                break;
            case 12:
                str = "BallScaleIndicator";
                break;
            case 13:
                str = "LineScaleIndicator";
                break;
            case 14:
                str = "LineScalePartyIndicator";
                break;
            case 15:
                str = "BallScaleMultipleIndicator";
                break;
            case 16:
                str = "BallPulseSyncIndicator";
                break;
            case 17:
                str = "BallBeatIndicator";
                break;
            case 18:
                str = "LineScalePulseOutIndicator";
                break;
            case 19:
                str = "LineScalePulseOutRapidIndicator";
                break;
            case 20:
                str = "BallScaleRippleIndicator";
                break;
            case 21:
                str = "BallScaleRippleMultipleIndicator";
                break;
            case 22:
                str = "BallSpinFadeLoaderIndicator";
                break;
            case 23:
                str = "LineSpinFadeLoaderIndicator";
                break;
            case 24:
                str = "TriangleSkewSpinIndicator";
                break;
            case 25:
                str = "PacmanIndicator";
                break;
            case 26:
                str = "BallGridBeatIndicator";
                break;
            case 27:
                str = "SemiCircleSpinIndicator";
                break;
            default:
                str = "BallPulseIndicator";
                break;
        }
        setIndicator(str);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (getVisibility() != i) {
            super.setVisibility(i);
            if (i == 8 || i == 4) {
                m22281i();
            } else {
                m22282h();
            }
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.f13817o || super.verifyDrawable(drawable);
    }
}
