package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Event_Device.class */
final class AutoValue_CrashlyticsReport_Session_Event_Device extends CrashlyticsReport.Session.Event.Device {
    private final Double batteryLevel;
    private final int batteryVelocity;
    private final long diskUsed;
    private final int orientation;
    private final boolean proximityOn;
    private final long ramUsed;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Event_Device$Builder.class */
    public static final class Builder extends CrashlyticsReport.Session.Event.Device.Builder {
        private Double batteryLevel;
        private Integer batteryVelocity;
        private Long diskUsed;
        private Integer orientation;
        private Boolean proximityOn;
        private Long ramUsed;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device.Builder
        public CrashlyticsReport.Session.Event.Device build() {
            String str = "";
            if (this.batteryVelocity == null) {
                str = " batteryVelocity";
            }
            String str2 = str;
            if (this.proximityOn == null) {
                str2 = str + " proximityOn";
            }
            String str3 = str2;
            if (this.orientation == null) {
                str3 = str2 + " orientation";
            }
            String str4 = str3;
            if (this.ramUsed == null) {
                str4 = str3 + " ramUsed";
            }
            String str5 = str4;
            if (this.diskUsed == null) {
                str5 = str4 + " diskUsed";
            }
            if (str5.isEmpty()) {
                return new AutoValue_CrashlyticsReport_Session_Event_Device(this.batteryLevel, this.batteryVelocity.intValue(), this.proximityOn.booleanValue(), this.orientation.intValue(), this.ramUsed.longValue(), this.diskUsed.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str5);
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device.Builder
        public CrashlyticsReport.Session.Event.Device.Builder setBatteryLevel(Double d) {
            this.batteryLevel = d;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device.Builder
        public CrashlyticsReport.Session.Event.Device.Builder setBatteryVelocity(int i) {
            this.batteryVelocity = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device.Builder
        public CrashlyticsReport.Session.Event.Device.Builder setDiskUsed(long j) {
            this.diskUsed = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device.Builder
        public CrashlyticsReport.Session.Event.Device.Builder setOrientation(int i) {
            this.orientation = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device.Builder
        public CrashlyticsReport.Session.Event.Device.Builder setProximityOn(boolean z) {
            this.proximityOn = Boolean.valueOf(z);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device.Builder
        public CrashlyticsReport.Session.Event.Device.Builder setRamUsed(long j) {
            this.ramUsed = Long.valueOf(j);
            return this;
        }
    }

    private AutoValue_CrashlyticsReport_Session_Event_Device(@Nullable Double d, int i, boolean z, int i2, long j, long j2) {
        this.batteryLevel = d;
        this.batteryVelocity = i;
        this.proximityOn = z;
        this.orientation = i2;
        this.ramUsed = j;
        this.diskUsed = j2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0069, code lost:
        if (r5.diskUsed == r0.getDiskUsed()) goto L_0x0071;
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
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r6
            boolean r0 = r0 instanceof com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device
            if (r0 == 0) goto L_0x0073
            r0 = r6
            com.google.firebase.crashlytics.internal.model.CrashlyticsReport$Session$Event$Device r0 = (com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device) r0
            r8 = r0
            r0 = r5
            java.lang.Double r0 = r0.batteryLevel
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0028
            r0 = r8
            java.lang.Double r0 = r0.getBatteryLevel()
            if (r0 != 0) goto L_0x006f
            goto L_0x0033
        L_0x0028:
            r0 = r6
            r1 = r8
            java.lang.Double r1 = r1.getBatteryLevel()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x006f
        L_0x0033:
            r0 = r5
            int r0 = r0.batteryVelocity
            r1 = r8
            int r1 = r1.getBatteryVelocity()
            if (r0 != r1) goto L_0x006f
            r0 = r5
            boolean r0 = r0.proximityOn
            r1 = r8
            boolean r1 = r1.isProximityOn()
            if (r0 != r1) goto L_0x006f
            r0 = r5
            int r0 = r0.orientation
            r1 = r8
            int r1 = r1.getOrientation()
            if (r0 != r1) goto L_0x006f
            r0 = r5
            long r0 = r0.ramUsed
            r1 = r8
            long r1 = r1.getRamUsed()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x006f
            r0 = r5
            long r0 = r0.diskUsed
            r1 = r8
            long r1 = r1.getDiskUsed()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x006f
            goto L_0x0071
        L_0x006f:
            r0 = 0
            r7 = r0
        L_0x0071:
            r0 = r7
            return r0
        L_0x0073:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event_Device.equals(java.lang.Object):boolean");
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device
    @Nullable
    public Double getBatteryLevel() {
        return this.batteryLevel;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device
    public int getBatteryVelocity() {
        return this.batteryVelocity;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device
    public long getDiskUsed() {
        return this.diskUsed;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device
    public int getOrientation() {
        return this.orientation;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device
    public long getRamUsed() {
        return this.ramUsed;
    }

    public int hashCode() {
        Double d = this.batteryLevel;
        int hashCode = d == null ? 0 : d.hashCode();
        int i = this.batteryVelocity;
        int i2 = this.proximityOn ? 1231 : 1237;
        int i3 = this.orientation;
        long j = this.ramUsed;
        int i4 = (int) (j ^ (j >>> 32));
        long j2 = this.diskUsed;
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ i4) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device
    public boolean isProximityOn() {
        return this.proximityOn;
    }

    public String toString() {
        return "Device{batteryLevel=" + this.batteryLevel + ", batteryVelocity=" + this.batteryVelocity + ", proximityOn=" + this.proximityOn + ", orientation=" + this.orientation + ", ramUsed=" + this.ramUsed + ", diskUsed=" + this.diskUsed + "}";
    }
}
