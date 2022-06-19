package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C2657q;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.internal.C2670w;
import com.google.android.gms.common.util.C2720q;
/* renamed from: com.google.firebase.d */
/* loaded from: classes-dex2jar.jar:com/google/firebase/d.class */
public final class C4906d {

    /* renamed from: a */
    private final String f21016a;

    /* renamed from: b */
    private final String f21017b;

    /* renamed from: c */
    private final String f21018c;

    /* renamed from: d */
    private final String f21019d;

    /* renamed from: e */
    private final String f21020e;

    /* renamed from: f */
    private final String f21021f;

    /* renamed from: g */
    private final String f21022g;

    private C4906d(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        C2662s.m13976a(!C2720q.m13826a(str), "ApplicationId must be set.");
        this.f21017b = str;
        this.f21016a = str2;
        this.f21018c = str3;
        this.f21019d = str4;
        this.f21020e = str5;
        this.f21021f = str6;
        this.f21022g = str7;
    }

    /* renamed from: a */
    public static C4906d m2049a(Context context) {
        C2670w c2670w = new C2670w(context);
        String m13909a = c2670w.m13909a("google_app_id");
        return TextUtils.isEmpty(m13909a) ? null : new C4906d(m13909a, c2670w.m13909a("google_api_key"), c2670w.m13909a("firebase_database_url"), c2670w.m13909a("ga_trackingId"), c2670w.m13909a("gcm_defaultSenderId"), c2670w.m13909a("google_storage_bucket"), c2670w.m13909a("project_id"));
    }

    /* renamed from: a */
    public String m2050a() {
        return this.f21016a;
    }

    /* renamed from: b */
    public String m2048b() {
        return this.f21017b;
    }

    /* renamed from: c */
    public String m2047c() {
        return this.f21020e;
    }

    /* renamed from: d */
    public String m2046d() {
        return this.f21022g;
    }

    public boolean equals(Object obj) {
        boolean z;
        if (!(obj instanceof C4906d)) {
            z = false;
        } else {
            C4906d c4906d = (C4906d) obj;
            z = false;
            if (C2657q.m13992a(this.f21017b, c4906d.f21017b)) {
                z = false;
                if (C2657q.m13992a(this.f21016a, c4906d.f21016a)) {
                    z = false;
                    if (C2657q.m13992a(this.f21018c, c4906d.f21018c)) {
                        z = false;
                        if (C2657q.m13992a(this.f21019d, c4906d.f21019d)) {
                            z = false;
                            if (C2657q.m13992a(this.f21020e, c4906d.f21020e)) {
                                z = false;
                                if (C2657q.m13992a(this.f21021f, c4906d.f21021f)) {
                                    z = false;
                                    if (C2657q.m13992a(this.f21022g, c4906d.f21022g)) {
                                        z = true;
                                    }
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
        return C2657q.m13991a(this.f21017b, this.f21016a, this.f21018c, this.f21019d, this.f21020e, this.f21021f, this.f21022g);
    }

    public String toString() {
        return C2657q.m13993a(this).m13990a("applicationId", this.f21017b).m13990a("apiKey", this.f21016a).m13990a("databaseUrl", this.f21018c).m13990a("gcmSenderId", this.f21020e).m13990a("storageBucket", this.f21021f).m13990a("projectId", this.f21022g).toString();
    }
}
