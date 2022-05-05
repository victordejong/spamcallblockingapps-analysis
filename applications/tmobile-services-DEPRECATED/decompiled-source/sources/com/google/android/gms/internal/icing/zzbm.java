package com.google.android.gms.internal.icing;

import android.net.Uri;
import java.util.Map;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbm.class */
public final class zzbm {

    /* renamed from: a */
    private final Map<String, Map<String, String>> f7912a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbm(Map<String, Map<String, String>> map) {
        this.f7912a = map;
    }

    @Nullable
    /* renamed from: a */
    public final String m14016a(@Nullable Uri uri, @Nullable String str, @Nullable String str2, String str3) {
        if (uri != null) {
            str = uri.toString();
        } else if (str == null) {
            return null;
        }
        Map<String, String> map = this.f7912a.get(str);
        if (map == null) {
            return null;
        }
        String str4 = str3;
        if (str2 != null) {
            String valueOf = String.valueOf(str2);
            String valueOf2 = String.valueOf(str3);
            str4 = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        }
        return map.get(str4);
    }
}
