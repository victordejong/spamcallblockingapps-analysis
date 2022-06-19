package org.bson;

import org.bson.types.Decimal128;
/* loaded from: classes-dex2jar.jar:org/bson/BsonNumber.class */
public abstract class BsonNumber extends BsonValue {
    public abstract Decimal128 decimal128Value();

    public abstract double doubleValue();

    public abstract int intValue();

    public abstract long longValue();
}
