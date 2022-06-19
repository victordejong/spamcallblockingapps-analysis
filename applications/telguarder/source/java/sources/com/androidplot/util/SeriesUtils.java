package com.androidplot.util;

import com.androidplot.Region;
import com.androidplot.p008xy.FastXYSeries;
import com.androidplot.p008xy.OrderedXYSeries;
import com.androidplot.p008xy.RectRegion;
import com.androidplot.p008xy.XYConstraints;
import com.androidplot.p008xy.XYSeries;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/androidplot/util/SeriesUtils.class */
public class SeriesUtils {
    protected static Region getNullRegion(XYSeries xYSeries, int i) {
        int i2;
        Region region = new Region();
        if (xYSeries.getX(i) != null) {
            throw new IllegalArgumentException("Attempt to find null region for non null index: " + i);
        }
        int i3 = i - 1;
        while (true) {
            i2 = i;
            if (i3 < 0) {
                break;
            } else if (xYSeries.getX(i3) != null) {
                region.setMin(Integer.valueOf(i3));
                i2 = i;
                break;
            } else {
                i3--;
            }
        }
        while (true) {
            int i4 = i2 + 1;
            if (i4 >= xYSeries.size()) {
                break;
            }
            i2 = i4;
            if (xYSeries.getX(i4) != null) {
                region.setMax(Integer.valueOf(i4));
                break;
            }
        }
        return region;
    }

    public static OrderedXYSeries.XOrder getXYOrder(XYSeries xYSeries) {
        return xYSeries instanceof OrderedXYSeries ? ((OrderedXYSeries) xYSeries).getXOrder() : OrderedXYSeries.XOrder.NONE;
    }

    public static Region iBounds(XYSeries xYSeries, RectRegion rectRegion) {
        float f = xYSeries.size() >= 200 ? 50.0f : 1.0f;
        return new Region(Integer.valueOf(iBoundsMin(xYSeries, rectRegion.getMinX().doubleValue(), f)), Integer.valueOf(iBoundsMax(xYSeries, rectRegion.getMaxX().doubleValue(), f)));
    }

    protected static int iBoundsMax(XYSeries xYSeries, double d, float f) {
        int i;
        Number x;
        int size = xYSeries.size() - 1;
        int size2 = xYSeries.size();
        int ceil = (int) Math.ceil(size2 / f);
        while (ceil >= 0) {
            int i2 = (int) f;
            int i3 = 0;
            while (true) {
                i = size;
                if (i3 < f) {
                    i = (i2 * ceil) + i3;
                    if (i >= size2 || (x = xYSeries.getX(i)) == null) {
                        i3++;
                    } else {
                        int i4 = (x.doubleValue() > d ? 1 : (x.doubleValue() == d ? 0 : -1));
                        if (i4 <= 0) {
                            return i4 == 0 ? i : size;
                        }
                    }
                }
            }
            ceil--;
            size = i;
        }
        return size;
    }

    protected static int iBoundsMin(XYSeries xYSeries, double d, float f) {
        int i;
        Number x;
        int ceil = (int) Math.ceil(xYSeries.size() / f);
        int i2 = 0;
        int i3 = 1;
        while (i3 <= ceil) {
            int i4 = (int) f;
            int i5 = 1;
            while (true) {
                i = i2;
                if (i5 <= f) {
                    i = (i4 * i3) - i5;
                    if (i < 0) {
                        i = i2;
                        break;
                    } else if (i >= xYSeries.size() || (x = xYSeries.getX(i)) == null) {
                        i5++;
                    } else if (x.doubleValue() >= d) {
                        return x.doubleValue() == d ? i : i2;
                    }
                }
            }
            i3++;
            i2 = i;
        }
        return i2;
    }

    public static Region minMax(Region region, List<Number>... listArr) {
        for (List<Number> list : listArr) {
            for (Number number : list) {
                region.union(number);
            }
        }
        return region;
    }

    public static Region minMax(List<Number>... listArr) {
        return minMax(new Region(), listArr);
    }

    public static RectRegion minMax(XYConstraints xYConstraints, List<XYSeries> list) {
        return minMax(xYConstraints, (XYSeries[]) list.toArray(new XYSeries[list.size()]));
    }

    public static RectRegion minMax(XYConstraints xYConstraints, XYSeries... xYSeriesArr) {
        RectRegion rectRegion = new RectRegion();
        if (xYSeriesArr != null && xYSeriesArr.length > 0) {
            for (XYSeries xYSeries : xYSeriesArr) {
                if (xYSeries instanceof FastXYSeries) {
                    RectRegion minMax = ((FastXYSeries) xYSeries).minMax();
                    if (minMax != null) {
                        if (xYConstraints == null || xYConstraints.contains(minMax)) {
                            rectRegion.union(minMax);
                        }
                    }
                }
                for (int i = 0; i < xYSeries.size(); i++) {
                    Number x = xYSeries.getX(i);
                    Number y = xYSeries.getY(i);
                    if (xYConstraints == null || xYConstraints.contains(x, y)) {
                        rectRegion.union(x, y);
                    }
                }
            }
        }
        return rectRegion;
    }

    public static RectRegion minMax(List<XYSeries> list) {
        return minMax((XYConstraints) null, list);
    }

    public static RectRegion minMax(XYSeries... xYSeriesArr) {
        return minMax((XYConstraints) null, xYSeriesArr);
    }

    public static Region minMaxX(XYSeries... xYSeriesArr) {
        Region region = new Region();
        for (XYSeries xYSeries : xYSeriesArr) {
            for (int i = 0; i < xYSeries.size(); i++) {
                region.union(xYSeries.getX(i));
            }
        }
        return region;
    }

    public static Region minMaxY(XYSeries... xYSeriesArr) {
        Region region = new Region();
        for (XYSeries xYSeries : xYSeriesArr) {
            for (int i = 0; i < xYSeries.size(); i++) {
                region.union(xYSeries.getY(i));
            }
        }
        return region;
    }
}
