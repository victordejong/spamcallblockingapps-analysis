package com.revenuecat.purchases;

import android.app.Activity;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.SkuDetails;
import com.revenuecat.purchases.interfaces.GetSkusResponseListener;
import com.revenuecat.purchases.interfaces.MakePurchaseListener;
import com.revenuecat.purchases.interfaces.ProductChangeListener;
import com.revenuecat.purchases.interfaces.ReceiveOfferingsListener;
import com.revenuecat.purchases.interfaces.ReceivePurchaserInfoListener;
import java.util.List;
import kotlin.r;
import kotlin.w.b.l;
import kotlin.w.b.p;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/ListenerConversionsKt.class */
public final class ListenerConversionsKt {
    private static final l<PurchasesError, r> ON_ERROR_STUB = ON_ERROR_STUB.1.INSTANCE;
    private static final p<PurchasesError, Boolean, r> ON_PURCHASE_ERROR_STUB = ON_PURCHASE_ERROR_STUB.1.INSTANCE;

    public static final void createAliasWith(Purchases purchases, String str, l<? super PurchasesError, r> lVar, l<? super PurchaserInfo, r> lVar2) {
        k.f(purchases, "$this$createAliasWith");
        k.f(str, "newAppUserID");
        k.f(lVar, "onError");
        k.f(lVar2, "onSuccess");
        purchases.createAlias(str, receivePurchaserInfoListener(lVar2, lVar));
    }

    public static /* synthetic */ void createAliasWith$default(Purchases purchases, String str, l lVar, l lVar2, int i, Object obj) {
        if ((i & 2) != 0) {
            lVar = ON_ERROR_STUB;
        }
        createAliasWith(purchases, str, lVar, lVar2);
    }

    public static final void getNonSubscriptionSkusWith(Purchases purchases, List<String> list, l<? super PurchasesError, r> lVar, l<? super List<? extends SkuDetails>, r> lVar2) {
        k.f(purchases, "$this$getNonSubscriptionSkusWith");
        k.f(list, "skus");
        k.f(lVar, "onError");
        k.f(lVar2, "onReceiveSkus");
        purchases.getNonSubscriptionSkus(list, getSkusResponseListener(lVar2, lVar));
    }

    public static final void getOfferingsWith(Purchases purchases, l<? super PurchasesError, r> lVar, l<? super Offerings, r> lVar2) {
        k.f(purchases, "$this$getOfferingsWith");
        k.f(lVar, "onError");
        k.f(lVar2, "onSuccess");
        purchases.getOfferings(receiveOfferingsListener(lVar2, lVar));
    }

    public static /* synthetic */ void getOfferingsWith$default(Purchases purchases, l lVar, l lVar2, int i, Object obj) {
        if ((i & 1) != 0) {
            lVar = ON_ERROR_STUB;
        }
        getOfferingsWith(purchases, lVar, lVar2);
    }

    public static final void getPurchaserInfoWith(Purchases purchases, l<? super PurchasesError, r> lVar, l<? super PurchaserInfo, r> lVar2) {
        k.f(purchases, "$this$getPurchaserInfoWith");
        k.f(lVar, "onError");
        k.f(lVar2, "onSuccess");
        purchases.getPurchaserInfo(receivePurchaserInfoListener(lVar2, lVar));
    }

    public static /* synthetic */ void getPurchaserInfoWith$default(Purchases purchases, l lVar, l lVar2, int i, Object obj) {
        if ((i & 1) != 0) {
            lVar = ON_ERROR_STUB;
        }
        getPurchaserInfoWith(purchases, lVar, lVar2);
    }

    public static final GetSkusResponseListener getSkusResponseListener(l<? super List<? extends SkuDetails>, r> lVar, l<? super PurchasesError, r> lVar2) {
        k.f(lVar, "onReceived");
        k.f(lVar2, "onError");
        return new getSkusResponseListener.1(lVar, lVar2);
    }

