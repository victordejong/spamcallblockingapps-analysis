package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lp2.class */
public final class lp2 {

    /* renamed from: a */
    private final zzfgk f26202a;

    /* renamed from: b */
    private final zzfgk f26203b;

    /* renamed from: c */
    private final zzfgh f26204c;

    /* renamed from: d */
    private final zzfgj f26205d;

    private lp2(zzfgh zzfghVar, zzfgj zzfgjVar, zzfgk zzfgkVar, zzfgk zzfgkVar2, boolean z) {
        this.f26204c = zzfghVar;
        this.f26205d = zzfgjVar;
        this.f26202a = zzfgkVar;
        if (zzfgkVar2 == null) {
            this.f26203b = zzfgk.NONE;
        } else {
            this.f26203b = zzfgkVar2;
        }
    }

    /* renamed from: a */
    public static lp2 m13459a(zzfgh zzfghVar, zzfgj zzfgjVar, zzfgk zzfgkVar, zzfgk zzfgkVar2, boolean z) {
        oq2.m12546a(zzfgjVar, "ImpressionType is null");
        oq2.m12546a(zzfgkVar, "Impression owner is null");
        if (zzfgkVar != zzfgk.NONE) {
            if (zzfghVar == zzfgh.DEFINED_BY_JAVASCRIPT && zzfgkVar == zzfgk.NATIVE) {
                throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
            }
            if (zzfgjVar != zzfgj.DEFINED_BY_JAVASCRIPT || zzfgkVar != zzfgk.NATIVE) {
                return new lp2(zzfghVar, zzfgjVar, zzfgkVar, zzfgkVar2, true);
            }
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        throw new IllegalArgumentException("Impression owner is none");
    }

    /* renamed from: b */
    public final JSONObject m13458b() {
        JSONObject jSONObject = new JSONObject();
        mq2.m13113c(jSONObject, "impressionOwner", this.f26202a);
        if (this.f26205d != null) {
            mq2.m13113c(jSONObject, "mediaEventsOwner", this.f26203b);
            mq2.m13113c(jSONObject, "creativeType", this.f26204c);
            mq2.m13113c(jSONObject, "impressionType", this.f26205d);
        } else {
            mq2.m13113c(jSONObject, "videoEventsOwner", this.f26203b);
        }
        mq2.m13113c(jSONObject, "isolateVerificationScripts", Boolean.TRUE);
        return jSONObject;
    }
}
