package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/PutInstructionFileRequest.class */
public final class PutInstructionFileRequest extends AmazonWebServiceRequest implements EncryptionMaterialsFactory, MaterialsDescriptionProvider {
    private AccessControlList accessControlList;
    private CannedAccessControlList cannedAcl;
    private final EncryptionMaterials encryptionMaterials;
    private final Map<String, String> matDesc;
    private String redirectLocation;
    private final S3ObjectId s3ObjectId;
    private String storageClass;
    private final String suffix;

    public PutInstructionFileRequest(S3ObjectId s3ObjectId, EncryptionMaterials encryptionMaterials, String str) {
        if (s3ObjectId == null || (s3ObjectId instanceof InstructionFileId)) {
            throw new IllegalArgumentException("Invalid s3 object id");
        } else if (str == null || str.trim().isEmpty()) {
            throw new IllegalArgumentException("suffix must be specified");
        } else if (encryptionMaterials != null) {
            this.s3ObjectId = s3ObjectId;
            this.suffix = str;
            this.encryptionMaterials = encryptionMaterials;
            this.matDesc = null;
        } else {
            throw new IllegalArgumentException("encryption materials must be specified");
        }
    }

    public PutInstructionFileRequest(S3ObjectId s3ObjectId, Map<String, String> map, String str) {
        if (s3ObjectId == null || (s3ObjectId instanceof InstructionFileId)) {
            throw new IllegalArgumentException("Invalid s3 object id");
        } else if (str == null || str.trim().isEmpty()) {
            throw new IllegalArgumentException("suffix must be specified");
        } else {
            this.s3ObjectId = s3ObjectId;
            this.matDesc = map == null ? Collections.EMPTY_MAP : Collections.unmodifiableMap(new HashMap(map));
            this.suffix = str;
            this.encryptionMaterials = null;
        }
    }

    public final PutObjectRequest createPutObjectRequest(S3Object s3Object) {
        if (!s3Object.getBucketName().equals(this.s3ObjectId.getBucket()) || !s3Object.getKey().equals(this.s3ObjectId.getKey())) {
            throw new IllegalArgumentException("s3Object passed inconsistent with the instruction file being created");
        }
        InstructionFileId instructionFileId = this.s3ObjectId.instructionFileId(this.suffix);
        return (PutObjectRequest) new PutObjectRequest(instructionFileId.getBucket(), instructionFileId.getKey(), this.redirectLocation).withAccessControlList(this.accessControlList).withCannedAcl(this.cannedAcl).withStorageClass(this.storageClass).withGeneralProgressListener(getGeneralProgressListener()).withRequestMetricCollector(getRequestMetricCollector());
    }

    public final AccessControlList getAccessControlList() {
        return this.accessControlList;
    }

    public final CannedAccessControlList getCannedAcl() {
        return this.cannedAcl;
    }

    @Override // com.amazonaws.services.s3.model.EncryptionMaterialsFactory
    public final EncryptionMaterials getEncryptionMaterials() {
        return this.encryptionMaterials;
    }

    @Override // com.amazonaws.services.s3.model.MaterialsDescriptionProvider
    public final Map<String, String> getMaterialsDescription() {
        Map<String, String> map = this.matDesc;
        Map<String, String> map2 = map;
        if (map == null) {
            map2 = this.encryptionMaterials.getMaterialsDescription();
        }
        return map2;
    }

    public final String getRedirectLocation() {
        return this.redirectLocation;
    }

    public final S3ObjectId getS3ObjectId() {
        return this.s3ObjectId;
    }

    public final String getStorageClass() {
        return this.storageClass;
    }

    public final String getSuffix() {
        return this.suffix;
    }

    public final void setAccessControlList(AccessControlList accessControlList) {
        this.accessControlList = accessControlList;
    }

    public final void setCannedAcl(CannedAccessControlList cannedAccessControlList) {
        this.cannedAcl = cannedAccessControlList;
    }

    public final void setRedirectLocation(String str) {
        this.redirectLocation = str;
    }

    public final void setStorageClass(StorageClass storageClass) {
        this.storageClass = storageClass.toString();
    }

    public final void setStorageClass(String str) {
        this.storageClass = str;
    }

    public final PutInstructionFileRequest withAccessControlList(AccessControlList accessControlList) {
        setAccessControlList(accessControlList);
        return this;
    }

    public final PutInstructionFileRequest withCannedAcl(CannedAccessControlList cannedAccessControlList) {
        setCannedAcl(cannedAccessControlList);
        return this;
    }

    public final PutInstructionFileRequest withRedirectLocation(String str) {
        this.redirectLocation = str;
        return this;
    }

    public final PutInstructionFileRequest withStorageClass(StorageClass storageClass) {
        setStorageClass(storageClass);
        return this;
    }

    public final PutInstructionFileRequest withStorageClass(String str) {
        setStorageClass(str);
        return this;
    }
}
