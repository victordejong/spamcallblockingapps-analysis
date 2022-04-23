package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2430j;
import com.facebook.internal.C2464o;
import com.facebook.internal.C2466p;
import java.net.HttpURLConnection;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6131k;
import p081h.p154f.C6135n;
import p081h.p154f.C6143p;
/* loaded from: classes-dex2jar.jar:com/facebook/FacebookRequestError.class */
public final class FacebookRequestError implements Parcelable {

    /* renamed from: a */
    public final EnumC2222b f2553a;

    /* renamed from: b */
    public final int f2554b;

    /* renamed from: c */
    public final int f2555c;

    /* renamed from: d */
    public final int f2556d;

    /* renamed from: e */
    public final String f2557e;

    /* renamed from: f */
    public final String f2558f;

    /* renamed from: g */
    public final String f2559g;

    /* renamed from: h */
    public final String f2560h;

    /* renamed from: i */
    public final JSONObject f2561i;

    /* renamed from: j */
    public final C6131k f2562j;

    /* renamed from: k */
    public static final C2223c f2552k = new C2223c(200, 299, null);
    public static final Parcelable.Creator<FacebookRequestError> CREATOR = new C2221a();

    /* renamed from: com.facebook.FacebookRequestError$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/FacebookRequestError$a.class */
    public static final class C2221a implements Parcelable.Creator<FacebookRequestError> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FacebookRequestError createFromParcel(Parcel parcel) {
            return new FacebookRequestError(parcel, (C2221a) null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FacebookRequestError[] newArray(int i) {
            return new FacebookRequestError[i];
        }
    }

    /* renamed from: com.facebook.FacebookRequestError$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/FacebookRequestError$b.class */
    public enum EnumC2222b {
        LOGIN_RECOVERABLE,
        OTHER,
        TRANSIENT
    }

    /* renamed from: com.facebook.FacebookRequestError$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/FacebookRequestError$c.class */
    public static class C2223c {

        /* renamed from: a */
        public final int f2567a;

        /* renamed from: b */
        public final int f2568b;

        public C2223c(int i, int i2) {
            this.f2567a = i;
            this.f2568b = i2;
        }

        public /* synthetic */ C2223c(int i, int i2, C2221a aVar) {
            this(i, i2);
        }

        /* renamed from: a */
        public boolean m35466a(int i) {
            return this.f2567a <= i && i <= this.f2568b;
        }
    }

    public FacebookRequestError(int i, int i2, int i3, String str, String str2, String str3, String str4, boolean z, JSONObject jSONObject, JSONObject jSONObject2, Object obj, HttpURLConnection httpURLConnection, C6131k kVar) {
        boolean z2;
        this.f2554b = i;
        this.f2555c = i2;
        this.f2556d = i3;
        this.f2557e = str;
        this.f2558f = str2;
        this.f2561i = jSONObject2;
        this.f2559g = str3;
        this.f2560h = str4;
        if (kVar != null) {
            this.f2562j = kVar;
            z2 = true;
        } else {
            this.f2562j = new C6143p(this, str2);
            z2 = false;
        }
        C2430j u = m35467u();
        this.f2553a = z2 ? EnumC2222b.OTHER : u.m34740a(i2, i3, z);
        u.m34739a(this.f2553a);
    }

    public FacebookRequestError(int i, String str, String str2) {
        this(-1, i, -1, str, str2, null, null, false, null, null, null, null, null);
    }

