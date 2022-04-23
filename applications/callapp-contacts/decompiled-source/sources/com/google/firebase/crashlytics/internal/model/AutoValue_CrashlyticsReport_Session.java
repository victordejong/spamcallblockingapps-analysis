package com.google.firebase.crashlytics.internal.model;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.Objects;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session.class */
final class AutoValue_CrashlyticsReport_Session extends CrashlyticsReport.Session {
    private final CrashlyticsReport.Session.Application app;
    private final boolean crashed;
    private final CrashlyticsReport.Session.Device device;
    private final Long endedAt;
    private final ImmutableList<CrashlyticsReport.Session.Event> events;
    private final String generator;
    private final int generatorType;
    private final String identifier;
    private final CrashlyticsReport.Session.OperatingSystem os;
    private final long startedAt;
    private final CrashlyticsReport.Session.User user;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session$Builder.class */
    public static final class Builder extends CrashlyticsReport.Session.Builder {
        private CrashlyticsReport.Session.Application app;
        private Boolean crashed;
        private CrashlyticsReport.Session.Device device;
        private Long endedAt;
        private ImmutableList<CrashlyticsReport.Session.Event> events;
        private String generator;
        private Integer generatorType;
        private String identifier;
        private CrashlyticsReport.Session.OperatingSystem os;
        private Long startedAt;
        private CrashlyticsReport.Session.User user;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder() {
        }

