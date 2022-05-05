package com.google.gson.internal;

import java.io.ObjectStreamException;
import java.math.BigDecimal;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/LazilyParsedNumber.class */
public final class LazilyParsedNumber extends Number {

    /* renamed from: f */
    private final String f11995f;

    public LazilyParsedNumber(String str) {
        this.f11995f = str;
    }

    private Object writeReplace() throws ObjectStreamException {
        return new BigDecimal(this.f11995f);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return Double.parseDouble(this.f11995f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LazilyParsedNumber)) {
            return false;
        }
        String str = this.f11995f;
        String str2 = ((LazilyParsedNumber) obj).f11995f;
        boolean z = true;
        if (str != str2) {
            z = str.equals(str2);
        }
        return z;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return Float.parseFloat(this.f11995f);
    }

    public int hashCode() {
        return this.f11995f.hashCode();
    }

    @Override // java.lang.Number
    public int intValue() {
        try {
            return Integer.parseInt(this.f11995f);
        } catch (NumberFormatException e) {
            try {
                return (int) Long.parseLong(this.f11995f);
            } catch (NumberFormatException e2) {
                return new BigDecimal(this.f11995f).intValue();
            }
        }
    }

    @Override // java.lang.Number
    public long longValue() {
        try {
            return Long.parseLong(this.f11995f);
        } catch (NumberFormatException e) {
            return new BigDecimal(this.f11995f).longValue();
        }
    }

    public String toString() {
        return this.f11995f;
    }
}
