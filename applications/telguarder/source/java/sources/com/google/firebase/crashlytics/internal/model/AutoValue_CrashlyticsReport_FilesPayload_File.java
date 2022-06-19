package com.google.firebase.crashlytics.internal.model;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_FilesPayload_File.class */
final class AutoValue_CrashlyticsReport_FilesPayload_File extends CrashlyticsReport.FilesPayload.File {
    private final byte[] contents;
    private final String filename;

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_FilesPayload_File$Builder.class */
    public static final class Builder extends CrashlyticsReport.FilesPayload.File.Builder {
        private byte[] contents;
        private String filename;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload.File.Builder
        public CrashlyticsReport.FilesPayload.File build() {
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
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload.File.Builder
        public CrashlyticsReport.FilesPayload.File.Builder setContents(byte[] bArr) {
            Objects.requireNonNull(bArr, "Null contents");
            this.contents = bArr;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload.File.Builder
        public CrashlyticsReport.FilesPayload.File.Builder setFilename(String str) {
            Objects.requireNonNull(str, "Null filename");
            this.filename = str;
            return this;
        }
    }

    private AutoValue_CrashlyticsReport_FilesPayload_File(String str, byte[] bArr) {
        this.filename = str;
        this.contents = bArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
        if (java.util.Arrays.equals(r3.contents, r0 instanceof com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_FilesPayload_File ? ((com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_FilesPayload_File) r0).contents : r0.getContents()) != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = r3
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r4
            boolean r0 = r0 instanceof com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload.File
            if (r0 == 0) goto L4e
            r0 = r4
            com.google.firebase.crashlytics.internal.model.CrashlyticsReport$FilesPayload$File r0 = (com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload.File) r0
            r4 = r0
            r0 = r3
            java.lang.String r0 = r0.filename
            r1 = r4
            java.lang.String r1 = r1.getFilename()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L4a
            r0 = r3
            byte[] r0 = r0.contents
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_FilesPayload_File
            if (r0 == 0) goto L3a
            r0 = r4
            com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_FilesPayload_File r0 = (com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_FilesPayload_File) r0
            byte[] r0 = r0.contents
            r4 = r0
            goto L3f
        L3a:
            r0 = r4
            byte[] r0 = r0.getContents()
            r4 = r0
        L3f:
            r0 = r6
            r1 = r4
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto L4a
            goto L4c
        L4a:
            r0 = 0
            r5 = r0
        L4c:
            r0 = r5
            return r0
        L4e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_FilesPayload_File.equals(java.lang.Object):boolean");
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload.File
    public byte[] getContents() {
        return this.contents;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload.File
    public String getFilename() {
        return this.filename;
    }

    public int hashCode() {
        return ((this.filename.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.contents);
    }

    public String toString() {
        return "File{filename=" + this.filename + ", contents=" + Arrays.toString(this.contents) + "}";
    }
}
