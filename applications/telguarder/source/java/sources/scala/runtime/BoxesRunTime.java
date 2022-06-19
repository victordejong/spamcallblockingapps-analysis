package scala.runtime;

import scala.math.ScalaNumber;
/* loaded from: classes3-dex2jar.jar:scala/runtime/BoxesRunTime.class */
public final class BoxesRunTime {
    private static final int CHAR = 0;
    private static final int DOUBLE = 6;
    private static final int FLOAT = 5;
    private static final int INT = 3;
    private static final int LONG = 4;
    private static final int OTHER = 7;

    public static Object add(Object obj, Object obj2) throws NoSuchMethodException {
        int typeCode = typeCode(obj);
        int typeCode2 = typeCode(obj2);
        int i = typeCode < typeCode2 ? typeCode2 : typeCode;
        if (i <= 3) {
            return boxToInteger(unboxCharOrInt(obj, typeCode) + unboxCharOrInt(obj2, typeCode2));
        }
        if (i <= 4) {
            return boxToLong(unboxCharOrLong(obj, typeCode) + unboxCharOrLong(obj2, typeCode2));
        }
        if (i <= 5) {
            return boxToFloat(unboxCharOrFloat(obj, typeCode) + unboxCharOrFloat(obj2, typeCode2));
        }
        if (i > 6) {
            throw new NoSuchMethodException();
        }
        return boxToDouble(unboxCharOrDouble(obj, typeCode) + unboxCharOrDouble(obj2, typeCode2));
    }

    public static Boolean boxToBoolean(boolean z) {
        return Boolean.valueOf(z);
    }

    public static Byte boxToByte(byte b) {
        return Byte.valueOf(b);
    }

    public static Character boxToCharacter(char c) {
        return Character.valueOf(c);
    }

    public static Double boxToDouble(double d) {
        return Double.valueOf(d);
    }

    public static Float boxToFloat(float f) {
        return Float.valueOf(f);
    }

    public static Integer boxToInteger(int i) {
        return Integer.valueOf(i);
    }

    public static Long boxToLong(long j) {
        return Long.valueOf(j);
    }

    public static Short boxToShort(short s) {
        return Short.valueOf(s);
    }

    public static Object complement(Object obj) throws NoSuchMethodException {
        int typeCode = typeCode(obj);
        if (typeCode <= 3) {
            return boxToInteger(unboxCharOrInt(obj, typeCode) ^ (-1));
        }
        if (typeCode > 4) {
            throw new NoSuchMethodException();
        }
        return boxToLong(unboxCharOrLong(obj, typeCode) ^ (-1));
    }

    public static Object divide(Object obj, Object obj2) throws NoSuchMethodException {
        int typeCode = typeCode(obj);
        int typeCode2 = typeCode(obj2);
        int i = typeCode < typeCode2 ? typeCode2 : typeCode;
        if (i <= 3) {
            return boxToInteger(unboxCharOrInt(obj, typeCode) / unboxCharOrInt(obj2, typeCode2));
        }
        if (i <= 4) {
            return boxToLong(unboxCharOrLong(obj, typeCode) / unboxCharOrLong(obj2, typeCode2));
        }
        if (i <= 5) {
            return boxToFloat(unboxCharOrFloat(obj, typeCode) / unboxCharOrFloat(obj2, typeCode2));
        }
        if (i > 6) {
            throw new NoSuchMethodException();
        }
        return boxToDouble(unboxCharOrDouble(obj, typeCode) / unboxCharOrDouble(obj2, typeCode2));
    }

    public static boolean equals(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        return equals2(obj, obj2);
    }

    public static boolean equals2(Object obj, Object obj2) {
        if (obj instanceof Number) {
            return equalsNumObject((Number) obj, obj2);
        }
        if (obj instanceof Character) {
            return equalsCharObject((Character) obj, obj2);
        }
        if (obj != null) {
            return obj.equals(obj2);
        }
        return obj2 == null;
    }

    public static boolean equalsCharObject(Character ch, Object obj) {
        boolean z = true;
        if (obj instanceof Character) {
            if (ch.charValue() != ((Character) obj).charValue()) {
                z = false;
            }
            return z;
        } else if (obj instanceof Number) {
            return equalsNumChar((Number) obj, ch);
        } else {
            if (ch != null) {
                return ch.equals(obj);
            }
            return obj == null;
        }
    }

