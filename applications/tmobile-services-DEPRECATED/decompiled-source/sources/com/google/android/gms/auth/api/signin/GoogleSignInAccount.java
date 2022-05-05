package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
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
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.simpleframework.xml.strategy.Name;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInAccount.class */
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new zab();
    @VisibleForTesting

    /* renamed from: s */
    private static Clock f6858s = DefaultClock.m14333c();
    @SafeParcelable.VersionField

    /* renamed from: f */
    private final int f6859f;
    @SafeParcelable.Field

    /* renamed from: g */
    private String f6860g;
    @SafeParcelable.Field

    /* renamed from: h */
    private String f6861h;
    @SafeParcelable.Field

    /* renamed from: i */
    private String f6862i;
    @SafeParcelable.Field

    /* renamed from: j */
    private String f6863j;
    @SafeParcelable.Field

    /* renamed from: k */
    private Uri f6864k;
    @SafeParcelable.Field

    /* renamed from: l */
    private String f6865l;
    @SafeParcelable.Field

    /* renamed from: m */
    private long f6866m;
    @SafeParcelable.Field

    /* renamed from: n */
    private String f6867n;
    @SafeParcelable.Field

    /* renamed from: o */
    private List<Scope> f6868o;
    @SafeParcelable.Field

    /* renamed from: p */
    private String f6869p;
    @SafeParcelable.Field

    /* renamed from: q */
    private String f6870q;

    /* renamed from: r */
    private Set<Scope> f6871r = new HashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public GoogleSignInAccount(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) String str3, @SafeParcelable.Param(id = 5) String str4, @SafeParcelable.Param(id = 6) Uri uri, @SafeParcelable.Param(id = 7) String str5, @SafeParcelable.Param(id = 8) long j, @SafeParcelable.Param(id = 9) String str6, @SafeParcelable.Param(id = 10) List<Scope> list, @SafeParcelable.Param(id = 11) String str7, @SafeParcelable.Param(id = 12) String str8) {
        this.f6859f = i;
        this.f6860g = str;
        this.f6861h = str2;
        this.f6862i = str3;
        this.f6863j = str4;
        this.f6864k = uri;
        this.f6865l = str5;
        this.f6866m = j;
        this.f6867n = str6;
        this.f6868o = list;
        this.f6869p = str7;
        this.f6870q = str8;
    }

    @Nullable
    /* renamed from: y0 */
    public static GoogleSignInAccount m15159y0(@Nullable String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("photoUrl", null);
        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        GoogleSignInAccount z0 = m15158z0(jSONObject.optString(Name.MARK), jSONObject.optString("tokenId", null), jSONObject.optString("email", null), jSONObject.optString("displayName", null), jSONObject.optString("givenName", null), jSONObject.optString("familyName", null), parse, Long.valueOf(parseLong), jSONObject.getString("obfuscatedIdentifier"), hashSet);
        z0.f6865l = jSONObject.optString("serverAuthCode", null);
        return z0;
    }

    /* renamed from: z0 */
    private static GoogleSignInAccount m15158z0(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable Uri uri, @Nullable Long l, @NonNull String str7, @NonNull Set<Scope> set) {
        if (l == null) {
            l = Long.valueOf(f6858s.mo14335a() / 1000);
        }
        long longValue = l.longValue();
        Preconditions.m14527g(str7);
        Preconditions.m14523k(set);
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, longValue, str7, new ArrayList(set), str5, str6);
    }

    @Nullable
    /* renamed from: B */
    public String m15170B() {
        return this.f6863j;
    }

    @Nullable
    /* renamed from: I */
    public String m15169I() {
        return this.f6862i;
    }

    @Nullable
    /* renamed from: W */
    public String m15168W() {
        return this.f6870q;
    }

    @Nullable
    /* renamed from: Y */
    public String m15167Y() {
        return this.f6869p;
    }

    @Nullable
    /* renamed from: d */
    public Account m15166d() {
        if (this.f6862i == null) {
            return null;
        }
        return new Account(this.f6862i, "com.google");
    }

    @Nullable
    /* renamed from: d0 */
    public String m15165d0() {
        return this.f6860g;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        return googleSignInAccount.f6867n.equals(this.f6867n) && googleSignInAccount.m15162v0().equals(m15162v0());
    }

    public int hashCode() {
        return ((this.f6867n.hashCode() + 527) * 31) + m15162v0().hashCode();
    }

    @Nullable
    /* renamed from: j0 */
    public String m15164j0() {
        return this.f6861h;
    }

    @Nullable
    /* renamed from: u0 */
    public Uri m15163u0() {
        return this.f6864k;
    }

    @NonNull
    @KeepForSdk
    /* renamed from: v0 */
    public Set<Scope> m15162v0() {
        HashSet hashSet = new HashSet(this.f6868o);
        hashSet.addAll(this.f6871r);
        return hashSet;
    }

    @Nullable
    /* renamed from: w0 */
    public String m15161w0() {
        return this.f6865l;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f6859f);
        SafeParcelWriter.m14447q(parcel, 2, m15165d0(), false);
        SafeParcelWriter.m14447q(parcel, 3, m15164j0(), false);
        SafeParcelWriter.m14447q(parcel, 4, m15169I(), false);
        SafeParcelWriter.m14447q(parcel, 5, m15170B(), false);
        SafeParcelWriter.m14448p(parcel, 6, m15163u0(), i, false);
        SafeParcelWriter.m14447q(parcel, 7, m15161w0(), false);
        SafeParcelWriter.m14451m(parcel, 8, this.f6866m);
        SafeParcelWriter.m14447q(parcel, 9, this.f6867n, false);
        SafeParcelWriter.m14443u(parcel, 10, this.f6868o, false);
        SafeParcelWriter.m14447q(parcel, 11, m15167Y(), false);
        SafeParcelWriter.m14447q(parcel, 12, m15168W(), false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
