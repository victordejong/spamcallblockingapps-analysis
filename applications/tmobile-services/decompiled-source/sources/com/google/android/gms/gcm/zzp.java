package com.google.android.gms.gcm;

import android.annotation.TargetApi;
import android.os.Trace;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.iid.zzai;
import com.google.android.gms.iid.zzaj;
import java.io.Closeable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/zzp.class */
public final class zzp implements Closeable {

    /* renamed from: g */
    private static final zzaj<Boolean> f7755g = zzai.m14151b().mo14152a("nts.enable_tracing", true);

    /* renamed from: f */
    private final boolean f7756f;

    @TargetApi(18)
    public zzp(String str) {
        boolean z = PlatformVersion.m14319d() && f7755g.get().booleanValue();
        this.f7756f = z;
        if (z) {
            Trace.beginSection(str.length() > 127 ? str.substring(0, 127) : str);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    @TargetApi(18)
    public final void close() {
        if (this.f7756f) {
            Trace.endSection();
        }
    }
}
