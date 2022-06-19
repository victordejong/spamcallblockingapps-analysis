package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.AutoValue_LogRequest;
import com.google.auto.value.AutoValue;
import com.google.firebase.encoders.annotations.Encodable;
import java.util.List;
@AutoValue
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/LogRequest.class */
public abstract class LogRequest {

    @AutoValue.Builder
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/LogRequest$Builder.class */
    public static abstract class Builder {
        public abstract LogRequest build();

        public abstract Builder setClientInfo(ClientInfo clientInfo);

        public abstract Builder setLogEvents(List<LogEvent> list);

        public abstract Builder setLogSource(Integer num);

        public abstract Builder setLogSourceName(String str);

        public abstract Builder setQosTier(QosTier qosTier);

        public abstract Builder setRequestTimeMs(long j);

        public abstract Builder setRequestUptimeMs(long j);

        public Builder setSource(int i) {
            return setLogSource(Integer.valueOf(i));
        }

        public Builder setSource(String str) {
            return setLogSourceName(str);
        }
    }

    public static Builder builder() {
        return new AutoValue_LogRequest.Builder();
    }

    public abstract ClientInfo getClientInfo();

    @Encodable.Field(name = "logEvent")
    public abstract List<LogEvent> getLogEvents();

    public abstract Integer getLogSource();

    public abstract String getLogSourceName();

    public abstract QosTier getQosTier();

    public abstract long getRequestTimeMs();

    public abstract long getRequestUptimeMs();
}
