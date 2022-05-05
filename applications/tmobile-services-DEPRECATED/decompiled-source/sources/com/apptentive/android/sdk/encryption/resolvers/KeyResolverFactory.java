package com.apptentive.android.sdk.encryption.resolvers;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/encryption/resolvers/KeyResolverFactory.class */
public class KeyResolverFactory {
    @NonNull
    public static KeyResolver createKeyResolver(int i) {
        return i == 26 ? new KeyResolver26() : i >= 23 ? new KeyResolver23() : i >= 18 ? new KeyResolver18() : new KeyResolverNoOp();
    }
}
