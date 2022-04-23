package com.google.firebase.crashlytics.internal.model;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.Objects;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport.class */
final class AutoValue_CrashlyticsReport extends CrashlyticsReport {
    private final String buildVersion;
    private final String displayVersion;
    private final String gmpAppId;
    private final String installationUuid;
    private final CrashlyticsReport.FilesPayload ndkPayload;
    private final int platform;
    private final String sdkVersion;
    private final CrashlyticsReport.Session session;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport$Builder.class */
    public static final class Builder extends CrashlyticsReport.Builder {
        private String buildVersion;
        private String displayVersion;
        private String gmpAppId;
        private String installationUuid;
        private CrashlyticsReport.FilesPayload ndkPayload;
        private Integer platform;
        private String sdkVersion;
        private CrashlyticsReport.Session session;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder() {
        }

        private Builder(CrashlyticsReport crashlyticsReport) {
            this.sdkVersion = crashlyticsReport.getSdkVersion();
            this.gmpAppId = crashlyticsReport.getGmpAppId();
            this.platform = Integer.valueOf(crashlyticsReport.getPlatform());
            this.installationUuid = crashlyticsReport.getInstallationUuid();
            this.buildVersion = crashlyticsReport.getBuildVersion();
            this.displayVersion = crashlyticsReport.getDisplayVersion();
            this.session = crashlyticsReport.getSession();
            this.ndkPayload = crashlyticsReport.getNdkPayload();
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Builder
        public final CrashlyticsReport build() {
            String str = "";
            if (this.sdkVersion == null) {
                str = " sdkVersion";
            }
            String str2 = str;
            if (this.gmpAppId == null) {
                str2 = str + " gmpAppId";
            }
            String str3 = str2;
            if (this.platform == null) {
                str3 = str2 + " platform";
            }
            String str4 = str3;
            if (this.installationUuid == null) {
                str4 = str3 + " installationUuid";
            }
            String str5 = str4;
            if (this.buildVersion == null) {
                str5 = str4 + " buildVersion";
            }
            String str6 = str5;
            if (this.displayVersion == null) {
                str6 = str5 + " displayVersion";
            }
            if (str6.isEmpty()) {
                return new AutoValue_CrashlyticsReport(this.sdkVersion, this.gmpAppId, this.platform.intValue(), this.installationUuid, this.buildVersion, this.displayVersion, this.session, this.ndkPayload);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str6)));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Builder
        public final CrashlyticsReport.Builder setBuildVersion(String str) {
            Objects.requireNonNull(str, "Null buildVersion");
            this.buildVersion = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Builder
        public final CrashlyticsReport.Builder setDisplayVersion(String str) {
            Objects.requireNonNull(str, "Null displayVersion");
            this.displayVersion = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Builder
        public final CrashlyticsReport.Builder setGmpAppId(String str) {
            Objects.requireNonNull(str, "Null gmpAppId");
            this.gmpAppId = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Builder
        public final CrashlyticsReport.Builder setInstallationUuid(String str) {
            Objects.requireNonNull(str, "Null installationUuid");
            this.installationUuid = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Builder
        public final CrashlyticsReport.Builder setNdkPayload(CrashlyticsReport.FilesPayload filesPayload) {
            this.ndkPayload = filesPayload;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Builder
        public final CrashlyticsReport.Builder setPlatform(int i) {
            this.platform = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Builder
        public final CrashlyticsReport.Builder setSdkVersion(String str) {
            Objects.requireNonNull(str, "Null sdkVersion");
            this.sdkVersion = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Builder
        public final CrashlyticsReport.Builder setSession(CrashlyticsReport.Session session) {
            this.session = session;
            return this;
        }
    }

    private AutoValue_CrashlyticsReport(String str, String str2, int i, String str3, String str4, String str5, CrashlyticsReport.Session session, CrashlyticsReport.FilesPayload filesPayload) {
        this.sdkVersion = str;
        this.gmpAppId = str2;
        this.platform = i;
        this.installationUuid = str3;
        this.buildVersion = str4;
        this.displayVersion = str5;
        this.session = session;
        this.ndkPayload = filesPayload;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport)) {
            return false;
        }
        CrashlyticsReport crashlyticsReport = (CrashlyticsReport) obj;
        if (!this.sdkVersion.equals(crashlyticsReport.getSdkVersion()) || !this.gmpAppId.equals(crashlyticsReport.getGmpAppId()) || this.platform != crashlyticsReport.getPlatform() || !this.installationUuid.equals(crashlyticsReport.getInstallationUuid()) || !this.buildVersion.equals(crashlyticsReport.getBuildVersion()) || !this.displayVersion.equals(crashlyticsReport.getDisplayVersion())) {
            return false;
        }
        CrashlyticsReport.Session session = this.session;
        if (session == null) {
            if (crashlyticsReport.getSession() != null) {
                return false;
            }
        } else if (!session.equals(crashlyticsReport.getSession())) {
            return false;
        }
        CrashlyticsReport.FilesPayload filesPayload = this.ndkPayload;
        return filesPayload == null ? crashlyticsReport.getNdkPayload() == null : filesPayload.equals(crashlyticsReport.getNdkPayload());
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public final String getBuildVersion() {
        return this.buildVersion;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public final String getDisplayVersion() {
        return this.displayVersion;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public final String getGmpAppId() {
        return this.gmpAppId;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public final String getInstallationUuid() {
        return this.installationUuid;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public final CrashlyticsReport.FilesPayload getNdkPayload() {
        return this.ndkPayload;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public final int getPlatform() {
        return this.platform;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public final String getSdkVersion() {
        return this.sdkVersion;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public final CrashlyticsReport.Session getSession() {
        return this.session;
    }

    public final int hashCode() {
        int hashCode = this.sdkVersion.hashCode();
        int hashCode2 = this.gmpAppId.hashCode();
        int i = this.platform;
        int hashCode3 = this.installationUuid.hashCode();
        int hashCode4 = this.buildVersion.hashCode();
        int hashCode5 = this.displayVersion.hashCode();
        CrashlyticsReport.Session session = this.session;
        int i2 = 0;
        int hashCode6 = session == null ? 0 : session.hashCode();
        CrashlyticsReport.FilesPayload filesPayload = this.ndkPayload;
        if (filesPayload != null) {
            i2 = filesPayload.hashCode();
        }
        return ((((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ i) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ hashCode6) * 1000003) ^ i2;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    protected final CrashlyticsReport.Builder toBuilder() {
        return new Builder(this);
    }

    public final String toString() {
        return "CrashlyticsReport{sdkVersion=" + this.sdkVersion + ", gmpAppId=" + this.gmpAppId + ", platform=" + this.platform + ", installationUuid=" + this.installationUuid + ", buildVersion=" + this.buildVersion + ", displayVersion=" + this.displayVersion + ", session=" + this.session + ", ndkPayload=" + this.ndkPayload + "}";
    }
}
