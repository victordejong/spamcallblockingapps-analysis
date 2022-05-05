package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.a.d;
import com.google.android.gms.common.a.e;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInAccount.class */
public class GoogleSignInAccount extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public static d f3906a = e.c();
    private static Comparator<Scope> n = new Comparator<Scope>() { // from class: com.google.android.gms.auth.api.signin.GoogleSignInAccount.1
        @Override // java.util.Comparator
        public final /* synthetic */ int compare(Scope scope, Scope scope2) {
            return scope.f3944b.compareTo(scope2.f3944b);
        }
    };

    /* renamed from: b  reason: collision with root package name */
    final int f3907b;
    String c;
    String d;
    String e;
    String f;
    Uri g;
    String h;
    long i;
    String j;
    List<Scope> k;
    String l;
    String m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GoogleSignInAccount(int i, String str, String str2, String str3, String str4, Uri uri, String str5, long j, String str6, List<Scope> list, String str7, String str8) {
        this.f3907b = i;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = str4;
        this.g = uri;
        this.h = str5;
        this.i = j;
        this.j = str6;
        this.k = list;
        this.l = str7;
        this.m = str8;
    }

    private JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.c != null) {
                jSONObject.put("id", this.c);
            }
            if (this.d != null) {
                jSONObject.put("tokenId", this.d);
            }
            if (this.e != null) {
                jSONObject.put("email", this.e);
            }
            if (this.f != null) {
                jSONObject.put("displayName", this.f);
            }
            if (this.l != null) {
                jSONObject.put("givenName", this.l);
            }
            if (this.m != null) {
                jSONObject.put("familyName", this.m);
            }
            if (this.g != null) {
                jSONObject.put("photoUrl", this.g.toString());
            }
            if (this.h != null) {
                jSONObject.put("serverAuthCode", this.h);
            }
            jSONObject.put("expirationTime", this.i);
            jSONObject.put("obfuscatedIdentifier", this.j);
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.k, n);
            for (Scope scope : this.k) {
                jSONArray.put(scope.f3944b);
            }
            jSONObject.put("grantedScopes", jSONArray);
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean equals(Object obj) {
        return !(obj instanceof GoogleSignInAccount) ? false : ((GoogleSignInAccount) obj).a().toString().equals(a().toString());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}
