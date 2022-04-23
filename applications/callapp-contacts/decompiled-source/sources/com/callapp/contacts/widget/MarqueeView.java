package com.callapp.contacts.widget;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.text.Editable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.HorizontalScrollView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.R;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.PowerUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.text.Bidi;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/MarqueeView.class */
public class MarqueeView extends HorizontalScrollView {

    /* renamed from: a  reason: collision with root package name */
    int[] f16526a;

    /* renamed from: b  reason: collision with root package name */
    float[] f16527b;

    /* renamed from: c  reason: collision with root package name */
    int[] f16528c;

    /* renamed from: d  reason: collision with root package name */
    float[] f16529d;
    private TextView e;
    private Paint h;
    private int i;
    private boolean n;
    private Runnable t;
    private Animator.AnimatorListener w;
    private ObjectAnimator f = null;
    private ObjectAnimator g = null;
    private final Paint j = new Paint();
    private final Paint k = new Paint();
    private int l = -1;
    private boolean m = false;
    private int o = 60;
    private int p = 2000;
    private boolean q = false;
    private Interpolator r = new LinearInterpolator();
    private boolean s = true;
    private boolean u = false;
    private final Animator.AnimatorListener v = getAnimatorListener();

    public MarqueeView(Context context) {
        super(context);
        b();
    }

