package com.google.gson.internal;

import java.io.ObjectStreamException;
import java.math.BigDecimal;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/f.class */
public final class f extends Number {

    /* renamed from: a  reason: collision with root package name */
    private final String f32793a;

    public f(String str) {
        this.f32793a = str;
    }

    private Object writeReplace() throws ObjectStreamException {
        return new BigDecimal(this.f32793a);
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return Double.parseDouble(this.f32793a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        String str = this.f32793a;
        String str2 = ((f) obj).f32793a;
        return str == str2 || str.equals(str2);
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return Float.parseFloat(this.f32793a);
    }

    public final int hashCode() {
        return this.f32793a.hashCode();
    }

    @Override // java.lang.Number
    public final int intValue() {
        try {
            return Integer.parseInt(this.f32793a);
        } catch (NumberFormatException e) {
            try {
                return (int) Long.parseLong(this.f32793a);
            } catch (NumberFormatException e2) {
                return new BigDecimal(this.f32793a).intValue();
            }
        }
    }

    @Override // java.lang.Number
    public final long longValue() {
        try {
            return Long.parseLong(this.f32793a);
        } catch (NumberFormatException e) {
            return new BigDecimal(this.f32793a).longValue();
        }
    }

    public final String toString() {
        return this.f32793a;
    }
}
