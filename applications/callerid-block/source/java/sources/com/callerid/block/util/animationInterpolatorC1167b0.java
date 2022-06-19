package com.callerid.block.util;

import android.view.animation.Interpolator;
/* renamed from: com.callerid.block.util.b0 */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/b0.class */
public class animationInterpolatorC1167b0 implements Interpolator {

    /* renamed from: a */
    double f4991a;

    /* renamed from: b */
    double f4992b;

    public animationInterpolatorC1167b0(double d, double d2) {
        this.f4991a = 1.0d;
        this.f4992b = 10.0d;
        this.f4991a = d;
        this.f4992b = d2;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        double d = this.f4991a;
        double d2 = -f;
        Double.isNaN(d2);
        double pow = Math.pow(2.718281828459045d, d2 / d);
        double d3 = this.f4992b;
        double d4 = f;
        Double.isNaN(d4);
        return (float) ((pow * (-1.0d) * Math.cos(d3 * d4)) + 1.0d);
    }
}
