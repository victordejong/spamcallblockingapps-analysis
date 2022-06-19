package com.google.android.gms.internal.measurement;

import android.net.Uri;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzhi.class */
public final class zzhi {
    private final Map zza;

    public zzhi(Map map) {
        this.zza = map;
    }

    public final String zza(Uri uri, String str, String str2, String str3) {
        if (uri != null) {
            Map map = (Map) this.zza.get(uri.toString());
            if (map == null) {
                return null;
            }
            String valueOf = String.valueOf(str3);
            return (String) map.get(valueOf.length() != 0 ? "".concat(valueOf) : new String(""));
        }
        return null;
    }
}
