package com.revenuecat.purchases.common;

import kotlin.w.c.g;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/PurchaseType.class */
public enum PurchaseType {
    SUBS,
    INAPP,
    UNKNOWN;
    
    public static final Companion Companion = new Companion(null);

    /* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/PurchaseType$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public final PurchaseType fromSKUType(String str) {
            PurchaseType purchaseType;
            if (str != null) {
                int hashCode = str.hashCode();
                if (hashCode != 3541555) {
                    if (hashCode == 100343516 && str.equals("inapp")) {
                        purchaseType = PurchaseType.INAPP;
                    }
                } else if (str.equals("subs")) {
                    purchaseType = PurchaseType.SUBS;
                }
                return purchaseType;
            }
            purchaseType = PurchaseType.UNKNOWN;
            return purchaseType;
        }
    }
}
