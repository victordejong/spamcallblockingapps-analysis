package com.amazonaws.services.s3.model.inventory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/inventory/InventoryOptionalField.class */
public enum InventoryOptionalField {
    Size("Size"),
    LastModifiedDate("LastModifiedDate"),
    StorageClass("StorageClass"),
    ETag("ETag"),
    IsMultipartUploaded("IsMultipartUploaded"),
    ReplicationStatus("ReplicationStatus");
    
    private final String field;

    InventoryOptionalField(String str) {
        this.field = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.field;
    }
}
