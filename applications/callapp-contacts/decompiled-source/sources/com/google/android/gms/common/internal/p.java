package com.google.android.gms.common.internal;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/p.class */
public final class p {

    /* renamed from: b  reason: collision with root package name */
    private static p f22900b;

    /* renamed from: c  reason: collision with root package name */
    private static final RootTelemetryConfiguration f22901c = new RootTelemetryConfiguration(0, false, false, 0, 0);

    /* renamed from: a  reason: collision with root package name */
    public RootTelemetryConfiguration f22902a;

    private p() {
    }

    public static p a() {
        p pVar;
        synchronized (p.class) {
            try {
                if (f22900b == null) {
                    f22900b = new p();
                }
                pVar = f22900b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return pVar;
    }

    public final void a(RootTelemetryConfiguration rootTelemetryConfiguration) {
        synchronized (this) {
            if (rootTelemetryConfiguration == null) {
                this.f22902a = f22901c;
                return;
            }
            RootTelemetryConfiguration rootTelemetryConfiguration2 = this.f22902a;
            if (rootTelemetryConfiguration2 == null || rootTelemetryConfiguration2.getVersion() < rootTelemetryConfiguration.getVersion()) {
                this.f22902a = rootTelemetryConfiguration;
            }
        }
    }
}
