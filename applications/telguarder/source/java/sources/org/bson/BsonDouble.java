package org.bson;

import java.math.BigDecimal;
import org.bson.types.Decimal128;
/* loaded from: classes-dex2jar.jar:org/bson/BsonDouble.class */
public class BsonDouble extends BsonNumber implements Comparable<BsonDouble> {
    private final double value;

    public BsonDouble(double d) {
        this.value = d;
    }

    public int compareTo(BsonDouble bsonDouble) {
        return Double.compare(this.value, bsonDouble.value);
    }

    @Override // org.bson.BsonNumber
    public Decimal128 decimal128Value() {
        if (Double.isNaN(this.value)) {
            return Decimal128.NaN;
        }
        if (!Double.isInfinite(this.value)) {
            return new Decimal128(new BigDecimal(this.value));
        }
        return this.value > 0.0d ? Decimal128.POSITIVE_INFINITY : Decimal128.NEGATIVE_INFINITY;
    }

    @Override // org.bson.BsonNumber
    public double doubleValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && Double.compare(((BsonDouble) obj).value, this.value) == 0;
    }

    @Override // org.bson.BsonValue
    public BsonType getBsonType() {
        return BsonType.DOUBLE;
    }

    public double getValue() {
        return this.value;
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.value);
        return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
    }

    @Override // org.bson.BsonNumber
    public int intValue() {
        return (int) this.value;
    }

    @Override // org.bson.BsonNumber
    public long longValue() {
        return (long) this.value;
    }

    public String toString() {
        return "BsonDouble{value=" + this.value + '}';
    }
}
