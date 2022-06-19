package p241t4;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.util.Strings;
/* renamed from: t4.e */
/* loaded from: classes-dex2jar.jar:t4/e.class */
public final class C4399e {

    /* renamed from: a */
    public final String f13711a;

    /* renamed from: b */
    public final String f13712b;

    /* renamed from: c */
    public final String f13713c;

    /* renamed from: d */
    public final String f13714d;

    /* renamed from: e */
    public final String f13715e;

    /* renamed from: f */
    public final String f13716f;

    /* renamed from: g */
    public final String f13717g;

    public C4399e(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        Preconditions.checkState(!Strings.isEmptyOrWhitespace(str), "ApplicationId must be set.");
        this.f13712b = str;
        this.f13711a = str2;
        this.f13713c = str3;
        this.f13714d = str4;
        this.f13715e = str5;
        this.f13716f = str6;
        this.f13717g = str7;
    }

    /* renamed from: a */
    public static C4399e m967a(Context context) {
        StringResourceValueReader stringResourceValueReader = new StringResourceValueReader(context);
        String string = stringResourceValueReader.getString("google_app_id");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return new C4399e(string, stringResourceValueReader.getString("google_api_key"), stringResourceValueReader.getString("firebase_database_url"), stringResourceValueReader.getString("ga_trackingId"), stringResourceValueReader.getString("gcm_defaultSenderId"), stringResourceValueReader.getString("google_storage_bucket"), stringResourceValueReader.getString("project_id"));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C4399e)) {
            return false;
        }
        C4399e c4399e = (C4399e) obj;
        boolean z = false;
        if (Objects.equal(this.f13712b, c4399e.f13712b)) {
            z = false;
            if (Objects.equal(this.f13711a, c4399e.f13711a)) {
                z = false;
                if (Objects.equal(this.f13713c, c4399e.f13713c)) {
                    z = false;
                    if (Objects.equal(this.f13714d, c4399e.f13714d)) {
                        z = false;
                        if (Objects.equal(this.f13715e, c4399e.f13715e)) {
                            z = false;
                            if (Objects.equal(this.f13716f, c4399e.f13716f)) {
                                z = false;
                                if (Objects.equal(this.f13717g, c4399e.f13717g)) {
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
        return Objects.hashCode(this.f13712b, this.f13711a, this.f13713c, this.f13714d, this.f13715e, this.f13716f, this.f13717g);
    }

    public String toString() {
        return Objects.toStringHelper(this).add("applicationId", this.f13712b).add("apiKey", this.f13711a).add("databaseUrl", this.f13713c).add("gcmSenderId", this.f13715e).add("storageBucket", this.f13716f).add("projectId", this.f13717g).toString();
    }
}
