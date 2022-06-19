package com.facebook;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.AuthenticationTokenManager;
import com.facebook.internal.C1168q0;
import com.facebook.internal.C1172r0;
import com.facebook.internal.p044w0.C1230c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.security.spec.InvalidKeySpecException;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1538j.C23228f0;
import p193e.p1538j.C23276x;
import s1.f0.v;
import s1.z.c.l;
@Metadata(d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018�� +2\u00020\u0001:\u0001+B\u0017\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005B\u000f\b\u0010\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bB\u000f\b\u0010\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\b\u0010\u0019\u001a\u00020\u001aH\u0016J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\b\u0010\u001f\u001a\u00020\u001aH\u0016J(\u0010 \u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u0003H\u0002J\r\u0010%\u001a\u00020\nH��¢\u0006\u0002\b&J\u0018\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u001aH\u0016R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0013¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\u0011¨\u0006,"}, d2 = {"Lcom/facebook/AuthenticationToken;", "Landroid/os/Parcelable;", AnalyticsConstants.TOKEN, "", "expectedNonce", "(Ljava/lang/String;Ljava/lang/String;)V", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "jsonObject", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)V", "claims", "Lcom/facebook/AuthenticationTokenClaims;", "getClaims", "()Lcom/facebook/AuthenticationTokenClaims;", "getExpectedNonce", "()Ljava/lang/String;", "header", "Lcom/facebook/AuthenticationTokenHeader;", "getHeader", "()Lcom/facebook/AuthenticationTokenHeader;", "signature", "getSignature", "getToken", "describeContents", "", "equals", "", "other", "", "hashCode", "isValidSignature", "headerString", "claimsString", "sigString", "kid", "toJSONObject", "toJSONObject$facebook_core_release", "writeToParcel", "", "dest", "flags", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2-dex2jar.jar:com/facebook/AuthenticationToken.class */
public final class AuthenticationToken implements Parcelable {
    public static final Parcelable.Creator<AuthenticationToken> CREATOR = new C0908a();

    /* renamed from: a */
    public final String f2476a;

    /* renamed from: b */
    public final String f2477b;

    /* renamed from: c */
    public final AuthenticationTokenHeader f2478c;

    /* renamed from: d */
    public final AuthenticationTokenClaims f2479d;

    /* renamed from: e */
    public final String f2480e;

    @Metadata(d1 = {"��%\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\b\n\u0002\b\u0002*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001d\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"com/facebook/AuthenticationToken$Companion$CREATOR$1", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/AuthenticationToken;", "createFromParcel", "source", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/facebook/AuthenticationToken;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.AuthenticationToken$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/AuthenticationToken$a.class */
    public static final class C0908a implements Parcelable.Creator<AuthenticationToken> {
        @Override // android.os.Parcelable.Creator
        public AuthenticationToken createFromParcel(Parcel parcel) {
            l.e(parcel, "source");
            return new AuthenticationToken(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public AuthenticationToken[] newArray(int i) {
            return new AuthenticationToken[i];
        }
    }

    public AuthenticationToken(Parcel parcel) {
        l.e(parcel, "parcel");
        String readString = parcel.readString();
        C1172r0 c1172r0 = C1172r0.f3203a;
        C1172r0.m41650e(readString, AnalyticsConstants.TOKEN);
        this.f2476a = readString;
        String readString2 = parcel.readString();
        C1172r0.m41650e(readString2, "expectedNonce");
        this.f2477b = readString2;
        Parcelable readParcelable = parcel.readParcelable(AuthenticationTokenHeader.class.getClassLoader());
        if (readParcelable != null) {
            this.f2478c = (AuthenticationTokenHeader) readParcelable;
            Parcelable readParcelable2 = parcel.readParcelable(AuthenticationTokenClaims.class.getClassLoader());
            if (readParcelable2 == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            this.f2479d = (AuthenticationTokenClaims) readParcelable2;
            String readString3 = parcel.readString();
            C1172r0.m41650e(readString3, "signature");
            this.f2480e = readString3;
            return;
        }
        throw new IllegalStateException("Required value was null.".toString());
    }

    public AuthenticationToken(String str, String str2) {
        boolean z;
        l.e(str, AnalyticsConstants.TOKEN);
        l.e(str2, "expectedNonce");
        C1172r0 c1172r0 = C1172r0.f3203a;
        C1172r0.m41653b(str, AnalyticsConstants.TOKEN);
        C1172r0.m41653b(str2, "expectedNonce");
        List U = v.U(str, new String[]{StringConstant.DOT}, false, 0, 6);
        if (U.size() == 3) {
            String str3 = (String) U.get(0);
            String str4 = (String) U.get(1);
            String str5 = (String) U.get(2);
            this.f2476a = str;
            this.f2477b = str2;
            AuthenticationTokenHeader authenticationTokenHeader = new AuthenticationTokenHeader(str3);
            this.f2478c = authenticationTokenHeader;
            this.f2479d = new AuthenticationTokenClaims(str4, str2);
            try {
                String m41616b = C1230c.m41616b(authenticationTokenHeader.f2503c);
                if (m41616b == null) {
                    z = false;
                } else {
                    z = C1230c.m41615c(C1230c.m41617a(m41616b), str3 + '.' + str4, str5);
                }
            } catch (IOException | InvalidKeySpecException e) {
                z = false;
            }
            if (!z) {
                throw new IllegalArgumentException("Invalid Signature".toString());
            }
            this.f2480e = str5;
            return;
        }
        throw new IllegalArgumentException("Invalid IdToken string".toString());
    }

    /* renamed from: a */
    public static final void m42027a(AuthenticationToken authenticationToken) {
        AuthenticationTokenManager.C0911a c0911a = AuthenticationTokenManager.f2504d;
        AuthenticationTokenManager authenticationTokenManager = AuthenticationTokenManager.f2505e;
        AuthenticationTokenManager authenticationTokenManager2 = authenticationTokenManager;
        if (authenticationTokenManager == null) {
            synchronized (c0911a) {
                AuthenticationTokenManager authenticationTokenManager3 = AuthenticationTokenManager.f2505e;
                authenticationTokenManager2 = authenticationTokenManager3;
                if (authenticationTokenManager3 == null) {
                    C23228f0 c23228f0 = C23228f0.f64291a;
                    C27062a m968b = C27062a.m968b(C23228f0.m7354a());
                    l.d(m968b, "getInstance(applicationContext)");
                    authenticationTokenManager2 = new AuthenticationTokenManager(m968b, new C23276x());
                    AuthenticationTokenManager.f2505e = authenticationTokenManager2;
                }
            }
        }
        AuthenticationToken authenticationToken2 = authenticationTokenManager2.f2508c;
        authenticationTokenManager2.f2508c = authenticationToken;
        if (authenticationToken != null) {
            C23276x c23276x = authenticationTokenManager2.f2507b;
            Objects.requireNonNull(c23276x);
            l.e(authenticationToken, "authenticationToken");
            try {
                c23276x.f64432a.edit().putString("com.facebook.AuthenticationManager.CachedAuthenticationToken", authenticationToken.m42026b().toString()).apply();
            } catch (JSONException e) {
            }
        } else {
            authenticationTokenManager2.f2507b.f64432a.edit().remove("com.facebook.AuthenticationManager.CachedAuthenticationToken").apply();
            C23228f0 c23228f02 = C23228f0.f64291a;
            C1168q0.m41679d(C23228f0.m7354a());
        }
        if (!C1168q0.m41682a(authenticationToken2, authenticationToken)) {
            C23228f0 c23228f03 = C23228f0.f64291a;
            Intent intent = new Intent(C23228f0.m7354a(), AuthenticationTokenManager.CurrentAuthenticationTokenChangedBroadcastReceiver.class);
            intent.setAction("com.facebook.sdk.ACTION_CURRENT_AUTHENTICATION_TOKEN_CHANGED");
            intent.putExtra("com.facebook.sdk.EXTRA_OLD_AUTHENTICATION_TOKEN", authenticationToken2);
            intent.putExtra("com.facebook.sdk.EXTRA_NEW_AUTHENTICATION_TOKEN", authenticationToken);
            authenticationTokenManager2.f2506a.m966d(intent);
        }
    }

    /* renamed from: b */
    public final JSONObject m42026b() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("token_string", this.f2476a);
        jSONObject.put("expected_nonce", this.f2477b);
        jSONObject.put("header", this.f2478c.m42023a());
        jSONObject.put("claims", this.f2479d.m42024b());
        jSONObject.put("signature", this.f2480e);
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthenticationToken)) {
            return false;
        }
        AuthenticationToken authenticationToken = (AuthenticationToken) obj;
        if (!l.a(this.f2476a, authenticationToken.f2476a) || !l.a(this.f2477b, authenticationToken.f2477b) || !l.a(this.f2478c, authenticationToken.f2478c) || !l.a(this.f2479d, authenticationToken.f2479d) || !l.a(this.f2480e, authenticationToken.f2480e)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int m8579q2 = C22128a.m8579q2(this.f2477b, C22128a.m8579q2(this.f2476a, 527, 31), 31);
        int hashCode = this.f2478c.hashCode();
        return this.f2480e.hashCode() + ((this.f2479d.hashCode() + ((hashCode + m8579q2) * 31)) * 31);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "dest");
        parcel.writeString(this.f2476a);
        parcel.writeString(this.f2477b);
        parcel.writeParcelable(this.f2478c, i);
        parcel.writeParcelable(this.f2479d, i);
        parcel.writeString(this.f2480e);
    }
}