    private static boolean equalsNumChar(Number number, Character ch) {
        boolean z = true;
        if (ch == null) {
            if (number != null) {
                z = false;
            }
            return z;
        }
        char charValue = ch.charValue();
        int typeCode = typeCode(number);
        if (typeCode == 3) {
            return number.intValue() == charValue;
        } else if (typeCode == 4) {
            return number.longValue() == ((long) charValue);
        } else if (typeCode == 5) {
            return number.floatValue() == ((float) charValue);
        } else if (typeCode != 6) {
            return number.equals(ch);
        } else {
            return number.doubleValue() == ((double) charValue);
        }
    }

    public static boolean equalsNumNum(Number number, Number number2) {
        int typeCode = typeCode(number);
        int typeCode2 = typeCode(number2);
        int i = typeCode;
        if (typeCode2 > typeCode) {
            i = typeCode2;
        }
        boolean z = true;
        if (i == 3) {
            return number.intValue() == number2.intValue();
        } else if (i == 4) {
            return number.longValue() == number2.longValue();
        } else if (i == 5) {
            return number.floatValue() == number2.floatValue();
        } else if (i == 6) {
            return number.doubleValue() == number2.doubleValue();
        } else if ((number2 instanceof ScalaNumber) && !(number instanceof ScalaNumber)) {
            return number2.equals(number);
        } else {
            if (number != null) {
                return number.equals(number2);
            }
            if (number2 != null) {
                z = false;
            }
            return z;
        }
    }

    public static boolean equalsNumObject(Number number, Object obj) {
        if (obj instanceof Number) {
            return equalsNumNum(number, (Number) obj);
        }
        if (obj instanceof Character) {
            return equalsNumChar(number, (Character) obj);
        }
        if (number != null) {
            return number.equals(obj);
        }
        return obj == null;
    }

    public static int hashFromDouble(Double d) {
        int intValue = d.intValue();
        double doubleValue = d.doubleValue();
        if (intValue == doubleValue) {
            return intValue;
        }
        long longValue = d.longValue();
        if (longValue == doubleValue) {
            return Long.valueOf(longValue).hashCode();
        }
        float floatValue = d.floatValue();
        return ((double) floatValue) == doubleValue ? Float.valueOf(floatValue).hashCode() : d.hashCode();
    }

    public static int hashFromFloat(Float f) {
        int intValue = f.intValue();
        float floatValue = f.floatValue();
        if (intValue == floatValue) {
            return intValue;
        }
        long longValue = f.longValue();
        return ((float) longValue) == floatValue ? Long.valueOf(longValue).hashCode() : f.hashCode();
    }

    public static int hashFromLong(Long l) {
        int intValue = l.intValue();
        return ((long) intValue) == l.longValue() ? intValue : l.hashCode();
    }

    public static int hashFromNumber(Number number) {
        return number instanceof Long ? hashFromLong((Long) number) : number instanceof Double ? hashFromDouble((Double) number) : number instanceof Float ? hashFromFloat((Float) number) : number.hashCode();
    }

    public static int hashFromObject(Object obj) {
        return obj instanceof Number ? hashFromNumber((Number) obj) : obj.hashCode();
    }

    public static boolean isBoxedNumber(Object obj) {
        return (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Double) || (obj instanceof Float) || (obj instanceof Short) || (obj instanceof Character) || (obj instanceof Byte);
    }

    public static boolean isBoxedNumberOrBoolean(Object obj) {
        return (obj instanceof Boolean) || isBoxedNumber(obj);
    }

    public static Object multiply(Object obj, Object obj2) throws NoSuchMethodException {
        int typeCode = typeCode(obj);
        int typeCode2 = typeCode(obj2);
        int i = typeCode < typeCode2 ? typeCode2 : typeCode;
        if (i <= 3) {
            return boxToInteger(unboxCharOrInt(obj, typeCode) * unboxCharOrInt(obj2, typeCode2));
        }
        if (i <= 4) {
            return boxToLong(unboxCharOrLong(obj, typeCode) * unboxCharOrLong(obj2, typeCode2));
        }
        if (i <= 5) {
            return boxToFloat(unboxCharOrFloat(obj, typeCode) * unboxCharOrFloat(obj2, typeCode2));
        }
        if (i > 6) {
            throw new NoSuchMethodException();
        }
        return boxToDouble(unboxCharOrDouble(obj, typeCode) * unboxCharOrDouble(obj2, typeCode2));
    }

