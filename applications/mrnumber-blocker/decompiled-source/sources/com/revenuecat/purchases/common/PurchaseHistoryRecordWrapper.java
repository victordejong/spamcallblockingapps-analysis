package com.revenuecat.purchases.common;

import com.android.billingclient.api.PurchaseHistoryRecord;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/PurchaseHistoryRecordWrapper.class */
public final class PurchaseHistoryRecordWrapper {
    private final boolean isConsumable;
    private final PurchaseHistoryRecord purchaseHistoryRecord;
    private final long purchaseTime;
    private final String purchaseToken;
    private final String sku;
    private final PurchaseType type;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PurchaseHistoryRecordWrapper(com.android.billingclient.api.PurchaseHistoryRecord r10, com.revenuecat.purchases.common.PurchaseType r11) {
        /*
            r9 = this;
            r0 = r10
            java.lang.String r1 = "purchaseHistoryRecord"
            kotlin.w.c.k.f(r0, r1)
            r0 = r11
            java.lang.String r1 = "type"
            kotlin.w.c.k.f(r0, r1)
            r0 = r11
            com.revenuecat.purchases.common.PurchaseType r1 = com.revenuecat.purchases.common.PurchaseType.INAPP
            if (r0 != r1) goto L_0x0018
            r0 = 1
            r12 = r0
            goto L_0x001a
        L_0x0018:
            r0 = 0
            r12 = r0
        L_0x001a:
            r0 = r10
            java.lang.String r0 = r0.c()
            r13 = r0
            r0 = r13
            java.lang.String r1 = "purchaseHistoryRecord.purchaseToken"
            kotlin.w.c.k.e(r0, r1)
            r0 = r10
            long r0 = r0.b()
            r14 = r0
            r0 = r10
            java.lang.String r0 = r0.e()
            r16 = r0
            r0 = r16
            java.lang.String r1 = "purchaseHistoryRecord.sku"
            kotlin.w.c.k.e(r0, r1)
            r0 = r9
            r1 = r12
            r2 = r13
            r3 = r14
            r4 = r16
            r5 = r10
            r6 = r11
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.revenuecat.purchases.common.PurchaseHistoryRecordWrapper.<init>(com.android.billingclient.api.PurchaseHistoryRecord, com.revenuecat.purchases.common.PurchaseType):void");
    }

    public PurchaseHistoryRecordWrapper(boolean z, String str, long j, String str2, PurchaseHistoryRecord purchaseHistoryRecord, PurchaseType purchaseType) {
        k.f(str, "purchaseToken");
        k.f(str2, "sku");
        k.f(purchaseHistoryRecord, "purchaseHistoryRecord");
        k.f(purchaseType, "type");
        this.isConsumable = z;
        this.purchaseToken = str;
        this.purchaseTime = j;
        this.sku = str2;
        this.purchaseHistoryRecord = purchaseHistoryRecord;
        this.type = purchaseType;
    }

    public static /* synthetic */ PurchaseHistoryRecordWrapper copy$default(PurchaseHistoryRecordWrapper purchaseHistoryRecordWrapper, boolean z, String str, long j, String str2, PurchaseHistoryRecord purchaseHistoryRecord, PurchaseType purchaseType, int i, Object obj) {
        if ((i & 1) != 0) {
            z = purchaseHistoryRecordWrapper.isConsumable;
        }
        if ((i & 2) != 0) {
            str = purchaseHistoryRecordWrapper.purchaseToken;
        }
        if ((i & 4) != 0) {
            j = purchaseHistoryRecordWrapper.purchaseTime;
        }
        if ((i & 8) != 0) {
            str2 = purchaseHistoryRecordWrapper.sku;
        }
        if ((i & 16) != 0) {
            purchaseHistoryRecord = purchaseHistoryRecordWrapper.purchaseHistoryRecord;
        }
        if ((i & 32) != 0) {
            purchaseType = purchaseHistoryRecordWrapper.type;
        }
        return purchaseHistoryRecordWrapper.copy(z, str, j, str2, purchaseHistoryRecord, purchaseType);
    }

    public final boolean component1() {
        return this.isConsumable;
    }

    public final String component2() {
        return this.purchaseToken;
    }

    public final long component3() {
        return this.purchaseTime;
    }

    public final String component4() {
        return this.sku;
    }

    public final PurchaseHistoryRecord component5() {
        return this.purchaseHistoryRecord;
    }

    public final PurchaseType component6() {
        return this.type;
    }

    public final PurchaseHistoryRecordWrapper copy(boolean z, String str, long j, String str2, PurchaseHistoryRecord purchaseHistoryRecord, PurchaseType purchaseType) {
        k.f(str, "purchaseToken");
        k.f(str2, "sku");
        k.f(purchaseHistoryRecord, "purchaseHistoryRecord");
        k.f(purchaseType, "type");
        return new PurchaseHistoryRecordWrapper(z, str, j, str2, purchaseHistoryRecord, purchaseType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PurchaseHistoryRecordWrapper)) {
            return false;
        }
        PurchaseHistoryRecordWrapper purchaseHistoryRecordWrapper = (PurchaseHistoryRecordWrapper) obj;
        return this.isConsumable == purchaseHistoryRecordWrapper.isConsumable && k.b(this.purchaseToken, purchaseHistoryRecordWrapper.purchaseToken) && this.purchaseTime == purchaseHistoryRecordWrapper.purchaseTime && k.b(this.sku, purchaseHistoryRecordWrapper.sku) && k.b(this.purchaseHistoryRecord, purchaseHistoryRecordWrapper.purchaseHistoryRecord) && k.b(this.type, purchaseHistoryRecordWrapper.type);
    }

    public final PurchaseHistoryRecord getPurchaseHistoryRecord() {
        return this.purchaseHistoryRecord;
    }

    public final long getPurchaseTime() {
        return this.purchaseTime;
    }

    public final String getPurchaseToken() {
        return this.purchaseToken;
    }

    public final String getSku() {
        return this.sku;
    }

    public final PurchaseType getType() {
        return this.type;
    }

    public int hashCode() {
        boolean z = this.isConsumable;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        String str = this.purchaseToken;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        long j = this.purchaseTime;
        int i2 = (int) (j ^ (j >>> 32));
        String str2 = this.sku;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        PurchaseHistoryRecord purchaseHistoryRecord = this.purchaseHistoryRecord;
        int hashCode3 = purchaseHistoryRecord != null ? purchaseHistoryRecord.hashCode() : 0;
        PurchaseType purchaseType = this.type;
        if (purchaseType != null) {
            i = purchaseType.hashCode();
        }
        int i3 = z2 ? 1 : 0;
        int i4 = z2 ? 1 : 0;
        return (((((((((i3 * 31) + hashCode) * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public final boolean isConsumable() {
        return this.isConsumable;
    }

    public String toString() {
        return "PurchaseHistoryRecordWrapper(isConsumable=" + this.isConsumable + ", purchaseToken=" + this.purchaseToken + ", purchaseTime=" + this.purchaseTime + ", sku=" + this.sku + ", purchaseHistoryRecord=" + this.purchaseHistoryRecord + ", type=" + this.type + ")";
    }
}
