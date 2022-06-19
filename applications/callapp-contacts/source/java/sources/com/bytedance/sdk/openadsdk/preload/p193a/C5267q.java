package com.bytedance.sdk.openadsdk.preload.p193a;

import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5118a;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5215g;
import java.math.BigInteger;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.q */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/q.class */
public final class C5267q extends AbstractC5262l {

    /* renamed from: a */
    private final Object f18701a;

    public C5267q(Boolean bool) {
        this.f18701a = C5118a.m32987a(bool);
    }

    public C5267q(Number number) {
        this.f18701a = C5118a.m32987a(number);
    }

    public C5267q(String str) {
        this.f18701a = C5118a.m32987a(str);
    }

    /* renamed from: a */
    private static boolean m32687a(C5267q c5267q) {
        Object obj = c5267q.f18701a;
        if (obj instanceof Number) {
            Number number = (Number) obj;
            return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5262l
    /* renamed from: a */
    public final Number mo32688a() {
        Object obj = this.f18701a;
        return obj instanceof String ? new C5215g((String) this.f18701a) : (Number) obj;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5262l
    /* renamed from: b */
    public final String mo32686b() {
        return m32680o() ? mo32688a().toString() : m32681n() ? ((Boolean) this.f18701a).toString() : (String) this.f18701a;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5262l
    /* renamed from: c */
    public final double mo32685c() {
        return m32680o() ? mo32688a().doubleValue() : Double.parseDouble(mo32686b());
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5262l
    /* renamed from: d */
    public final long mo32684d() {
        return m32680o() ? mo32688a().longValue() : Long.parseLong(mo32686b());
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5262l
    /* renamed from: e */
    public final int mo32683e() {
        return m32680o() ? mo32688a().intValue() : Integer.parseInt(mo32686b());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C5267q c5267q = (C5267q) obj;
        if (this.f18701a == null) {
            return c5267q.f18701a == null;
        } else if (m32687a(this) && m32687a(c5267q)) {
            return mo32688a().longValue() == c5267q.mo32688a().longValue();
        } else {
            Object obj2 = this.f18701a;
            if (!(obj2 instanceof Number) || !(c5267q.f18701a instanceof Number)) {
                return obj2.equals(c5267q.f18701a);
            }
            double doubleValue = mo32688a().doubleValue();
            double doubleValue2 = c5267q.mo32688a().doubleValue();
            if (doubleValue == doubleValue2) {
                return true;
            }
            return Double.isNaN(doubleValue) && Double.isNaN(doubleValue2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5262l
    /* renamed from: f */
    public final boolean mo32682f() {
        return m32681n() ? ((Boolean) this.f18701a).booleanValue() : Boolean.parseBoolean(mo32686b());
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    public final int hashCode() {
        char doubleToLongBits;
        if (this.f18701a == null) {
            return 31;
        }
        if (m32687a(this)) {
            doubleToLongBits = mo32688a().longValue();
        } else {
            Object obj = this.f18701a;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            doubleToLongBits = Double.doubleToLongBits(mo32688a().doubleValue());
        }
        return (int) ((doubleToLongBits >>> ' ') ^ doubleToLongBits);
    }

    /* renamed from: n */
    public final boolean m32681n() {
        return this.f18701a instanceof Boolean;
    }

    /* renamed from: o */
    public final boolean m32680o() {
        return this.f18701a instanceof Number;
    }

    /* renamed from: p */
    public final boolean m32679p() {
        return this.f18701a instanceof String;
    }
}
