package com.google.gson.a;

import java.math.BigDecimal;
/* loaded from: classes-dex2jar.jar:com/google/gson/a/f.class */
public final class f extends Number {

    /* renamed from: a  reason: collision with root package name */
    private final String f4514a;

    public f(String str) {
        this.f4514a = str;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return Double.parseDouble(this.f4514a);
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return Float.parseFloat(this.f4514a);
    }

    @Override // java.lang.Number
    public final int intValue() {
        int intValue;
        try {
            intValue = Integer.parseInt(this.f4514a);
        } catch (NumberFormatException e) {
            try {
                intValue = (int) Long.parseLong(this.f4514a);
            } catch (NumberFormatException e2) {
                intValue = new BigDecimal(this.f4514a).intValue();
            }
        }
        return intValue;
    }

    @Override // java.lang.Number
    public final long longValue() {
        long longValue;
        try {
            longValue = Long.parseLong(this.f4514a);
        } catch (NumberFormatException e) {
            longValue = new BigDecimal(this.f4514a).longValue();
        }
        return longValue;
    }

    public final String toString() {
        return this.f4514a;
    }
}
