package com.amazonaws.services.p017s3.model;

import java.util.Map;
/* renamed from: com.amazonaws.services.s3.model.EncryptedPutObjectRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/EncryptedPutObjectRequest.class */
public class EncryptedPutObjectRequest extends PutObjectRequest implements MaterialsDescriptionProvider {
    public Map<String, String> materialsDescription;

    public Map<String, String> getMaterialsDescription() {
        return this.materialsDescription;
    }
}
