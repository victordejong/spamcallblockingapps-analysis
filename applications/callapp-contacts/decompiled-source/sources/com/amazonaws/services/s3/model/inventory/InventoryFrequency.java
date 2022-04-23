package com.amazonaws.services.s3.model.inventory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/inventory/InventoryFrequency.class */
public enum InventoryFrequency {
    Daily("Daily"),
    Weekly("Weekly");
    
    private final String frequency;

    InventoryFrequency(String str) {
        this.frequency = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.frequency;
    }
}
