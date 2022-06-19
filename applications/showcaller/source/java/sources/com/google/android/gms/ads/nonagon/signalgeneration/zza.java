package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.Pair;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zza.class */
public final class zza extends LinkedHashMap<String, Pair<Long, String>> {
    final /* synthetic */ C5824k zza;

    public zza(C5824k c5824k) {
        this.zza = c5824k;
    }

    @Override // java.util.LinkedHashMap
    protected final boolean removeEldestEntry(Map.Entry<String, Pair<Long, String>> entry) {
        int i;
        int size = size();
        i = this.zza.f18757a;
        return size > i;
    }
}
