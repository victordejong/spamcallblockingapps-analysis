package com.google.android.gms.common.internal;

import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/TelemetryLoggingOptions.class */
public class TelemetryLoggingOptions implements Api.ApiOptions.Optional {
    @RecentlyNonNull
    public static final TelemetryLoggingOptions zaa = builder().build();
    private final String zab;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/TelemetryLoggingOptions$Builder.class */
    public static class Builder {
        private String zaa;

        private Builder() {
        }

        public /* synthetic */ Builder(zaac zaacVar) {
        }

        @RecentlyNonNull
        @KeepForSdk
        public TelemetryLoggingOptions build() {
            return new TelemetryLoggingOptions(this.zaa, null);
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder setApi(String str) {
            this.zaa = str;
            return this;
        }
    }

    public /* synthetic */ TelemetryLoggingOptions(String str, zaac zaacVar) {
        this.zab = str;
    }

    @RecentlyNonNull
    @KeepForSdk
    public static Builder builder() {
        return new Builder(null);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof TelemetryLoggingOptions) {
            return Objects.equal(this.zab, ((TelemetryLoggingOptions) obj).zab);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.zab);
    }

    @RecentlyNonNull
    public final Bundle zaa() {
        Bundle bundle = new Bundle();
        String str = this.zab;
        if (str != null) {
            bundle.putString("api", str);
        }
        return bundle;
    }
}
