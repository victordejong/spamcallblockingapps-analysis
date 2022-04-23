package com.apptentive.android.sdk.encryption.resolvers;

import android.content.Context;
import android.support.annotation.NonNull;
import com.apptentive.android.sdk.encryption.EncryptionKey;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/encryption/resolvers/KeyResolver.class */
public interface KeyResolver {
    @NonNull
    EncryptionKey resolveKey(Context context, String str) throws Exception;
}
