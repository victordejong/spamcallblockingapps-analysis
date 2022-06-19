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
import com.callapp.contacts.C5563R;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.PowerUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.text.Bidi;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/MarqueeView.class */
public class MarqueeView extends HorizontalScrollView {

    /* renamed from: a */
    int[] f28741a;

    /* renamed from: b */
    float[] f28742b;

    /* renamed from: c */
    int[] f28743c;

    /* renamed from: d */
    float[] f28744d;

    /* renamed from: e */
    private TextView f28745e;

    /* renamed from: h */
    private Paint f28748h;

    /* renamed from: i */
    private int f28749i;

    /* renamed from: n */
    private boolean f28754n;

    /* renamed from: t */
    private Runnable f28760t;

    /* renamed from: w */
    private Animator.AnimatorListener f28763w;

    /* renamed from: f */
    private ObjectAnimator f28746f = null;

    /* renamed from: g */
    private ObjectAnimator f28747g = null;

    /* renamed from: j */
    private final Paint f28750j = new Paint();

    /* renamed from: k */
    private final Paint f28751k = new Paint();

    /* renamed from: l */
    private int f28752l = -1;

    /* renamed from: m */
    private boolean f28753m = false;

    /* renamed from: o */
    private int f28755o = 60;

    /* renamed from: p */
    private int f28756p = 2000;

    /* renamed from: q */
    private boolean f28757q = false;

    /* renamed from: r */
    private Interpolator f28758r = new LinearInterpolator();

    /* renamed from: s */
    private boolean f28759s = true;

    /* renamed from: u */
    private boolean f28761u = false;

    /* renamed from: v */
    private final Animator.AnimatorListener f28762v = getAnimatorListener();

    public MarqueeView(Context context) {
        super(context);
        m26707b();
    }

