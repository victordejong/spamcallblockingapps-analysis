package com.androidplot.p008xy;

import com.androidplot.p008xy.InterpolationParams;
import java.util.List;
/* renamed from: com.androidplot.xy.Interpolator */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/Interpolator.class */
public interface Interpolator<ParamsType extends InterpolationParams> {
    List<XYCoords> interpolate(XYSeries xYSeries, ParamsType paramstype);
}