    public static Object negate(Object obj) throws NoSuchMethodException {
        int typeCode = typeCode(obj);
        if (typeCode <= 3) {
            return boxToInteger(-unboxCharOrInt(obj, typeCode));
        }
        if (typeCode <= 4) {
            return boxToLong(-unboxCharOrLong(obj, typeCode));
        }
        if (typeCode <= 5) {
            return boxToFloat(-unboxCharOrFloat(obj, typeCode));
        }
        if (typeCode > 6) {
            throw new NoSuchMethodException();
        }
        return boxToDouble(-unboxCharOrDouble(obj, typeCode));
    }

    public static Object positive(Object obj) throws NoSuchMethodException {
        int typeCode = typeCode(obj);
        if (typeCode <= 3) {
            return boxToInteger(unboxCharOrInt(obj, typeCode));
        }
        if (typeCode <= 4) {
            return boxToLong(unboxCharOrLong(obj, typeCode));
        }
        if (typeCode <= 5) {
            return boxToFloat(unboxCharOrFloat(obj, typeCode));
        }
        if (typeCode > 6) {
            throw new NoSuchMethodException();
        }
        return boxToDouble(unboxCharOrDouble(obj, typeCode));
    }

    public static Object shiftLogicalRight(Object obj, Object obj2) throws NoSuchMethodException {
        int typeCode = typeCode(obj);
        int typeCode2 = typeCode(obj2);
        if (typeCode <= 3) {
            int unboxCharOrInt = unboxCharOrInt(obj, typeCode);
            if (typeCode2 <= 3) {
                return boxToInteger(unboxCharOrInt >>> unboxCharOrInt(obj2, typeCode2));
            }
            if (typeCode2 <= 4) {
                return boxToInteger(unboxCharOrInt >>> ((int) unboxCharOrLong(obj2, typeCode2)));
            }
        }
        if (typeCode <= 4) {
            long unboxCharOrLong = unboxCharOrLong(obj, typeCode);
            if (typeCode2 <= 3) {
                return boxToLong(unboxCharOrLong >>> unboxCharOrInt(obj2, typeCode2));
            }
            if (typeCode2 <= 4) {
                return boxToLong(unboxCharOrLong >>> ((int) unboxCharOrLong(obj2, typeCode2)));
            }
        }
        throw new NoSuchMethodException();
    }

    public static Object shiftSignedLeft(Object obj, Object obj2) throws NoSuchMethodException {
        int typeCode = typeCode(obj);
        int typeCode2 = typeCode(obj2);
        if (typeCode <= 3) {
            int unboxCharOrInt = unboxCharOrInt(obj, typeCode);
            if (typeCode2 <= 3) {
                return boxToInteger(unboxCharOrInt << unboxCharOrInt(obj2, typeCode2));
            }
            if (typeCode2 <= 4) {
                return boxToInteger(unboxCharOrInt << ((int) unboxCharOrLong(obj2, typeCode2)));
            }
        }
        if (typeCode <= 4) {
            long unboxCharOrLong = unboxCharOrLong(obj, typeCode);
            if (typeCode2 <= 3) {
                return boxToLong(unboxCharOrLong << unboxCharOrInt(obj2, typeCode2));
            }
            if (typeCode2 <= 4) {
                return boxToLong(unboxCharOrLong << ((int) unboxCharOrLong(obj2, typeCode2)));
            }
        }
        throw new NoSuchMethodException();
    }

    public static Object shiftSignedRight(Object obj, Object obj2) throws NoSuchMethodException {
        int typeCode = typeCode(obj);
        int typeCode2 = typeCode(obj2);
        if (typeCode <= 3) {
            int unboxCharOrInt = unboxCharOrInt(obj, typeCode);
            if (typeCode2 <= 3) {
                return boxToInteger(unboxCharOrInt >> unboxCharOrInt(obj2, typeCode2));
            }
            if (typeCode2 <= 4) {
                return boxToInteger(unboxCharOrInt >> ((int) unboxCharOrLong(obj2, typeCode2)));
            }
        }
        if (typeCode <= 4) {
            long unboxCharOrLong = unboxCharOrLong(obj, typeCode);
            if (typeCode2 <= 3) {
                return boxToLong(unboxCharOrLong >> unboxCharOrInt(obj2, typeCode2));
            }
            if (typeCode2 <= 4) {
                return boxToLong(unboxCharOrLong >> ((int) unboxCharOrLong(obj2, typeCode2)));
            }
        }
        throw new NoSuchMethodException();
    }

