package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.Api;
import com.pubmatic.sdk.common.POBCommonConstants;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/TelemetryLoggingOptions.class */
public class TelemetryLoggingOptions implements Api.ApiOptions.Optional {
    public static final TelemetryLoggingOptions zaa = builder().build();
    private final String zab;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/TelemetryLoggingOptions$Builder.class */
    public static class Builder {
        private String zaa;

        private Builder() {
        }

        /* synthetic */ Builder(zaac zaacVar) {
        }

        public TelemetryLoggingOptions build() {
            return new TelemetryLoggingOptions(this.zaa, null);
        }

        public Builder setApi(String str) {
            this.zaa = str;
            return this;
        }
    }

    /* synthetic */ TelemetryLoggingOptions(String str, zaac zaacVar) {
        this.zab = str;
    }

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

    public final Bundle zaa() {
        Bundle bundle = new Bundle();
        String str = this.zab;
        if (str != null) {
            bundle.putString(POBCommonConstants.API_PARAM, str);
        }
        return bundle;
    }
}
