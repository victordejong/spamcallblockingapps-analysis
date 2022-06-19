package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.AutoValue_LogEvent;
import com.google.auto.value.AutoValue;
@AutoValue
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/LogEvent.class */
public abstract class LogEvent {

    @AutoValue.Builder
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/LogEvent$Builder.class */
    public static abstract class Builder {
        public abstract LogEvent build();

        public abstract Builder setEventCode(Integer num);

        public abstract Builder setEventTimeMs(long j);

        public abstract Builder setEventUptimeMs(long j);

        public abstract Builder setNetworkConnectionInfo(NetworkConnectionInfo networkConnectionInfo);

        public abstract Builder setSourceExtension(byte[] bArr);

        public abstract Builder setSourceExtensionJsonProto3(String str);

        public abstract Builder setTimezoneOffsetSeconds(long j);
    }

    private static Builder builder() {
        return new AutoValue_LogEvent.Builder();
    }

    public static Builder jsonBuilder(String str) {
        return builder().setSourceExtensionJsonProto3(str);
    }

    public static Builder protoBuilder(byte[] bArr) {
        return builder().setSourceExtension(bArr);
    }

    public abstract Integer getEventCode();

    public abstract long getEventTimeMs();

    public abstract long getEventUptimeMs();

    public abstract NetworkConnectionInfo getNetworkConnectionInfo();

    public abstract byte[] getSourceExtension();

    public abstract String getSourceExtensionJsonProto3();

    public abstract long getTimezoneOffsetSeconds();
}
