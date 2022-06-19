package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cr1.class */
public final class cr1 {

    /* renamed from: a */
    private final zzdww f6287a;

    /* renamed from: b */
    private final zzdww f6288b;

    /* renamed from: c */
    private final zzdwt f6289c;

    /* renamed from: d */
    private final zzdwv f6290d;

    private cr1(zzdwt zzdwtVar, zzdwv zzdwvVar, zzdww zzdwwVar, zzdww zzdwwVar2, boolean z) {
        this.f6289c = zzdwtVar;
        this.f6290d = zzdwvVar;
        this.f6287a = zzdwwVar;
        if (zzdwwVar2 == null) {
            this.f6288b = zzdww.NONE;
        } else {
            this.f6288b = zzdwwVar2;
        }
    }

    /* renamed from: a */
    public static cr1 m7785a(zzdwt zzdwtVar, zzdwv zzdwvVar, zzdww zzdwwVar, zzdww zzdwwVar2, boolean z) {
        fs1.m7449a(zzdwvVar, "ImpressionType is null");
        fs1.m7449a(zzdwwVar, "Impression owner is null");
        fs1.m7447c(zzdwwVar, zzdwtVar, zzdwvVar);
        return new cr1(zzdwtVar, zzdwvVar, zzdwwVar, zzdwwVar2, true);
    }

    @Deprecated
    /* renamed from: b */
    public static cr1 m7784b(zzdww zzdwwVar, zzdww zzdwwVar2, boolean z) {
        fs1.m7449a(zzdwwVar, "Impression owner is null");
        fs1.m7447c(zzdwwVar, null, null);
        return new cr1(null, null, zzdwwVar, zzdwwVar2, true);
    }

    /* renamed from: c */
    public final JSONObject m7783c() {
        String str;
        zzdwv zzdwvVar;
        JSONObject jSONObject = new JSONObject();
        ds1.m7694c(jSONObject, "impressionOwner", this.f6287a);
        if (this.f6289c == null || this.f6290d == null) {
            zzdwvVar = this.f6288b;
            str = "videoEventsOwner";
        } else {
            ds1.m7694c(jSONObject, "mediaEventsOwner", this.f6288b);
            ds1.m7694c(jSONObject, "creativeType", this.f6289c);
            zzdwvVar = this.f6290d;
            str = "impressionType";
        }
        ds1.m7694c(jSONObject, str, zzdwvVar);
        ds1.m7694c(jSONObject, "isolateVerificationScripts", Boolean.TRUE);
        return jSONObject;
    }
}