    public static Object subtract(Object obj, Object obj2) throws NoSuchMethodException {
        int typeCode = typeCode(obj);
        int typeCode2 = typeCode(obj2);
        int i = typeCode < typeCode2 ? typeCode2 : typeCode;
        if (i <= 3) {
            return boxToInteger(unboxCharOrInt(obj, typeCode) - unboxCharOrInt(obj2, typeCode2));
        }
        if (i <= 4) {
            return boxToLong(unboxCharOrLong(obj, typeCode) - unboxCharOrLong(obj2, typeCode2));
        }
        if (i <= 5) {
            return boxToFloat(unboxCharOrFloat(obj, typeCode) - unboxCharOrFloat(obj2, typeCode2));
        }
        if (i > 6) {
            throw new NoSuchMethodException();
        }
        return boxToDouble(unboxCharOrDouble(obj, typeCode) - unboxCharOrDouble(obj2, typeCode2));
    }

    public static Object takeAnd(Object obj, Object obj2) throws NoSuchMethodException {
        boolean z = obj instanceof Boolean;
        if (z || (obj2 instanceof Boolean)) {
            if (z && (obj2 instanceof Boolean)) {
                return boxToBoolean(((Boolean) obj).booleanValue() & ((Boolean) obj2).booleanValue());
            }
            throw new NoSuchMethodException();
        }
        int typeCode = typeCode(obj);
        int typeCode2 = typeCode(obj2);
        int i = typeCode < typeCode2 ? typeCode2 : typeCode;
        if (i <= 3) {
            return boxToInteger(unboxCharOrInt(obj, typeCode) & unboxCharOrInt(obj2, typeCode2));
        }
        if (i > 4) {
            throw new NoSuchMethodException();
        }
        return boxToLong(unboxCharOrLong(obj2, typeCode2) & unboxCharOrLong(obj, typeCode));
    }

    public static Object takeConditionalAnd(Object obj, Object obj2) throws NoSuchMethodException {
        if (!(obj instanceof Boolean) || !(obj2 instanceof Boolean)) {
            throw new NoSuchMethodException();
        }
        return boxToBoolean(((Boolean) obj).booleanValue() && ((Boolean) obj2).booleanValue());
    }

    public static Object takeConditionalOr(Object obj, Object obj2) throws NoSuchMethodException {
        if (!(obj instanceof Boolean) || !(obj2 instanceof Boolean)) {
            throw new NoSuchMethodException();
        }
        return boxToBoolean(((Boolean) obj).booleanValue() || ((Boolean) obj2).booleanValue());
    }

    public static Object takeModulo(Object obj, Object obj2) throws NoSuchMethodException {
        int typeCode = typeCode(obj);
        int typeCode2 = typeCode(obj2);
        int i = typeCode < typeCode2 ? typeCode2 : typeCode;
        if (i <= 3) {
            return boxToInteger(unboxCharOrInt(obj, typeCode) % unboxCharOrInt(obj2, typeCode2));
        }
        if (i <= 4) {
            return boxToLong(unboxCharOrLong(obj, typeCode) % unboxCharOrLong(obj2, typeCode2));
        }
        if (i <= 5) {
            return boxToFloat(unboxCharOrFloat(obj, typeCode) % unboxCharOrFloat(obj2, typeCode2));
        }
        if (i > 6) {
            throw new NoSuchMethodException();
        }
        return boxToDouble(unboxCharOrDouble(obj, typeCode) % unboxCharOrDouble(obj2, typeCode2));
    }

    public static Object takeNot(Object obj) throws NoSuchMethodException {
        if (obj instanceof Boolean) {
            return boxToBoolean(!((Boolean) obj).booleanValue());
        }
        throw new NoSuchMethodException();
    }

    public static Object takeOr(Object obj, Object obj2) throws NoSuchMethodException {
        boolean z = obj instanceof Boolean;
        if (z || (obj2 instanceof Boolean)) {
            if (z && (obj2 instanceof Boolean)) {
                return boxToBoolean(((Boolean) obj).booleanValue() | ((Boolean) obj2).booleanValue());
            }
            throw new NoSuchMethodException();
        }
        int typeCode = typeCode(obj);
        int typeCode2 = typeCode(obj2);
        int i = typeCode < typeCode2 ? typeCode2 : typeCode;
        if (i <= 3) {
            return boxToInteger(unboxCharOrInt(obj, typeCode) | unboxCharOrInt(obj2, typeCode2));
        }
        if (i > 4) {
            throw new NoSuchMethodException();
        }
        return boxToLong(unboxCharOrLong(obj2, typeCode2) | unboxCharOrLong(obj, typeCode));
    }

