package com.google.android.gms.common.internal;
/* renamed from: com.google.android.gms.common.internal.p */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/p.class */
public final class C12046p {

    /* renamed from: b */
    private static C12046p f39566b;

    /* renamed from: c */
    private static final RootTelemetryConfiguration f39567c = new RootTelemetryConfiguration(0, false, false, 0, 0);

    /* renamed from: a */
    public RootTelemetryConfiguration f39568a;

    private C12046p() {
    }

    /* renamed from: a */
    public static C12046p m19151a() {
        C12046p c12046p;
        synchronized (C12046p.class) {
            try {
                if (f39566b == null) {
                    f39566b = new C12046p();
                }
                c12046p = f39566b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c12046p;
    }

    /* renamed from: a */
    public final void m19150a(RootTelemetryConfiguration rootTelemetryConfiguration) {
        synchronized (this) {
            if (rootTelemetryConfiguration == null) {
                this.f39568a = f39567c;
                return;
            }
            RootTelemetryConfiguration rootTelemetryConfiguration2 = this.f39568a;
            if (rootTelemetryConfiguration2 != null && rootTelemetryConfiguration2.getVersion() >= rootTelemetryConfiguration.getVersion()) {
                return;
            }
            this.f39568a = rootTelemetryConfiguration;
        }
    }
}
