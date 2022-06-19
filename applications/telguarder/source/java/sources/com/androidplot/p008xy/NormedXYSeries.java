package com.androidplot.p008xy;

import com.androidplot.Region;
import com.androidplot.util.SeriesUtils;
/* renamed from: com.androidplot.xy.NormedXYSeries */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/NormedXYSeries.class */
public class NormedXYSeries implements XYSeries {
    private Region minMaxX;
    private Region minMaxY;
    private XYSeries rawData;
    private Region transformX;
    private Region transformY;

    /* renamed from: com.androidplot.xy.NormedXYSeries$Norm */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/NormedXYSeries$Norm.class */
    public static class Norm {
        final Region minMax;
        final double offset;
        final boolean useOffsetCompression;

        public Norm(Region region) {
            this(region, 0.0d, false);
        }

        public Norm(Region region, double d, boolean z) {
            this.minMax = region;
            this.offset = d;
            this.useOffsetCompression = z;
            if (z) {
                if (d > -1.0d && d < 1.0d) {
                    return;
                }
                throw new IllegalArgumentException("When useOffsetCompression is true, offset must be > -1 and < 1.");
            }
        }
    }

    public NormedXYSeries(XYSeries xYSeries) {
        this(xYSeries, null, new Norm(null, 0.0d, false));
    }

    public NormedXYSeries(XYSeries xYSeries, Norm norm, Norm norm2) {
        this.rawData = xYSeries;
        normalize(norm, norm2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [double] */
    /* JADX WARN: Type inference failed for: r0v16, types: [double] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    protected Region calculateTransform(Norm norm) {
        ?? r11 = true;
        if (norm.useOffsetCompression) {
            ?? r13 = norm.offset > 0.0d ? norm.offset : false;
            if (norm.offset < 0.0d) {
                r11 = 1.0d + norm.offset;
            }
            return new Region(Double.valueOf(r13 == true ? 1.0d : 0.0d), Double.valueOf(r11 == true ? 1.0d : 0.0d));
        }
        return new Region(Double.valueOf(norm.offset + 0.0d), Double.valueOf(norm.offset + 1.0d));
    }

    public Number denormalizeXVal(Number number) {
        if (number != null) {
            return this.transformX.transform(number.doubleValue(), this.minMaxX);
        }
        return null;
    }

    public Number denormalizeYVal(Number number) {
        if (number != null) {
            return this.transformY.transform(number.doubleValue(), this.minMaxY);
        }
        return null;
    }

    @Override // com.androidplot.Series
    public String getTitle() {
        return this.rawData.getTitle();
    }

    @Override // com.androidplot.p008xy.XYSeries
    public Number getX(int i) {
        Number x = this.rawData.getX(i);
        Number number = x;
        if (x != null) {
            number = x;
            if (this.transformX != null) {
                number = this.minMaxX.transform(x.doubleValue(), this.transformX);
            }
        }
        return number;
    }

    @Override // com.androidplot.p008xy.XYSeries
    public Number getY(int i) {
        Number y = this.rawData.getY(i);
        Number number = y;
        if (y != null) {
            number = y;
            if (this.transformY != null) {
                number = this.minMaxY.transform(y.doubleValue(), this.transformY);
            }
        }
        return number;
    }

    protected void normalize(Norm norm, Norm norm2) {
        if (norm != null) {
            this.minMaxX = norm.minMax != null ? norm.minMax : SeriesUtils.minMaxX(this.rawData);
            this.transformX = calculateTransform(norm);
        }
        if (norm2 != null) {
            this.minMaxY = norm2.minMax != null ? norm2.minMax : SeriesUtils.minMaxY(this.rawData);
            this.transformY = calculateTransform(norm2);
        }
    }

    @Override // com.androidplot.p008xy.XYSeries
    public int size() {
        return this.rawData.size();
    }
}
