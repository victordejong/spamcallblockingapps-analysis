package com.revenuecat.purchases.common;

import kotlin.w.c.g;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/ReplaceSkuInfo.class */
public final class ReplaceSkuInfo {
    private final PurchaseHistoryRecordWrapper oldPurchase;
    private final Integer prorationMode;

    public ReplaceSkuInfo(PurchaseHistoryRecordWrapper purchaseHistoryRecordWrapper, Integer num) {
        k.f(purchaseHistoryRecordWrapper, "oldPurchase");
        this.oldPurchase = purchaseHistoryRecordWrapper;
        this.prorationMode = num;
    }

    public /* synthetic */ ReplaceSkuInfo(PurchaseHistoryRecordWrapper purchaseHistoryRecordWrapper, Integer num, int i, g gVar) {
        this(purchaseHistoryRecordWrapper, (i & 2) != 0 ? null : num);
    }

    public static /* synthetic */ ReplaceSkuInfo copy$default(ReplaceSkuInfo replaceSkuInfo, PurchaseHistoryRecordWrapper purchaseHistoryRecordWrapper, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            purchaseHistoryRecordWrapper = replaceSkuInfo.oldPurchase;
        }
        if ((i & 2) != 0) {
            num = replaceSkuInfo.prorationMode;
        }
        return replaceSkuInfo.copy(purchaseHistoryRecordWrapper, num);
    }

    public final PurchaseHistoryRecordWrapper component1() {
        return this.oldPurchase;
    }

    public final Integer component2() {
        return this.prorationMode;
    }

    public final ReplaceSkuInfo copy(PurchaseHistoryRecordWrapper purchaseHistoryRecordWrapper, Integer num) {
        k.f(purchaseHistoryRecordWrapper, "oldPurchase");
        return new ReplaceSkuInfo(purchaseHistoryRecordWrapper, num);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReplaceSkuInfo)) {
            return false;
        }
        ReplaceSkuInfo replaceSkuInfo = (ReplaceSkuInfo) obj;
        return k.b(this.oldPurchase, replaceSkuInfo.oldPurchase) && k.b(this.prorationMode, replaceSkuInfo.prorationMode);
    }

    public final PurchaseHistoryRecordWrapper getOldPurchase() {
        return this.oldPurchase;
    }

    public final Integer getProrationMode() {
        return this.prorationMode;
    }

    public int hashCode() {
        PurchaseHistoryRecordWrapper purchaseHistoryRecordWrapper = this.oldPurchase;
        int i = 0;
        int hashCode = purchaseHistoryRecordWrapper != null ? purchaseHistoryRecordWrapper.hashCode() : 0;
        Integer num = this.prorationMode;
        if (num != null) {
            i = num.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return "ReplaceSkuInfo(oldPurchase=" + this.oldPurchase + ", prorationMode=" + this.prorationMode + ")";
    }
}