    public static Object takeXor(Object obj, Object obj2) throws NoSuchMethodException {
        boolean z = obj instanceof Boolean;
        if (z || (obj2 instanceof Boolean)) {
            if (z && (obj2 instanceof Boolean)) {
                return boxToBoolean(((Boolean) obj).booleanValue() ^ ((Boolean) obj2).booleanValue());
            }
            throw new NoSuchMethodException();
        }
        int typeCode = typeCode(obj);
        int typeCode2 = typeCode(obj2);
        int i = typeCode < typeCode2 ? typeCode2 : typeCode;
        if (i <= 3) {
            return boxToInteger(unboxCharOrInt(obj, typeCode) ^ unboxCharOrInt(obj2, typeCode2));
        }
        if (i > 4) {
            throw new NoSuchMethodException();
        }
        return boxToLong(unboxCharOrLong(obj2, typeCode2) ^ unboxCharOrLong(obj, typeCode));
    }

    public static Object testEqual(Object obj, Object obj2) throws NoSuchMethodException {
        return boxToBoolean(obj == obj2);
    }

    public static Object testGreaterOrEqualThan(Object obj, Object obj2) throws NoSuchMethodException {
        int typeCode = typeCode(obj);
        int typeCode2 = typeCode(obj2);
        int i = typeCode < typeCode2 ? typeCode2 : typeCode;
        boolean z = true;
        if (i <= 3) {
            if (unboxCharOrInt(obj, typeCode) < unboxCharOrInt(obj2, typeCode2)) {
                z = false;
            }
            return boxToBoolean(z);
        } else if (i <= 4) {
            return boxToBoolean(unboxCharOrLong(obj, typeCode) >= unboxCharOrLong(obj2, typeCode2));
        } else if (i <= 5) {
            return boxToBoolean(unboxCharOrFloat(obj, typeCode) >= unboxCharOrFloat(obj2, typeCode2));
        } else if (i > 6) {
            throw new NoSuchMethodException();
        } else {
            return boxToBoolean(unboxCharOrDouble(obj, typeCode) >= unboxCharOrDouble(obj2, typeCode2));
        }
    }

    public static Object testGreaterThan(Object obj, Object obj2) throws NoSuchMethodException {
        int typeCode = typeCode(obj);
        int typeCode2 = typeCode(obj2);
        int i = typeCode < typeCode2 ? typeCode2 : typeCode;
        boolean z = true;
        if (i <= 3) {
            if (unboxCharOrInt(obj, typeCode) <= unboxCharOrInt(obj2, typeCode2)) {
                z = false;
            }
            return boxToBoolean(z);
        } else if (i <= 4) {
            return boxToBoolean(unboxCharOrLong(obj, typeCode) > unboxCharOrLong(obj2, typeCode2));
        } else if (i <= 5) {
            return boxToBoolean(unboxCharOrFloat(obj, typeCode) > unboxCharOrFloat(obj2, typeCode2));
        } else if (i > 6) {
            throw new NoSuchMethodException();
        } else {
            return boxToBoolean(unboxCharOrDouble(obj, typeCode) > unboxCharOrDouble(obj2, typeCode2));
        }
    }

    public static Object testLessOrEqualThan(Object obj, Object obj2) throws NoSuchMethodException {
        int typeCode = typeCode(obj);
        int typeCode2 = typeCode(obj2);
        int i = typeCode < typeCode2 ? typeCode2 : typeCode;
        boolean z = true;
        if (i <= 3) {
            if (unboxCharOrInt(obj, typeCode) > unboxCharOrInt(obj2, typeCode2)) {
                z = false;
            }
            return boxToBoolean(z);
        } else if (i <= 4) {
            return boxToBoolean(unboxCharOrLong(obj, typeCode) <= unboxCharOrLong(obj2, typeCode2));
        } else if (i <= 5) {
            return boxToBoolean(unboxCharOrFloat(obj, typeCode) <= unboxCharOrFloat(obj2, typeCode2));
        } else if (i > 6) {
            throw new NoSuchMethodException();
        } else {
            return boxToBoolean(unboxCharOrDouble(obj, typeCode) <= unboxCharOrDouble(obj2, typeCode2));
        }
    }

