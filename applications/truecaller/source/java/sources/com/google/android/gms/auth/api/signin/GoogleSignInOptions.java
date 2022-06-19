package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.auth.api.signin.internal.HashAccumulator;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1577m.p1578a.p1642f.p1644b.p1646b.p1649c.C24890c;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions.class */
public class GoogleSignInOptions extends AbstractSafeParcelable implements Api.ApiOptions.Optional, ReflectedParcelable {
    @RecentlyNonNull

    /* renamed from: l */
    public static final GoogleSignInOptions f5516l;
    @RecentlyNonNull
    @VisibleForTesting

    /* renamed from: m */
    public static final Scope f5517m;
    @RecentlyNonNull
    @VisibleForTesting

    /* renamed from: o */
    public static final Scope f5519o;
    @RecentlyNonNull
    @VisibleForTesting

    /* renamed from: p */
    public static final Scope f5520p;
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f5523a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final ArrayList<Scope> f5524b;
    @SafeParcelable.Field

    /* renamed from: c */
    public Account f5525c;
    @SafeParcelable.Field

    /* renamed from: d */
    public boolean f5526d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final boolean f5527e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final boolean f5528f;
    @SafeParcelable.Field

    /* renamed from: g */
    public String f5529g;
    @SafeParcelable.Field

    /* renamed from: h */
    public String f5530h;
    @SafeParcelable.Field

    /* renamed from: i */
    public ArrayList<GoogleSignInOptionsExtensionParcelable> f5531i;
    @SafeParcelable.Field

    /* renamed from: j */
    public String f5532j;

    /* renamed from: k */
    public Map<Integer, GoogleSignInOptionsExtensionParcelable> f5533k;
    @RecentlyNonNull
    @VisibleForTesting

    /* renamed from: n */
    public static final Scope f5518n = new Scope(AnalyticsConstants.EMAIL);
    @RecentlyNonNull
    @VisibleForTesting

    /* renamed from: q */
    public static final Scope f5521q = new Scope("https://www.googleapis.com/auth/games");
    @RecentlyNonNull
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR = new zad();

    /* renamed from: r */
    public static Comparator<Scope> f5522r = new C24890c();

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public Set<Scope> f5534a;

        /* renamed from: b */
        public boolean f5535b;

        /* renamed from: c */
        public boolean f5536c;

        /* renamed from: d */
        public boolean f5537d;

        /* renamed from: e */
        public String f5538e;

        /* renamed from: f */
        public Account f5539f;

        /* renamed from: g */
        public String f5540g;

        /* renamed from: h */
        public Map<Integer, GoogleSignInOptionsExtensionParcelable> f5541h;

        /* renamed from: i */
        public String f5542i;

        public Builder() {
            this.f5534a = new HashSet();
            this.f5541h = new HashMap();
        }

        public Builder(@RecentlyNonNull GoogleSignInOptions googleSignInOptions) {
            this.f5534a = new HashSet();
            this.f5541h = new HashMap();
            Objects.requireNonNull(googleSignInOptions, "null reference");
            this.f5534a = new HashSet(googleSignInOptions.f5524b);
            this.f5535b = googleSignInOptions.f5527e;
            this.f5536c = googleSignInOptions.f5528f;
            this.f5537d = googleSignInOptions.f5526d;
            this.f5538e = googleSignInOptions.f5529g;
            this.f5539f = googleSignInOptions.f5525c;
            this.f5540g = googleSignInOptions.f5530h;
            this.f5541h = GoogleSignInOptions.m39121q2(googleSignInOptions.f5531i);
            this.f5542i = googleSignInOptions.f5532j;
        }

        @RecentlyNonNull
        /* renamed from: a */
        public GoogleSignInOptions m39120a() {
            if (this.f5534a.contains(GoogleSignInOptions.f5521q)) {
                Set<Scope> set = this.f5534a;
                Scope scope = GoogleSignInOptions.f5520p;
                if (set.contains(scope)) {
                    this.f5534a.remove(scope);
                }
            }
            if (this.f5537d && (this.f5539f == null || !this.f5534a.isEmpty())) {
                this.f5534a.add(GoogleSignInOptions.f5519o);
            }
            return new GoogleSignInOptions(3, new ArrayList(this.f5534a), this.f5539f, this.f5537d, this.f5535b, this.f5536c, this.f5538e, this.f5540g, this.f5541h, this.f5542i);
        }

        @RecentlyNonNull
        /* renamed from: b */
        public Builder m39119b() {
            this.f5534a.add(GoogleSignInOptions.f5518n);
            return this;
        }

        @RecentlyNonNull
        /* renamed from: c */
        public Builder m39118c(@RecentlyNonNull String str) {
            this.f5537d = true;
            Preconditions.m38901g(str);
            String str2 = this.f5538e;
            boolean z = true;
            if (str2 != null) {
                z = str2.equals(str);
            }
            Preconditions.m38906b(z, "two different server client ids provided");
            this.f5538e = str;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: d */
        public Builder m39117d(@RecentlyNonNull Scope scope, @RecentlyNonNull Scope... scopeArr) {
            this.f5534a.add(scope);
            this.f5534a.addAll(Arrays.asList(scopeArr));
            return this;
        }
    }

