package com.amazonaws.services.p101s3.model;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.amazonaws.services.s3.model.EncryptedInitiateMultipartUploadRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest.class */
public class EncryptedInitiateMultipartUploadRequest extends InitiateMultipartUploadRequest implements MaterialsDescriptionProvider, Serializable {
    private boolean createEncryptionMaterial = true;
    private Map<String, String> materialsDescription;

    public EncryptedInitiateMultipartUploadRequest(String str, String str2) {
        super(str, str2);
    }

    public EncryptedInitiateMultipartUploadRequest(String str, String str2, ObjectMetadata objectMetadata) {
        super(str, str2, objectMetadata);
    }

    @Override // com.amazonaws.services.p101s3.model.MaterialsDescriptionProvider
    public Map<String, String> getMaterialsDescription() {
        return this.materialsDescription;
    }

    public boolean isCreateEncryptionMaterial() {
        return this.createEncryptionMaterial;
    }

    public void setCreateEncryptionMaterial(boolean z) {
        this.createEncryptionMaterial = z;
    }

    public void setMaterialsDescription(Map<String, String> map) {
        this.materialsDescription = map == null ? null : Collections.unmodifiableMap(new HashMap(map));
    }

    public EncryptedInitiateMultipartUploadRequest withCreateEncryptionMaterial(boolean z) {
        this.createEncryptionMaterial = z;
        return this;
    }

    public EncryptedInitiateMultipartUploadRequest withMaterialsDescription(Map<String, String> map) {
        setMaterialsDescription(map);
        return this;
    }
}
