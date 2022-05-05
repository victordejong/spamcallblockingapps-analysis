package p081h.p203i.p325c;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.mobileads.FlurryAgentWrapper;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.C7027w;
import p081h.p203i.p204a.p224e.p235d.p249s.C7085q;
/* renamed from: h.i.c.i */
/* loaded from: classes2-dex2jar.jar:h/i/c/i.class */
public final class C9446i {

    /* renamed from: a */
    public final String f21554a;

    /* renamed from: b */
    public final String f21555b;

    /* renamed from: c */
    public final String f21556c;

    /* renamed from: d */
    public final String f21557d;

    /* renamed from: e */
    public final String f21558e;

    /* renamed from: f */
    public final String f21559f;

    /* renamed from: g */
    public final String f21560g;

    public C9446i(@NonNull String str, @NonNull String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
        C7021t.m21281b(!C7085q.m21117a(str), "ApplicationId must be set.");
        this.f21555b = str;
        this.f21554a = str2;
        this.f21556c = str3;
        this.f21557d = str4;
        this.f21558e = str5;
        this.f21559f = str6;
        this.f21560g = str7;
    }

    @Nullable
    /* renamed from: a */
    public static C9446i m15150a(@NonNull Context context) {
        C7027w wVar = new C7027w(context);
        String a = wVar.m21273a("google_app_id");
        if (TextUtils.isEmpty(a)) {
            return null;
        }
        return new C9446i(a, wVar.m21273a("google_api_key"), wVar.m21273a("firebase_database_url"), wVar.m21273a("ga_trackingId"), wVar.m21273a("gcm_defaultSenderId"), wVar.m21273a("google_storage_bucket"), wVar.m21273a("project_id"));
    }

    @NonNull
    /* renamed from: a */
    public String m15151a() {
        return this.f21554a;
    }

    @NonNull
    /* renamed from: b */
    public String m15149b() {
        return this.f21555b;
    }

    @Nullable
    /* renamed from: c */
    public String m15148c() {
        return this.f21558e;
    }

    @Nullable
    /* renamed from: d */
    public String m15147d() {
        return this.f21560g;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C9446i)) {
            return false;
        }
        C9446i iVar = (C9446i) obj;
        boolean z = false;
        if (C7018s.m21297a(this.f21555b, iVar.f21555b)) {
            z = false;
            if (C7018s.m21297a(this.f21554a, iVar.f21554a)) {
                z = false;
                if (C7018s.m21297a(this.f21556c, iVar.f21556c)) {
                    z = false;
                    if (C7018s.m21297a(this.f21557d, iVar.f21557d)) {
                        z = false;
                        if (C7018s.m21297a(this.f21558e, iVar.f21558e)) {
                            z = false;
                            if (C7018s.m21297a(this.f21559f, iVar.f21559f)) {
                                z = false;
                                if (C7018s.m21297a(this.f21560g, iVar.f21560g)) {
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
        return C7018s.m21296a(this.f21555b, this.f21554a, this.f21556c, this.f21557d, this.f21558e, this.f21559f, this.f21560g);
    }

    public String toString() {
        C7018s.C7019a a = C7018s.m21298a(this);
        a.m21295a("applicationId", this.f21555b);
        a.m21295a(FlurryAgentWrapper.PARAM_API_KEY, this.f21554a);
        a.m21295a("databaseUrl", this.f21556c);
        a.m21295a("gcmSenderId", this.f21558e);
        a.m21295a("storageBucket", this.f21559f);
        a.m21295a("projectId", this.f21560g);
        return a.toString();
    }
}
