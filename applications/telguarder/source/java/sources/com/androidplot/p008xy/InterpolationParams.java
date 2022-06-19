package com.androidplot.p008xy;

import com.androidplot.p008xy.Interpolator;
/* renamed from: com.androidplot.xy.InterpolationParams */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/InterpolationParams.class */
public interface InterpolationParams<InterpolatorType extends Interpolator> {
    Class<InterpolatorType> getInterpolatorClass();
}
