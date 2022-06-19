package com.google.gson.internal;

import java.io.ObjectStreamException;
import java.math.BigDecimal;
/* renamed from: com.google.gson.internal.f */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/f.class */
public final class C16068f extends Number {

    /* renamed from: a */
    private final String f56813a;

    public C16068f(String str) {
        this.f56813a = str;
    }

    private Object writeReplace() throws ObjectStreamException {
        return new BigDecimal(this.f56813a);
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return Double.parseDouble(this.f56813a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C16068f)) {
            return false;
        }
        String str = this.f56813a;
        String str2 = ((C16068f) obj).f56813a;
        return str == str2 || str.equals(str2);
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return Float.parseFloat(this.f56813a);
    }

    public final int hashCode() {
        return this.f56813a.hashCode();
    }

    @Override // java.lang.Number
    public final int intValue() {
        try {
            return Integer.parseInt(this.f56813a);
        } catch (NumberFormatException e) {
            try {
                return (int) Long.parseLong(this.f56813a);
            } catch (NumberFormatException e2) {
                return new BigDecimal(this.f56813a).intValue();
            }
        }
    }

    @Override // java.lang.Number
    public final long longValue() {
        try {
            return Long.parseLong(this.f56813a);
        } catch (NumberFormatException e) {
            return new BigDecimal(this.f56813a).longValue();
        }
    }

    public final String toString() {
        return this.f56813a;
    }
}
