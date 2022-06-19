package com.google.android.gms.common.internal;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
/* renamed from: com.google.android.gms.common.internal.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/p.class */
public final class C6158p {

    /* renamed from: a */
    private static C6158p f19587a;

    /* renamed from: b */
    private static final RootTelemetryConfiguration f19588b = new RootTelemetryConfiguration(0, false, false, 0, 0);

    /* renamed from: c */
    private RootTelemetryConfiguration f19589c;

    private C6158p() {
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static C6158p m17004b() {
        C6158p c6158p;
        synchronized (C6158p.class) {
            try {
                if (f19587a == null) {
                    f19587a = new C6158p();
                }
                c6158p = f19587a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c6158p;
    }

    @RecentlyNullable
    /* renamed from: a */
    public RootTelemetryConfiguration m17005a() {
        return this.f19589c;
    }

    /* renamed from: c */
    public final void m17003c(RootTelemetryConfiguration rootTelemetryConfiguration) {
        synchronized (this) {
            if (rootTelemetryConfiguration == null) {
                this.f19589c = f19588b;
                return;
            }
            RootTelemetryConfiguration rootTelemetryConfiguration2 = this.f19589c;
            if (rootTelemetryConfiguration2 != null && rootTelemetryConfiguration2.m17150o0() >= rootTelemetryConfiguration.m17150o0()) {
                return;
            }
            this.f19589c = rootTelemetryConfiguration;
        }
    }
}