    public FacebookRequestError(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), false, null, null, null, null, null);
    }

    public /* synthetic */ FacebookRequestError(Parcel parcel, C2221a aVar) {
        this(parcel);
    }

    public FacebookRequestError(HttpURLConnection httpURLConnection, Exception exc) {
        this(-1, -1, -1, null, null, null, null, false, null, null, null, httpURLConnection, exc instanceof C6131k ? (C6131k) exc : new C6131k(exc));
    }

    /* renamed from: a */
    public static FacebookRequestError m35474a(JSONObject jSONObject, Object obj, HttpURLConnection httpURLConnection) {
        String str;
        String str2;
        int i;
        int i2;
        String str3;
        boolean z;
        String str4;
        try {
            if (!jSONObject.has("code")) {
                return null;
            }
            int i3 = jSONObject.getInt("code");
            Object a = C2408g0.m34837a(jSONObject, "body", "FACEBOOK_NON_JSON_RESULT");
            if (a != null && (a instanceof JSONObject)) {
                JSONObject jSONObject2 = (JSONObject) a;
                boolean z2 = true;
                if (jSONObject2.has("error")) {
                    JSONObject jSONObject3 = (JSONObject) C2408g0.m34837a(jSONObject2, "error", (String) null);
                    str4 = jSONObject3.optString("type", null);
                    str3 = jSONObject3.optString("message", null);
                    i2 = jSONObject3.optInt("code", -1);
                    i = jSONObject3.optInt("error_subcode", -1);
                    str2 = jSONObject3.optString("error_user_msg", null);
                    str = jSONObject3.optString("error_user_title", null);
                    z = jSONObject3.optBoolean("is_transient", false);
                } else {
                    if (!jSONObject2.has("error_code") && !jSONObject2.has("error_msg") && !jSONObject2.has("error_reason")) {
                        str4 = null;
                        str3 = null;
                        str2 = null;
                        str = null;
                        i2 = -1;
                        i = -1;
                        z2 = false;
                        z = false;
                    }
                    str4 = jSONObject2.optString("error_reason", null);
                    str3 = jSONObject2.optString("error_msg", null);
                    i2 = jSONObject2.optInt("error_code", -1);
                    i = jSONObject2.optInt("error_subcode", -1);
                    str2 = null;
                    str = null;
                    z = false;
                }
                if (z2) {
                    return new FacebookRequestError(i3, i2, i, str4, str3, str, str2, z, jSONObject2, jSONObject, obj, httpURLConnection, null);
                }
            }
            if (f2552k.m35466a(i3)) {
                return null;
            }
            return new FacebookRequestError(i3, -1, -1, null, null, null, null, false, jSONObject.has("body") ? (JSONObject) C2408g0.m34837a(jSONObject, "body", "FACEBOOK_NON_JSON_RESULT") : null, jSONObject, obj, httpURLConnection, null);
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: u */
    public static C2430j m35467u() {
        synchronized (FacebookRequestError.class) {
            try {
                C2464o c = C2466p.m34636c(C6135n.m23745f());
                if (c == null) {
                    return C2430j.m34741a();
                }
                return c.m34663d();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public int m35475a() {
        return this.f2555c;
    }

    /* renamed from: b */
    public String m35473b() {
        String str = this.f2558f;
        return str != null ? str : this.f2562j.getLocalizedMessage();
    }

    /* renamed from: c */
    public String m35472c() {
        return this.f2557e;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: q */
    public C6131k m35471q() {
        return this.f2562j;
    }

    /* renamed from: r */
    public JSONObject m35470r() {
        return this.f2561i;
    }

    /* renamed from: s */
    public int m35469s() {
        return this.f2554b;
    }

    /* renamed from: t */
    public int m35468t() {
        return this.f2556d;
    }

    public String toString() {
        return "{HttpStatus: " + this.f2554b + ", errorCode: " + this.f2555c + ", subErrorCode: " + this.f2556d + ", errorType: " + this.f2557e + ", errorMessage: " + m35473b() + CssParser.BLOCK_END;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f2554b);
        parcel.writeInt(this.f2555c);
        parcel.writeInt(this.f2556d);
        parcel.writeString(this.f2557e);
        parcel.writeString(this.f2558f);
        parcel.writeString(this.f2559g);
        parcel.writeString(this.f2560h);
    }
}
