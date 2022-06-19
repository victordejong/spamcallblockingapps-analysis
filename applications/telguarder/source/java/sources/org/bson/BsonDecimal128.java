package org.bson;

import org.bson.assertions.Assertions;
import org.bson.types.Decimal128;
/* loaded from: classes-dex2jar.jar:org/bson/BsonDecimal128.class */
public final class BsonDecimal128 extends BsonNumber {
    private final Decimal128 value;

    public BsonDecimal128(Decimal128 decimal128) {
        Assertions.notNull("value", decimal128);
        this.value = decimal128;
    }

    @Override // org.bson.BsonNumber
    public Decimal128 decimal128Value() {
        return this.value;
    }

    @Override // org.bson.BsonNumber
    public double doubleValue() {
        return this.value.bigDecimalValue().doubleValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.value.equals(((BsonDecimal128) obj).value);
    }

    @Override // org.bson.BsonValue
    public BsonType getBsonType() {
        return BsonType.DECIMAL128;
    }

    public Decimal128 getValue() {
        return this.value;
    }

    public int hashCode() {
        return this.value.hashCode();
    }

    @Override // org.bson.BsonNumber
    public int intValue() {
        return this.value.bigDecimalValue().intValue();
    }

    @Override // org.bson.BsonNumber
    public long longValue() {
        return this.value.bigDecimalValue().longValue();
    }

    public String toString() {
        return "BsonDecimal128{value=" + this.value + '}';
    }
}
