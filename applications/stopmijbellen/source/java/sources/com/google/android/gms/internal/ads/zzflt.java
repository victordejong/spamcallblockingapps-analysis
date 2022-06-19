package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzflt.class */
public abstract class zzflt extends zzflu {
    public final HashSet<String> zza;
    public final JSONObject zzb;
    public final long zzc;

    /* JADX WARN: Multi-variable type inference failed */
    public zzflt(zzflm zzflmVar, zzflm zzflmVar2, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(zzflmVar, null);
        this.zza = new HashSet<>((Collection<? extends String>) zzflmVar2);
        this.zzb = hashSet;
        this.zzc = jSONObject;
    }
}
