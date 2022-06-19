package com.amazonaws.services.p101s3.model;

import java.util.Map;
/* renamed from: com.amazonaws.services.s3.model.StaticEncryptionMaterialsProvider */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider.class */
public class StaticEncryptionMaterialsProvider implements EncryptionMaterialsProvider {
    private final EncryptionMaterials materials;

    public StaticEncryptionMaterialsProvider(EncryptionMaterials encryptionMaterials) {
        this.materials = encryptionMaterials;
    }

    @Override // com.amazonaws.services.p101s3.model.EncryptionMaterialsProvider
    public EncryptionMaterials getEncryptionMaterials() {
        return this.materials;
    }

    @Override // com.amazonaws.services.p101s3.model.EncryptionMaterialsAccessor
    public EncryptionMaterials getEncryptionMaterials(Map<String, String> map) {
        EncryptionMaterials encryptionMaterials;
        Map<String, String> materialsDescription = this.materials.getMaterialsDescription();
        if (map == null || !map.equals(materialsDescription)) {
            EncryptionMaterialsAccessor accessor = this.materials.getAccessor();
            if (accessor != null && (encryptionMaterials = accessor.getEncryptionMaterials(map)) != null) {
                return encryptionMaterials;
            }
            boolean z = false;
            boolean z2 = map == null || map.size() == 0;
            if (materialsDescription == null || materialsDescription.size() == 0) {
                z = true;
            }
            if (z2 && z) {
                return this.materials;
            }
            return null;
        }
        return this.materials;
    }

    @Override // com.amazonaws.services.p101s3.model.EncryptionMaterialsProvider
    public void refresh() {
    }
}
