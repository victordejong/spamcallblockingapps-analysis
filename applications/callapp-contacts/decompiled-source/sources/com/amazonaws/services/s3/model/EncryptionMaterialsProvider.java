package com.amazonaws.services.s3.model;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/EncryptionMaterialsProvider.class */
public interface EncryptionMaterialsProvider extends EncryptionMaterialsAccessor {
    EncryptionMaterials getEncryptionMaterials();

    void refresh();
}