    public static final void getSubscriptionSkusWith(Purchases purchases, List<String> list, l<? super PurchasesError, r> lVar, l<? super List<? extends SkuDetails>, r> lVar2) {
        k.f(purchases, "$this$getSubscriptionSkusWith");
        k.f(list, "skus");
        k.f(lVar, "onError");
        k.f(lVar2, "onReceiveSkus");
        purchases.getSubscriptionSkus(list, getSkusResponseListener(lVar2, lVar));
    }

    public static /* synthetic */ void getSubscriptionSkusWith$default(Purchases purchases, List list, l lVar, l lVar2, int i, Object obj) {
        if ((i & 2) != 0) {
            lVar = ON_ERROR_STUB;
        }
        getSubscriptionSkusWith(purchases, list, lVar, lVar2);
    }

    public static final void identifyWith(Purchases purchases, String str, l<? super PurchasesError, r> lVar, l<? super PurchaserInfo, r> lVar2) {
        k.f(purchases, "$this$identifyWith");
        k.f(str, "appUserID");
        k.f(lVar, "onError");
        k.f(lVar2, "onSuccess");
        purchases.identify(str, receivePurchaserInfoListener(lVar2, lVar));
    }

    public static /* synthetic */ void identifyWith$default(Purchases purchases, String str, l lVar, l lVar2, int i, Object obj) {
        if ((i & 2) != 0) {
            lVar = ON_ERROR_STUB;
        }
        identifyWith(purchases, str, lVar, lVar2);
    }

    public static final ProductChangeListener productChangeCompletedListener(p<? super Purchase, ? super PurchaserInfo, r> pVar, p<? super PurchasesError, ? super Boolean, r> pVar2) {
        k.f(pVar, "onSuccess");
        k.f(pVar2, "onError");
        return new productChangeCompletedListener.1(pVar, pVar2);
    }

    public static final MakePurchaseListener purchaseCompletedListener(p<? super Purchase, ? super PurchaserInfo, r> pVar, p<? super PurchasesError, ? super Boolean, r> pVar2) {
        k.f(pVar, "onSuccess");
        k.f(pVar2, "onError");
        return new purchaseCompletedListener.1(pVar, pVar2);
    }

    public static final void purchasePackageWith(Purchases purchases, Activity activity, Package r9, UpgradeInfo upgradeInfo, p<? super PurchasesError, ? super Boolean, r> pVar, p<? super Purchase, ? super PurchaserInfo, r> pVar2) {
        k.f(purchases, "$this$purchasePackageWith");
        k.f(activity, "activity");
        k.f(r9, "packageToPurchase");
        k.f(upgradeInfo, "upgradeInfo");
        k.f(pVar, "onError");
        k.f(pVar2, "onSuccess");
        purchases.purchasePackage(activity, r9, upgradeInfo, productChangeCompletedListener(pVar2, pVar));
    }

    public static final void purchasePackageWith(Purchases purchases, Activity activity, Package r8, p<? super PurchasesError, ? super Boolean, r> pVar, p<? super Purchase, ? super PurchaserInfo, r> pVar2) {
        k.f(purchases, "$this$purchasePackageWith");
        k.f(activity, "activity");
        k.f(r8, "packageToPurchase");
        k.f(pVar, "onError");
        k.f(pVar2, "onSuccess");
        purchases.purchasePackage(activity, r8, purchaseCompletedListener(pVar2, pVar));
    }

    public static /* synthetic */ void purchasePackageWith$default(Purchases purchases, Activity activity, Package r9, UpgradeInfo upgradeInfo, p pVar, p pVar2, int i, Object obj) {
        if ((i & 8) != 0) {
            pVar = ON_PURCHASE_ERROR_STUB;
        }
        purchasePackageWith(purchases, activity, r9, upgradeInfo, pVar, pVar2);
    }

    public static /* synthetic */ void purchasePackageWith$default(Purchases purchases, Activity activity, Package r8, p pVar, p pVar2, int i, Object obj) {
        if ((i & 4) != 0) {
            pVar = ON_PURCHASE_ERROR_STUB;
        }
        purchasePackageWith(purchases, activity, r8, pVar, pVar2);
    }

