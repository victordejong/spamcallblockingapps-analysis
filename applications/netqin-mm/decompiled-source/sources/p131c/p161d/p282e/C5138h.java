package p131c.p161d.p282e;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.util.Strings;
/* renamed from: c.d.e.h */
/* loaded from: classes2-dex2jar.jar:c/d/e/h.class */
public final class C5138h {

    /* renamed from: a */
    public final String f17737a;

    /* renamed from: b */
    public final String f17738b;

    /* renamed from: c */
    public final String f17739c;

    /* renamed from: d */
    public final String f17740d;

    /* renamed from: e */
    public final String f17741e;

    /* renamed from: f */
    public final String f17742f;

    /* renamed from: g */
    public final String f17743g;

    public C5138h(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        Preconditions.m17279b(!Strings.m17049a(str), "ApplicationId must be set.");
        this.f17738b = str;
        this.f17737a = str2;
        this.f17739c = str3;
        this.f17740d = str4;
        this.f17741e = str5;
        this.f17742f = str6;
        this.f17743g = str7;
    }

    /* renamed from: a */
    public static C5138h m24446a(Context context) {
        StringResourceValueReader stringResourceValueReader = new StringResourceValueReader(context);
        String a = stringResourceValueReader.m17276a("google_app_id");
        if (TextUtils.isEmpty(a)) {
            return null;
        }
        return new C5138h(a, stringResourceValueReader.m17276a("google_api_key"), stringResourceValueReader.m17276a("firebase_database_url"), stringResourceValueReader.m17276a("ga_trackingId"), stringResourceValueReader.m17276a("gcm_defaultSenderId"), stringResourceValueReader.m17276a("google_storage_bucket"), stringResourceValueReader.m17276a("project_id"));
    }

    /* renamed from: a */
    public String m24447a() {
        return this.f17737a;
    }

    /* renamed from: b */
    public String m24445b() {
        return this.f17738b;
    }

    /* renamed from: c */
    public String m24444c() {
        return this.f17741e;
    }

    /* renamed from: d */
    public String m24443d() {
        return this.f17743g;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C5138h)) {
            return false;
        }
        C5138h hVar = (C5138h) obj;
        boolean z = false;
        if (Objects.m17295a(this.f17738b, hVar.f17738b)) {
            z = false;
            if (Objects.m17295a(this.f17737a, hVar.f17737a)) {
                z = false;
                if (Objects.m17295a(this.f17739c, hVar.f17739c)) {
                    z = false;
                    if (Objects.m17295a(this.f17740d, hVar.f17740d)) {
                        z = false;
                        if (Objects.m17295a(this.f17741e, hVar.f17741e)) {
                            z = false;
                            if (Objects.m17295a(this.f17742f, hVar.f17742f)) {
                                z = false;
                                if (Objects.m17295a(this.f17743g, hVar.f17743g)) {
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
        return Objects.m17294a(this.f17738b, this.f17737a, this.f17739c, this.f17740d, this.f17741e, this.f17742f, this.f17743g);
    }

    public String toString() {
        Objects.ToStringHelper a = Objects.m17296a(this);
        a.m17293a("applicationId", this.f17738b);
        a.m17293a("apiKey", this.f17737a);
        a.m17293a("databaseUrl", this.f17739c);
        a.m17293a("gcmSenderId", this.f17741e);
        a.m17293a("storageBucket", this.f17742f);
        a.m17293a("projectId", this.f17743g);
        return a.toString();
    }
}