        private Builder(CrashlyticsReport.Session session) {
            this.generator = session.getGenerator();
            this.identifier = session.getIdentifier();
            this.startedAt = Long.valueOf(session.getStartedAt());
            this.endedAt = session.getEndedAt();
            this.crashed = Boolean.valueOf(session.isCrashed());
            this.app = session.getApp();
            this.user = session.getUser();
            this.os = session.getOs();
            this.device = session.getDevice();
            this.events = session.getEvents();
            this.generatorType = Integer.valueOf(session.getGeneratorType());
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session build() {
            String str = "";
            if (this.generator == null) {
                str = " generator";
            }
            String str2 = str;
            if (this.identifier == null) {
                str2 = str + " identifier";
            }
            String str3 = str2;
            if (this.startedAt == null) {
                str3 = str2 + " startedAt";
            }
            String str4 = str3;
            if (this.crashed == null) {
                str4 = str3 + " crashed";
            }
            String str5 = str4;
            if (this.app == null) {
                str5 = str4 + " app";
            }
            String str6 = str5;
            if (this.generatorType == null) {
                str6 = str5 + " generatorType";
            }
            if (str6.isEmpty()) {
                return new AutoValue_CrashlyticsReport_Session(this.generator, this.identifier, this.startedAt.longValue(), this.endedAt, this.crashed.booleanValue(), this.app, this.user, this.os, this.device, this.events, this.generatorType.intValue());
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str6)));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder setApp(CrashlyticsReport.Session.Application application) {
            Objects.requireNonNull(application, "Null app");
            this.app = application;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder setCrashed(boolean z) {
            this.crashed = Boolean.valueOf(z);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder setDevice(CrashlyticsReport.Session.Device device) {
            this.device = device;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder setEndedAt(Long l) {
            this.endedAt = l;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder setEvents(ImmutableList<CrashlyticsReport.Session.Event> immutableList) {
            this.events = immutableList;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder setGenerator(String str) {
            Objects.requireNonNull(str, "Null generator");
            this.generator = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder setGeneratorType(int i) {
            this.generatorType = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder setIdentifier(String str) {
            Objects.requireNonNull(str, "Null identifier");
            this.identifier = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder setOs(CrashlyticsReport.Session.OperatingSystem operatingSystem) {
            this.os = operatingSystem;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder setStartedAt(long j) {
            this.startedAt = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder setUser(CrashlyticsReport.Session.User user) {
            this.user = user;
            return this;
        }
    }

    private AutoValue_CrashlyticsReport_Session(String str, String str2, long j, Long l, boolean z, CrashlyticsReport.Session.Application application, CrashlyticsReport.Session.User user, CrashlyticsReport.Session.OperatingSystem operatingSystem, CrashlyticsReport.Session.Device device, ImmutableList<CrashlyticsReport.Session.Event> immutableList, int i) {
        this.generator = str;
        this.identifier = str2;
        this.startedAt = j;
        this.endedAt = l;
        this.crashed = z;
        this.app = application;
        this.user = user;
        this.os = operatingSystem;
        this.device = device;
        this.events = immutableList;
        this.generatorType = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.Session)) {
            return false;
        }
        CrashlyticsReport.Session session = (CrashlyticsReport.Session) obj;
        if (!this.generator.equals(session.getGenerator()) || !this.identifier.equals(session.getIdentifier()) || this.startedAt != session.getStartedAt()) {
            return false;
        }
        Long l = this.endedAt;
        if (l == null) {
            if (session.getEndedAt() != null) {
                return false;
            }
        } else if (!l.equals(session.getEndedAt())) {
            return false;
        }
        if (this.crashed != session.isCrashed() || !this.app.equals(session.getApp())) {
            return false;
        }
        CrashlyticsReport.Session.User user = this.user;
        if (user == null) {
            if (session.getUser() != null) {
                return false;
            }
        } else if (!user.equals(session.getUser())) {
            return false;
        }
        CrashlyticsReport.Session.OperatingSystem operatingSystem = this.os;
        if (operatingSystem == null) {
            if (session.getOs() != null) {
                return false;
            }
        } else if (!operatingSystem.equals(session.getOs())) {
            return false;
        }
        CrashlyticsReport.Session.Device device = this.device;
        if (device == null) {
            if (session.getDevice() != null) {
                return false;
            }
        } else if (!device.equals(session.getDevice())) {
            return false;
        }
        ImmutableList<CrashlyticsReport.Session.Event> immutableList = this.events;
        if (immutableList == null) {
            if (session.getEvents() != null) {
                return false;
            }
        } else if (!immutableList.equals(session.getEvents())) {
            return false;
        }
        return this.generatorType == session.getGeneratorType();
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final CrashlyticsReport.Session.Application getApp() {
        return this.app;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final CrashlyticsReport.Session.Device getDevice() {
        return this.device;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final Long getEndedAt() {
        return this.endedAt;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final ImmutableList<CrashlyticsReport.Session.Event> getEvents() {
        return this.events;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final String getGenerator() {
        return this.generator;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final int getGeneratorType() {
        return this.generatorType;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final String getIdentifier() {
        return this.identifier;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final CrashlyticsReport.Session.OperatingSystem getOs() {
        return this.os;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final long getStartedAt() {
        return this.startedAt;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final CrashlyticsReport.Session.User getUser() {
        return this.user;
    }

    public final int hashCode() {
        int hashCode = this.generator.hashCode();
        int hashCode2 = this.identifier.hashCode();
        long j = this.startedAt;
        int i = (int) (j ^ (j >>> 32));
        Long l = this.endedAt;
        int i2 = 0;
        int hashCode3 = l == null ? 0 : l.hashCode();
        int i3 = this.crashed ? 1231 : 1237;
        int hashCode4 = this.app.hashCode();
        CrashlyticsReport.Session.User user = this.user;
        int hashCode5 = user == null ? 0 : user.hashCode();
        CrashlyticsReport.Session.OperatingSystem operatingSystem = this.os;
        int hashCode6 = operatingSystem == null ? 0 : operatingSystem.hashCode();
        CrashlyticsReport.Session.Device device = this.device;
        int hashCode7 = device == null ? 0 : device.hashCode();
        ImmutableList<CrashlyticsReport.Session.Event> immutableList = this.events;
        if (immutableList != null) {
            i2 = immutableList.hashCode();
        }
        return ((((((((((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ i) * 1000003) ^ hashCode3) * 1000003) ^ i3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ hashCode6) * 1000003) ^ hashCode7) * 1000003) ^ i2) * 1000003) ^ this.generatorType;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final boolean isCrashed() {
        return this.crashed;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final CrashlyticsReport.Session.Builder toBuilder() {
        return new Builder(this);
    }

    public final String toString() {
        return "Session{generator=" + this.generator + ", identifier=" + this.identifier + ", startedAt=" + this.startedAt + ", endedAt=" + this.endedAt + ", crashed=" + this.crashed + ", app=" + this.app + ", user=" + this.user + ", os=" + this.os + ", device=" + this.device + ", events=" + this.events + ", generatorType=" + this.generatorType + "}";
    }
}
