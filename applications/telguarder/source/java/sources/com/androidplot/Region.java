package com.androidplot;

import com.androidplot.util.FastNumber;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/androidplot/Region.class */
public class Region {
    private FastNumber cachedLength;
    private Region defaults = this;
    private FastNumber max;
    private FastNumber min;

    public Region() {
    }

    public Region(Number number, Number number2) {
        if (number == null || number2 == null || number.doubleValue() >= number2.doubleValue()) {
            setMin(number2);
            setMax(number);
            return;
        }
        setMin(number);
        setMax(number2);
    }

    public static Number measure(Number number, Number number2) {
        return new Region(number, number2).length();
    }

    public static Region withDefaults(Region region) {
        if (region == null || !region.isDefined()) {
            throw new IllegalArgumentException("When specifying default min and max must both be non-null values");
        }
        Region region2 = new Region();
        region2.defaults = region;
        return region2;
    }

    public Number center() {
        return Double.valueOf(getMax().doubleValue() - (length().doubleValue() / 2.0d));
    }

    public boolean contains(Number number) {
        return number.doubleValue() >= getMin().doubleValue() && number.doubleValue() <= getMax().doubleValue();
    }

    public Number getMax() {
        return isMaxSet() ? this.max : this.defaults.max;
    }

    public Number getMin() {
        return isMinSet() ? this.min : this.defaults.min;
    }

    public void intersect(Region region) {
        if (getMin().doubleValue() < region.getMin().doubleValue()) {
            setMin(region.getMin());
        }
        if (getMax().doubleValue() > region.getMax().doubleValue()) {
            setMax(region.getMax());
        }
    }

    public boolean intersects(Region region) {
        return intersects(region.getMin(), region.getMax());
    }

    public boolean intersects(Number number, Number number2) {
        if (number.doubleValue() > getMin().doubleValue() || number2.doubleValue() < getMax().doubleValue()) {
            boolean z = true;
            if (!contains(number)) {
                z = contains(number2);
            }
            return z;
        }
        return true;
    }

    public boolean isDefined() {
        return (this.min == null || this.max == null) ? false : true;
    }

    public boolean isMaxSet() {
        return this.max != null;
    }

    public boolean isMinSet() {
        return this.min != null;
    }

    public Number length() {
        if (this.cachedLength == null) {
            Double valueOf = (getMax() == null || getMin() == null) ? null : Double.valueOf(getMax().doubleValue() - getMin().doubleValue());
            if (valueOf != null) {
                this.cachedLength = FastNumber.orNull(valueOf);
            }
        }
        return this.cachedLength;
    }

    public double ratio(double d, double d2) {
        return length().doubleValue() / (d2 - d);
    }

    public Number ratio(Region region) {
        return Double.valueOf(ratio(region.getMin().doubleValue(), region.getMax().doubleValue()));
    }

    public void setMax(Number number) {
        this.cachedLength = null;
        if (number == null) {
            Objects.requireNonNull(this.defaults, "Region values can never be null unless defaults have been set.");
            this.max = null;
            return;
        }
        FastNumber fastNumber = this.max;
        if (fastNumber != null && fastNumber.equals(number)) {
            return;
        }
        this.max = FastNumber.orNull(number);
    }

    public void setMin(Number number) {
        this.cachedLength = null;
        if (number == null) {
            Objects.requireNonNull(this.defaults, "Region values cannot be null unless defaults have been set.");
            this.min = null;
            return;
        }
        FastNumber fastNumber = this.min;
        if (fastNumber != null && fastNumber.equals(number)) {
            return;
        }
        this.min = FastNumber.orNull(number);
    }

    public void setMinMax(Region region) {
        setMin(region.getMin());
        setMax(region.getMax());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Region{");
        sb.append("min=");
        sb.append(this.min);
        sb.append(", max=");
        sb.append(this.max);
        sb.append(", cachedLength=");
        sb.append(this.cachedLength);
        sb.append(", defaults=");
        Region region = this.defaults;
        if (region != this) {
            sb.append(region);
        } else {
            sb.append("this");
        }
        sb.append('}');
        return sb.toString();
    }

    public double transform(double d, double d2, double d3, boolean z) {
        double doubleValue = (d3 - d2) / length().doubleValue();
        return !z ? d2 + (doubleValue * (d - getMin().doubleValue())) : d3 - (doubleValue * (d - getMin().doubleValue()));
    }

    public Number transform(double d, Region region) {
        return transform(d, region, false);
    }

    public Number transform(double d, Region region, boolean z) {
        return Double.valueOf(transform(d, region.getMin().doubleValue(), region.getMax().doubleValue(), z));
    }

    public void union(Region region) {
        union(region.getMin());
        union(region.getMax());
    }

    public void union(Number number) {
        if (number == null) {
            return;
        }
        double doubleValue = number.doubleValue();
        if (getMin() == null || doubleValue < getMin().doubleValue()) {
            setMin(number);
        }
        if (getMax() != null && doubleValue <= getMax().doubleValue()) {
            return;
        }
        setMax(number);
    }
}
