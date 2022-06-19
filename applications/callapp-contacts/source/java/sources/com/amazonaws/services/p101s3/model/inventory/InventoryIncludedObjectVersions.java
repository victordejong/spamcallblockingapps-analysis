package com.amazonaws.services.p101s3.model.inventory;
/* renamed from: com.amazonaws.services.s3.model.inventory.InventoryIncludedObjectVersions */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/inventory/InventoryIncludedObjectVersions.class */
public enum InventoryIncludedObjectVersions {
    All("All"),
    Current("Current");
    
    private final String name;

    InventoryIncludedObjectVersions(String str) {
        this.name = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.name;
    }
}
