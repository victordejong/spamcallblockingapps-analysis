package p193e.p1577m.p1578a.p1642f.p1653e.p1656b.p1657a;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.TelemetryLoggingOptions;
import com.google.android.gms.common.internal.service.zap;
/* renamed from: e.m.a.f.e.b.a.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/b/a/c.class */
public final class C24964c extends Api.AbstractClientBuilder<zap, TelemetryLoggingOptions> {
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final /* bridge */ /* synthetic */ zap buildClient(Context context, Looper looper, ClientSettings clientSettings, TelemetryLoggingOptions telemetryLoggingOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        return new zap(context, looper, clientSettings, telemetryLoggingOptions, connectionCallbacks, onConnectionFailedListener);
    }
}
