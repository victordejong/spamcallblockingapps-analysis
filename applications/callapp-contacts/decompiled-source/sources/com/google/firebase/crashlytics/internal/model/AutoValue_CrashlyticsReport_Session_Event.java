package com.google.firebase.crashlytics.internal.model;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.Objects;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Event.class */
final class AutoValue_CrashlyticsReport_Session_Event extends CrashlyticsReport.Session.Event {
    private final CrashlyticsReport.Session.Event.Application app;
    private final CrashlyticsReport.Session.Event.Device device;
    private final CrashlyticsReport.Session.Event.Log log;
    private final long timestamp;
    private final String type;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Event$Builder.class */
    public static final class Builder extends CrashlyticsReport.Session.Event.Builder {
        private CrashlyticsReport.Session.Event.Application app;
        private CrashlyticsReport.Session.Event.Device device;
        private CrashlyticsReport.Session.Event.Log log;
        private Long timestamp;
        private String type;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder() {
        }

        private Builder(CrashlyticsReport.Session.Event event) {
            this.timestamp = Long.valueOf(event.getTimestamp());
            this.type = event.getType();
            this.app = event.getApp();
            this.device = event.getDevice();
            this.log = event.getLog();
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Builder
        public final CrashlyticsReport.Session.Event build() {
            String str = "";
            if (this.timestamp == null) {
                str = " timestamp";
            }
            String str2 = str;
            if (this.type == null) {
                str2 = str + " type";
            }
            String str3 = str2;
            if (this.app == null) {
                str3 = str2 + " app";
            }
            String str4 = str3;
            if (this.device == null) {
                str4 = str3 + " device";
            }
            if (str4.isEmpty()) {
                return new AutoValue_CrashlyticsReport_Session_Event(this.timestamp.longValue(), this.type, this.app, this.device, this.log);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str4)));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Builder
        public final CrashlyticsReport.Session.Event.Builder setApp(CrashlyticsReport.Session.Event.Application application) {
            Objects.requireNonNull(application, "Null app");
            this.app = application;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Builder
        public final CrashlyticsReport.Session.Event.Builder setDevice(CrashlyticsReport.Session.Event.Device device) {
            Objects.requireNonNull(device, "Null device");
            this.device = device;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Builder
        public final CrashlyticsReport.Session.Event.Builder setLog(CrashlyticsReport.Session.Event.Log log) {
            this.log = log;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Builder
        public final CrashlyticsReport.Session.Event.Builder setTimestamp(long j) {
            this.timestamp = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Builder
        public final CrashlyticsReport.Session.Event.Builder setType(String str) {
            Objects.requireNonNull(str, "Null type");
            this.type = str;
            return this;
        }
    }

    private AutoValue_CrashlyticsReport_Session_Event(long j, String str, CrashlyticsReport.Session.Event.Application application, CrashlyticsReport.Session.Event.Device device, CrashlyticsReport.Session.Event.Log log) {
        this.timestamp = j;
        this.type = str;
        this.app = application;
        this.device = device;
        this.log = log;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.Session.Event)) {
            return false;
        }
        CrashlyticsReport.Session.Event event = (CrashlyticsReport.Session.Event) obj;
        if (this.timestamp != event.getTimestamp() || !this.type.equals(event.getType()) || !this.app.equals(event.getApp()) || !this.device.equals(event.getDevice())) {
            return false;
        }
        CrashlyticsReport.Session.Event.Log log = this.log;
        return log == null ? event.getLog() == null : log.equals(event.getLog());
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event
    public final CrashlyticsReport.Session.Event.Application getApp() {
        return this.app;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event
    public final CrashlyticsReport.Session.Event.Device getDevice() {
        return this.device;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event
    public final CrashlyticsReport.Session.Event.Log getLog() {
        return this.log;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event
    public final long getTimestamp() {
        return this.timestamp;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event
    public final String getType() {
        return this.type;
    }

    public final int hashCode() {
        long j = this.timestamp;
        int i = (int) (j ^ (j >>> 32));
        int hashCode = this.type.hashCode();
        int hashCode2 = this.app.hashCode();
        int hashCode3 = this.device.hashCode();
        CrashlyticsReport.Session.Event.Log log = this.log;
        return (log == null ? 0 : log.hashCode()) ^ ((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003);
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event
    public final CrashlyticsReport.Session.Event.Builder toBuilder() {
        return new Builder(this);
    }

    public final String toString() {
        return "Event{timestamp=" + this.timestamp + ", type=" + this.type + ", app=" + this.app + ", device=" + this.device + ", log=" + this.log + "}";
    }
}
