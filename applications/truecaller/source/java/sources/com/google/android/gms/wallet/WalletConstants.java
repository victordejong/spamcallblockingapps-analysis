package com.google.android.gms.wallet;

import android.accounts.Account;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/WalletConstants.class */
public final class WalletConstants {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/WalletConstants$BillingAddressFormat.class */
    public @interface BillingAddressFormat {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/WalletConstants$CardClass.class */
    public @interface CardClass {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/WalletConstants$CardNetwork.class */
    public @interface CardNetwork {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/WalletConstants$PaymentMethod.class */
    public @interface PaymentMethod {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/WalletConstants$PaymentMethodTokenizationType.class */
    public @interface PaymentMethodTokenizationType {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/WalletConstants$TotalPriceStatus.class */
    public @interface TotalPriceStatus {
    }

    static {
        new Account("ACCOUNT_NO_WALLET", "com.google");
    }

    private WalletConstants() {
    }
}
