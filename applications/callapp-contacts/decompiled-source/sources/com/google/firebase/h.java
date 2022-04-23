package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.q;
import com.google.android.gms.common.util.r;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final String f32314a;

    /* renamed from: b  reason: collision with root package name */
    public final String f32315b;

    /* renamed from: c  reason: collision with root package name */
    public final String f32316c;

    /* renamed from: d  reason: collision with root package name */
    public final String f32317d;
    private final String e;
    private final String f;
    private final String g;

    private h(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        o.a(!r.a(str), "ApplicationId must be set.");
        this.f32315b = str;
        this.f32314a = str2;
        this.e = str3;
        this.f = str4;
        this.f32316c = str5;
        this.g = str6;
        this.f32317d = str7;
    }

    public static h a(Context context) {
        q qVar = new q(context);
        String a2 = qVar.a("google_app_id");
        if (TextUtils.isEmpty(a2)) {
            return null;
        }
        return new h(a2, qVar.a("google_api_key"), qVar.a("firebase_database_url"), qVar.a("ga_trackingId"), qVar.a("gcm_defaultSenderId"), qVar.a("google_storage_bucket"), qVar.a("project_id"));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return m.a(this.f32315b, hVar.f32315b) && m.a(this.f32314a, hVar.f32314a) && m.a(this.e, hVar.e) && m.a(this.f, hVar.f) && m.a(this.f32316c, hVar.f32316c) && m.a(this.g, hVar.g) && m.a(this.f32317d, hVar.f32317d);
    }

    public final int hashCode() {
        return m.a(this.f32315b, this.f32314a, this.e, this.f, this.f32316c, this.g, this.f32317d);
    }

    public final String toString() {
        return m.a(this).a("applicationId", this.f32315b).a("apiKey", this.f32314a).a("databaseUrl", this.e).a("gcmSenderId", this.f32316c).a("storageBucket", this.g).a("projectId", this.f32317d).toString();
    }
}
