package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzds.class */
public final class zzds {
    private final int limit;
    private final zzdj zzhg;
    private final boolean zzhh;
    private final zzdw zzhi;

    private zzds(zzdw zzdwVar) {
        this(zzdwVar, false, zzdn.zzhe, Api.BaseClientBuilder.API_PRIORITY_OTHER);
    }

    private zzds(zzdw zzdwVar, boolean z, zzdj zzdjVar, int i) {
        this.zzhi = zzdwVar;
        this.zzhh = false;
        this.zzhg = zzdjVar;
        this.limit = Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    public static zzds zza(zzdj zzdjVar) {
        zzdt.checkNotNull(zzdjVar);
        return new zzds(new zzdv(zzdjVar));
    }

    public final List<String> zza(CharSequence charSequence) {
        zzdt.checkNotNull(charSequence);
        Iterator<String> zza = this.zzhi.zza(this, charSequence);
        ArrayList arrayList = new ArrayList();
        while (zza.hasNext()) {
            arrayList.add(zza.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
