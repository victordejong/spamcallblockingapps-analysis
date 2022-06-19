package com.google.android.gms.internal.vision;

import android.net.Uri;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzba.class */
public final class zzba {
    private final Map<String, Map<String, String>> map;

    public zzba(Map<String, Map<String, String>> map) {
        this.map = map;
    }

    public final String zza(Uri uri, String str, String str2, String str3) {
        if (uri != null) {
            str = uri.toString();
        } else if (str == null) {
            return null;
        }
        Map<String, String> map = this.map.get(str);
        if (map == null) {
            return null;
        }
        String str4 = str3;
        if (str2 != null) {
            String valueOf = String.valueOf(str3);
            str4 = valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2);
        }
        return map.get(str4);
    }
}
