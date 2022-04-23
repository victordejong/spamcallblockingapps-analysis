package com.amazonaws.services.s3.model.inventory;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/inventory/InventoryFilterPredicate.class */
public abstract class InventoryFilterPredicate implements Serializable {
    public abstract void accept(InventoryPredicateVisitor inventoryPredicateVisitor);
}