    public MarqueeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m26717a(attributeSet);
        m26707b();
    }

    public MarqueeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m26717a(attributeSet);
        m26707b();
    }

    /* renamed from: a */
    private ObjectAnimator m26716a(View view, float f, float f2, int i, int i2, int i3) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "translationX", f, f2);
        ofFloat.setDuration(i);
        ofFloat.setStartDelay(i3);
        ofFloat.setRepeatCount(i2);
        ofFloat.setInterpolator(this.f28758r);
        return ofFloat;
    }

    /* renamed from: a */
    public void m26719a(float f, int i) {
        boolean m26711a = m26711a(this.f28745e.getText().toString());
        int i2 = (int) (this.f28755o * f);
        float f2 = m26711a ? i : -f;
        TextView textView = this.f28745e;
        this.f28746f = m26716a(textView, textView.getTranslationX(), f2, i2, 0, 1000);
        float f3 = i;
        int i3 = (int) ((f3 + f) * this.f28755o);
        if (m26711a) {
            f3 = -f;
        }
        this.f28747g = m26716a(this.f28745e, f3, f2, i3, -1, this.f28756p);
        m26700e();
    }

    /* renamed from: a */
    private void m26718a(int i) {
        if (this.f28754n) {
            int[] iArr = {i & (-1), (-570425345) & i, i & 16777215};
            this.f28741a = iArr;
            this.f28742b = new float[]{BitmapDescriptorFactory.HUE_RED, 0.4f, 1.0f};
            this.f28743c = m26708a(iArr);
            this.f28744d = m26709a(this.f28742b);
        }
    }

    /* renamed from: a */
    private void m26717a(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes;
        if (getContext() == null || (obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C5563R.styleable.asia_ivity_android_marqueeview_MarqueeView)) == null) {
            return;
        }
        this.f28755o = obtainStyledAttributes.getInteger(4, 60);
        this.f28756p = obtainStyledAttributes.getInteger(3, 2000);
        this.f28757q = obtainStyledAttributes.getBoolean(0, false);
        this.f28752l = obtainStyledAttributes.getInteger(1, -1);
        this.f28749i = obtainStyledAttributes.getInteger(2, (int) TypedValue.applyDimension(1, 15.0f, getResources().getDisplayMetrics()));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private static boolean m26711a(String str) {
        Bidi bidi = new Bidi(str, -2);
        return bidi.isRightToLeft() || bidi.isMixed();
    }

    /* renamed from: a */
    private static float[] m26709a(float[] fArr) {
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

    /* renamed from: a */
    private static int[] m26708a(int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            iArr2[(length - 1) - i] = iArr[i];
        }
        return iArr2;
    }

    /* renamed from: b */
    private void m26707b() {
        Paint paint = new Paint();
        this.f28748h = paint;
        boolean z = true;
        paint.setAntiAlias(true);
        this.f28748h.setStrokeWidth(1.0f);
        this.f28748h.setStrokeCap(Paint.Cap.ROUND);
        this.f28758r = new LinearInterpolator();
        if (Color.alpha(this.f28752l) == 0) {
            z = false;
        }
        this.f28754n = z;
        m26718a(this.f28752l);
    }

    /* renamed from: b */
    private void m26705b(boolean z) {
        this.f28759s = false;
        if (z) {
            this.f28760t = new Runnable() { // from class: com.callapp.contacts.widget.MarqueeView.1
                @Override // java.lang.Runnable
                public void run() {
                    if (MarqueeView.this.f28746f == null || !MarqueeView.this.f28753m) {
                        return;
                    }
                    MarqueeView.this.f28746f.start();
                }
            };
            CallAppApplication.get().m31869a(this.f28760t, this.f28756p);
            return;
        }
        ObjectAnimator objectAnimator = this.f28746f;
        if (objectAnimator == null || !this.f28753m) {
            return;
        }
        objectAnimator.start();
    }

    /* renamed from: c */
    public boolean m26704c() {
        return this.f28753m && !PowerUtils.isPowerSaverOn();
    }

    /* renamed from: d */
    public float m26702d() {
        this.f28748h.setTextSize(this.f28745e.getTextSize());
        this.f28748h.setTypeface(this.f28745e.getTypeface());
        return this.f28748h.measureText(this.f28745e.getText().toString());
    }

    /* renamed from: e */
    private void m26700e() {
        ObjectAnimator objectAnimator = this.f28746f;
        if (objectAnimator != null) {
            ArrayList listeners = objectAnimator.getListeners();
            if (listeners != null && listeners.indexOf(this.f28762v) >= 0) {
                return;
            }
            this.f28746f.addListener(this.f28762v);
        }
    }

    private Animator.AnimatorListener getAnimatorListener() {
        return new Animator.AnimatorListener() { // from class: com.callapp.contacts.widget.MarqueeView.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (MarqueeView.this.f28763w != null) {
                    MarqueeView.this.f28763w.onAnimationCancel(animator);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (MarqueeView.this.f28759s) {
                    return;
                }
                MarqueeView.this.m26720a();
                if (MarqueeView.this.f28763w == null) {
                    return;
                }
                MarqueeView.this.f28763w.onAnimationEnd(animator);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (MarqueeView.this.f28763w != null) {
                    MarqueeView.this.f28763w.onAnimationRepeat(animator);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                MarqueeView.this.f28761u = true;
                if (MarqueeView.this.f28763w != null) {
                    MarqueeView.this.f28763w.onAnimationStart(animator);
                }
            }
        };
    }

    private void setTextViewWidth(int i) {
        ViewGroup.LayoutParams layoutParams = this.f28745e.getLayoutParams();
        if (layoutParams.width != i) {
            layoutParams.width = i;
            this.f28745e.setLayoutParams(layoutParams);
        }
    }

    public void setTextViewWidthAndPos(int i) {
        setTextViewWidth(i);
        this.f28745e.setX((!this.f28753m || !m26711a(this.f28745e.getText().toString())) ? 0 : getMeasuredWidth() - i);
    }

    /* renamed from: a */
    public final void m26720a() {
        this.f28759s = true;
        if (this.f28760t != null) {
            CallAppApplication.get().m31861c(this.f28760t);
            this.f28760t = null;
        }
        this.f28745e.clearAnimation();
        ObjectAnimator objectAnimator = this.f28746f;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.f28746f.removeAllListeners();
        }
        ObjectAnimator objectAnimator2 = this.f28747g;
        if (objectAnimator2 != null) {
            objectAnimator2.cancel();
        }
        invalidate();
    }

    /* renamed from: a */
    public final void m26710a(boolean z) {
        if (m26704c()) {
            m26705b(z);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        boolean z;
        super.dispatchDraw(canvas);
        if (!this.f28753m || !(z = this.f28754n) || !z) {
            return;
        }
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.f28749i, getMeasuredHeight(), this.f28750j);
        canvas.drawRect(getMeasuredWidth() - this.f28749i, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), this.f28751k);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        m26700e();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ObjectAnimator objectAnimator = this.f28746f;
        if (objectAnimator != null) {
            objectAnimator.removeListener(this.f28762v);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (getChildCount() == 0 || getChildCount() > 1) {
            throw new RuntimeException("MarqueeView must have exactly one child element.");
        }
        if (!z) {
            return;
        }
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
        if (!(view instanceof TextView)) {
            throw new RuntimeException("The child view of this MarqueeView must be a TextView instance.");
        }
        this.f28745e = (TextView) getChildAt(0);
        float m26702d = m26702d();
        int measuredWidth = getMeasuredWidth();
        if (m26702d > measuredWidth) {
            z2 = true;
        }
        this.f28753m = z2;
        TextView textView = this.f28745e;
        setTextViewWidthAndPos((int) m26702d);
        textView.addTextChangedListener(new DefaultInterfaceImplUtils.TextWatcherImpl() { // from class: com.callapp.contacts.widget.MarqueeView.2
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.TextWatcherImpl, android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                MarqueeView.this.m26720a();
                float m26702d2 = MarqueeView.this.m26702d();
                int measuredWidth2 = MarqueeView.this.getMeasuredWidth();
                MarqueeView.this.f28753m = m26702d2 > ((float) measuredWidth2);
                MarqueeView.this.setTextViewWidthAndPos((int) m26702d2);
                if (MarqueeView.this.m26704c()) {
                    MarqueeView.this.m26719a(m26702d2, measuredWidth2);
                    MarqueeView marqueeView = MarqueeView.this;
                    marqueeView.m26710a(!marqueeView.f28761u);
                }
            }
        });
        if (!m26704c() || !this.f28757q) {
            return;
        }
        m26720a();
        m26719a(m26702d, measuredWidth);
        m26710a(true);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.f28754n) {
            this.f28750j.setShader(null);
            this.f28750j.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, this.f28749i, (float) BitmapDescriptorFactory.HUE_RED, this.f28741a, this.f28742b, Shader.TileMode.CLAMP));
            this.f28751k.setShader(null);
            this.f28751k.setShader(new LinearGradient(i - this.f28749i, (float) BitmapDescriptorFactory.HUE_RED, i, (float) BitmapDescriptorFactory.HUE_RED, this.f28743c, this.f28744d, Shader.TileMode.CLAMP));
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public void setFirstTextOutAnimListener(Animator.AnimatorListener animatorListener) {
        this.f28763w = animatorListener;
    }

    public void setInterpolator(Interpolator interpolator) {
        this.f28758r = interpolator;
    }

    public void setPauseBetweenAnimations(int i) {
        this.f28756p = i;
    }

    public void setSpeed(int i) {
        this.f28755o = i;
    }
}
