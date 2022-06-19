package com.google.android.gms.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/RootTelemetryConfigManager.class */
public final class RootTelemetryConfigManager {

    /* renamed from: b */
    public static RootTelemetryConfigManager f5993b;

    /* renamed from: c */
    public static final RootTelemetryConfiguration f5994c = new RootTelemetryConfiguration(0, false, false, 0, 0);

    /* renamed from: a */
    public RootTelemetryConfiguration f5995a;

    private RootTelemetryConfigManager() {
    }

    @KeepForSdk
    /* renamed from: a */
    public static RootTelemetryConfigManager m38893a() {
        RootTelemetryConfigManager rootTelemetryConfigManager;
        synchronized (RootTelemetryConfigManager.class) {
            try {
                if (f5993b == null) {
                    f5993b = new RootTelemetryConfigManager();
                }
                rootTelemetryConfigManager = f5993b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return rootTelemetryConfigManager;
    }
}
