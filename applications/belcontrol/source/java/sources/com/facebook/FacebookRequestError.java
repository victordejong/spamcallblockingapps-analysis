package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import java.net.HttpURLConnection;
import org.bouncycastle.asn1.x509.DisplayText;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/FacebookRequestError.class */
public final class FacebookRequestError implements Parcelable {

    /* renamed from: a */
    public final EnumC0338b f2464a;

    /* renamed from: b */
    public final int f2465b;

    /* renamed from: c */
    public final int f2466c;

    /* renamed from: d */
    public final int f2467d;

    /* renamed from: f */
    public final String f2468f;

    /* renamed from: g */
    public final String f2469g;

    /* renamed from: h */
    public final String f2470h;

    /* renamed from: j */
    public final String f2471j;

    /* renamed from: k */
    public final JSONObject f2472k;

    /* renamed from: l */
    public final Object f2473l;

    /* renamed from: m */
    public final ri0 f2474m;

    /* renamed from: n */
    public static final C0339c f2463n = new C0339c(DisplayText.DISPLAY_TEXT_MAXIMUM_SIZE, 299, null);
    public static final Parcelable.Creator<FacebookRequestError> CREATOR = new C0337a();

    /* renamed from: com.facebook.FacebookRequestError$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/FacebookRequestError$a.class */
    public static final class C0337a implements Parcelable.Creator<FacebookRequestError> {
        /* renamed from: a */
        public FacebookRequestError createFromParcel(Parcel parcel) {
            return new FacebookRequestError(parcel, (C0337a) null);
        }

        /* renamed from: b */
        public FacebookRequestError[] newArray(int i) {
            return new FacebookRequestError[i];
        }
    }

    /* renamed from: com.facebook.FacebookRequestError$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/FacebookRequestError$b.class */
    public enum EnumC0338b {
        LOGIN_RECOVERABLE,
        OTHER,
        TRANSIENT
    }

    /* renamed from: com.facebook.FacebookRequestError$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/FacebookRequestError$c.class */
    public static class C0339c {

        /* renamed from: a */
        public final int f2479a;

        /* renamed from: b */
        public final int f2480b;

        public C0339c(int i, int i2) {
            this.f2479a = i;
            this.f2480b = i2;
        }

        public /* synthetic */ C0339c(int i, int i2, C0337a c0337a) {
            this(i, i2);
        }

        /* renamed from: a */
        public boolean m5201a(int i) {
            return this.f2479a <= i && i <= this.f2480b;
        }
    }

    public FacebookRequestError(int i, int i2, int i3, String str, String str2, String str3, String str4, boolean z, JSONObject jSONObject, JSONObject jSONObject2, Object obj, HttpURLConnection httpURLConnection, ri0 ri0Var) {
        boolean z2;
        this.f2465b = i;
        this.f2466c = i2;
        this.f2467d = i3;
        this.f2468f = str;
        this.f2469g = str2;
        this.f2472k = jSONObject2;
        this.f2473l = obj;
        this.f2470h = str3;
        this.f2471j = str4;
        if (ri0Var != null) {
            this.f2474m = ri0Var;
            z2 = true;
        } else {
            this.f2474m = new wi0(this, str2);
            z2 = false;
        }
        hm0 m5211b = m5211b();
        EnumC0338b a = z2 ? EnumC0338b.OTHER : m5211b.a(i2, i3, z);
        this.f2464a = a;
        m5211b.e(a);
    }

    public FacebookRequestError(int i, String str, String str2) {
        this(-1, i, -1, str, str2, null, null, false, null, null, null, null, null);
    }

    public FacebookRequestError(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), false, null, null, null, null, null);
    }

    public /* synthetic */ FacebookRequestError(Parcel parcel, C0337a c0337a) {
        this(parcel);
    }

    public FacebookRequestError(HttpURLConnection httpURLConnection, Exception exc) {
        this(-1, -1, -1, null, null, null, null, false, null, null, null, httpURLConnection, exc instanceof ri0 ? (ri0) exc : new ri0(exc));
    }

    /* renamed from: a */
    public static FacebookRequestError m5212a(JSONObject jSONObject, Object obj, HttpURLConnection httpURLConnection) {
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
            Object D = fn0.D(jSONObject, "body", "FACEBOOK_NON_JSON_RESULT");
            if (D != null && (D instanceof JSONObject)) {
                JSONObject jSONObject2 = (JSONObject) D;
                boolean z2 = false;
                if (jSONObject2.has("error")) {
                    JSONObject jSONObject3 = (JSONObject) fn0.D(jSONObject2, "error", (String) null);
                    str4 = jSONObject3.optString("type", null);
                    str3 = jSONObject3.optString("message", null);
                    i2 = jSONObject3.optInt("code", -1);
                    i = jSONObject3.optInt("error_subcode", -1);
                    str2 = jSONObject3.optString("error_user_msg", null);
                    str = jSONObject3.optString("error_user_title", null);
                    z = jSONObject3.optBoolean("is_transient", false);
                    z2 = true;
                } else {
                    if (!jSONObject2.has("error_code") && !jSONObject2.has("error_msg") && !jSONObject2.has("error_reason")) {
                        str4 = null;
                        str3 = null;
                        str2 = null;
                        str = null;
                        i2 = -1;
                        i = -1;
                        z = false;
                    }
                    str4 = jSONObject2.optString("error_reason", null);
                    str3 = jSONObject2.optString("error_msg", null);
                    i2 = jSONObject2.optInt("error_code", -1);
                    i = jSONObject2.optInt("error_subcode", -1);
                    str2 = null;
                    str = null;
                    z2 = true;
                    z = false;
                }
                if (z2) {
                    return new FacebookRequestError(i3, i2, i, str4, str3, str, str2, z, jSONObject2, jSONObject, obj, httpURLConnection, null);
                }
            }
            if (f2463n.m5201a(i3)) {
                return null;
            }
            return new FacebookRequestError(i3, -1, -1, null, null, null, null, false, jSONObject.has("body") ? (JSONObject) fn0.D(jSONObject, "body", "FACEBOOK_NON_JSON_RESULT") : null, jSONObject, obj, httpURLConnection, null);
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: b */
    public static hm0 m5211b() {
        synchronized (FacebookRequestError.class) {
            try {
                mm0 j = nm0.j(ui0.f());
                if (j == null) {
                    return hm0.c();
                }
                return j.e();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public int m5210c() {
        return this.f2466c;
    }

    /* renamed from: d */
    public String m5209d() {
        String str = this.f2469g;
        return str != null ? str : this.f2474m.getLocalizedMessage();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public String m5208e() {
        return this.f2468f;
    }

    /* renamed from: f */
    public ri0 m5207f() {
        return this.f2474m;
    }

    /* renamed from: g */
    public JSONObject m5206g() {
        return this.f2472k;
    }

    /* renamed from: h */
    public int m5205h() {
        return this.f2465b;
    }

    /* renamed from: i */
    public int m5204i() {
        return this.f2467d;
    }

    public String toString() {
        return "{HttpStatus: " + this.f2465b + ", errorCode: " + this.f2466c + ", subErrorCode: " + this.f2467d + ", errorType: " + this.f2468f + ", errorMessage: " + m5209d() + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f2465b);
        parcel.writeInt(this.f2466c);
        parcel.writeInt(this.f2467d);
        parcel.writeString(this.f2468f);
        parcel.writeString(this.f2469g);
        parcel.writeString(this.f2470h);
        parcel.writeString(this.f2471j);
    }
}
