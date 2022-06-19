package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdj.class */
public final /* synthetic */ class zzbdj implements Comparator {
    public static final Comparator zza = new zzbdj();

    private zzbdj() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        List<String> list = RequestConfiguration.zza;
        return list.indexOf((String) obj) - list.indexOf((String) obj2);
    }
}
