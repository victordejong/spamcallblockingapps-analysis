package com.bytedance.sdk.openadsdk.preload.p193a.p195b;

import java.math.BigDecimal;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/g.class */
public final class C5215g extends Number {

    /* renamed from: a */
    private final String f18573a;

    public C5215g(String str) {
        this.f18573a = str;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return Double.parseDouble(this.f18573a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C5215g)) {
            return false;
        }
        String str = this.f18573a;
        String str2 = ((C5215g) obj).f18573a;
        return str == str2 || str.equals(str2);
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return Float.parseFloat(this.f18573a);
    }

    public final int hashCode() {
        return this.f18573a.hashCode();
    }

    @Override // java.lang.Number
    public final int intValue() {
        try {
            return Integer.parseInt(this.f18573a);
        } catch (NumberFormatException e) {
            try {
                return (int) Long.parseLong(this.f18573a);
            } catch (NumberFormatException e2) {
                return new BigDecimal(this.f18573a).intValue();
            }
        }
    }

    @Override // java.lang.Number
    public final long longValue() {
        try {
            return Long.parseLong(this.f18573a);
        } catch (NumberFormatException e) {
            return new BigDecimal(this.f18573a).longValue();
        }
    }

    public final String toString() {
        return this.f18573a;
    }
}
