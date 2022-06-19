package com.google.android.libraries.places.internal;

import android.text.TextUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzcl.class */
public final class zzcl {
    public static int zza(String str) {
        if (str == null) {
            return 13;
        }
        boolean z = true;
        switch (str.hashCode()) {
            case -1698126997:
                if (str.equals("REQUEST_DENIED")) {
                    z = true;
                    break;
                }
                break;
            case -1125000185:
                if (str.equals("INVALID_REQUEST")) {
                    z = true;
                    break;
                }
                break;
            case -813482689:
                if (str.equals("ZERO_RESULTS")) {
                    z = true;
                    break;
                }
                break;
            case 2524:
                if (str.equals("OK")) {
                    z = false;
                    break;
                }
                break;
            case 1023286998:
                if (str.equals("NOT_FOUND")) {
                    z = true;
                    break;
                }
                break;
            case 1776037267:
                if (str.equals("UNKNOWN_ERROR")) {
                    z = true;
                    break;
                }
                break;
            case 1831775833:
                if (str.equals("OVER_QUERY_LIMIT")) {
                    z = true;
                    break;
                }
                break;
        }
        if (!z || z) {
            return 0;
        }
        if (z) {
            return 9010;
        }
        if (z) {
            return 9011;
        }
        if (z) {
            return 9012;
        }
        return !z ? 13 : 9013;
    }

    public static String zza(String str, String str2) {
        return TextUtils.isEmpty(str2) ? str : str2;
    }
}
