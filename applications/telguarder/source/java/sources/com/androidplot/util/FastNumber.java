package com.androidplot.util;
/* loaded from: classes-dex2jar.jar:com/androidplot/util/FastNumber.class */
public class FastNumber extends Number {
    private double doublePrimitive;
    private float floatPrimitive;
    private boolean hasDoublePrimitive;
    private boolean hasFloatPrimitive;
    private boolean hasIntPrimitive;
    private int intPrimitive;
    private final Number number;

    private FastNumber(Number number) {
        if (number != null) {
            if (!(number instanceof FastNumber)) {
                this.number = number;
                return;
            }
            FastNumber fastNumber = (FastNumber) number;
            this.number = fastNumber.number;
            this.hasDoublePrimitive = fastNumber.hasDoublePrimitive;
            this.hasFloatPrimitive = fastNumber.hasFloatPrimitive;
            this.hasIntPrimitive = fastNumber.hasIntPrimitive;
            this.doublePrimitive = fastNumber.doublePrimitive;
            this.floatPrimitive = fastNumber.floatPrimitive;
            this.intPrimitive = fastNumber.intPrimitive;
            return;
        }
        throw new IllegalArgumentException("number parameter cannot be null");
    }

    public static FastNumber orNull(Number number) {
        if (number == null) {
            return null;
        }
        return new FastNumber(number);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        if (!this.hasDoublePrimitive) {
            this.doublePrimitive = this.number.doubleValue();
            this.hasDoublePrimitive = true;
        }
        return this.doublePrimitive;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return this.number.equals(((FastNumber) obj).number);
        }
        return false;
    }

    @Override // java.lang.Number
    public float floatValue() {
        if (!this.hasFloatPrimitive) {
            this.floatPrimitive = this.number.floatValue();
            this.hasFloatPrimitive = true;
        }
        return this.floatPrimitive;
    }

    public int hashCode() {
        return this.number.hashCode();
    }

    @Override // java.lang.Number
    public int intValue() {
        if (!this.hasIntPrimitive) {
            this.intPrimitive = this.number.intValue();
            this.hasIntPrimitive = true;
        }
        return this.intPrimitive;
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.number.longValue();
    }

    public String toString() {
        return String.valueOf(doubleValue());
    }
}