    public static Object testLessThan(Object obj, Object obj2) throws NoSuchMethodException {
        int typeCode = typeCode(obj);
        int typeCode2 = typeCode(obj2);
        int i = typeCode < typeCode2 ? typeCode2 : typeCode;
        boolean z = true;
        if (i <= 3) {
            if (unboxCharOrInt(obj, typeCode) >= unboxCharOrInt(obj2, typeCode2)) {
                z = false;
            }
            return boxToBoolean(z);
        } else if (i <= 4) {
            return boxToBoolean(unboxCharOrLong(obj, typeCode) < unboxCharOrLong(obj2, typeCode2));
        } else if (i <= 5) {
            return boxToBoolean(unboxCharOrFloat(obj, typeCode) < unboxCharOrFloat(obj2, typeCode2));
        } else if (i > 6) {
            throw new NoSuchMethodException();
        } else {
            return boxToBoolean(unboxCharOrDouble(obj, typeCode) < unboxCharOrDouble(obj2, typeCode2));
        }
    }

    public static Object testNotEqual(Object obj, Object obj2) throws NoSuchMethodException {
        return boxToBoolean(obj != obj2);
    }

    public static Byte toByte(Object obj) throws NoSuchMethodException {
        if (obj instanceof Integer) {
            return boxToByte((byte) unboxToInt(obj));
        }
        if (obj instanceof Character) {
            return boxToByte((byte) unboxToChar(obj));
        }
        if (obj instanceof Byte) {
            return (Byte) obj;
        }
        if (obj instanceof Long) {
            return boxToByte((byte) unboxToLong(obj));
        }
        if (obj instanceof Short) {
            return boxToByte((byte) unboxToShort(obj));
        }
        if (obj instanceof Float) {
            return boxToByte((byte) unboxToFloat(obj));
        }
        if (!(obj instanceof Double)) {
            throw new NoSuchMethodException();
        }
        return boxToByte((byte) unboxToDouble(obj));
    }

    public static Character toCharacter(Object obj) throws NoSuchMethodException {
        if (obj instanceof Integer) {
            return boxToCharacter((char) unboxToInt(obj));
        }
        if (obj instanceof Short) {
            return boxToCharacter((char) unboxToShort(obj));
        }
        if (obj instanceof Character) {
            return (Character) obj;
        }
        if (obj instanceof Long) {
            return boxToCharacter((char) unboxToLong(obj));
        }
        if (obj instanceof Byte) {
            return boxToCharacter((char) unboxToByte(obj));
        }
        if (obj instanceof Float) {
            return boxToCharacter((char) unboxToFloat(obj));
        }
        if (!(obj instanceof Double)) {
            throw new NoSuchMethodException();
        }
        return boxToCharacter((char) unboxToDouble(obj));
    }

    public static Double toDouble(Object obj) throws NoSuchMethodException {
        if (obj instanceof Integer) {
            return boxToDouble(unboxToInt(obj));
        }
        if (obj instanceof Float) {
            return boxToDouble(unboxToFloat(obj));
        }
        if (obj instanceof Double) {
            return (Double) obj;
        }
        if (obj instanceof Long) {
            return boxToDouble(unboxToLong(obj));
        }
        if (obj instanceof Character) {
            return boxToDouble(unboxToChar(obj));
        }
        if (obj instanceof Byte) {
            return boxToDouble(unboxToByte(obj));
        }
        if (!(obj instanceof Short)) {
            throw new NoSuchMethodException();
        }
        return boxToDouble(unboxToShort(obj));
    }

    public static Float toFloat(Object obj) throws NoSuchMethodException {
        if (obj instanceof Integer) {
            return boxToFloat(unboxToInt(obj));
        }
        if (obj instanceof Long) {
            return boxToFloat((float) unboxToLong(obj));
        }
        if (obj instanceof Float) {
            return (Float) obj;
        }
        if (obj instanceof Double) {
            return boxToFloat((float) unboxToDouble(obj));
        }
        if (obj instanceof Character) {
            return boxToFloat(unboxToChar(obj));
        }
        if (obj instanceof Byte) {
            return boxToFloat(unboxToByte(obj));
        }
        if (!(obj instanceof Short)) {
            throw new NoSuchMethodException();
        }
        return boxToFloat(unboxToShort(obj));
    }

