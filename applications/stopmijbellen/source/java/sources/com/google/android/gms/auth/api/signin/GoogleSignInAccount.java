package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.AccountType;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.C1676a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p226s.C4254c;
@SafeParcelable.Class(creator = "GoogleSignInAccountCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInAccount.class */
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new zab();
    @RecentlyNonNull
    @VisibleForTesting
    public static Clock zaa = DefaultClock.getInstance();
    @SafeParcelable.VersionField(m4803id = 1)
    public final int zab;
    @SafeParcelable.Field(m4805id = 10)
    public List<Scope> zac;
    @SafeParcelable.Field(getter = "getId", m4805id = 2)
    private String zad;
    @SafeParcelable.Field(getter = "getIdToken", m4805id = 3)
    private String zae;
    @SafeParcelable.Field(getter = "getEmail", m4805id = 4)
    private String zaf;
    @SafeParcelable.Field(getter = "getDisplayName", m4805id = 5)
    private String zag;
    @SafeParcelable.Field(getter = "getPhotoUrl", m4805id = 6)
    private Uri zah;
    @SafeParcelable.Field(getter = "getServerAuthCode", m4805id = 7)
    private String zai;
    @SafeParcelable.Field(getter = "getExpirationTimeSecs", m4805id = 8)
    private long zaj;
    @SafeParcelable.Field(getter = "getObfuscatedIdentifier", m4805id = 9)
    private String zak;
    @SafeParcelable.Field(getter = "getGivenName", m4805id = 11)
    private String zal;
    @SafeParcelable.Field(getter = "getFamilyName", m4805id = 12)
    private String zam;
    private Set<Scope> zan = new HashSet();

    @SafeParcelable.Constructor
    public GoogleSignInAccount(@SafeParcelable.Param(m4804id = 1) int i, @SafeParcelable.Param(m4804id = 2) String str, @SafeParcelable.Param(m4804id = 3) String str2, @SafeParcelable.Param(m4804id = 4) String str3, @SafeParcelable.Param(m4804id = 5) String str4, @SafeParcelable.Param(m4804id = 6) Uri uri, @SafeParcelable.Param(m4804id = 7) String str5, @SafeParcelable.Param(m4804id = 8) long j, @SafeParcelable.Param(m4804id = 9) String str6, @SafeParcelable.Param(m4804id = 10) List<Scope> list, @SafeParcelable.Param(m4804id = 11) String str7, @SafeParcelable.Param(m4804id = 12) String str8) {
        this.zab = i;
        this.zad = str;
        this.zae = str2;
        this.zaf = str3;
        this.zag = str4;
        this.zah = uri;
        this.zai = str5;
        this.zaj = j;
        this.zak = str6;
        this.zac = list;
        this.zal = str7;
        this.zam = str8;
    }

    @RecentlyNonNull
    @KeepForSdk
    public static GoogleSignInAccount createDefault() {
        return zae(new Account("<<default account>>", AccountType.GOOGLE), new HashSet());
    }

    @RecentlyNonNull
    @KeepForSdk
    public static GoogleSignInAccount fromAccount(@RecentlyNonNull Account account) {
        return zae(account, new C4254c(0));
    }

    @RecentlyNullable
    public static GoogleSignInAccount zaa(String str) throws JSONException {
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
        GoogleSignInAccount zab = zab(jSONObject.optString(FacebookAdapter.KEY_ID), jSONObject.has("tokenId") ? jSONObject.optString("tokenId") : null, jSONObject.has(Scopes.EMAIL) ? jSONObject.optString(Scopes.EMAIL) : null, jSONObject.has("displayName") ? jSONObject.optString("displayName") : null, jSONObject.has("givenName") ? jSONObject.optString("givenName") : null, jSONObject.has("familyName") ? jSONObject.optString("familyName") : null, parse, Long.valueOf(parseLong), jSONObject.getString("obfuscatedIdentifier"), hashSet);
        String str2 = null;
        if (jSONObject.has("serverAuthCode")) {
            str2 = jSONObject.optString("serverAuthCode");
        }
        zab.zai = str2;
        return zab;
    }

    @RecentlyNonNull
    public static GoogleSignInAccount zab(String str, String str2, String str3, String str4, String str5, String str6, Uri uri, Long l, @RecentlyNonNull String str7, @RecentlyNonNull Set<Scope> set) {
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, l.longValue(), Preconditions.checkNotEmpty(str7), new ArrayList((Collection) Preconditions.checkNotNull(set)), str5, str6);
    }

    private static GoogleSignInAccount zae(Account account, Set<Scope> set) {
        return zab(null, null, account.name, null, null, null, null, 0L, account.name, set);
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
        return googleSignInAccount.zak.equals(this.zak) && googleSignInAccount.getRequestedScopes().equals(getRequestedScopes());
    }

    @RecentlyNullable
    public Account getAccount() {
        String str = this.zaf;
        if (str == null) {
            return null;
        }
        return new Account(str, AccountType.GOOGLE);
    }

    @RecentlyNullable
    public String getDisplayName() {
        return this.zag;
    }

    @RecentlyNullable
    public String getEmail() {
        return this.zaf;
    }

    @RecentlyNullable
    public String getFamilyName() {
        return this.zam;
    }

    @RecentlyNullable
    public String getGivenName() {
        return this.zal;
    }

    public Set<Scope> getGrantedScopes() {
        return new HashSet(this.zac);
    }

    @RecentlyNullable
    public String getId() {
        return this.zad;
    }

    @RecentlyNullable
    public String getIdToken() {
        return this.zae;
    }

    @RecentlyNullable
    public Uri getPhotoUrl() {
        return this.zah;
    }

    @KeepForSdk
    public Set<Scope> getRequestedScopes() {
        HashSet hashSet = new HashSet(this.zac);
        hashSet.addAll(this.zan);
        return hashSet;
    }

    @RecentlyNullable
    public String getServerAuthCode() {
        return this.zai;
    }

    public int hashCode() {
        return getRequestedScopes().hashCode() + C1676a.m4793d(this.zak, 527, 31);
    }

    @KeepForSdk
    public boolean isExpired() {
        return zaa.currentTimeMillis() / 1000 >= this.zaj - 300;
    }

    @RecentlyNonNull
    @KeepForSdk
    public GoogleSignInAccount requestExtraScopes(@RecentlyNonNull Scope... scopeArr) {
        if (scopeArr != null) {
            Collections.addAll(this.zan, scopeArr);
        }
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zab);
        SafeParcelWriter.writeString(parcel, 2, getId(), false);
        SafeParcelWriter.writeString(parcel, 3, getIdToken(), false);
        SafeParcelWriter.writeString(parcel, 4, getEmail(), false);
        SafeParcelWriter.writeString(parcel, 5, getDisplayName(), false);
        SafeParcelWriter.writeParcelable(parcel, 6, getPhotoUrl(), i, false);
        SafeParcelWriter.writeString(parcel, 7, getServerAuthCode(), false);
        SafeParcelWriter.writeLong(parcel, 8, this.zaj);
        SafeParcelWriter.writeString(parcel, 9, this.zak, false);
        SafeParcelWriter.writeTypedList(parcel, 10, this.zac, false);
        SafeParcelWriter.writeString(parcel, 11, getGivenName(), false);
        SafeParcelWriter.writeString(parcel, 12, getFamilyName(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final String zac() {
        return this.zak;
    }

    @RecentlyNonNull
    public final String zad() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (getId() != null) {
                jSONObject.put(FacebookAdapter.KEY_ID, getId());
            }
            if (getIdToken() != null) {
                jSONObject.put("tokenId", getIdToken());
            }
            if (getEmail() != null) {
                jSONObject.put(Scopes.EMAIL, getEmail());
            }
            if (getDisplayName() != null) {
                jSONObject.put("displayName", getDisplayName());
            }
            if (getGivenName() != null) {
                jSONObject.put("givenName", getGivenName());
            }
            if (getFamilyName() != null) {
                jSONObject.put("familyName", getFamilyName());
            }
            Uri photoUrl = getPhotoUrl();
            if (photoUrl != null) {
                jSONObject.put("photoUrl", photoUrl.toString());
            }
            if (getServerAuthCode() != null) {
                jSONObject.put("serverAuthCode", getServerAuthCode());
            }
            jSONObject.put("expirationTime", this.zaj);
            jSONObject.put("obfuscatedIdentifier", this.zak);
            JSONArray jSONArray = new JSONArray();
            List<Scope> list = this.zac;
            Scope[] scopeArr = (Scope[]) list.toArray(new Scope[list.size()]);
            Arrays.sort(scopeArr, zaa.zaa);
            for (Scope scope : scopeArr) {
                jSONArray.put(scope.getScopeUri());
            }
            jSONObject.put("grantedScopes", jSONArray);
            jSONObject.remove("serverAuthCode");
            return jSONObject.toString();
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }
}
