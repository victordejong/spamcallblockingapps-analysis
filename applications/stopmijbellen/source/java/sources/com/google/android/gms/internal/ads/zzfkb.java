package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfkb.class */
public final class zzfkb {
    private final zzfki zza;
    private final zzfki zzb;
    private final zzfkf zzc;
    private final zzfkh zzd;

    private zzfkb(zzfkf zzfkfVar, zzfkh zzfkhVar, zzfki zzfkiVar, zzfki zzfkiVar2, boolean z) {
        this.zzc = zzfkfVar;
        this.zzd = zzfkhVar;
        this.zza = zzfkiVar;
        if (zzfkiVar2 == null) {
            this.zzb = zzfki.NONE;
        } else {
            this.zzb = zzfkiVar2;
        }
    }

    public static zzfkb zza(zzfkf zzfkfVar, zzfkh zzfkhVar, zzfki zzfkiVar, zzfki zzfkiVar2, boolean z) {
        zzfli.zzb(zzfkhVar, "ImpressionType is null");
        zzfli.zzb(zzfkiVar, "Impression owner is null");
        if (zzfkiVar != zzfki.NONE) {
            if (zzfkfVar == zzfkf.DEFINED_BY_JAVASCRIPT && zzfkiVar == zzfki.NATIVE) {
                throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
            }
            if (zzfkhVar != zzfkh.DEFINED_BY_JAVASCRIPT || zzfkiVar != zzfki.NATIVE) {
                return new zzfkb(zzfkfVar, zzfkhVar, zzfkiVar, zzfkiVar2, true);
            }
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        throw new IllegalArgumentException("Impression owner is none");
    }

    public final JSONObject zzb() {
        JSONObject jSONObject = new JSONObject();
        zzflg.zzg(jSONObject, "impressionOwner", this.zza);
        if (this.zzd != null) {
            zzflg.zzg(jSONObject, "mediaEventsOwner", this.zzb);
            zzflg.zzg(jSONObject, "creativeType", this.zzc);
            zzflg.zzg(jSONObject, "impressionType", this.zzd);
        } else {
            zzflg.zzg(jSONObject, "videoEventsOwner", this.zzb);
        }
        zzflg.zzg(jSONObject, "isolateVerificationScripts", Boolean.TRUE);
        return jSONObject;
    }
}
