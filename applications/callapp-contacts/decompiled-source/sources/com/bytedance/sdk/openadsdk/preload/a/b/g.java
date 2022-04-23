package com.bytedance.sdk.openadsdk.preload.a.b;

import java.math.BigDecimal;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/g.class */
public final class g extends Number {

    /* renamed from: a  reason: collision with root package name */
    private final String f10031a;

    public g(String str) {
        this.f10031a = str;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return Double.parseDouble(this.f10031a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        String str = this.f10031a;
        String str2 = ((g) obj).f10031a;
        return str == str2 || str.equals(str2);
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return Float.parseFloat(this.f10031a);
    }

    public final int hashCode() {
        return this.f10031a.hashCode();
    }

    @Override // java.lang.Number
    public final int intValue() {
        try {
            return Integer.parseInt(this.f10031a);
        } catch (NumberFormatException e) {
            try {
                return (int) Long.parseLong(this.f10031a);
            } catch (NumberFormatException e2) {
                return new BigDecimal(this.f10031a).intValue();
            }
        }
    }

    @Override // java.lang.Number
    public final long longValue() {
        try {
            return Long.parseLong(this.f10031a);
        } catch (NumberFormatException e) {
            return new BigDecimal(this.f10031a).longValue();
        }
    }

    public final String toString() {
        return this.f10031a;
    }
}
