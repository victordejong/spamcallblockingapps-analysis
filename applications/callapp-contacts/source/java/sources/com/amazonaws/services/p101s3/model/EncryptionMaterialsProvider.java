package com.amazonaws.services.p101s3.model;
@Deprecated
/* renamed from: com.amazonaws.services.s3.model.EncryptionMaterialsProvider */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/EncryptionMaterialsProvider.class */
public interface EncryptionMaterialsProvider extends EncryptionMaterialsAccessor {
    EncryptionMaterials getEncryptionMaterials();

    void refresh();
}
