package com.google.android.gms.common.internal;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.tasks.Task;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/TelemetryLoggingClient.class */
public interface TelemetryLoggingClient extends HasApiKey<TelemetryLoggingOptions> {
    @RecentlyNonNull
    @KeepForSdk
    /* renamed from: a */
    Task<Void> mo38836a(@RecentlyNonNull TelemetryData telemetryData);
}
