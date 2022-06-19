package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbk.class */
public final class zzcbk implements zzeqb<JSONObject> {
    private final zzcbi zzgdb;

    public zzcbk(zzcbi zzcbiVar) {
        this.zzgdb = zzcbiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (JSONObject) zzeqh.zza(this.zzgdb.zzanm(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
