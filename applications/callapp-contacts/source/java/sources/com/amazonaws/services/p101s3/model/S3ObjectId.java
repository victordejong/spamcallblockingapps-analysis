package com.amazonaws.services.p101s3.model;

import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.S3ObjectId */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/S3ObjectId.class */
public class S3ObjectId implements Serializable {
    private final String bucket;
    private final String key;
    private final String versionId;

    public S3ObjectId(S3ObjectIdBuilder s3ObjectIdBuilder) {
        this.bucket = s3ObjectIdBuilder.getBucket();
        this.key = s3ObjectIdBuilder.getKey();
        this.versionId = s3ObjectIdBuilder.getVersionId();
    }

    public S3ObjectId(String str, String str2) {
        this(str, str2, null);
    }

    public S3ObjectId(String str, String str2, String str3) {
        if (str == null || str2 == null) {
            throw new IllegalArgumentException("bucket and key must be specified");
        }
        this.bucket = str;
        this.key = str2;
        this.versionId = str3;
    }

    public String getBucket() {
        return this.bucket;
    }

    public String getKey() {
        return this.key;
    }

    public String getVersionId() {
        return this.versionId;
    }

    public InstructionFileId instructionFileId() {
        return instructionFileId(null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0038, code lost:
        if (r7.trim().length() == 0) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.amazonaws.services.p101s3.model.InstructionFileId instructionFileId(java.lang.String r7) {
        /*
            r6 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.key
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = "."
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r0 = r0.toString()
            r8 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r9
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            if (r0 == 0) goto L3b
            r0 = r7
            r8 = r0
            r0 = r7
            java.lang.String r0 = r0.trim()
            int r0 = r0.length()
            if (r0 != 0) goto L3e
        L3b:
            java.lang.String r0 = "instruction"
            r8 = r0
        L3e:
            r0 = r9
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            java.lang.String r0 = r0.toString()
            r7 = r0
            com.amazonaws.services.s3.model.InstructionFileId r0 = new com.amazonaws.services.s3.model.InstructionFileId
            r1 = r0
            r2 = r6
            java.lang.String r2 = r2.bucket
            r3 = r7
            r4 = r6
            java.lang.String r4 = r4.versionId
            r1.<init>(r2, r3, r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.services.p101s3.model.S3ObjectId.instructionFileId(java.lang.String):com.amazonaws.services.s3.model.InstructionFileId");
    }

    public String toString() {
        return "bucket: " + this.bucket + ", key: " + this.key + ", versionId: " + this.versionId;
    }
}
