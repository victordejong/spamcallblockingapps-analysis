package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfhv.class */
public abstract class zzfhv extends zzfhw {
    public final HashSet<String> zza;
    public final JSONObject zzb;
    public final long zzc;

    /* JADX WARN: Multi-variable type inference failed */
    public zzfhv(zzfho zzfhoVar, zzfho zzfhoVar2, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(zzfhoVar, null);
        this.zza = new HashSet<>((Collection<? extends String>) zzfhoVar2);
        this.zzb = hashSet;
        this.zzc = jSONObject;
    }
}
