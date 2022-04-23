package com.amazonaws.services.s3.model.inventory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/inventory/InventoryFormat.class */
public enum InventoryFormat {
    CSV("CSV");
    
    private final String format;

    InventoryFormat(String str) {
        this.format = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.format;
    }
}
