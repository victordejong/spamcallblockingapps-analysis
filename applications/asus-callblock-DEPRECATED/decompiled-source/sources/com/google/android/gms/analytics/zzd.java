package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import android.util.LogPrinter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzd.class */
public final class zzd implements zzk {

    /* renamed from: a  reason: collision with root package name */
    private static final Uri f3892a;

    /* renamed from: b  reason: collision with root package name */
    private final LogPrinter f3893b = new LogPrinter(4, "GA/LogCatTransport");

    static {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("uri");
        builder.authority("local");
        f3892a = builder.build();
    }

    @Override // com.google.android.gms.analytics.zzk
    public final void zzb(zze zzeVar) {
        ArrayList<zzg> arrayList = new ArrayList(zzeVar.zzkz());
        Collections.sort(arrayList, new Comparator<zzg>() { // from class: com.google.android.gms.analytics.zzd.1
            @Override // java.util.Comparator
            public final /* synthetic */ int compare(zzg zzgVar, zzg zzgVar2) {
                return zzgVar.getClass().getCanonicalName().compareTo(zzgVar2.getClass().getCanonicalName());
            }
        });
        StringBuilder sb = new StringBuilder();
        for (zzg zzgVar : arrayList) {
            String obj = zzgVar.toString();
            if (!TextUtils.isEmpty(obj)) {
                if (sb.length() != 0) {
                    sb.append(", ");
                }
                sb.append(obj);
            }
        }
        this.f3893b.println(sb.toString());
    }

    @Override // com.google.android.gms.analytics.zzk
    public final Uri zzkn() {
        return f3892a;
    }
}
