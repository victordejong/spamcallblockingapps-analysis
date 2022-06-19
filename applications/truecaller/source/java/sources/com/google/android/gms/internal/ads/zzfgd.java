package com.google.android.gms.internal.ads;

import com.mopub.mobileads.VastResourceXmlManager;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfgd.class */
public final class zzfgd {
    private final zzfgk zza;
    private final zzfgk zzb;
    private final zzfgh zzc;
    private final zzfgj zzd;

    private zzfgd(zzfgh zzfghVar, zzfgj zzfgjVar, zzfgk zzfgkVar, zzfgk zzfgkVar2, boolean z) {
        this.zzc = zzfghVar;
        this.zzd = zzfgjVar;
        this.zza = zzfgkVar;
        if (zzfgkVar2 == null) {
            this.zzb = zzfgk.NONE;
        } else {
            this.zzb = zzfgkVar2;
        }
    }

    public static zzfgd zza(zzfgh zzfghVar, zzfgj zzfgjVar, zzfgk zzfgkVar, zzfgk zzfgkVar2, boolean z) {
        zzfhk.zza(zzfgjVar, "ImpressionType is null");
        zzfhk.zza(zzfgkVar, "Impression owner is null");
        if (zzfgkVar != zzfgk.NONE) {
            if (zzfghVar == zzfgh.DEFINED_BY_JAVASCRIPT && zzfgkVar == zzfgk.NATIVE) {
                throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
            }
            if (zzfgjVar != zzfgj.DEFINED_BY_JAVASCRIPT || zzfgkVar != zzfgk.NATIVE) {
                return new zzfgd(zzfghVar, zzfgjVar, zzfgkVar, zzfgkVar2, true);
            }
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        throw new IllegalArgumentException("Impression owner is none");
    }

    public final JSONObject zzb() {
        JSONObject jSONObject = new JSONObject();
        zzfhi.zzc(jSONObject, "impressionOwner", this.zza);
        if (this.zzd != null) {
            zzfhi.zzc(jSONObject, "mediaEventsOwner", this.zzb);
            zzfhi.zzc(jSONObject, VastResourceXmlManager.CREATIVE_TYPE, this.zzc);
            zzfhi.zzc(jSONObject, "impressionType", this.zzd);
        } else {
            zzfhi.zzc(jSONObject, "videoEventsOwner", this.zzb);
        }
        zzfhi.zzc(jSONObject, "isolateVerificationScripts", Boolean.TRUE);
        return jSONObject;
    }
}
