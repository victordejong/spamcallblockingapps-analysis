package com.google.firebase.crashlytics.internal.model;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_FilesPayload_File.class */
final class AutoValue_CrashlyticsReport_FilesPayload_File extends CrashlyticsReport.FilesPayload.File {
    private final byte[] contents;
    private final String filename;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_FilesPayload_File$Builder.class */
    public static final class Builder extends CrashlyticsReport.FilesPayload.File.Builder {
        private byte[] contents;
        private String filename;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload.File.Builder
        public final CrashlyticsReport.FilesPayload.File build() {
            String str = "";
            if (this.filename == null) {
                str = " filename";
            }
            String str2 = str;
            if (this.contents == null) {
                str2 = str + " contents";
            }
            if (str2.isEmpty()) {
                return new AutoValue_CrashlyticsReport_FilesPayload_File(this.filename, this.contents);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str2)));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload.File.Builder
        public final CrashlyticsReport.FilesPayload.File.Builder setContents(byte[] bArr) {
            Objects.requireNonNull(bArr, "Null contents");
            this.contents = bArr;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload.File.Builder
        public final CrashlyticsReport.FilesPayload.File.Builder setFilename(String str) {
            Objects.requireNonNull(str, "Null filename");
            this.filename = str;
            return this;
        }
    }

    private AutoValue_CrashlyticsReport_FilesPayload_File(String str, byte[] bArr) {
        this.filename = str;
        this.contents = bArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.FilesPayload.File)) {
            return false;
        }
        CrashlyticsReport.FilesPayload.File file = (CrashlyticsReport.FilesPayload.File) obj;
        if (!this.filename.equals(file.getFilename())) {
            return false;
        }
        return Arrays.equals(this.contents, file instanceof AutoValue_CrashlyticsReport_FilesPayload_File ? ((AutoValue_CrashlyticsReport_FilesPayload_File) file).contents : file.getContents());
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload.File
    public final byte[] getContents() {
        return this.contents;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload.File
    public final String getFilename() {
        return this.filename;
    }

    public final int hashCode() {
        return ((this.filename.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.contents);
    }

    public final String toString() {
        return "File{filename=" + this.filename + ", contents=" + Arrays.toString(this.contents) + "}";
    }
}
