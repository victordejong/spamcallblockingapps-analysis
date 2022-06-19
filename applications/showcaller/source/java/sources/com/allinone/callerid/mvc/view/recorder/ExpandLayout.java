package com.allinone.callerid.mvc.view.recorder;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/view/recorder/ExpandLayout.class */
public class ExpandLayout extends LinearLayout {

    /* renamed from: d */
    private View f11383d;

    /* renamed from: e */
    private int f11384e;

    /* renamed from: f */
    private boolean f11385f;

    /* renamed from: g */
    private long f11386g;

    /* renamed from: com.allinone.callerid.mvc.view.recorder.ExpandLayout$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/view/recorder/ExpandLayout$a.class */
    public class RunnableC3561a implements Runnable {
        RunnableC3561a() {
            ExpandLayout.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ExpandLayout.this.f11384e <= 0) {
                ExpandLayout expandLayout = ExpandLayout.this;
                expandLayout.f11384e = expandLayout.m25001k(expandLayout.f11383d);
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.view.recorder.ExpandLayout$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/view/recorder/ExpandLayout$b.class */
    public class C3562b implements ValueAnimator.AnimatorUpdateListener {
        C3562b() {
            ExpandLayout.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ExpandLayout.setViewHeight(ExpandLayout.this.f11383d, (int) ((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public ExpandLayout(Context context) {
        this(context, null);
    }

    public ExpandLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ExpandLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m25004h();
    }

    /* renamed from: d */
    private void m25008d(long j) {
        ValueAnimator ofFloat = this.f11385f ? ValueAnimator.ofFloat(0.0f, this.f11384e) : ValueAnimator.ofFloat(this.f11384e, 0.0f);
        long j2 = j / 2;
        ofFloat.setDuration(j2);
        ofFloat.setStartDelay(j2);
        ofFloat.addUpdateListener(new C3562b());
        ofFloat.start();
    }

    /* renamed from: h */
    private void m25004h() {
        this.f11383d = this;
        this.f11385f = true;
        this.f11386g = 300L;
        m25002j();
    }

    /* renamed from: j */
    private void m25002j() {
        this.f11383d.post(new RunnableC3561a());
    }

    public static void setViewHeight(View view, int i) {
        view.getLayoutParams().height = i;
        view.requestLayout();
    }

    /* renamed from: e */
    public void m25007e() {
        this.f11385f = false;
        m25008d(this.f11386g);
    }

    /* renamed from: f */
    public void m25006f() {
        this.f11385f = true;
        m25008d(this.f11386g);
    }

    /* renamed from: g */
    public void m25005g(boolean z) {
        this.f11385f = z;
        if (!z) {
            m25008d(10L);
        }
    }

    /* renamed from: i */
    public boolean m25003i() {
        return this.f11385f;
    }

    /* renamed from: k */
    public int m25001k(View view) {
        view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        return view.getMeasuredHeight();
    }

    public void setAnimationDuration(long j) {
        this.f11386g = j;
    }

    public void setViewHeight(int i) {
        this.f11384e = i;
    }
}
