package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqm.class */
public final class zzaqm {
    private final boolean zzdqb;
    private final boolean zzdqc;
    private final boolean zzdqd;
    private final boolean zzdqe;
    private final boolean zzdqf;

    private zzaqm(zzaqo zzaqoVar) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        z = zzaqoVar.zzdqb;
        this.zzdqb = z;
        z2 = zzaqoVar.zzdqc;
        this.zzdqc = z2;
        z3 = zzaqoVar.zzdqd;
        this.zzdqd = z3;
        z4 = zzaqoVar.zzdqe;
        this.zzdqe = z4;
        z5 = zzaqoVar.zzdqf;
        this.zzdqf = z5;
    }

    public final JSONObject zzdr() {
        try {
            return new JSONObject().put("sms", this.zzdqb).put("tel", this.zzdqc).put("calendar", this.zzdqd).put("storePicture", this.zzdqe).put("inlineVideo", this.zzdqf);
        } catch (JSONException e) {
            zzazk.zzc("Error occured while obtaining the MRAID capabilities.", e);
            return null;
        }
    }
}
