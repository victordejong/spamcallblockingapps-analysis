package com.google.android.gms.common.internal;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.service.zao;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/TelemetryLogging.class */
public class TelemetryLogging {
    private TelemetryLogging() {
    }

    @RecentlyNonNull
    @KeepForSdk
    public static TelemetryLoggingClient getClient(@RecentlyNonNull Context context) {
        return getClient(context, TelemetryLoggingOptions.zaa);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static TelemetryLoggingClient getClient(@RecentlyNonNull Context context, @RecentlyNonNull TelemetryLoggingOptions telemetryLoggingOptions) {
        return new zao(context, telemetryLoggingOptions);
    }
}
