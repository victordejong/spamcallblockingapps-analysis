package com.revenuecat.purchases.common;

import kotlin.w.c.g;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/BackendErrorCode.class */
public enum BackendErrorCode {
    BackendInvalidPlatform(7000),
    BackendStoreProblem(7101),
    BackendCannotTransferPurchase(7102),
    BackendInvalidReceiptToken(7103),
    BackendInvalidAppStoreSharedSecret(7104),
    BackendInvalidPaymentModeOrIntroPriceNotProvided(7105),
    BackendProductIdForGoogleReceiptNotProvided(7106),
    BackendInvalidPlayStoreCredentials(7107),
    BackendInternalServerError(7110),
    BackendEmptyAppUserId(7220),
    BackendInvalidAuthToken(7224),
    BackendInvalidAPIKey(7225),
    BackendBadRequest(7226),
    BackendPlayStoreQuotaExceeded(7229),
    BackendPlayStoreInvalidPackageName(7230),
    BackendPlayStoreGenericError(7231),
    BackendUserIneligibleForPromoOffer(7232),
    BackendInvalidAppleSubscriptionKey(7234),
    BackendInvalidSubscriberAttributes(7263),
    BackendInvalidSubscriberAttributesBody(7264);
    
    public static final Companion Companion = new Companion(null);
    private final int value;

    /* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/BackendErrorCode$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public final BackendErrorCode valueOf(int i) {
            BackendErrorCode backendErrorCode;
            BackendErrorCode[] values = BackendErrorCode.values();
            int length = values.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    backendErrorCode = null;
                    break;
                }
                backendErrorCode = values[i2];
                if (backendErrorCode.getValue() == i) {
                    break;
                }
                i2++;
            }
            return backendErrorCode;
        }
    }

    BackendErrorCode(int i) {
        this.value = i;
    }

    public final int getValue() {
        return this.value;
    }
}