    static {
        Scope scope = new Scope("profile");
        f5517m = scope;
        Scope scope2 = new Scope("openid");
        f5519o = scope2;
        Scope scope3 = new Scope("https://www.googleapis.com/auth/games_lite");
        f5520p = scope3;
        Builder builder = new Builder();
        builder.f5534a.add(scope2);
        builder.f5534a.add(scope);
        f5516l = builder.m39120a();
        Builder builder2 = new Builder();
        builder2.f5534a.add(scope3);
        builder2.f5534a.addAll(Arrays.asList(new Scope[0]));
        builder2.m39120a();
    }

    public GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map<Integer, GoogleSignInOptionsExtensionParcelable> map, String str3) {
        this.f5523a = i;
        this.f5524b = arrayList;
        this.f5525c = account;
        this.f5526d = z;
        this.f5527e = z2;
        this.f5528f = z3;
        this.f5529g = str;
        this.f5530h = str2;
        this.f5531i = new ArrayList<>(map.values());
        this.f5533k = map;
        this.f5532j = str3;
    }

    @RecentlyNullable
    /* renamed from: p2 */
    public static GoogleSignInOptions m39122p2(String str) throws JSONException {
        String str2 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("scopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        String optString = jSONObject.has("accountName") ? jSONObject.optString("accountName") : null;
        Account account = !TextUtils.isEmpty(optString) ? new Account(optString, "com.google") : null;
        ArrayList arrayList = new ArrayList(hashSet);
        boolean z = jSONObject.getBoolean("idTokenRequested");
        boolean z2 = jSONObject.getBoolean("serverAuthRequested");
        boolean z3 = jSONObject.getBoolean("forceCodeForRefreshToken");
        String optString2 = jSONObject.has("serverClientId") ? jSONObject.optString("serverClientId") : null;
        if (jSONObject.has("hostedDomain")) {
            str2 = jSONObject.optString("hostedDomain");
        }
        return new GoogleSignInOptions(3, arrayList, account, z, z2, z3, optString2, str2, new HashMap(), null);
    }

    /* renamed from: q2 */
    public static Map<Integer, GoogleSignInOptionsExtensionParcelable> m39121q2(List<GoogleSignInOptionsExtensionParcelable> list) {
        HashMap hashMap = new HashMap();
        if (list == null) {
            return hashMap;
        }
        for (GoogleSignInOptionsExtensionParcelable googleSignInOptionsExtensionParcelable : list) {
            hashMap.put(Integer.valueOf(googleSignInOptionsExtensionParcelable.f5549b), googleSignInOptionsExtensionParcelable);
        }
        return hashMap;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
            if (this.f5531i.size() <= 0 && googleSignInOptions.f5531i.size() <= 0 && this.f5524b.size() == googleSignInOptions.m39123o2().size() && this.f5524b.containsAll(googleSignInOptions.m39123o2())) {
                Account account = this.f5525c;
                if (account == null) {
                    if (googleSignInOptions.f5525c != null) {
                        return false;
                    }
                } else if (!account.equals(googleSignInOptions.f5525c)) {
                    return false;
                }
                if (TextUtils.isEmpty(this.f5529g)) {
                    if (!TextUtils.isEmpty(googleSignInOptions.f5529g)) {
                        return false;
                    }
                } else if (!this.f5529g.equals(googleSignInOptions.f5529g)) {
                    return false;
                }
                if (this.f5528f != googleSignInOptions.f5528f || this.f5526d != googleSignInOptions.f5526d || this.f5527e != googleSignInOptions.f5527e) {
                    return false;
                }
                return TextUtils.equals(this.f5532j, googleSignInOptions.f5532j);
            }
            return false;
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList<Scope> arrayList2 = this.f5524b;
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(arrayList2.get(i).f5721b);
        }
        Collections.sort(arrayList);
        HashAccumulator hashAccumulator = new HashAccumulator();
        hashAccumulator.m39116a(arrayList);
        hashAccumulator.m39116a(this.f5525c);
        hashAccumulator.m39116a(this.f5529g);
        hashAccumulator.m39115b(this.f5528f);
        hashAccumulator.m39115b(this.f5526d);
        hashAccumulator.m39115b(this.f5527e);
        hashAccumulator.m39116a(this.f5532j);
        return hashAccumulator.f5551a;
    }

    @RecentlyNonNull
    @KeepForSdk
    /* renamed from: o2 */
    public ArrayList<Scope> m39123o2() {
        return new ArrayList<>(this.f5524b);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f5523a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38842u(parcel, 2, m39123o2(), false);
        SafeParcelWriter.m38847p(parcel, 3, this.f5525c, i, false);
        boolean z = this.f5526d;
        parcel.writeInt(262148);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.f5527e;
        parcel.writeInt(262149);
        parcel.writeInt(z2 ? 1 : 0);
        boolean z3 = this.f5528f;
        parcel.writeInt(262150);
        parcel.writeInt(z3 ? 1 : 0);
        SafeParcelWriter.m38846q(parcel, 7, this.f5529g, false);
        SafeParcelWriter.m38846q(parcel, 8, this.f5530h, false);
        SafeParcelWriter.m38842u(parcel, 9, this.f5531i, false);
        SafeParcelWriter.m38846q(parcel, 10, this.f5532j, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