    public MarqueeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet);
        b();
    }

    public MarqueeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(attributeSet);
        b();
    }

    private ObjectAnimator a(View view, float f, float f2, int i, int i2, int i3) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "translationX", f, f2);
        ofFloat.setDuration(i);
        ofFloat.setStartDelay(i3);
        ofFloat.setRepeatCount(i2);
        ofFloat.setInterpolator(this.r);
        return ofFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(float f, int i) {
        boolean a2 = a(this.e.getText().toString());
        int i2 = (int) (this.o * f);
        float f2 = a2 ? i : -f;
        TextView textView = this.e;
        this.f = a(textView, textView.getTranslationX(), f2, i2, 0, 1000);
        float f3 = i;
        int i3 = (int) ((f3 + f) * this.o);
        if (a2) {
            f3 = -f;
        }
        this.g = a(this.e, f3, f2, i3, -1, this.p);
        e();
    }

    private void a(int i) {
        if (this.n) {
            int[] iArr = {i & (-1), (-570425345) & i, i & 16777215};
            this.f16526a = iArr;
            this.f16527b = new float[]{BitmapDescriptorFactory.HUE_RED, 0.4f, 1.0f};
            this.f16528c = a(iArr);
            this.f16529d = a(this.f16527b);
        }
    }

    private void a(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes;
        if (getContext() != null && (obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.asia_ivity_android_marqueeview_MarqueeView)) != null) {
            this.o = obtainStyledAttributes.getInteger(4, 60);
            this.p = obtainStyledAttributes.getInteger(3, 2000);
            this.q = obtainStyledAttributes.getBoolean(0, false);
            this.l = obtainStyledAttributes.getInteger(1, -1);
            this.i = obtainStyledAttributes.getInteger(2, (int) TypedValue.applyDimension(1, 15.0f, getResources().getDisplayMetrics()));
            obtainStyledAttributes.recycle();
        }
    }

    private static boolean a(String str) {
        Bidi bidi = new Bidi(str, -2);
        return bidi.isRightToLeft() || bidi.isMixed();
    }

    private static float[] a(float[] fArr) {
        float[] fArr2 = new float[fArr.length];
        int length = fArr.length;
        fArr2[0] = fArr[0];
        int i = length - 1;
        if (i > 1) {
            fArr2[i] = fArr[i];
            for (int i2 = 1; i2 < i; i2++) {
                fArr2[i - i2] = 1.0f - fArr[i2];
            }
        }
        return fArr2;
    }

    private static int[] a(int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            iArr2[(length - 1) - i] = iArr[i];
        }
        return iArr2;
    }

    private void b() {
        Paint paint = new Paint();
        this.h = paint;
        boolean z = true;
        paint.setAntiAlias(true);
        this.h.setStrokeWidth(1.0f);
        this.h.setStrokeCap(Paint.Cap.ROUND);
        this.r = new LinearInterpolator();
        if (Color.alpha(this.l) == 0) {
            z = false;
        }
        this.n = z;
        a(this.l);
    }

    private void b(boolean z) {
        this.s = false;
        if (z) {
            this.t = new Runnable() { // from class: com.callapp.contacts.widget.MarqueeView.1
                @Override // java.lang.Runnable
                public void run() {
                    if (MarqueeView.this.f != null && MarqueeView.this.m) {
                        MarqueeView.this.f.start();
                    }
                }
            };
            CallAppApplication.get().a(this.t, this.p);
            return;
        }
        ObjectAnimator objectAnimator = this.f;
        if (objectAnimator != null && this.m) {
            objectAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        return this.m && !PowerUtils.isPowerSaverOn();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float d() {
        this.h.setTextSize(this.e.getTextSize());
        this.h.setTypeface(this.e.getTypeface());
        return this.h.measureText(this.e.getText().toString());
    }

    private void e() {
        ObjectAnimator objectAnimator = this.f;
        if (objectAnimator != null) {
            ArrayList listeners = objectAnimator.getListeners();
            if (listeners == null || listeners.indexOf(this.v) < 0) {
                this.f.addListener(this.v);
            }
        }
    }

    private Animator.AnimatorListener getAnimatorListener() {
        return new Animator.AnimatorListener() { // from class: com.callapp.contacts.widget.MarqueeView.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (MarqueeView.this.w != null) {
                    MarqueeView.this.w.onAnimationCancel(animator);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!MarqueeView.this.s) {
                    MarqueeView.this.a();
                    if (MarqueeView.this.w != null) {
                        MarqueeView.this.w.onAnimationEnd(animator);
                    }
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (MarqueeView.this.w != null) {
                    MarqueeView.this.w.onAnimationRepeat(animator);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                MarqueeView.this.u = true;
                if (MarqueeView.this.w != null) {
                    MarqueeView.this.w.onAnimationStart(animator);
                }
            }
        };
    }

    private void setTextViewWidth(int i) {
        ViewGroup.LayoutParams layoutParams = this.e.getLayoutParams();
        if (layoutParams.width != i) {
            layoutParams.width = i;
            this.e.setLayoutParams(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTextViewWidthAndPos(int i) {
        setTextViewWidth(i);
        this.e.setX((!this.m || !a(this.e.getText().toString())) ? 0 : getMeasuredWidth() - i);
    }

    public final void a() {
        this.s = true;
        if (this.t != null) {
            CallAppApplication.get().c(this.t);
            this.t = null;
        }
        this.e.clearAnimation();
        ObjectAnimator objectAnimator = this.f;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.f.removeAllListeners();
        }
        ObjectAnimator objectAnimator2 = this.g;
        if (objectAnimator2 != null) {
            objectAnimator2.cancel();
        }
        invalidate();
    }

    public final void a(boolean z) {
        if (c()) {
            b(z);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        boolean z;
        super.dispatchDraw(canvas);
        if (this.m && (z = this.n) && z) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.i, getMeasuredHeight(), this.j);
            canvas.drawRect(getMeasuredWidth() - this.i, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), this.k);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        e();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ObjectAnimator objectAnimator = this.f;
        if (objectAnimator != null) {
            objectAnimator.removeListener(this.v);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (getChildCount() == 0 || getChildCount() > 1) {
            throw new RuntimeException("MarqueeView must have exactly one child element.");
        } else if (z) {
            boolean z2 = false;
            View childAt = getChildAt(0);
            View view = childAt;
            if (childAt instanceof ScrollView) {
                ScrollView scrollView = (ScrollView) childAt;
                view = childAt;
                if (scrollView.getChildCount() == 1) {
                    view = scrollView.getChildAt(0);
                }
            }
            if (view instanceof TextView) {
                this.e = (TextView) getChildAt(0);
                float d2 = d();
                int measuredWidth = getMeasuredWidth();
                if (d2 > measuredWidth) {
                    z2 = true;
                }
                this.m = z2;
                TextView textView = this.e;
                setTextViewWidthAndPos((int) d2);
                textView.addTextChangedListener(new DefaultInterfaceImplUtils.TextWatcherImpl() { // from class: com.callapp.contacts.widget.MarqueeView.2
                    @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.TextWatcherImpl, android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                        MarqueeView.this.a();
                        float d3 = MarqueeView.this.d();
                        int measuredWidth2 = MarqueeView.this.getMeasuredWidth();
                        MarqueeView.this.m = d3 > ((float) measuredWidth2);
                        MarqueeView.this.setTextViewWidthAndPos((int) d3);
                        if (MarqueeView.this.c()) {
                            MarqueeView.this.a(d3, measuredWidth2);
                            MarqueeView marqueeView = MarqueeView.this;
                            marqueeView.a(!marqueeView.u);
                        }
                    }
                });
                if (c() && this.q) {
                    a();
                    a(d2, measuredWidth);
                    a(true);
                    return;
                }
                return;
            }
            throw new RuntimeException("The child view of this MarqueeView must be a TextView instance.");
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.n) {
            this.j.setShader(null);
            this.j.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, this.i, (float) BitmapDescriptorFactory.HUE_RED, this.f16526a, this.f16527b, Shader.TileMode.CLAMP));
            this.k.setShader(null);
            this.k.setShader(new LinearGradient(i - this.i, (float) BitmapDescriptorFactory.HUE_RED, i, (float) BitmapDescriptorFactory.HUE_RED, this.f16528c, this.f16529d, Shader.TileMode.CLAMP));
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public void setFirstTextOutAnimListener(Animator.AnimatorListener animatorListener) {
        this.w = animatorListener;
    }

    public void setInterpolator(Interpolator interpolator) {
        this.r = interpolator;
    }

    public void setPauseBetweenAnimations(int i) {
        this.p = i;
    }

    public void setSpeed(int i) {
        this.o = i;
    }
}
