package com.google.android.gms.internal.measurement;

import android.net.Uri;
import java.util.Map;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdd.class */
public final class zzdd {

    /* renamed from: a */
    private final Map<String, Map<String, String>> f8340a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdd(Map<String, Map<String, String>> map) {
        this.f8340a = map;
    }

    @Nullable
    /* renamed from: a */
    public final String m12781a(@Nullable Uri uri, @Nullable String str, @Nullable String str2, String str3) {
        if (uri == null) {
            return null;
        }
        Map<String, String> map = this.f8340a.get(uri.toString());
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
