package com.google.android.gms.internal.measurement;

import android.net.Uri;
import java.util.Map;
import javax.annotation.Nullable;
/* renamed from: com.google.android.gms.internal.measurement.g3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/g3.class */
public final class C2115g3 {

    /* renamed from: a */
    private final Map<String, Map<String, String>> f9750a;

    C2115g3(Map<String, Map<String, String>> map) {
        this.f9750a = map;
    }

    @Nullable
    /* renamed from: a */
    public final String m4329a(@Nullable Uri uri, @Nullable String str, @Nullable String str2, String str3) {
        if (uri != null) {
            Map<String, String> map = this.f9750a.get(uri.toString());
            if (map == null) {
                return null;
            }
            String valueOf = String.valueOf(str3);
            return map.get(valueOf.length() != 0 ? "".concat(valueOf) : new String(""));
        }
        return null;
    }
}
