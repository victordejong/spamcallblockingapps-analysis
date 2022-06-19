package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import android.os.Handler;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.zabl;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfigManager;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
/* renamed from: e.m.a.f.e.a.a.c0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/c0.class */
public final class C24912c0<T> implements OnCompleteListener<T> {

    /* renamed from: a */
    public final GoogleApiManager f69821a;

    /* renamed from: b */
    public final int f69822b;

    /* renamed from: c */
    public final ApiKey<?> f69823c;

    /* renamed from: d */
    public final long f69824d;

    @VisibleForTesting
    public C24912c0(GoogleApiManager googleApiManager, int i, ApiKey apiKey, long j) {
        this.f69821a = googleApiManager;
        this.f69822b = i;
        this.f69823c = apiKey;
        this.f69824d = j;
    }

    /* renamed from: a */
    public static ConnectionTelemetryConfiguration m4290a(zabl<?> zablVar, BaseGmsClient<?> baseGmsClient, int i) {
        ConnectionTelemetryConfiguration telemetryConfiguration = baseGmsClient.getTelemetryConfiguration();
        if (telemetryConfiguration == null || !telemetryConfiguration.f5956b) {
            return null;
        }
        int[] iArr = telemetryConfiguration.f5958d;
        if (iArr == null) {
            int[] iArr2 = telemetryConfiguration.f5960f;
            if (iArr2 != null && ArrayUtils.m38796a(iArr2, i)) {
                return null;
            }
        } else if (!ArrayUtils.m38796a(iArr, i)) {
            return null;
        }
        if (zablVar.f5860l >= telemetryConfiguration.f5959e) {
            return null;
        }
        return telemetryConfiguration;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r30v0 */
    /* JADX WARN: Type inference failed for: r30v1 */
    /* JADX WARN: Type inference failed for: r30v2 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r6v0 */
    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task<T> task) {
        int i;
        int i2;
        int i3;
        boolean z;
        int i4;
        ?? r30;
        ?? r18;
        if (!this.f69821a.m39029h()) {
            return;
        }
        RootTelemetryConfiguration rootTelemetryConfiguration = RootTelemetryConfigManager.m38893a().f5995a;
        if (rootTelemetryConfiguration != null && !rootTelemetryConfiguration.f5997b) {
            return;
        }
        zabl<?> zablVar = this.f69821a.f5755j.get(this.f69823c);
        if (zablVar == null) {
            return;
        }
        Api.Client client = zablVar.f5850b;
        if (!(client instanceof BaseGmsClient)) {
            return;
        }
        BaseGmsClient baseGmsClient = (BaseGmsClient) client;
        boolean z2 = this.f69824d > 0;
        int gCoreServiceId = baseGmsClient.getGCoreServiceId();
        if (rootTelemetryConfiguration != null) {
            boolean z3 = z2 & rootTelemetryConfiguration.f5998c;
            i3 = rootTelemetryConfiguration.f5999d;
            int i5 = rootTelemetryConfiguration.f6000e;
            i = rootTelemetryConfiguration.f5996a;
            boolean z4 = z3;
            int i6 = i5;
            if (baseGmsClient.hasConnectionInfo()) {
                z4 = z3;
                i6 = i5;
                if (!baseGmsClient.isConnecting()) {
                    ConnectionTelemetryConfiguration m4290a = m4290a(zablVar, baseGmsClient, this.f69822b);
                    if (m4290a == null) {
                        return;
                    }
                    z4 = m4290a.f5957c && this.f69824d > 0;
                    i6 = m4290a.f5959e;
                }
            }
            i2 = i6;
            z = z4;
        } else {
            i = 0;
            i2 = 100;
            i3 = 5000;
            z = z2;
        }
        GoogleApiManager googleApiManager = this.f69821a;
        int i7 = -1;
        if (task.m38519s()) {
            i4 = 0;
            i7 = 0;
        } else if (task.m38521q()) {
            i4 = 100;
        } else {
            Exception m38524n = task.m38524n();
            if (m38524n instanceof ApiException) {
                Status status = ((ApiException) m38524n).f5693a;
                i4 = status.f5728b;
                ConnectionResult connectionResult = status.f5731e;
                if (connectionResult != null) {
                    i7 = connectionResult.f5663b;
                }
            } else {
                i4 = 101;
            }
        }
        if (z) {
            r30 = this.f69824d;
            r18 = System.currentTimeMillis();
        } else {
            r30 = false;
            r18 = false;
        }
        Handler handler = googleApiManager.f5759n;
        handler.sendMessage(handler.obtainMessage(18, new C24914d0(new MethodInvocation(this.f69822b, i4, i7, r30 == true ? 1L : 0L, r18 == true ? 1L : 0L, null, null, gCoreServiceId), i, i3, i2)));
    }
}
