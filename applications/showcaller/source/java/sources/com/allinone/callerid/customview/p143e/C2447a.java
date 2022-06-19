package com.allinone.callerid.customview.p143e;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.allinone.callerid.customview.e.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/e/a.class */
public class C2447a {

    /* renamed from: a */
    private final C2450d f8702a;

    /* renamed from: b */
    private final View[] f8703b;

    /* renamed from: d */
    private boolean f8705d;

    /* renamed from: c */
    private final List<Animator> f8704c = new ArrayList();

    /* renamed from: e */
    private boolean f8706e = false;

    /* renamed from: f */
    private Interpolator f8707f = null;

    public C2447a(C2450d c2450d, View... viewArr) {
        this.f8702a = c2450d;
        this.f8703b = viewArr;
    }

    /* renamed from: a */
    public C2447a m27338a(View... viewArr) {
        return this.f8702a.m27320g(viewArr);
    }

    /* renamed from: b */
    public List<Animator> m27337b() {
        return this.f8704c;
    }

    /* renamed from: c */
    public C2450d m27336c() {
        return this.f8702a.m27316k(new DecelerateInterpolator());
    }

    /* renamed from: d */
    public C2447a m27335d() {
        this.f8706e = true;
        return this;
    }

    /* renamed from: e */
    public Interpolator m27334e() {
        return this.f8707f;
    }

    /* renamed from: f */
    protected float[] m27333f(float... fArr) {
        if (!this.f8706e) {
            return fArr;
        }
        float[] fArr2 = new float[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            fArr2[i] = m27329j(fArr[i]);
        }
        return fArr2;
    }

    /* renamed from: g */
    public View m27332g() {
        return this.f8703b[0];
    }

    /* renamed from: h */
    public boolean m27331h() {
        return this.f8705d;
    }

    /* renamed from: i */
    public C2447a m27330i(String str, float... fArr) {
        for (View view : this.f8703b) {
            this.f8704c.add(ObjectAnimator.ofFloat(view, str, m27333f(fArr)));
        }
        return this;
    }

    /* renamed from: j */
    protected float m27329j(float f) {
        return f * this.f8703b[0].getContext().getResources().getDisplayMetrics().density;
    }

    /* renamed from: k */
    public C2447a m27328k(float... fArr) {
        return m27330i("translationX", fArr);
    }

    /* renamed from: l */
    public C2447a m27327l(float... fArr) {
        return m27330i("translationY", fArr);
    }
}
