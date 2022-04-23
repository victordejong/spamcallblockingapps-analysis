package com.fasterxml.jackson.databind.util;

import java.lang.reflect.Array;
import java.util.HashSet;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/util/ArrayBuilders.class */
public final class ArrayBuilders {
    private BooleanBuilder _booleanBuilder = null;
    private ByteBuilder _byteBuilder = null;
    private ShortBuilder _shortBuilder = null;
    private IntBuilder _intBuilder = null;
    private LongBuilder _longBuilder = null;
    private FloatBuilder _floatBuilder = null;
    private DoubleBuilder _doubleBuilder = null;

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder.class */
    public static final class BooleanBuilder extends PrimitiveArrayBuilder<boolean[]> {
        @Override // com.fasterxml.jackson.databind.util.PrimitiveArrayBuilder
        public final boolean[] _constructArray(int i) {
            return new boolean[i];
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder.class */
    public static final class ByteBuilder extends PrimitiveArrayBuilder<byte[]> {
        @Override // com.fasterxml.jackson.databind.util.PrimitiveArrayBuilder
        public final byte[] _constructArray(int i) {
            return new byte[i];
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder.class */
    public static final class DoubleBuilder extends PrimitiveArrayBuilder<double[]> {
        @Override // com.fasterxml.jackson.databind.util.PrimitiveArrayBuilder
        public final double[] _constructArray(int i) {
            return new double[i];
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder.class */
    public static final class FloatBuilder extends PrimitiveArrayBuilder<float[]> {
        @Override // com.fasterxml.jackson.databind.util.PrimitiveArrayBuilder
        public final float[] _constructArray(int i) {
            return new float[i];
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder.class */
    public static final class IntBuilder extends PrimitiveArrayBuilder<int[]> {
        @Override // com.fasterxml.jackson.databind.util.PrimitiveArrayBuilder
        public final int[] _constructArray(int i) {
            return new int[i];
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder.class */
    public static final class LongBuilder extends PrimitiveArrayBuilder<long[]> {
        @Override // com.fasterxml.jackson.databind.util.PrimitiveArrayBuilder
        public final long[] _constructArray(int i) {
            return new long[i];
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder.class */
    public static final class ShortBuilder extends PrimitiveArrayBuilder<short[]> {
        @Override // com.fasterxml.jackson.databind.util.PrimitiveArrayBuilder
        public final short[] _constructArray(int i) {
            return new short[i];
        }
    }

    public static <T> HashSet<T> arrayToSet(T[] tArr) {
        if (tArr == null) {
            return new HashSet<>();
        }
        HashSet<T> hashSet = new HashSet<>(tArr.length);
        for (T t : tArr) {
            hashSet.add(t);
        }
        return hashSet;
    }

    public static Object getArrayComparator(final Object obj) {
        final int length = Array.getLength(obj);
        final Class<?> cls = obj.getClass();
        return new Object() { // from class: com.fasterxml.jackson.databind.util.ArrayBuilders.1
            public final boolean equals(Object obj2) {
                if (obj2 == this) {
                    return true;
                }
                if (!(ClassUtil.hasClass(obj2, cls) && Array.getLength(obj2) == length)) {
                    return false;
                }
                for (int i = 0; i < length; i++) {
                    Object obj3 = Array.get(obj, i);
                    Object obj4 = Array.get(obj2, i);
                    if (!(obj3 == obj4 || obj3 == null || obj3.equals(obj4))) {
                        return false;
                    }
                }
                return true;
            }
        };
    }

    public final BooleanBuilder getBooleanBuilder() {
        if (this._booleanBuilder == null) {
            this._booleanBuilder = new BooleanBuilder();
        }
        return this._booleanBuilder;
    }

    public final ByteBuilder getByteBuilder() {
        if (this._byteBuilder == null) {
            this._byteBuilder = new ByteBuilder();
        }
        return this._byteBuilder;
    }

    public final DoubleBuilder getDoubleBuilder() {
        if (this._doubleBuilder == null) {
            this._doubleBuilder = new DoubleBuilder();
        }
        return this._doubleBuilder;
    }

    public final FloatBuilder getFloatBuilder() {
        if (this._floatBuilder == null) {
            this._floatBuilder = new FloatBuilder();
        }
        return this._floatBuilder;
    }

    public final IntBuilder getIntBuilder() {
        if (this._intBuilder == null) {
            this._intBuilder = new IntBuilder();
        }
        return this._intBuilder;
    }

    public final LongBuilder getLongBuilder() {
        if (this._longBuilder == null) {
            this._longBuilder = new LongBuilder();
        }
        return this._longBuilder;
    }

    public final ShortBuilder getShortBuilder() {
        if (this._shortBuilder == null) {
            this._shortBuilder = new ShortBuilder();
        }
        return this._shortBuilder;
    }
}
