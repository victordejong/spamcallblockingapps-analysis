package com.amazonaws.services.s3.model.inventory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate.class */
public final class InventoryPrefixPredicate extends InventoryFilterPredicate {
    private final String prefix;

    public InventoryPrefixPredicate(String str) {
        this.prefix = str;
    }

    @Override // com.amazonaws.services.s3.model.inventory.InventoryFilterPredicate
    public final void accept(InventoryPredicateVisitor inventoryPredicateVisitor) {
        inventoryPredicateVisitor.visit(this);
    }

    public final String getPrefix() {
        return this.prefix;
    }
}
