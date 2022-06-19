package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfg.class */
public final /* synthetic */ class zzbfg implements Comparator {
    public static final /* synthetic */ zzbfg zza = new zzbfg();

    private /* synthetic */ zzbfg() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        List<String> list = RequestConfiguration.zza;
        return list.indexOf((String) obj) - list.indexOf((String) obj2);
    }
}
