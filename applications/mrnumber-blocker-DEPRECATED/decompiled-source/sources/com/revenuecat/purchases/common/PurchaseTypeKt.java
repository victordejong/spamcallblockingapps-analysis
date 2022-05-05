package com.revenuecat.purchases.common;

import kotlin.NoWhenBranchMatchedException;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/PurchaseTypeKt.class */
public final class PurchaseTypeKt {

    /* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/PurchaseTypeKt$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PurchaseType.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[PurchaseType.INAPP.ordinal()] = 1;
            iArr[PurchaseType.SUBS.ordinal()] = 2;
            iArr[PurchaseType.UNKNOWN.ordinal()] = 3;
        }
    }

    public static final String toSKUType(PurchaseType purchaseType) {
        String str;
        k.f(purchaseType, "$this$toSKUType");
        int i = WhenMappings.$EnumSwitchMapping$0[purchaseType.ordinal()];
        if (i == 1) {
            str = "inapp";
        } else if (i == 2) {
            str = "subs";
        } else if (i == 3) {
            str = null;
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return str;
    }
}
