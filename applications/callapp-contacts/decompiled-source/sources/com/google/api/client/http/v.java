package com.google.api.client.http;

import com.explorestack.iab.vast.VastError;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/v.class */
public final class v {
    public static boolean a(int i) {
        return i >= 200 && i < 300;
    }

    public static boolean b(int i) {
        if (i == 307 || i == 308) {
            return true;
        }
        switch (i) {
            case VastError.ERROR_CODE_BAD_URI /* 301 */:
            case VastError.ERROR_CODE_EXCEEDED_WRAPPER_LIMIT /* 302 */:
            case VastError.ERROR_CODE_WRAPPER_RESPONSE_NO_AD /* 303 */:
                return true;
            default:
                return false;
        }
    }
}
