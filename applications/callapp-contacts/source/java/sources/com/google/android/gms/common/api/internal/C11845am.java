package com.google.android.gms.common.api.internal;

import android.os.Handler;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.AbstractC12025d;
import com.google.android.gms.common.internal.C12046p;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.util.C12098b;
import com.google.android.gms.tasks.AbstractC14181d;
import com.google.android.gms.tasks.AbstractC14185h;
/* renamed from: com.google.android.gms.common.api.internal.am */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/am.class */
public final class C11845am<T> implements AbstractC14181d<T> {

    /* renamed from: a */
    private final C11896f f39244a;

    /* renamed from: b */
    private final int f39245b;

    /* renamed from: c */
    private final C11859b<?> f39246c;

    /* renamed from: d */
    private final long f39247d;

    C11845am(C11896f c11896f, int i, C11859b<?> c11859b, long j, String str, String str2) {
        this.f39244a = c11896f;
        this.f39245b = i;
        this.f39246c = c11859b;
        this.f39247d = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* renamed from: a */
    public static <T> C11845am<T> m19399a(C11896f c11896f, int i, C11859b<?> c11859b) {
        if (!c11896f.m19339c()) {
            return null;
        }
        RootTelemetryConfiguration rootTelemetryConfiguration = C12046p.m19151a().f39568a;
        boolean z = true;
        if (rootTelemetryConfiguration != null) {
            if (!rootTelemetryConfiguration.getMethodInvocationTelemetryEnabled()) {
                return null;
            }
            z = rootTelemetryConfiguration.getMethodTimingTelemetryEnabled();
            C11838af m19349a = c11896f.m19349a(c11859b);
            if (m19349a != null) {
                if (!(m19349a.f39219a instanceof AbstractC12025d)) {
                    return null;
                }
                AbstractC12025d abstractC12025d = (AbstractC12025d) m19349a.f39219a;
                if (abstractC12025d.hasConnectionInfo() && !abstractC12025d.isConnecting()) {
                    ConnectionTelemetryConfiguration m19400a = m19400a(m19349a, abstractC12025d, i);
                    if (m19400a == null) {
                        return null;
                    }
                    m19349a.f39226h++;
                    z = m19400a.getMethodTimingTelemetryEnabled();
                }
            }
        }
        return new C11845am<>(c11896f, i, c11859b, (z ? System.currentTimeMillis() : false) == true ? 1L : 0L, null, null);
    }

    /* renamed from: a */
    private static ConnectionTelemetryConfiguration m19400a(C11838af<?> c11838af, AbstractC12025d<?> abstractC12025d, int i) {
        ConnectionTelemetryConfiguration telemetryConfiguration = abstractC12025d.getTelemetryConfiguration();
        if (telemetryConfiguration == null || !telemetryConfiguration.getMethodInvocationTelemetryEnabled()) {
            return null;
        }
        int[] methodInvocationMethodKeyAllowlist = telemetryConfiguration.getMethodInvocationMethodKeyAllowlist();
        if (methodInvocationMethodKeyAllowlist == null) {
            int[] methodInvocationMethodKeyDisallowlist = telemetryConfiguration.getMethodInvocationMethodKeyDisallowlist();
            if (methodInvocationMethodKeyDisallowlist != null && C12098b.m19049a(methodInvocationMethodKeyDisallowlist, i)) {
                return null;
            }
        } else if (!C12098b.m19049a(methodInvocationMethodKeyAllowlist, i)) {
            return null;
        }
        if (c11838af.f39226h >= telemetryConfiguration.getMaxMethodInvocationsLogged()) {
            return null;
        }
        return telemetryConfiguration;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r28v0 */
    /* JADX WARN: Type inference failed for: r28v1 */
    /* JADX WARN: Type inference failed for: r28v2 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r6v0 */
    @Override // com.google.android.gms.tasks.AbstractC14181d
    public final void onComplete(AbstractC14185h<T> abstractC14185h) {
        C11838af m19349a;
        int i;
        int i2;
        int i3;
        boolean z;
        int i4;
        int i5;
        ?? r28;
        ?? r18;
        if (!this.f39244a.m19339c()) {
            return;
        }
        RootTelemetryConfiguration rootTelemetryConfiguration = C12046p.m19151a().f39568a;
        if ((rootTelemetryConfiguration != null && !rootTelemetryConfiguration.getMethodInvocationTelemetryEnabled()) || (m19349a = this.f39244a.m19349a(this.f39246c)) == null || !(m19349a.f39219a instanceof AbstractC12025d)) {
            return;
        }
        AbstractC12025d abstractC12025d = (AbstractC12025d) m19349a.f39219a;
        boolean z2 = this.f39247d > 0;
        int gCoreServiceId = abstractC12025d.getGCoreServiceId();
        if (rootTelemetryConfiguration != null) {
            boolean methodTimingTelemetryEnabled = z2 & rootTelemetryConfiguration.getMethodTimingTelemetryEnabled();
            i2 = rootTelemetryConfiguration.getBatchPeriodMillis();
            int maxMethodInvocationsInBatch = rootTelemetryConfiguration.getMaxMethodInvocationsInBatch();
            i = rootTelemetryConfiguration.getVersion();
            boolean z3 = methodTimingTelemetryEnabled;
            int i6 = maxMethodInvocationsInBatch;
            if (abstractC12025d.hasConnectionInfo()) {
                z3 = methodTimingTelemetryEnabled;
                i6 = maxMethodInvocationsInBatch;
                if (!abstractC12025d.isConnecting()) {
                    ConnectionTelemetryConfiguration m19400a = m19400a(m19349a, abstractC12025d, this.f39245b);
                    if (m19400a == null) {
                        return;
                    }
                    z3 = m19400a.getMethodTimingTelemetryEnabled() && this.f39247d > 0;
                    i6 = m19400a.getMaxMethodInvocationsLogged();
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
        C11896f c11896f = this.f39244a;
        if (abstractC14185h.mo11478b()) {
            i5 = 0;
            i4 = 0;
        } else {
            if (abstractC14185h.mo11476c()) {
                i5 = 100;
            } else {
                Exception mo11474e = abstractC14185h.mo11474e();
                if (mo11474e instanceof ApiException) {
                    Status m19467a = ((ApiException) mo11474e).m19467a();
                    int statusCode = m19467a.getStatusCode();
                    ConnectionResult connectionResult = m19467a.getConnectionResult();
                    i4 = connectionResult == null ? -1 : connectionResult.getErrorCode();
                    i5 = statusCode;
                } else {
                    i5 = 101;
                }
            }
            i4 = -1;
        }
        if (z) {
            r28 = this.f39247d;
            r18 = System.currentTimeMillis();
        } else {
            r28 = false;
            r18 = false;
        }
        Handler handler = c11896f.f39351g;
        handler.sendMessage(handler.obtainMessage(18, new C11846an(new MethodInvocation(this.f39245b, i5, i4, r28 == true ? 1L : 0L, r18 == true ? 1L : 0L, null, null, gCoreServiceId), i, i2, i3)));
    }
}
