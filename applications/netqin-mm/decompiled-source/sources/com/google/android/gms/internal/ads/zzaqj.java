package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqj.class */
public final class zzaqj {

    /* renamed from: a */
    public final boolean f24285a;

    /* renamed from: b */
    public final boolean f24286b;

    /* renamed from: c */
    public final boolean f24287c;

    /* renamed from: d */
    public final boolean f24288d;

    /* renamed from: e */
    public final boolean f24289e;

    public zzaqj(zzaql zzaqlVar) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        z = zzaqlVar.f24290a;
        this.f24285a = z;
        z2 = zzaqlVar.f24291b;
        this.f24286b = z2;
        z3 = zzaqlVar.f24292c;
        this.f24287c = z3;
        z4 = zzaqlVar.f24293d;
        this.f24288d = z4;
        z5 = zzaqlVar.f24294e;
        this.f24289e = z5;
    }

    /* renamed from: a */
    public final JSONObject m16441a() {
        try {
            return new JSONObject().put("sms", this.f24285a).put("tel", this.f24286b).put("calendar", this.f24287c).put("storePicture", this.f24288d).put("inlineVideo", this.f24289e);
        } catch (JSONException e) {
            zzbbq.m15855b("Error occured while obtaining the MRAID capabilities.", e);
            return null;
        }
    }
}
