package com.revenuecat.purchases;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/PurchasesErrorCode.class */
public enum PurchasesErrorCode {
    UnknownError("Unknown error."),
    PurchaseCancelledError("Purchase was cancelled."),
    StoreProblemError("There was a problem with the Play Store."),
    PurchaseNotAllowedError("The device or user is not allowed to make the purchase."),
    PurchaseInvalidError("One or more of the arguments provided are invalid."),
    ProductNotAvailableForPurchaseError("The product is not available for purchase."),
    ProductAlreadyPurchasedError("This product is already active for the user."),
    ReceiptAlreadyInUseError("There is already another active subscriber using the same receipt."),
    InvalidReceiptError("The receipt is not valid."),
    MissingReceiptFileError("The receipt is missing."),
    NetworkError("Error performing request."),
    InvalidCredentialsError("There was a credentials issue. Check the underlying error for more details."),
    UnexpectedBackendResponseError("Received malformed response from the backend."),
    ReceiptInUseByOtherSubscriberError("The receipt is in use by other subscriber."),
    InvalidAppUserIdError("The app user id is not valid."),
    OperationAlreadyInProgressError("The operation is already in progress."),
    UnknownBackendError("There was an unknown backend error."),
    InvalidAppleSubscriptionKeyError("Apple Subscription Key is invalid or not present. In order to provide subscription offers, you must first generate a subscription key. Please see https://docs.revenuecat.com/docs/ios-subscription-offers for more info."),
    IneligibleError("The User is ineligible for that action."),
    InsufficientPermissionsError("App does not have sufficient permissions to make purchases."),
    PaymentPendingError("The payment is pending."),
    InvalidSubscriberAttributesError("One or more of the attributes sent could not be saved.");
    
    private final String description;

    PurchasesErrorCode(String str) {
        this.description = str;
    }

    public final String getDescription() {
        return this.description;
    }
}
