package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.C6161q;
import com.google.android.gms.common.util.C6241s;
/* renamed from: com.google.firebase.h */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/h.class */
public final class C9168h {

    /* renamed from: a */
    private final String f39484a;

    /* renamed from: b */
    private final String f39485b;

    /* renamed from: c */
    private final String f39486c;

    /* renamed from: d */
    private final String f39487d;

    /* renamed from: e */
    private final String f39488e;

    /* renamed from: f */
    private final String f39489f;

    /* renamed from: g */
    private final String f39490g;

    private C9168h(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        C6155o.m17014n(!C6241s.m16768a(str), "ApplicationId must be set.");
        this.f39485b = str;
        this.f39484a = str2;
        this.f39486c = str3;
        this.f39487d = str4;
        this.f39488e = str5;
        this.f39489f = str6;
        this.f39490g = str7;
    }

    /* renamed from: a */
    public static C9168h m1662a(Context context) {
        C6161q c6161q = new C6161q(context);
        String m17001a = c6161q.m17001a("google_app_id");
        if (TextUtils.isEmpty(m17001a)) {
            return null;
        }
        return new C9168h(m17001a, c6161q.m17001a("google_api_key"), c6161q.m17001a("firebase_database_url"), c6161q.m17001a("ga_trackingId"), c6161q.m17001a("gcm_defaultSenderId"), c6161q.m17001a("google_storage_bucket"), c6161q.m17001a("project_id"));
    }

    /* renamed from: b */
    public String m1661b() {
        return this.f39484a;
    }

    /* renamed from: c */
    public String m1660c() {
        return this.f39485b;
    }

    /* renamed from: d */
    public String m1659d() {
        return this.f39488e;
    }

    /* renamed from: e */
    public String m1658e() {
        return this.f39490g;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C9168h)) {
            return false;
        }
        C9168h c9168h = (C9168h) obj;
        boolean z = false;
        if (C6147m.m17044a(this.f39485b, c9168h.f39485b)) {
            z = false;
            if (C6147m.m17044a(this.f39484a, c9168h.f39484a)) {
                z = false;
                if (C6147m.m17044a(this.f39486c, c9168h.f39486c)) {
                    z = false;
                    if (C6147m.m17044a(this.f39487d, c9168h.f39487d)) {
                        z = false;
                        if (C6147m.m17044a(this.f39488e, c9168h.f39488e)) {
                            z = false;
                            if (C6147m.m17044a(this.f39489f, c9168h.f39489f)) {
                                z = false;
                                if (C6147m.m17044a(this.f39490g, c9168h.f39490g)) {
                                    z = true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return C6147m.m17043b(this.f39485b, this.f39484a, this.f39486c, this.f39487d, this.f39488e, this.f39489f, this.f39490g);
    }

    public String toString() {
        return C6147m.m17042c(this).m17041a("applicationId", this.f39485b).m17041a("apiKey", this.f39484a).m17041a("databaseUrl", this.f39486c).m17041a("gcmSenderId", this.f39488e).m17041a("storageBucket", this.f39489f).m17041a("projectId", this.f39490g).toString();
    }
}
