package com.amazonaws.services.p101s3.model;

import java.io.File;
import java.io.InputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.amazonaws.services.s3.model.EncryptedPutObjectRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/EncryptedPutObjectRequest.class */
public class EncryptedPutObjectRequest extends PutObjectRequest implements MaterialsDescriptionProvider, Serializable {
    private Map<String, String> materialsDescription;

    public EncryptedPutObjectRequest(String str, String str2, File file) {
        super(str, str2, file);
    }

    public EncryptedPutObjectRequest(String str, String str2, InputStream inputStream, ObjectMetadata objectMetadata) {
        super(str, str2, inputStream, objectMetadata);
    }

    public EncryptedPutObjectRequest(String str, String str2, String str3) {
        super(str, str2, str3);
    }

    @Override // com.amazonaws.services.p101s3.model.PutObjectRequest, com.amazonaws.services.p101s3.model.AbstractPutObjectRequest, com.amazonaws.AmazonWebServiceRequest
    public EncryptedPutObjectRequest clone() {
        EncryptedPutObjectRequest encryptedPutObjectRequest = new EncryptedPutObjectRequest(getBucketName(), getKey(), getFile());
        super.copyPutObjectBaseTo(encryptedPutObjectRequest);
        Map<String, String> materialsDescription = getMaterialsDescription();
        encryptedPutObjectRequest.withMaterialsDescription(materialsDescription == null ? null : new HashMap(materialsDescription));
        return encryptedPutObjectRequest;
    }

    @Override // com.amazonaws.services.p101s3.model.MaterialsDescriptionProvider
    public Map<String, String> getMaterialsDescription() {
        return this.materialsDescription;
    }

    public void setMaterialsDescription(Map<String, String> map) {
        this.materialsDescription = map == null ? null : Collections.unmodifiableMap(new HashMap(map));
    }

    public EncryptedPutObjectRequest withMaterialsDescription(Map<String, String> map) {
        setMaterialsDescription(map);
        return this;
    }
}