    public static Integer toInteger(Object obj) throws NoSuchMethodException {
        if (obj instanceof Integer) {
            return (Integer) obj;
        }
        if (obj instanceof Long) {
            return boxToInteger((int) unboxToLong(obj));
        }
        if (obj instanceof Double) {
            return boxToInteger((int) unboxToDouble(obj));
        }
        if (obj instanceof Float) {
            return boxToInteger((int) unboxToFloat(obj));
        }
        if (obj instanceof Character) {
            return boxToInteger(unboxToChar(obj));
        }
        if (obj instanceof Byte) {
            return boxToInteger(unboxToByte(obj));
        }
        if (!(obj instanceof Short)) {
            throw new NoSuchMethodException();
        }
        return boxToInteger(unboxToShort(obj));
    }

    public static Long toLong(Object obj) throws NoSuchMethodException {
        if (obj instanceof Integer) {
            return boxToLong(unboxToInt(obj));
        }
        if (obj instanceof Double) {
            return boxToLong((long) unboxToDouble(obj));
        }
        if (obj instanceof Float) {
            return boxToLong(unboxToFloat(obj));
        }
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (obj instanceof Character) {
            return boxToLong(unboxToChar(obj));
        }
        if (obj instanceof Byte) {
            return boxToLong(unboxToByte(obj));
        }
        if (!(obj instanceof Short)) {
            throw new NoSuchMethodException();
        }
        return boxToLong(unboxToShort(obj));
    }

    public static Short toShort(Object obj) throws NoSuchMethodException {
        if (obj instanceof Integer) {
            return boxToShort((short) unboxToInt(obj));
        }
        if (obj instanceof Long) {
            return boxToShort((short) unboxToLong(obj));
        }
        if (obj instanceof Character) {
            return boxToShort((short) unboxToChar(obj));
        }
        if (obj instanceof Byte) {
            return boxToShort(unboxToByte(obj));
        }
        if (obj instanceof Short) {
            return (Short) obj;
        }
        if (obj instanceof Float) {
            return boxToShort((short) unboxToFloat(obj));
        }
        if (!(obj instanceof Double)) {
            throw new NoSuchMethodException();
        }
        return boxToShort((short) unboxToDouble(obj));
    }

    private static int typeCode(Object obj) {
        if (obj instanceof Integer) {
            return 3;
        }
        if (obj instanceof Double) {
            return 6;
        }
        if (obj instanceof Long) {
            return 4;
        }
        if (obj instanceof Character) {
            return 0;
        }
        if (obj instanceof Float) {
            return 5;
        }
        return ((obj instanceof Byte) || (obj instanceof Short)) ? 3 : 7;
    }

    private static double unboxCharOrDouble(Object obj, int i) {
        return i == 0 ? ((Character) obj).charValue() : ((Number) obj).doubleValue();
    }

    private static float unboxCharOrFloat(Object obj, int i) {
        return i == 0 ? ((Character) obj).charValue() : ((Number) obj).floatValue();
    }

    private static int unboxCharOrInt(Object obj, int i) {
        return i == 0 ? ((Character) obj).charValue() : ((Number) obj).intValue();
    }

    private static long unboxCharOrLong(Object obj, int i) {
        return i == 0 ? ((Character) obj).charValue() : ((Number) obj).longValue();
    }

    public static boolean unboxToBoolean(Object obj) {
        return obj == null ? false : ((Boolean) obj).booleanValue();
    }

    public static byte unboxToByte(Object obj) {
        return obj == null ? (byte) 0 : ((Byte) obj).byteValue();
    }

    public static char unboxToChar(Object obj) {
        return obj == null ? (char) 0 : ((Character) obj).charValue();
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [double] */
    public static double unboxToDouble(Object obj) {
        return obj == null ? (char) 0 : ((Double) obj).doubleValue();
    }

    public static float unboxToFloat(Object obj) {
        return obj == null ? 0.0f : ((Float) obj).floatValue();
    }

    public static int unboxToInt(Object obj) {
        return obj == null ? 0 : ((Integer) obj).intValue();
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    public static long unboxToLong(Object obj) {
        return obj == null ? (char) 0 : ((Long) obj).longValue();
    }

    public static short unboxToShort(Object obj) {
        return obj == null ? (short) 0 : ((Short) obj).shortValue();
    }
}
