package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaht.class */
public final class zzaht extends zzahg {
    public zzaht() {
    }

    public zzaht(zzahs zzahsVar, SSLSocketFactory sSLSocketFactory) {
    }

    public static List<zzagk> zza(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                for (String str : entry.getValue()) {
                    arrayList.add(new zzagk(entry.getKey(), str));
                }
            }
        }
        return arrayList;
    }
}
