package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInAccount.class */
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new zab();
    @RecentlyNonNull
    @VisibleForTesting

    /* renamed from: n */
    public static Clock f5501n = DefaultClock.f6131a;
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f5502a;
    @SafeParcelable.Field

    /* renamed from: b */
    public String f5503b;
    @SafeParcelable.Field

    /* renamed from: c */
    public String f5504c;
    @SafeParcelable.Field

    /* renamed from: d */
    public String f5505d;
    @SafeParcelable.Field

    /* renamed from: e */
    public String f5506e;
    @SafeParcelable.Field

    /* renamed from: f */
    public Uri f5507f;
    @SafeParcelable.Field

    /* renamed from: g */
    public String f5508g;
    @SafeParcelable.Field

    /* renamed from: h */
    public long f5509h;
    @SafeParcelable.Field

    /* renamed from: i */
    public String f5510i;
    @SafeParcelable.Field

    /* renamed from: j */
    public List<Scope> f5511j;
    @SafeParcelable.Field

    /* renamed from: k */
    public String f5512k;
    @SafeParcelable.Field

    /* renamed from: l */
    public String f5513l;

    /* renamed from: m */
    public Set<Scope> f5514m = new HashSet();

    @SafeParcelable.Constructor
    public GoogleSignInAccount(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) String str3, @SafeParcelable.Param(id = 5) String str4, @SafeParcelable.Param(id = 6) Uri uri, @SafeParcelable.Param(id = 7) String str5, @SafeParcelable.Param(id = 8) long j, @SafeParcelable.Param(id = 9) String str6, @SafeParcelable.Param(id = 10) List<Scope> list, @SafeParcelable.Param(id = 11) String str7, @SafeParcelable.Param(id = 12) String str8) {
        this.f5502a = i;
        this.f5503b = str;
        this.f5504c = str2;
        this.f5505d = str3;
        this.f5506e = str4;
        this.f5507f = uri;
        this.f5508g = str5;
        this.f5509h = j;
        this.f5510i = str6;
        this.f5511j = list;
        this.f5512k = str7;
        this.f5513l = str8;
    }

    @RecentlyNullable
    /* renamed from: p2 */
    public static GoogleSignInAccount m39126p2(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("photoUrl");
        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        String optString2 = jSONObject.optString("id");
        String optString3 = jSONObject.has("tokenId") ? jSONObject.optString("tokenId") : null;
        String optString4 = jSONObject.has(AnalyticsConstants.EMAIL) ? jSONObject.optString(AnalyticsConstants.EMAIL) : null;
        String optString5 = jSONObject.has("displayName") ? jSONObject.optString("displayName") : null;
        String optString6 = jSONObject.has("givenName") ? jSONObject.optString("givenName") : null;
        String optString7 = jSONObject.has("familyName") ? jSONObject.optString("familyName") : null;
        String string = jSONObject.getString("obfuscatedIdentifier");
        long longValue = Long.valueOf(parseLong).longValue();
        Preconditions.m38901g(string);
        GoogleSignInAccount googleSignInAccount = new GoogleSignInAccount(3, optString2, optString3, optString4, optString5, parse, null, longValue, string, new ArrayList(hashSet), optString6, optString7);
        googleSignInAccount.f5508g = jSONObject.has("serverAuthCode") ? jSONObject.optString("serverAuthCode") : null;
        return googleSignInAccount;
    }

    @RecentlyNullable
    /* renamed from: I */
    public Account m39128I() {
        String str = this.f5505d;
        if (str == null) {
            return null;
        }
        return new Account(str, "com.google");
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        return googleSignInAccount.f5510i.equals(this.f5510i) && googleSignInAccount.m39127o2().equals(m39127o2());
    }

    public int hashCode() {
        return m39127o2().hashCode() + C22128a.m8579q2(this.f5510i, 527, 31);
    }

    @KeepForSdk
    /* renamed from: o2 */
    public Set<Scope> m39127o2() {
        HashSet hashSet = new HashSet(this.f5511j);
        hashSet.addAll(this.f5514m);
        return hashSet;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f5502a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38846q(parcel, 2, this.f5503b, false);
        SafeParcelWriter.m38846q(parcel, 3, this.f5504c, false);
        SafeParcelWriter.m38846q(parcel, 4, this.f5505d, false);
        SafeParcelWriter.m38846q(parcel, 5, this.f5506e, false);
        SafeParcelWriter.m38847p(parcel, 6, this.f5507f, i, false);
        SafeParcelWriter.m38846q(parcel, 7, this.f5508g, false);
        long j = this.f5509h;
        parcel.writeInt(524296);
        parcel.writeLong(j);
        SafeParcelWriter.m38846q(parcel, 9, this.f5510i, false);
        SafeParcelWriter.m38842u(parcel, 10, this.f5511j, false);
        SafeParcelWriter.m38846q(parcel, 11, this.f5512k, false);
        SafeParcelWriter.m38846q(parcel, 12, this.f5513l, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
