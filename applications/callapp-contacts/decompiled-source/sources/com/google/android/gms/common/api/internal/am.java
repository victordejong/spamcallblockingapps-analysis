package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.util.b;
import com.google.android.gms.tasks.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/am.class */
public final class am<T> implements d<T> {

    /* renamed from: a  reason: collision with root package name */
    private final f f22648a;

    /* renamed from: b  reason: collision with root package name */
    private final int f22649b;

    /* renamed from: c  reason: collision with root package name */
    private final b<?> f22650c;

    /* renamed from: d  reason: collision with root package name */
    private final long f22651d;

    am(f fVar, int i, b<?> bVar, long j, String str, String str2) {
        this.f22648a = fVar;
        this.f22649b = i;
        this.f22650c = bVar;
        this.f22651d = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> am<T> a(f fVar, int i, b<?> bVar) {
        if (!fVar.c()) {
            return null;
        }
        RootTelemetryConfiguration rootTelemetryConfiguration = p.a().f22902a;
        boolean z = true;
        if (rootTelemetryConfiguration != null) {
            if (!rootTelemetryConfiguration.getMethodInvocationTelemetryEnabled()) {
                return null;
            }
            z = rootTelemetryConfiguration.getMethodTimingTelemetryEnabled();
            af a2 = fVar.a(bVar);
            if (a2 != null) {
                if (!(a2.f22634a instanceof com.google.android.gms.common.internal.d)) {
                    return null;
                }
                com.google.android.gms.common.internal.d dVar = (com.google.android.gms.common.internal.d) a2.f22634a;
                if (dVar.hasConnectionInfo() && !dVar.isConnecting()) {
                    ConnectionTelemetryConfiguration a3 = a(a2, dVar, i);
                    if (a3 == null) {
                        return null;
                    }
                    a2.h++;
                    z = a3.getMethodTimingTelemetryEnabled();
                }
            }
        }
        return new am<>(fVar, i, bVar, z ? System.currentTimeMillis() : 0L, null, null);
    }

    private static ConnectionTelemetryConfiguration a(af<?> afVar, com.google.android.gms.common.internal.d<?> dVar, int i) {
        ConnectionTelemetryConfiguration telemetryConfiguration = dVar.getTelemetryConfiguration();
        if (telemetryConfiguration == null || !telemetryConfiguration.getMethodInvocationTelemetryEnabled()) {
            return null;
        }
        int[] methodInvocationMethodKeyAllowlist = telemetryConfiguration.getMethodInvocationMethodKeyAllowlist();
        if (methodInvocationMethodKeyAllowlist == null) {
            int[] methodInvocationMethodKeyDisallowlist = telemetryConfiguration.getMethodInvocationMethodKeyDisallowlist();
            if (methodInvocationMethodKeyDisallowlist != null && b.a(methodInvocationMethodKeyDisallowlist, i)) {
                return null;
            }
        } else if (!b.a(methodInvocationMethodKeyAllowlist, i)) {
            return null;
        }
        if (afVar.h < telemetryConfiguration.getMaxMethodInvocationsLogged()) {
            return telemetryConfiguration;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v1, types: [long] */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r18v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.gms.tasks.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onComplete(com.google.android.gms.tasks.h<T> r14) {
        /*
            Method dump skipped, instructions count: 439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.am.onComplete(com.google.android.gms.tasks.h):void");
    }
}
