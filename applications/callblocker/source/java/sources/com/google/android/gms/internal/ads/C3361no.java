package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.no */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/no.class */
public final class C3361no {

    /* renamed from: a */
    private final boolean f17019a;

    /* renamed from: b */
    private final boolean f17020b;

    /* renamed from: c */
    private final boolean f17021c;

    /* renamed from: d */
    private final boolean f17022d;

    /* renamed from: e */
    private final boolean f17023e;

    /* JADX INFO: Access modifiers changed from: private */
    public C3361no(C3363nq c3363nq) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        z = c3363nq.f17037a;
        this.f17019a = z;
        z2 = c3363nq.f17038b;
        this.f17020b = z2;
        z3 = c3363nq.f17039c;
        this.f17021c = z3;
        z4 = c3363nq.f17040d;
        this.f17022d = z4;
        z5 = c3363nq.f17041e;
        this.f17023e = z5;
    }

    /* renamed from: a */
    public final JSONObject m7416a() {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject().put("sms", this.f17019a).put("tel", this.f17020b).put("calendar", this.f17021c).put("storePicture", this.f17022d).put("inlineVideo", this.f17023e);
        } catch (JSONException e) {
            C3556uu.m6748c("Error occured while obtaining the MRAID capabilities.", e);
            jSONObject = null;
        }
        return jSONObject;
    }
}
