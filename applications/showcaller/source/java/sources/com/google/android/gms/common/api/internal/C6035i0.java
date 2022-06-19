package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.AbstractC6113d;
import com.google.android.gms.common.internal.C6158p;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.util.C6224b;
import com.google.android.gms.tasks.AbstractC7958c;
import com.google.android.gms.tasks.AbstractC7966g;
/* renamed from: com.google.android.gms.common.api.internal.i0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/i0.class */
public final class C6035i0<T> implements AbstractC7958c<T> {

    /* renamed from: a */
    private final C6025f f19295a;

    /* renamed from: b */
    private final int f19296b;

    /* renamed from: c */
    private final C6012b<?> f19297c;

    /* renamed from: d */
    private final long f19298d;

    C6035i0(C6025f c6025f, int i, C6012b<?> c6012b, long j, String str, String str2) {
        this.f19295a = c6025f;
        this.f19296b = i;
        this.f19297c = c6012b;
        this.f19298d = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* renamed from: b */
    public static <T> C6035i0<T> m17322b(C6025f c6025f, int i, C6012b<?> c6012b) {
        boolean z;
        if (!c6025f.m17347w()) {
            return null;
        }
        RootTelemetryConfiguration m17005a = C6158p.m17004b().m17005a();
        if (m17005a == null) {
            z = true;
        } else if (!m17005a.m17152m0()) {
            return null;
        } else {
            boolean m17151n0 = m17005a.m17151n0();
            C6017c0 m17351s = c6025f.m17351s(c6012b);
            z = m17151n0;
            if (m17351s != null) {
                if (!(m17351s.m17396s() instanceof AbstractC6113d)) {
                    return null;
                }
                AbstractC6113d abstractC6113d = (AbstractC6113d) m17351s.m17396s();
                z = m17151n0;
                if (abstractC6113d.m17129I()) {
                    z = m17151n0;
                    if (!abstractC6113d.m17103f()) {
                        ConnectionTelemetryConfiguration m17321c = m17321c(m17351s, abstractC6113d, i);
                        if (m17321c == null) {
                            return null;
                        }
                        m17351s.m17422F();
                        z = m17321c.m17157o0();
                    }
                }
            }
        }
        return new C6035i0<>(c6025f, i, c6012b, (z ? System.currentTimeMillis() : false) == true ? 1L : 0L, null, null);
    }

    /* renamed from: c */
    private static ConnectionTelemetryConfiguration m17321c(C6017c0<?> c6017c0, AbstractC6113d<?> abstractC6113d, int i) {
        ConnectionTelemetryConfiguration m17130G = abstractC6113d.m17130G();
        if (m17130G == null || !m17130G.m17158n0()) {
            return null;
        }
        int[] m17160l0 = m17130G.m17160l0();
        if (m17160l0 == null) {
            int[] m17159m0 = m17130G.m17159m0();
            if (m17159m0 != null && C6224b.m16830b(m17159m0, i)) {
                return null;
            }
        } else if (!C6224b.m16830b(m17160l0, i)) {
            return null;
        }
        if (c6017c0.m17423E() >= m17130G.m17161k0()) {
            return null;
        }
        return m17130G;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r29v0 */
    /* JADX WARN: Type inference failed for: r29v1 */
    /* JADX WARN: Type inference failed for: r29v2 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r7v0 */
    @Override // com.google.android.gms.tasks.AbstractC7958c
    /* renamed from: a */
    public final void mo1124a(AbstractC7966g<T> abstractC7966g) {
        C6017c0 m17351s;
        int i;
        int i2;
        int i3;
        boolean z;
        int i4;
        int i5;
        ?? r29;
        ?? r19;
        if (!this.f19295a.m17347w()) {
            return;
        }
        RootTelemetryConfiguration m17005a = C6158p.m17004b().m17005a();
        if ((m17005a != null && !m17005a.m17152m0()) || (m17351s = this.f19295a.m17351s(this.f19297c)) == null || !(m17351s.m17396s() instanceof AbstractC6113d)) {
            return;
        }
        AbstractC6113d abstractC6113d = (AbstractC6113d) m17351s.m17396s();
        boolean z2 = this.f19298d > 0;
        int m17088y = abstractC6113d.m17088y();
        if (m17005a != null) {
            boolean m17151n0 = z2 & m17005a.m17151n0();
            i2 = m17005a.m17154k0();
            int m17153l0 = m17005a.m17153l0();
            i = m17005a.m17150o0();
            boolean z3 = m17151n0;
            int i6 = m17153l0;
            if (abstractC6113d.m17129I()) {
                z3 = m17151n0;
                i6 = m17153l0;
                if (!abstractC6113d.m17103f()) {
                    ConnectionTelemetryConfiguration m17321c = m17321c(m17351s, abstractC6113d, this.f19296b);
                    if (m17321c == null) {
                        return;
                    }
                    z3 = m17321c.m17157o0() && this.f19298d > 0;
                    i6 = m17321c.m17161k0();
                }
            }
            i3 = i6;
            z = z3;
        } else {
            i = 0;
            i2 = 5000;
            i3 = 100;
            z = z2;
        }
        C6025f c6025f = this.f19295a;
        if (abstractC7966g.mo5810q()) {
            i5 = 0;
            i4 = 0;
        } else {
            if (abstractC7966g.mo5812o()) {
                i5 = 100;
            } else {
                Exception mo5815l = abstractC7966g.mo5815l();
                if (mo5815l instanceof ApiException) {
                    Status status = ((ApiException) mo5815l).getStatus();
                    int m17489m0 = status.m17489m0();
                    ConnectionResult m17491k0 = status.m17491k0();
                    i4 = m17491k0 == null ? -1 : m17491k0.m17506k0();
                    i5 = m17489m0;
                } else {
                    i5 = 101;
                }
            }
            i4 = -1;
        }
        if (z) {
            r19 = this.f19298d;
            r29 = System.currentTimeMillis();
        } else {
            r19 = false;
            r29 = false;
        }
        c6025f.m17344z(new MethodInvocation(this.f19296b, i5, i4, r19 == true ? 1L : 0L, r29 == true ? 1L : 0L, null, null, m17088y), i, i2, i3);
    }
}
