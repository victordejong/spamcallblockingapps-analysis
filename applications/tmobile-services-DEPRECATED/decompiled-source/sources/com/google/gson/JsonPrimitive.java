package com.google.gson;

import com.google.gson.internal.C$Gson$Preconditions;
import com.google.gson.internal.LazilyParsedNumber;
/* loaded from: classes-dex2jar.jar:com/google/gson/JsonPrimitive.class */
public final class JsonPrimitive extends JsonElement {

    /* renamed from: b */
    private static final Class<?>[] f11957b = {Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};

    /* renamed from: a */
    private Object f11958a;

    public JsonPrimitive(Boolean bool) {
        m8384A(bool);
    }

    public JsonPrimitive(Number number) {
        m8384A(number);
    }

    public JsonPrimitive(String str) {
        m8384A(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0039, code lost:
        if ((r0 instanceof java.lang.Byte) != false) goto L_0x003c;
     */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m8375w(com.google.gson.JsonPrimitive r2) {
        /*
            r0 = r2
            java.lang.Object r0 = r0.f11958a
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.JsonPrimitive.m8375w(com.google.gson.JsonPrimitive):boolean");
    }

    /* renamed from: y */
    private static boolean m8373y(Object obj) {
        if (obj instanceof String) {
            return true;
        }
        Class<?> cls = obj.getClass();
        for (Class<?> cls2 : f11957b) {
            if (cls2.isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: A */
    void m8384A(Object obj) {
        if (obj instanceof Character) {
            this.f11958a = String.valueOf(((Character) obj).charValue());
            return;
        }
        C$Gson$Preconditions.m8367a((obj instanceof Number) || m8373y(obj));
        this.f11958a = obj;
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
        if (this.f11958a == null) {
            if (jsonPrimitive.f11958a != null) {
                z2 = false;
            }
            return z2;
        } else if (m8375w(this) && m8375w(jsonPrimitive)) {
            if (m8378t().longValue() != jsonPrimitive.m8378t().longValue()) {
                z = false;
            }
            return z;
        } else if (!(this.f11958a instanceof Number) || !(jsonPrimitive.f11958a instanceof Number)) {
            return this.f11958a.equals(jsonPrimitive.f11958a);
        } else {
            double doubleValue = m8378t().doubleValue();
            double doubleValue2 = jsonPrimitive.m8378t().doubleValue();
            boolean z3 = true;
            if (doubleValue != doubleValue2) {
                z3 = Double.isNaN(doubleValue) && Double.isNaN(doubleValue2);
            }
            return z3;
        }
    }

    public int hashCode() {
        long doubleToLongBits;
        if (this.f11958a == null) {
            return 31;
        }
        if (m8375w(this)) {
            doubleToLongBits = m8378t().longValue();
        } else {
            Object obj = this.f11958a;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            doubleToLongBits = Double.doubleToLongBits(m8378t().doubleValue());
        }
        return (int) ((doubleToLongBits >>> 32) ^ doubleToLongBits);
    }

    /* renamed from: k */
    public boolean m8383k() {
        return m8376v() ? m8382n().booleanValue() : Boolean.parseBoolean(m8377u());
    }

    /* renamed from: n */
    Boolean m8382n() {
        return (Boolean) this.f11958a;
    }

    /* renamed from: p */
    public double m8381p() {
        return m8374x() ? m8378t().doubleValue() : Double.parseDouble(m8377u());
    }

    /* renamed from: r */
    public int m8380r() {
        return m8374x() ? m8378t().intValue() : Integer.parseInt(m8377u());
    }

    /* renamed from: s */
    public long m8379s() {
        return m8374x() ? m8378t().longValue() : Long.parseLong(m8377u());
    }

    /* renamed from: t */
    public Number m8378t() {
        Object obj = this.f11958a;
        return obj instanceof String ? new LazilyParsedNumber((String) this.f11958a) : (Number) obj;
    }

    /* renamed from: u */
    public String m8377u() {
        return m8374x() ? m8378t().toString() : m8376v() ? m8382n().toString() : (String) this.f11958a;
    }

    /* renamed from: v */
    public boolean m8376v() {
        return this.f11958a instanceof Boolean;
    }

    /* renamed from: x */
    public boolean m8374x() {
        return this.f11958a instanceof Number;
    }

    /* renamed from: z */
    public boolean m8372z() {
        return this.f11958a instanceof String;
    }
}
