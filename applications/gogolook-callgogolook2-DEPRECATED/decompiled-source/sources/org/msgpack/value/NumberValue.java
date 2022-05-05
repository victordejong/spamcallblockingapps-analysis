package org.msgpack.value;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/msgpack/value/NumberValue.class */
public interface NumberValue extends Value {
    BigInteger toBigInteger();

    byte toByte();

    double toDouble();

    float toFloat();

    int toInt();

    long toLong();

    short toShort();
}
