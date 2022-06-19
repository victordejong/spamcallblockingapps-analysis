package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.LogRequest;
import com.google.firebase.encoders.annotations.Encodable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/AutoValue_LogRequest.class */
final class AutoValue_LogRequest extends LogRequest {
    private final ClientInfo clientInfo;
    private final List<LogEvent> logEvents;
    private final Integer logSource;
    private final String logSourceName;
    private final QosTier qosTier;
    private final long requestTimeMs;
    private final long requestUptimeMs;

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/AutoValue_LogRequest$Builder.class */
    public static final class Builder extends LogRequest.Builder {
        private ClientInfo clientInfo;
        private List<LogEvent> logEvents;
        private Integer logSource;
        private String logSourceName;
        private QosTier qosTier;
        private Long requestTimeMs;
        private Long requestUptimeMs;

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public LogRequest build() {
            String str = "";
            if (this.requestTimeMs == null) {
                str = " requestTimeMs";
            }
            String str2 = str;
            if (this.requestUptimeMs == null) {
                str2 = str + " requestUptimeMs";
            }
            if (str2.isEmpty()) {
                return new AutoValue_LogRequest(this.requestTimeMs.longValue(), this.requestUptimeMs.longValue(), this.clientInfo, this.logSource, this.logSourceName, this.logEvents, this.qosTier);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public LogRequest.Builder setClientInfo(ClientInfo clientInfo) {
            this.clientInfo = clientInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public LogRequest.Builder setLogEvents(List<LogEvent> list) {
            this.logEvents = list;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        LogRequest.Builder setLogSource(Integer num) {
            this.logSource = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        LogRequest.Builder setLogSourceName(String str) {
            this.logSourceName = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public LogRequest.Builder setQosTier(QosTier qosTier) {
            this.qosTier = qosTier;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public LogRequest.Builder setRequestTimeMs(long j) {
            this.requestTimeMs = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public LogRequest.Builder setRequestUptimeMs(long j) {
            this.requestUptimeMs = Long.valueOf(j);
            return this;
        }
    }

    private AutoValue_LogRequest(long j, long j2, ClientInfo clientInfo, Integer num, String str, List<LogEvent> list, QosTier qosTier) {
        this.requestTimeMs = j;
        this.requestUptimeMs = j2;
        this.clientInfo = clientInfo;
        this.logSource = num;
        this.logSourceName = str;
        this.logEvents = list;
        this.qosTier = qosTier;
    }

    public boolean equals(Object obj) {
        ClientInfo clientInfo;
        Integer num;
        String str;
        List<LogEvent> list;
        QosTier qosTier;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LogRequest)) {
            return false;
        }
        LogRequest logRequest = (LogRequest) obj;
        if (this.requestTimeMs != logRequest.getRequestTimeMs() || this.requestUptimeMs != logRequest.getRequestUptimeMs() || ((clientInfo = this.clientInfo) != null ? !clientInfo.equals(logRequest.getClientInfo()) : logRequest.getClientInfo() != null) || ((num = this.logSource) != null ? !num.equals(logRequest.getLogSource()) : logRequest.getLogSource() != null) || ((str = this.logSourceName) != null ? !str.equals(logRequest.getLogSourceName()) : logRequest.getLogSourceName() != null) || ((list = this.logEvents) != null ? !list.equals(logRequest.getLogEvents()) : logRequest.getLogEvents() != null) || ((qosTier = this.qosTier) != null ? !qosTier.equals(logRequest.getQosTier()) : logRequest.getQosTier() != null)) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public ClientInfo getClientInfo() {
        return this.clientInfo;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    @Encodable.Field(name = "logEvent")
    public List<LogEvent> getLogEvents() {
        return this.logEvents;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public Integer getLogSource() {
        return this.logSource;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public String getLogSourceName() {
        return this.logSourceName;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public QosTier getQosTier() {
        return this.qosTier;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public long getRequestTimeMs() {
        return this.requestTimeMs;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public long getRequestUptimeMs() {
        return this.requestUptimeMs;
    }

    public int hashCode() {
        long j = this.requestTimeMs;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.requestUptimeMs;
        int i2 = (int) ((j2 >>> 32) ^ j2);
        ClientInfo clientInfo = this.clientInfo;
        int i3 = 0;
        int hashCode = clientInfo == null ? 0 : clientInfo.hashCode();
        Integer num = this.logSource;
        int hashCode2 = num == null ? 0 : num.hashCode();
        String str = this.logSourceName;
        int hashCode3 = str == null ? 0 : str.hashCode();
        List<LogEvent> list = this.logEvents;
        int hashCode4 = list == null ? 0 : list.hashCode();
        QosTier qosTier = this.qosTier;
        if (qosTier != null) {
            i3 = qosTier.hashCode();
        }
        return ((((((((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ hashCode) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i3;
    }

    public String toString() {
        return "LogRequest{requestTimeMs=" + this.requestTimeMs + ", requestUptimeMs=" + this.requestUptimeMs + ", clientInfo=" + this.clientInfo + ", logSource=" + this.logSource + ", logSourceName=" + this.logSourceName + ", logEvents=" + this.logEvents + ", qosTier=" + this.qosTier + "}";
    }
}
