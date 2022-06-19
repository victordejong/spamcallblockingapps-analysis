package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfigManager;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabx.class */
public final class zabx<T> implements OnCompleteListener<T> {
    private final GoogleApiManager zaa;
    private final int zab;
    private final ApiKey<?> zac;
    private final long zad;

    @VisibleForTesting
    public zabx(GoogleApiManager googleApiManager, int i, ApiKey<?> apiKey, long j, String str, String str2) {
        this.zaa = googleApiManager;
        this.zab = i;
        this.zac = apiKey;
        this.zad = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r5v0 */
    public static <T> zabx<T> zaa(GoogleApiManager googleApiManager, int i, ApiKey<?> apiKey) {
        boolean z;
        if (!googleApiManager.zam()) {
            return null;
        }
        RootTelemetryConfiguration config = RootTelemetryConfigManager.getInstance().getConfig();
        if (config == null) {
            z = true;
        } else if (!config.getMethodInvocationTelemetryEnabled()) {
            return null;
        } else {
            boolean methodTimingTelemetryEnabled = config.getMethodTimingTelemetryEnabled();
            zabl zag = googleApiManager.zag(apiKey);
            z = methodTimingTelemetryEnabled;
            if (zag != null) {
                if (!(zag.zaf() instanceof BaseGmsClient)) {
                    return null;
                }
                BaseGmsClient baseGmsClient = (BaseGmsClient) zag.zaf();
                z = methodTimingTelemetryEnabled;
                if (baseGmsClient.hasConnectionInfo()) {
                    z = methodTimingTelemetryEnabled;
                    if (!baseGmsClient.isConnecting()) {
                        ConnectionTelemetryConfiguration zab = zab(zag, baseGmsClient, i);
                        if (zab == null) {
                            return null;
                        }
                        zag.zas();
                        z = zab.getMethodTimingTelemetryEnabled();
                    }
                }
            }
        }
        return new zabx<>(googleApiManager, i, apiKey, (z ? System.currentTimeMillis() : false) == true ? 1L : 0L, null, null);
    }

    private static ConnectionTelemetryConfiguration zab(zabl<?> zablVar, BaseGmsClient<?> baseGmsClient, int i) {
        ConnectionTelemetryConfiguration telemetryConfiguration = baseGmsClient.getTelemetryConfiguration();
        if (telemetryConfiguration == null || !telemetryConfiguration.getMethodInvocationTelemetryEnabled()) {
            return null;
        }
        int[] methodInvocationMethodKeyAllowlist = telemetryConfiguration.getMethodInvocationMethodKeyAllowlist();
        if (methodInvocationMethodKeyAllowlist == null) {
            int[] methodInvocationMethodKeyDisallowlist = telemetryConfiguration.getMethodInvocationMethodKeyDisallowlist();
            if (methodInvocationMethodKeyDisallowlist != null && ArrayUtils.contains(methodInvocationMethodKeyDisallowlist, i)) {
                return null;
            }
        } else if (!ArrayUtils.contains(methodInvocationMethodKeyAllowlist, i)) {
            return null;
        }
        if (zablVar.zar() >= telemetryConfiguration.getMaxMethodInvocationsLogged()) {
            return null;
        }
        return telemetryConfiguration;
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
    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task<T> task) {
        zabl zag;
        int i;
        boolean z;
        int i2;
        int i3;
        int i4;
        int i5;
        ?? r29;
        ?? r19;
        if (!this.zaa.zam()) {
            return;
        }
        RootTelemetryConfiguration config = RootTelemetryConfigManager.getInstance().getConfig();
        if ((config != null && !config.getMethodInvocationTelemetryEnabled()) || (zag = this.zaa.zag(this.zac)) == null || !(zag.zaf() instanceof BaseGmsClient)) {
            return;
        }
        BaseGmsClient baseGmsClient = (BaseGmsClient) zag.zaf();
        boolean z2 = this.zad > 0;
        int gCoreServiceId = baseGmsClient.getGCoreServiceId();
        if (config != null) {
            boolean methodTimingTelemetryEnabled = z2 & config.getMethodTimingTelemetryEnabled();
            i2 = config.getBatchPeriodMillis();
            int maxMethodInvocationsInBatch = config.getMaxMethodInvocationsInBatch();
            i = config.getVersion();
            boolean z3 = methodTimingTelemetryEnabled;
            int i6 = maxMethodInvocationsInBatch;
            if (baseGmsClient.hasConnectionInfo()) {
                z3 = methodTimingTelemetryEnabled;
                i6 = maxMethodInvocationsInBatch;
                if (!baseGmsClient.isConnecting()) {
                    ConnectionTelemetryConfiguration zab = zab(zag, baseGmsClient, this.zab);
                    if (zab == null) {
                        return;
                    }
                    z3 = zab.getMethodTimingTelemetryEnabled() && this.zad > 0;
                    i6 = zab.getMaxMethodInvocationsLogged();
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
        GoogleApiManager googleApiManager = this.zaa;
        if (task.isSuccessful()) {
            i5 = 0;
            i4 = 0;
        } else {
            if (task.isCanceled()) {
                i5 = 100;
            } else {
                Exception exception = task.getException();
                if (exception instanceof ApiException) {
                    Status status = ((ApiException) exception).getStatus();
                    int statusCode = status.getStatusCode();
                    ConnectionResult connectionResult = status.getConnectionResult();
                    i4 = connectionResult == null ? -1 : connectionResult.getErrorCode();
                    i5 = statusCode;
                } else {
                    i5 = 101;
                }
            }
            i4 = -1;
        }
        if (z) {
            r19 = this.zad;
            r29 = System.currentTimeMillis();
        } else {
            r19 = false;
            r29 = false;
        }
        googleApiManager.zar(new MethodInvocation(this.zab, i5, i4, r19 == true ? 1L : 0L, r29 == true ? 1L : 0L, null, null, gCoreServiceId), i, i2, i3);
    }
}
