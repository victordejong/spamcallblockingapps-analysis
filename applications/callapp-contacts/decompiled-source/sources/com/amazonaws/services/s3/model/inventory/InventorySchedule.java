package com.amazonaws.services.s3.model.inventory;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/inventory/InventorySchedule.class */
public class InventorySchedule implements Serializable {
    private String frequency;

    public String getFrequency() {
        return this.frequency;
    }

    public void setFrequency(InventoryFrequency inventoryFrequency) {
        setFrequency(inventoryFrequency == null ? null : inventoryFrequency.toString());
    }

    public void setFrequency(String str) {
        this.frequency = str;
    }

    public InventorySchedule withFrequency(InventoryFrequency inventoryFrequency) {
        setFrequency(inventoryFrequency);
        return this;
    }

    public InventorySchedule withFrequency(String str) {
        setFrequency(str);
        return this;
    }
}
