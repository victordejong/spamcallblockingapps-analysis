package com.google.firebase.crashlytics.internal.model;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.Objects;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_FilesPayload.class */
final class AutoValue_CrashlyticsReport_FilesPayload extends CrashlyticsReport.FilesPayload {
    private final ImmutableList<CrashlyticsReport.FilesPayload.File> files;
    private final String orgId;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_FilesPayload$Builder.class */
    public static final class Builder extends CrashlyticsReport.FilesPayload.Builder {
        private ImmutableList<CrashlyticsReport.FilesPayload.File> files;
        private String orgId;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder() {
        }

        private Builder(CrashlyticsReport.FilesPayload filesPayload) {
            this.files = filesPayload.getFiles();
            this.orgId = filesPayload.getOrgId();
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload.Builder
        public final CrashlyticsReport.FilesPayload build() {
            String str = "";
            if (this.files == null) {
                str = " files";
            }
            if (str.isEmpty()) {
                return new AutoValue_CrashlyticsReport_FilesPayload(this.files, this.orgId);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str)));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload.Builder
        public final CrashlyticsReport.FilesPayload.Builder setFiles(ImmutableList<CrashlyticsReport.FilesPayload.File> immutableList) {
            Objects.requireNonNull(immutableList, "Null files");
            this.files = immutableList;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload.Builder
        public final CrashlyticsReport.FilesPayload.Builder setOrgId(String str) {
            this.orgId = str;
            return this;
        }
    }

    private AutoValue_CrashlyticsReport_FilesPayload(ImmutableList<CrashlyticsReport.FilesPayload.File> immutableList, String str) {
        this.files = immutableList;
        this.orgId = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.FilesPayload)) {
            return false;
        }
        CrashlyticsReport.FilesPayload filesPayload = (CrashlyticsReport.FilesPayload) obj;
        if (!this.files.equals(filesPayload.getFiles())) {
            return false;
        }
        String str = this.orgId;
        return str == null ? filesPayload.getOrgId() == null : str.equals(filesPayload.getOrgId());
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload
    public final ImmutableList<CrashlyticsReport.FilesPayload.File> getFiles() {
        return this.files;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload
    public final String getOrgId() {
        return this.orgId;
    }

    public final int hashCode() {
        int hashCode = this.files.hashCode();
        String str = this.orgId;
        return ((hashCode ^ 1000003) * 1000003) ^ (str == null ? 0 : str.hashCode());
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload
    final CrashlyticsReport.FilesPayload.Builder toBuilder() {
        return new Builder(this);
    }

    public final String toString() {
        return "FilesPayload{files=" + this.files + ", orgId=" + this.orgId + "}";
    }
}
