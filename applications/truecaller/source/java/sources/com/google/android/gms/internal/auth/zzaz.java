package com.google.android.gms.internal.auth;

import com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzaz.class */
public abstract class zzaz extends FastSafeParcelableJsonResponse {
    private static String zzem = "AUTH";

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse
    public byte[] toByteArray() {
        try {
            return toString().getBytes(StringConstant.UTF8);
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }
}
