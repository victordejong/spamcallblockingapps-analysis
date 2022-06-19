package org.bson.codecs;

import java.math.BigDecimal;
import org.bson.BsonInvalidOperationException;
import org.bson.BsonReader;
import org.bson.BsonType;
import org.bson.types.Decimal128;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/NumberCodecHelper.class */
final class NumberCodecHelper {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.bson.codecs.NumberCodecHelper$1 */
    /* loaded from: classes-dex2jar.jar:org/bson/codecs/NumberCodecHelper$1.class */
    public static /* synthetic */ class C25381 {
        static final /* synthetic */ int[] $SwitchMap$org$bson$BsonType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[BsonType.values().length];
            $SwitchMap$org$bson$BsonType = iArr;
            try {
                iArr[BsonType.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.INT64.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.DECIMAL128.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    private NumberCodecHelper() {
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [double] */
    /* JADX WARN: Type inference failed for: r0v20, types: [double] */
    /* JADX WARN: Type inference failed for: r0v28, types: [double] */
    /* JADX WARN: Type inference failed for: r0v8, types: [double] */
    public static double decodeDouble(BsonReader bsonReader) {
        char c;
        BsonType currentBsonType = bsonReader.getCurrentBsonType();
        int i = C25381.$SwitchMap$org$bson$BsonType[currentBsonType.ordinal()];
        if (i == 1) {
            c = bsonReader.readInt32();
        } else if (i == 2) {
            long readInt64 = bsonReader.readInt64();
            c = readInt64;
            if (readInt64 != c) {
                throw invalidConversion(Double.class, Long.valueOf(readInt64));
            }
        } else if (i == 3) {
            c = bsonReader.readDouble();
        } else if (i != 4) {
            throw new BsonInvalidOperationException(String.format("Invalid numeric type, found: %s", currentBsonType));
        } else {
            Decimal128 readDecimal128 = bsonReader.readDecimal128();
            try {
                c = readDecimal128.doubleValue();
                if (!readDecimal128.equals(new Decimal128(new BigDecimal((double) c)))) {
                    throw invalidConversion(Double.class, readDecimal128);
                }
            } catch (NumberFormatException e) {
                throw invalidConversion(Double.class, readDecimal128);
            }
        }
        return c;
    }

    public static int decodeInt(BsonReader bsonReader) {
        int i;
        BsonType currentBsonType = bsonReader.getCurrentBsonType();
        int i2 = C25381.$SwitchMap$org$bson$BsonType[currentBsonType.ordinal()];
        if (i2 == 1) {
            i = bsonReader.readInt32();
        } else if (i2 == 2) {
            long readInt64 = bsonReader.readInt64();
            i = (int) readInt64;
            if (readInt64 != i) {
                throw invalidConversion(Integer.class, Long.valueOf(readInt64));
            }
        } else if (i2 == 3) {
            double readDouble = bsonReader.readDouble();
            i = (int) readDouble;
            if (readDouble != i) {
                throw invalidConversion(Integer.class, Double.valueOf(readDouble));
            }
        } else if (i2 != 4) {
            throw new BsonInvalidOperationException(String.format("Invalid numeric type, found: %s", currentBsonType));
        } else {
            Decimal128 readDecimal128 = bsonReader.readDecimal128();
            i = readDecimal128.intValue();
            if (!readDecimal128.equals(new Decimal128(i))) {
                throw invalidConversion(Integer.class, readDecimal128);
            }
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    public static long decodeLong(BsonReader bsonReader) {
        char c;
        BsonType currentBsonType = bsonReader.getCurrentBsonType();
        int i = C25381.$SwitchMap$org$bson$BsonType[currentBsonType.ordinal()];
        if (i == 1) {
            c = bsonReader.readInt32();
        } else if (i == 2) {
            c = bsonReader.readInt64();
        } else if (i == 3) {
            double readDouble = bsonReader.readDouble();
            c = (long) readDouble;
            if (readDouble != c) {
                throw invalidConversion(Long.class, Double.valueOf(readDouble));
            }
        } else if (i != 4) {
            throw new BsonInvalidOperationException(String.format("Invalid numeric type, found: %s", currentBsonType));
        } else {
            Decimal128 readDecimal128 = bsonReader.readDecimal128();
            c = readDecimal128.longValue();
            if (!readDecimal128.equals(new Decimal128(c))) {
                throw invalidConversion(Long.class, readDecimal128);
            }
        }
        return c;
    }

    private static <T extends Number> BsonInvalidOperationException invalidConversion(Class<T> cls, Number number) {
        return new BsonInvalidOperationException(String.format("Could not convert `%s` to a %s without losing precision", number, cls));
    }
}
