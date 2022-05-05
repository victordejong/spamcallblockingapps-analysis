package com.apptentive.android.sdk.encryption.resolvers;

import android.content.Context;
import androidx.annotation.NonNull;
import com.apptentive.android.sdk.encryption.EncryptionKey;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/encryption/resolvers/KeyResolverNoOp.class */
class KeyResolverNoOp implements KeyResolver {
    @Override // com.apptentive.android.sdk.encryption.resolvers.KeyResolver
    @NonNull
    public EncryptionKey resolveKey(Context context, String str) {
        return EncryptionKey.NULL;
    }
}
