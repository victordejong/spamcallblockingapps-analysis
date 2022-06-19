package com.google.android.gms.common.internal;

import androidx.annotation.RecentlyNonNull;
/* renamed from: com.google.android.gms.common.internal.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/i.class */
public final class C1583i {

    /* renamed from: b */
    private static C1583i f5861b;

    /* renamed from: c */
    private static final RootTelemetryConfiguration f5862c = new RootTelemetryConfiguration(0, false, false, 0, 0);

    /* renamed from: a */
    private RootTelemetryConfiguration f5863a;

    private C1583i() {
    }

    @RecentlyNonNull
    /* renamed from: a */
    public static C1583i m8342a() {
        C1583i c1583i;
        synchronized (C1583i.class) {
            try {
                if (f5861b == null) {
                    f5861b = new C1583i();
                }
                c1583i = f5861b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1583i;
    }

    /* renamed from: b */
    public final void m8341b(RootTelemetryConfiguration rootTelemetryConfiguration) {
        synchronized (this) {
            if (rootTelemetryConfiguration == null) {
                this.f5863a = f5862c;
                return;
            }
            RootTelemetryConfiguration rootTelemetryConfiguration2 = this.f5863a;
            if (rootTelemetryConfiguration2 != null && rootTelemetryConfiguration2.C() >= rootTelemetryConfiguration.C()) {
                return;
            }
            this.f5863a = rootTelemetryConfiguration;
        }
    }
}
