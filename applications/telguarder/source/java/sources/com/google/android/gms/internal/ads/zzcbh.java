package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbh.class */
public final class zzcbh implements zzeqb<JSONObject> {
    private final zzeqo<zzcch> zzfih;
    private final zzcbi zzgdb;

    public zzcbh(zzcbi zzcbiVar, zzeqo<zzcch> zzeqoVar) {
        this.zzgdb = zzcbiVar;
        this.zzfih = zzeqoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return this.zzfih.get().zzaof();
    }
}
