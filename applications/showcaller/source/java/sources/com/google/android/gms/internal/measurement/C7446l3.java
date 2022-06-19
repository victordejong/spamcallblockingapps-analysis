package com.google.android.gms.internal.measurement;

import android.net.Uri;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.l3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/l3.class */
public final class C7446l3 {

    /* renamed from: a */
    private final Map<String, Map<String, String>> f34577a;

    public C7446l3(Map<String, Map<String, String>> map) {
        this.f34577a = map;
    }

    /* renamed from: a */
    public final String m7190a(Uri uri, String str, String str2, String str3) {
        if (uri != null) {
            Map<String, String> map = this.f34577a.get(uri.toString());
            if (map == null) {
                return null;
            }
            String valueOf = String.valueOf(str3);
            return map.get(valueOf.length() != 0 ? "".concat(valueOf) : new String(""));
        }
        return null;
    }
}
