package com.google.gson;

import com.google.gson.internal.a;
import com.google.gson.internal.f;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/gson/JsonPrimitive.class */
public final class JsonPrimitive extends JsonElement {
    private final Object value;

    public JsonPrimitive(Boolean bool) {
        this.value = a.a(bool);
    }

    public JsonPrimitive(Character ch) {
        this.value = ((Character) a.a(ch)).toString();
    }

    public JsonPrimitive(Number number) {
        this.value = a.a(number);
    }

    public JsonPrimitive(String str) {
        this.value = a.a(str);
    }

    private static boolean isIntegral(JsonPrimitive jsonPrimitive) {
        Object obj = jsonPrimitive.value;
        if (!(obj instanceof Number)) {
            return false;
        }
        Number number = (Number) obj;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    @Override // com.google.gson.JsonElement
    public final JsonPrimitive deepCopy() {
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) obj;
        if (this.value == null) {
            return jsonPrimitive.value == null;
        }
        if (isIntegral(this) && isIntegral(jsonPrimitive)) {
            return getAsNumber().longValue() == jsonPrimitive.getAsNumber().longValue();
        }
        Object obj2 = this.value;
        if (!(obj2 instanceof Number) || !(jsonPrimitive.value instanceof Number)) {
            return obj2.equals(jsonPrimitive.value);
        }
        double doubleValue = getAsNumber().doubleValue();
        double doubleValue2 = jsonPrimitive.getAsNumber().doubleValue();
        if (doubleValue != doubleValue2) {
            return Double.isNaN(doubleValue) && Double.isNaN(doubleValue2);
        }
        return true;
    }

    @Override // com.google.gson.JsonElement
    public final BigDecimal getAsBigDecimal() {
        Object obj = this.value;
        return obj instanceof BigDecimal ? (BigDecimal) obj : new BigDecimal(this.value.toString());
    }

    @Override // com.google.gson.JsonElement
    public final BigInteger getAsBigInteger() {
        Object obj = this.value;
        return obj instanceof BigInteger ? (BigInteger) obj : new BigInteger(this.value.toString());
    }

    @Override // com.google.gson.JsonElement
    public final boolean getAsBoolean() {
        return isBoolean() ? ((Boolean) this.value).booleanValue() : Boolean.parseBoolean(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public final byte getAsByte() {
        return isNumber() ? getAsNumber().byteValue() : Byte.parseByte(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public final char getAsCharacter() {
        return getAsString().charAt(0);
    }

    @Override // com.google.gson.JsonElement
    public final double getAsDouble() {
        return isNumber() ? getAsNumber().doubleValue() : Double.parseDouble(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public final float getAsFloat() {
        return isNumber() ? getAsNumber().floatValue() : Float.parseFloat(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public final int getAsInt() {
        return isNumber() ? getAsNumber().intValue() : Integer.parseInt(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public final long getAsLong() {
        return isNumber() ? getAsNumber().longValue() : Long.parseLong(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public final Number getAsNumber() {
        Object obj = this.value;
        return obj instanceof String ? new f((String) this.value) : (Number) obj;
    }

    @Override // com.google.gson.JsonElement
    public final short getAsShort() {
        return isNumber() ? getAsNumber().shortValue() : Short.parseShort(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public final String getAsString() {
        return isNumber() ? getAsNumber().toString() : isBoolean() ? ((Boolean) this.value).toString() : (String) this.value;
    }

    public final int hashCode() {
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

    public final boolean isBoolean() {
        return this.value instanceof Boolean;
    }

    public final boolean isNumber() {
        return this.value instanceof Number;
    }

    public final boolean isString() {
        return this.value instanceof String;
    }
}