    public static final void purchaseProductWith(Purchases purchases, Activity activity, SkuDetails skuDetails, UpgradeInfo upgradeInfo, p<? super PurchasesError, ? super Boolean, r> pVar, p<? super Purchase, ? super PurchaserInfo, r> pVar2) {
        k.f(purchases, "$this$purchaseProductWith");
        k.f(activity, "activity");
        k.f(skuDetails, "skuDetails");
        k.f(upgradeInfo, "upgradeInfo");
        k.f(pVar, "onError");
        k.f(pVar2, "onSuccess");
        purchases.purchaseProduct(activity, skuDetails, upgradeInfo, productChangeCompletedListener(pVar2, pVar));
    }

    public static final void purchaseProductWith(Purchases purchases, Activity activity, SkuDetails skuDetails, p<? super PurchasesError, ? super Boolean, r> pVar, p<? super Purchase, ? super PurchaserInfo, r> pVar2) {
        k.f(purchases, "$this$purchaseProductWith");
        k.f(activity, "activity");
        k.f(skuDetails, "skuDetails");
        k.f(pVar, "onError");
        k.f(pVar2, "onSuccess");
        purchases.purchaseProduct(activity, skuDetails, purchaseCompletedListener(pVar2, pVar));
    }

    public static /* synthetic */ void purchaseProductWith$default(Purchases purchases, Activity activity, SkuDetails skuDetails, UpgradeInfo upgradeInfo, p pVar, p pVar2, int i, Object obj) {
        if ((i & 8) != 0) {
            pVar = ON_PURCHASE_ERROR_STUB;
        }
        purchaseProductWith(purchases, activity, skuDetails, upgradeInfo, pVar, pVar2);
    }

    public static /* synthetic */ void purchaseProductWith$default(Purchases purchases, Activity activity, SkuDetails skuDetails, p pVar, p pVar2, int i, Object obj) {
        if ((i & 4) != 0) {
            pVar = ON_PURCHASE_ERROR_STUB;
        }
        purchaseProductWith(purchases, activity, skuDetails, pVar, pVar2);
    }

    public static final ReceiveOfferingsListener receiveOfferingsListener(l<? super Offerings, r> lVar, l<? super PurchasesError, r> lVar2) {
        k.f(lVar, "onSuccess");
        k.f(lVar2, "onError");
        return new receiveOfferingsListener.1(lVar, lVar2);
    }

    public static final ReceivePurchaserInfoListener receivePurchaserInfoListener(l<? super PurchaserInfo, r> lVar, l<? super PurchasesError, r> lVar2) {
        return new receivePurchaserInfoListener.1(lVar, lVar2);
    }

    public static final void resetWith(Purchases purchases, l<? super PurchasesError, r> lVar, l<? super PurchaserInfo, r> lVar2) {
        k.f(purchases, "$this$resetWith");
        k.f(lVar, "onError");
        k.f(lVar2, "onSuccess");
        purchases.reset(receivePurchaserInfoListener(lVar2, lVar));
    }

    public static /* synthetic */ void resetWith$default(Purchases purchases, l lVar, l lVar2, int i, Object obj) {
        if ((i & 1) != 0) {
            lVar = ON_ERROR_STUB;
        }
        resetWith(purchases, lVar, lVar2);
    }

    public static final void restorePurchasesWith(Purchases purchases, l<? super PurchasesError, r> lVar, l<? super PurchaserInfo, r> lVar2) {
        k.f(purchases, "$this$restorePurchasesWith");
        k.f(lVar, "onError");
        k.f(lVar2, "onSuccess");
        purchases.restorePurchases(receivePurchaserInfoListener(lVar2, lVar));
    }

    public static /* synthetic */ void restorePurchasesWith$default(Purchases purchases, l lVar, l lVar2, int i, Object obj) {
        if ((i & 1) != 0) {
            lVar = ON_ERROR_STUB;
        }
        restorePurchasesWith(purchases, lVar, lVar2);
    }
}
