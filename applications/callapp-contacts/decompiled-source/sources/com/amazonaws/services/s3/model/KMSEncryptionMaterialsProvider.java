package com.amazonaws.services.s3.model;

import java.io.Serializable;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/KMSEncryptionMaterialsProvider.class */
public class KMSEncryptionMaterialsProvider extends StaticEncryptionMaterialsProvider implements Serializable {
    public KMSEncryptionMaterialsProvider(KMSEncryptionMaterials kMSEncryptionMaterials) {
        super(kMSEncryptionMaterials);
    }

    public KMSEncryptionMaterialsProvider(String str) {
        this(new KMSEncryptionMaterials(str));
    }
}
