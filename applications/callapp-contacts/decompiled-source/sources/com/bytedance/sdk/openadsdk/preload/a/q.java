package com.bytedance.sdk.openadsdk.preload.a;

import com.bytedance.sdk.openadsdk.preload.a.b.a;
import com.bytedance.sdk.openadsdk.preload.a.b.g;
import java.math.BigInteger;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/q.class */
public final class q extends l {

    /* renamed from: a  reason: collision with root package name */
    private final Object f10091a;

    public q(Boolean bool) {
        this.f10091a = a.a(bool);
    }

    public q(Number number) {
        this.f10091a = a.a(number);
    }

    public q(String str) {
        this.f10091a = a.a(str);
    }

    private static boolean a(q qVar) {
        Object obj = qVar.f10091a;
        if (!(obj instanceof Number)) {
            return false;
        }
        Number number = (Number) obj;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.l
    public final Number a() {
        Object obj = this.f10091a;
        return obj instanceof String ? new g((String) this.f10091a) : (Number) obj;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.l
    public final String b() {
        return o() ? a().toString() : n() ? ((Boolean) this.f10091a).toString() : (String) this.f10091a;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.l
    public final double c() {
        return o() ? a().doubleValue() : Double.parseDouble(b());
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.l
    public final long d() {
        return o() ? a().longValue() : Long.parseLong(b());
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.l
    public final int e() {
        return o() ? a().intValue() : Integer.parseInt(b());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        q qVar = (q) obj;
        if (this.f10091a == null) {
            return qVar.f10091a == null;
        }
        if (a(this) && a(qVar)) {
            return a().longValue() == qVar.a().longValue();
        }
        Object obj2 = this.f10091a;
        if (!(obj2 instanceof Number) || !(qVar.f10091a instanceof Number)) {
            return obj2.equals(qVar.f10091a);
        }
        double doubleValue = a().doubleValue();
        double doubleValue2 = qVar.a().doubleValue();
        if (doubleValue != doubleValue2) {
            return Double.isNaN(doubleValue) && Double.isNaN(doubleValue2);
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.l
    public final boolean f() {
        return n() ? ((Boolean) this.f10091a).booleanValue() : Boolean.parseBoolean(b());
    }

    public final int hashCode() {
        long doubleToLongBits;
        if (this.f10091a == null) {
            return 31;
        }
        if (a(this)) {
            doubleToLongBits = a().longValue();
        } else {
            Object obj = this.f10091a;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            doubleToLongBits = Double.doubleToLongBits(a().doubleValue());
        }
        return (int) ((doubleToLongBits >>> 32) ^ doubleToLongBits);
    }

    public final boolean n() {
        return this.f10091a instanceof Boolean;
    }

    public final boolean o() {
        return this.f10091a instanceof Number;
    }

    public final boolean p() {
        return this.f10091a instanceof String;
    }
}
