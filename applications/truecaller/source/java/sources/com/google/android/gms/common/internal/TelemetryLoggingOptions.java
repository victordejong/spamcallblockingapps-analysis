package com.google.android.gms.common.internal;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import java.util.Arrays;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/TelemetryLoggingOptions.class */
public class TelemetryLoggingOptions implements Api.ApiOptions.Optional {
    @RecentlyNonNull

    /* renamed from: b */
    public static final TelemetryLoggingOptions f6005b = new TelemetryLoggingOptions(null);

    /* renamed from: a */
    public final String f6006a = null;

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/TelemetryLoggingOptions$Builder.class */
    public static class Builder {
        private Builder() {
        }
    }

    public /* synthetic */ TelemetryLoggingOptions(String str) {
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof TelemetryLoggingOptions) {
            return Objects.m38910a(this.f6006a, ((TelemetryLoggingOptions) obj).f6006a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f6006a});
    }
}
