package com.revenuecat.purchases;

import com.revenuecat.purchases.interfaces.MakePurchaseListener;
import com.revenuecat.purchases.interfaces.ProductChangeListener;
import com.revenuecat.purchases.interfaces.UpdatedPurchaserInfoListener;
import java.util.Map;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/PurchasesState.class */
public final class PurchasesState {
    private final Boolean allowSharingPlayStoreAccount;
    private final boolean appInBackground;
    private final boolean firstTimeInForeground;
    private final PurchaserInfo lastSentPurchaserInfo;
    private final ProductChangeListener productChangeCallback;
    private final Map<String, MakePurchaseListener> purchaseCallbacks;
    private final UpdatedPurchaserInfoListener updatedPurchaserInfoListener;

    public PurchasesState() {
        this(null, null, null, null, null, false, false, 127, null);
    }

    public PurchasesState(Boolean bool, UpdatedPurchaserInfoListener updatedPurchaserInfoListener, Map<String, ? extends MakePurchaseListener> map, ProductChangeListener productChangeListener, PurchaserInfo purchaserInfo, boolean z, boolean z2) {
        k.f(map, "purchaseCallbacks");
        this.allowSharingPlayStoreAccount = bool;
        this.updatedPurchaserInfoListener = updatedPurchaserInfoListener;
        this.purchaseCallbacks = map;
        this.productChangeCallback = productChangeListener;
        this.lastSentPurchaserInfo = purchaserInfo;
        this.appInBackground = z;
        this.firstTimeInForeground = z2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ PurchasesState(java.lang.Boolean r10, com.revenuecat.purchases.interfaces.UpdatedPurchaserInfoListener r11, java.util.Map r12, com.revenuecat.purchases.interfaces.ProductChangeListener r13, com.revenuecat.purchases.PurchaserInfo r14, boolean r15, boolean r16, int r17, kotlin.w.c.g r18) {
        /*
            r9 = this;
            r0 = 0
            r18 = r0
            r0 = r17
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L_0x000f
            r0 = 0
            r10 = r0
            goto L_0x000f
        L_0x000f:
            r0 = r17
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x001b
            r0 = 0
            r11 = r0
            goto L_0x001b
        L_0x001b:
            r0 = r17
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0026
            java.util.Map r0 = kotlin.s.b0.e()
            r12 = r0
        L_0x0026:
            r0 = r17
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0034
            r0 = 0
            r13 = r0
            goto L_0x0034
        L_0x0034:
            r0 = r17
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0043
            r0 = r18
            r14 = r0
            goto L_0x0043
        L_0x0043:
            r0 = r17
            r1 = 32
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0051
            r0 = 1
            r15 = r0
            goto L_0x0051
        L_0x0051:
            r0 = r17
            r1 = 64
            r0 = r0 & r1
            if (r0 == 0) goto L_0x005f
            r0 = 1
            r16 = r0
            goto L_0x005f
        L_0x005f:
            r0 = r9
            r1 = r10
            r2 = r11
            r3 = r12
            r4 = r13
            r5 = r14
            r6 = r15
            r7 = r16
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.revenuecat.purchases.PurchasesState.<init>(java.lang.Boolean, com.revenuecat.purchases.interfaces.UpdatedPurchaserInfoListener, java.util.Map, com.revenuecat.purchases.interfaces.ProductChangeListener, com.revenuecat.purchases.PurchaserInfo, boolean, boolean, int, kotlin.w.c.g):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PurchasesState copy$default(PurchasesState purchasesState, Boolean bool, UpdatedPurchaserInfoListener updatedPurchaserInfoListener, Map map, ProductChangeListener productChangeListener, PurchaserInfo purchaserInfo, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            bool = purchasesState.allowSharingPlayStoreAccount;
        }
        if ((i & 2) != 0) {
            updatedPurchaserInfoListener = purchasesState.updatedPurchaserInfoListener;
        }
        if ((i & 4) != 0) {
            map = purchasesState.purchaseCallbacks;
        }
        if ((i & 8) != 0) {
            productChangeListener = purchasesState.productChangeCallback;
        }
        if ((i & 16) != 0) {
            purchaserInfo = purchasesState.lastSentPurchaserInfo;
        }
        if ((i & 32) != 0) {
            z = purchasesState.appInBackground;
        }
        if ((i & 64) != 0) {
            z2 = purchasesState.firstTimeInForeground;
        }
        return purchasesState.copy(bool, updatedPurchaserInfoListener, map, productChangeListener, purchaserInfo, z, z2);
    }

    public final Boolean component1() {
        return this.allowSharingPlayStoreAccount;
    }

    public final UpdatedPurchaserInfoListener component2() {
        return this.updatedPurchaserInfoListener;
    }

    public final Map<String, MakePurchaseListener> component3() {
        return this.purchaseCallbacks;
    }

    public final ProductChangeListener component4() {
        return this.productChangeCallback;
    }

    public final PurchaserInfo component5() {
        return this.lastSentPurchaserInfo;
    }

    public final boolean component6() {
        return this.appInBackground;
    }

    public final boolean component7() {
        return this.firstTimeInForeground;
    }

    public final PurchasesState copy(Boolean bool, UpdatedPurchaserInfoListener updatedPurchaserInfoListener, Map<String, ? extends MakePurchaseListener> map, ProductChangeListener productChangeListener, PurchaserInfo purchaserInfo, boolean z, boolean z2) {
        k.f(map, "purchaseCallbacks");
        return new PurchasesState(bool, updatedPurchaserInfoListener, map, productChangeListener, purchaserInfo, z, z2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PurchasesState)) {
            return false;
        }
        PurchasesState purchasesState = (PurchasesState) obj;
        return k.b(this.allowSharingPlayStoreAccount, purchasesState.allowSharingPlayStoreAccount) && k.b(this.updatedPurchaserInfoListener, purchasesState.updatedPurchaserInfoListener) && k.b(this.purchaseCallbacks, purchasesState.purchaseCallbacks) && k.b(this.productChangeCallback, purchasesState.productChangeCallback) && k.b(this.lastSentPurchaserInfo, purchasesState.lastSentPurchaserInfo) && this.appInBackground == purchasesState.appInBackground && this.firstTimeInForeground == purchasesState.firstTimeInForeground;
    }

    public final Boolean getAllowSharingPlayStoreAccount() {
        return this.allowSharingPlayStoreAccount;
    }

    public final boolean getAppInBackground() {
        return this.appInBackground;
    }

    public final boolean getFirstTimeInForeground() {
        return this.firstTimeInForeground;
    }

    public final PurchaserInfo getLastSentPurchaserInfo() {
        return this.lastSentPurchaserInfo;
    }

    public final ProductChangeListener getProductChangeCallback() {
        return this.productChangeCallback;
    }

    public final Map<String, MakePurchaseListener> getPurchaseCallbacks() {
        return this.purchaseCallbacks;
    }

    public final UpdatedPurchaserInfoListener getUpdatedPurchaserInfoListener() {
        return this.updatedPurchaserInfoListener;
    }

    public int hashCode() {
        Boolean bool = this.allowSharingPlayStoreAccount;
        int i = 0;
        int hashCode = bool != null ? bool.hashCode() : 0;
        UpdatedPurchaserInfoListener updatedPurchaserInfoListener = this.updatedPurchaserInfoListener;
        int hashCode2 = updatedPurchaserInfoListener != null ? updatedPurchaserInfoListener.hashCode() : 0;
        Map<String, MakePurchaseListener> map = this.purchaseCallbacks;
        int hashCode3 = map != null ? map.hashCode() : 0;
        ProductChangeListener productChangeListener = this.productChangeCallback;
        int hashCode4 = productChangeListener != null ? productChangeListener.hashCode() : 0;
        PurchaserInfo purchaserInfo = this.lastSentPurchaserInfo;
        if (purchaserInfo != null) {
            i = purchaserInfo.hashCode();
        }
        boolean z = this.appInBackground;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        boolean z2 = this.firstTimeInForeground;
        if (!z2) {
            i2 = z2 ? 1 : 0;
        }
        return (((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i) * 31) + i3) * 31) + i2;
    }

    public String toString() {
        return "PurchasesState(allowSharingPlayStoreAccount=" + this.allowSharingPlayStoreAccount + ", updatedPurchaserInfoListener=" + this.updatedPurchaserInfoListener + ", purchaseCallbacks=" + this.purchaseCallbacks + ", productChangeCallback=" + this.productChangeCallback + ", lastSentPurchaserInfo=" + this.lastSentPurchaserInfo + ", appInBackground=" + this.appInBackground + ", firstTimeInForeground=" + this.firstTimeInForeground + ")";
    }
}
