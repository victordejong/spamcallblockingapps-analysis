package com.google.android.gms.internal.measurement;

import android.net.Uri;
import java.util.Map;
import javax.annotation.Nullable;
/* renamed from: com.google.android.gms.internal.measurement.bf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bf.class */
public final class C3817bf {

    /* renamed from: a */
    private final Map<String, Map<String, String>> f17882a;

    public C3817bf(Map<String, Map<String, String>> map) {
        this.f17882a = map;
    }

    @Nullable
    /* renamed from: a */
    public final String m5884a(@Nullable Uri uri, @Nullable String str, @Nullable String str2, String str3) {
        String str4;
        String str5;
        if (uri != null) {
            str4 = uri.toString();
        } else {
            str4 = str;
            if (str == null) {
                str5 = null;
                return str5;
            }
        }
        Map<String, String> map = this.f17882a.get(str4);
        if (map == null) {
            str5 = null;
        } else {
            String str6 = str3;
            if (str2 != null) {
                String valueOf = String.valueOf(str2);
                String valueOf2 = String.valueOf(str3);
                str6 = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
            }
            str5 = map.get(str6);
        }
        return str5;
    }
}
