package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import android.util.LogPrinter;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collections;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zze.class */
public final class zze implements zzo {
    private static final Uri zzrd;
    private final LogPrinter zzrx = new LogPrinter(4, "GA/LogCatTransport");

    static {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("uri");
        builder.authority(ImagesContract.LOCAL);
        zzrd = builder.build();
    }

    @Override // com.google.android.gms.analytics.zzo
    public final void zzb(zzg zzgVar) {
        ArrayList arrayList = new ArrayList(zzgVar.zzt());
        Collections.sort(arrayList, new zzf(this));
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            int i2 = i + 1;
            String obj2 = ((zzi) obj).toString();
            i = i2;
            if (!TextUtils.isEmpty(obj2)) {
                if (sb.length() != 0) {
                    sb.append(", ");
                }
                sb.append(obj2);
                i = i2;
            }
        }
        this.zzrx.println(sb.toString());
    }

    @Override // com.google.android.gms.analytics.zzo
    public final Uri zzo() {
        return zzrd;
    }
}
