package com.aotter.net.gson;

import com.aotter.net.gson.internal.C$Gson$Preconditions;
import com.aotter.net.gson.internal.LazilyParsedNumber;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/JsonPrimitive.class */
public final class JsonPrimitive extends JsonElement {
    public static final Class<?>[] PRIMITIVE_TYPES = {Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};
    public Object value;

    public JsonPrimitive(Boolean bool) {
        setValue(bool);
    }

    public JsonPrimitive(Character ch) {
        setValue(ch);
    }

    public JsonPrimitive(Number number) {
        setValue(number);
    }

    public JsonPrimitive(Object obj) {
        setValue(obj);
    }

    public JsonPrimitive(String str) {
        setValue(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0039, code lost:
        if ((r0 instanceof java.lang.Byte) != false) goto L_0x003c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isIntegral(com.aotter.net.gson.JsonPrimitive r2) {
        /*
            r0 = r2
            java.lang.Object r0 = r0.value
            r2 = r0
            r0 = r2
            boolean r0 = r0 instanceof java.lang.Number
            r3 = r0
            r0 = 0
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r3
            if (r0 == 0) goto L_0x003e
            r0 = r2
            java.lang.Number r0 = (java.lang.Number) r0
            r2 = r0
            r0 = r2
            boolean r0 = r0 instanceof java.math.BigInteger
            if (r0 != 0) goto L_0x003c
            r0 = r2
            boolean r0 = r0 instanceof java.lang.Long
            if (r0 != 0) goto L_0x003c
            r0 = r2
            boolean r0 = r0 instanceof java.lang.Integer
            if (r0 != 0) goto L_0x003c
            r0 = r2
            boolean r0 = r0 instanceof java.lang.Short
            if (r0 != 0) goto L_0x003c
            r0 = r4
            r5 = r0
            r0 = r2
            boolean r0 = r0 instanceof java.lang.Byte
            if (r0 == 0) goto L_0x003e
        L_0x003c:
            r0 = 1
            r5 = r0
        L_0x003e:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.aotter.net.gson.JsonPrimitive.isIntegral(com.aotter.net.gson.JsonPrimitive):boolean");
    }

    public static boolean isPrimitiveOrString(Object obj) {
        if (obj instanceof String) {
            return true;
        }
        Class<?> cls = obj.getClass();
        for (Class<?> cls2 : PRIMITIVE_TYPES) {
            if (cls2.isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.aotter.net.gson.JsonElement
    public JsonPrimitive deepCopy() {
        return this;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        boolean z2 = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || JsonPrimitive.class != obj.getClass()) {
            return false;
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) obj;
        if (this.value == null) {
            if (jsonPrimitive.value != null) {
                z2 = false;
            }
            return z2;
        } else if (isIntegral(this) && isIntegral(jsonPrimitive)) {
            if (getAsNumber().longValue() != jsonPrimitive.getAsNumber().longValue()) {
                z = false;
            }
            return z;
        } else if (!(this.value instanceof Number) || !(jsonPrimitive.value instanceof Number)) {
            return this.value.equals(jsonPrimitive.value);
        } else {
            double doubleValue = getAsNumber().doubleValue();
            double doubleValue2 = jsonPrimitive.getAsNumber().doubleValue();
            boolean z3 = true;
            if (doubleValue != doubleValue2) {
                z3 = Double.isNaN(doubleValue) && Double.isNaN(doubleValue2);
            }
            return z3;
        }
    }

    @Override // com.aotter.net.gson.JsonElement
    public BigDecimal getAsBigDecimal() {
        Object obj = this.value;
        return obj instanceof BigDecimal ? (BigDecimal) obj : new BigDecimal(obj.toString());
    }

    @Override // com.aotter.net.gson.JsonElement
    public BigInteger getAsBigInteger() {
        Object obj = this.value;
        return obj instanceof BigInteger ? (BigInteger) obj : new BigInteger(obj.toString());
    }

    @Override // com.aotter.net.gson.JsonElement
    public boolean getAsBoolean() {
        return isBoolean() ? getAsBooleanWrapper().booleanValue() : Boolean.parseBoolean(getAsString());
    }

    @Override // com.aotter.net.gson.JsonElement
    public Boolean getAsBooleanWrapper() {
        return (Boolean) this.value;
    }

    @Override // com.aotter.net.gson.JsonElement
    public byte getAsByte() {
        return isNumber() ? getAsNumber().byteValue() : Byte.parseByte(getAsString());
    }

    @Override // com.aotter.net.gson.JsonElement
    public char getAsCharacter() {
        return getAsString().charAt(0);
    }

    @Override // com.aotter.net.gson.JsonElement
    public double getAsDouble() {
        return isNumber() ? getAsNumber().doubleValue() : Double.parseDouble(getAsString());
    }

    @Override // com.aotter.net.gson.JsonElement
    public float getAsFloat() {
        return isNumber() ? getAsNumber().floatValue() : Float.parseFloat(getAsString());
    }

    @Override // com.aotter.net.gson.JsonElement
    public int getAsInt() {
        return isNumber() ? getAsNumber().intValue() : Integer.parseInt(getAsString());
    }

    @Override // com.aotter.net.gson.JsonElement
    public long getAsLong() {
        return isNumber() ? getAsNumber().longValue() : Long.parseLong(getAsString());
    }

    @Override // com.aotter.net.gson.JsonElement
    public Number getAsNumber() {
        Object obj = this.value;
        return obj instanceof String ? new LazilyParsedNumber((String) obj) : (Number) obj;
    }

    @Override // com.aotter.net.gson.JsonElement
    public short getAsShort() {
        return isNumber() ? getAsNumber().shortValue() : Short.parseShort(getAsString());
    }

    @Override // com.aotter.net.gson.JsonElement
    public String getAsString() {
        return isNumber() ? getAsNumber().toString() : isBoolean() ? getAsBooleanWrapper().toString() : (String) this.value;
    }

    public int hashCode() {
        long doubleToLongBits;
        if (this.value == null) {
            return 31;
        }
        if (isIntegral(this)) {
            doubleToLongBits = getAsNumber().longValue();
        } else {
            Object obj = this.value;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            doubleToLongBits = Double.doubleToLongBits(getAsNumber().doubleValue());
        }
        return (int) ((doubleToLongBits >>> 32) ^ doubleToLongBits);
    }

    public boolean isBoolean() {
        return this.value instanceof Boolean;
    }

    public boolean isNumber() {
        return this.value instanceof Number;
    }

    public boolean isString() {
        return this.value instanceof String;
    }

    public void setValue(Object obj) {
        if (obj instanceof Character) {
            obj = String.valueOf(((Character) obj).charValue());
        } else {
            C$Gson$Preconditions.checkArgument((obj instanceof Number) || isPrimitiveOrString(obj));
        }
        this.value = obj;
    }
}
