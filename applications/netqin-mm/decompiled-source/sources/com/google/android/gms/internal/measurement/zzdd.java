package com.google.android.gms.internal.measurement;

import android.net.Uri;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdd.class */
public final class zzdd {

    /* renamed from: a */
    public final Map<String, Map<String, String>> f29452a;

    public zzdd(Map<String, Map<String, String>> map) {
        this.f29452a = map;
    }

    /* renamed from: a */
    public final String m9850a(Uri uri, String str, String str2, String str3) {
        if (uri == null) {
            return null;
        }
        Map<String, String> map = this.f29452a.get(uri.toString());
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
