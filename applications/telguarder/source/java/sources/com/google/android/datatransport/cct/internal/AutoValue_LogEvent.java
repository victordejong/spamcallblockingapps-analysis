package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.LogEvent;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/AutoValue_LogEvent.class */
final class AutoValue_LogEvent extends LogEvent {
    private final Integer eventCode;
    private final long eventTimeMs;
    private final long eventUptimeMs;
    private final NetworkConnectionInfo networkConnectionInfo;
    private final byte[] sourceExtension;
    private final String sourceExtensionJsonProto3;
    private final long timezoneOffsetSeconds;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/AutoValue_LogEvent$Builder.class */
    public static final class Builder extends LogEvent.Builder {
        private Integer eventCode;
        private Long eventTimeMs;
        private Long eventUptimeMs;
        private NetworkConnectionInfo networkConnectionInfo;
        private byte[] sourceExtension;
        private String sourceExtensionJsonProto3;
        private Long timezoneOffsetSeconds;

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public LogEvent build() {
            String str = "";
            if (this.eventTimeMs == null) {
                str = " eventTimeMs";
            }
            String str2 = str;
            if (this.eventUptimeMs == null) {
                str2 = str + " eventUptimeMs";
            }
            String str3 = str2;
            if (this.timezoneOffsetSeconds == null) {
                str3 = str2 + " timezoneOffsetSeconds";
            }
            if (str3.isEmpty()) {
                return new AutoValue_LogEvent(this.eventTimeMs.longValue(), this.eventCode, this.eventUptimeMs.longValue(), this.sourceExtension, this.sourceExtensionJsonProto3, this.timezoneOffsetSeconds.longValue(), this.networkConnectionInfo);
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public LogEvent.Builder setEventCode(Integer num) {
            this.eventCode = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public LogEvent.Builder setEventTimeMs(long j) {
            this.eventTimeMs = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public LogEvent.Builder setEventUptimeMs(long j) {
            this.eventUptimeMs = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public LogEvent.Builder setNetworkConnectionInfo(NetworkConnectionInfo networkConnectionInfo) {
            this.networkConnectionInfo = networkConnectionInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        LogEvent.Builder setSourceExtension(byte[] bArr) {
            this.sourceExtension = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        LogEvent.Builder setSourceExtensionJsonProto3(String str) {
            this.sourceExtensionJsonProto3 = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public LogEvent.Builder setTimezoneOffsetSeconds(long j) {
            this.timezoneOffsetSeconds = Long.valueOf(j);
            return this;
        }
    }

    private AutoValue_LogEvent(long j, Integer num, long j2, byte[] bArr, String str, long j3, NetworkConnectionInfo networkConnectionInfo) {
        this.eventTimeMs = j;
        this.eventCode = num;
        this.eventUptimeMs = j2;
        this.sourceExtension = bArr;
        this.sourceExtensionJsonProto3 = str;
        this.timezoneOffsetSeconds = j3;
        this.networkConnectionInfo = networkConnectionInfo;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0098, code lost:
        if (r5.timezoneOffsetSeconds != r0.getTimezoneOffsetSeconds()) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a1, code lost:
        if ((r0 = r5.networkConnectionInfo) != null) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            r7 = r0
            r0 = r6
            r1 = r5
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r6
            boolean r0 = r0 instanceof com.google.android.datatransport.cct.internal.LogEvent
            if (r0 == 0) goto Lc0
            r0 = r6
            com.google.android.datatransport.cct.internal.LogEvent r0 = (com.google.android.datatransport.cct.internal.LogEvent) r0
            r8 = r0
            r0 = r5
            long r0 = r0.eventTimeMs
            r1 = r8
            long r1 = r1.getEventTimeMs()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto Lbc
            r0 = r5
            java.lang.Integer r0 = r0.eventCode
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L34
            r0 = r8
            java.lang.Integer r0 = r0.getEventCode()
            if (r0 != 0) goto Lbc
            goto L3f
        L34:
            r0 = r6
            r1 = r8
            java.lang.Integer r1 = r1.getEventCode()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
        L3f:
            r0 = r5
            long r0 = r0.eventUptimeMs
            r1 = r8
            long r1 = r1.getEventUptimeMs()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto Lbc
            r0 = r5
            byte[] r0 = r0.sourceExtension
            r9 = r0
            r0 = r8
            boolean r0 = r0 instanceof com.google.android.datatransport.cct.internal.AutoValue_LogEvent
            if (r0 == 0) goto L63
            r0 = r8
            com.google.android.datatransport.cct.internal.AutoValue_LogEvent r0 = (com.google.android.datatransport.cct.internal.AutoValue_LogEvent) r0
            byte[] r0 = r0.sourceExtension
            r6 = r0
            goto L68
        L63:
            r0 = r8
            byte[] r0 = r0.getSourceExtension()
            r6 = r0
        L68:
            r0 = r9
            r1 = r6
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto Lbc
            r0 = r5
            java.lang.String r0 = r0.sourceExtensionJsonProto3
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L84
            r0 = r8
            java.lang.String r0 = r0.getSourceExtensionJsonProto3()
            if (r0 != 0) goto Lbc
            goto L8f
        L84:
            r0 = r6
            r1 = r8
            java.lang.String r1 = r1.getSourceExtensionJsonProto3()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
        L8f:
            r0 = r5
            long r0 = r0.timezoneOffsetSeconds
            r1 = r8
            long r1 = r1.getTimezoneOffsetSeconds()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto Lbc
            r0 = r5
            com.google.android.datatransport.cct.internal.NetworkConnectionInfo r0 = r0.networkConnectionInfo
            r6 = r0
            r0 = r6
            if (r0 != 0) goto Lae
            r0 = r8
            com.google.android.datatransport.cct.internal.NetworkConnectionInfo r0 = r0.getNetworkConnectionInfo()
            if (r0 != 0) goto Lbc
            goto Lbe
        Lae:
            r0 = r6
            r1 = r8
            com.google.android.datatransport.cct.internal.NetworkConnectionInfo r1 = r1.getNetworkConnectionInfo()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
            goto Lbe
        Lbc:
            r0 = 0
            r7 = r0
        Lbe:
            r0 = r7
            return r0
        Lc0:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.datatransport.cct.internal.AutoValue_LogEvent.equals(java.lang.Object):boolean");
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public Integer getEventCode() {
        return this.eventCode;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public long getEventTimeMs() {
        return this.eventTimeMs;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public long getEventUptimeMs() {
        return this.eventUptimeMs;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public NetworkConnectionInfo getNetworkConnectionInfo() {
        return this.networkConnectionInfo;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public byte[] getSourceExtension() {
        return this.sourceExtension;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public String getSourceExtensionJsonProto3() {
        return this.sourceExtensionJsonProto3;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public long getTimezoneOffsetSeconds() {
        return this.timezoneOffsetSeconds;
    }

    public int hashCode() {
        long j = this.eventTimeMs;
        int i = (int) (j ^ (j >>> 32));
        Integer num = this.eventCode;
        int i2 = 0;
        int hashCode = num == null ? 0 : num.hashCode();
        long j2 = this.eventUptimeMs;
        int i3 = (int) (j2 ^ (j2 >>> 32));
        int hashCode2 = Arrays.hashCode(this.sourceExtension);
        String str = this.sourceExtensionJsonProto3;
        int hashCode3 = str == null ? 0 : str.hashCode();
        long j3 = this.timezoneOffsetSeconds;
        int i4 = (int) ((j3 >>> 32) ^ j3);
        NetworkConnectionInfo networkConnectionInfo = this.networkConnectionInfo;
        if (networkConnectionInfo != null) {
            i2 = networkConnectionInfo.hashCode();
        }
        return ((((((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ i3) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i4) * 1000003) ^ i2;
    }

    public String toString() {
        return "LogEvent{eventTimeMs=" + this.eventTimeMs + ", eventCode=" + this.eventCode + ", eventUptimeMs=" + this.eventUptimeMs + ", sourceExtension=" + Arrays.toString(this.sourceExtension) + ", sourceExtensionJsonProto3=" + this.sourceExtensionJsonProto3 + ", timezoneOffsetSeconds=" + this.timezoneOffsetSeconds + ", networkConnectionInfo=" + this.networkConnectionInfo + "}";
    }
}
