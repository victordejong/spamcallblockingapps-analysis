package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.C12047q;
import com.google.android.gms.common.util.C12114r;
/* renamed from: com.google.firebase.h */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/h.class */
public final class C15756h {

    /* renamed from: a */
    public final String f56099a;

    /* renamed from: b */
    public final String f56100b;

    /* renamed from: c */
    public final String f56101c;

    /* renamed from: d */
    public final String f56102d;

    /* renamed from: e */
    private final String f56103e;

    /* renamed from: f */
    private final String f56104f;

    /* renamed from: g */
    private final String f56105g;

    private C15756h(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        C12045o.m19157a(!C12114r.m19007a(str), "ApplicationId must be set.");
        this.f56100b = str;
        this.f56099a = str2;
        this.f56103e = str3;
        this.f56104f = str4;
        this.f56101c = str5;
        this.f56105g = str6;
        this.f56102d = str7;
    }

    /* renamed from: a */
    public static C15756h m8452a(Context context) {
        C12047q c12047q = new C12047q(context);
        String m19149a = c12047q.m19149a("google_app_id");
        if (TextUtils.isEmpty(m19149a)) {
            return null;
        }
        return new C15756h(m19149a, c12047q.m19149a("google_api_key"), c12047q.m19149a("firebase_database_url"), c12047q.m19149a("ga_trackingId"), c12047q.m19149a("gcm_defaultSenderId"), c12047q.m19149a("google_storage_bucket"), c12047q.m19149a("project_id"));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C15756h)) {
            return false;
        }
        C15756h c15756h = (C15756h) obj;
        return C12041m.m19168a(this.f56100b, c15756h.f56100b) && C12041m.m19168a(this.f56099a, c15756h.f56099a) && C12041m.m19168a(this.f56103e, c15756h.f56103e) && C12041m.m19168a(this.f56104f, c15756h.f56104f) && C12041m.m19168a(this.f56101c, c15756h.f56101c) && C12041m.m19168a(this.f56105g, c15756h.f56105g) && C12041m.m19168a(this.f56102d, c15756h.f56102d);
    }

    public final int hashCode() {
        return C12041m.m19167a(this.f56100b, this.f56099a, this.f56103e, this.f56104f, this.f56101c, this.f56105g, this.f56102d);
    }

    public final String toString() {
        return C12041m.m19169a(this).m19166a("applicationId", this.f56100b).m19166a("apiKey", this.f56099a).m19166a("databaseUrl", this.f56103e).m19166a("gcmSenderId", this.f56101c).m19166a("storageBucket", this.f56105g).m19166a("projectId", this.f56102d).toString();
    }
}
