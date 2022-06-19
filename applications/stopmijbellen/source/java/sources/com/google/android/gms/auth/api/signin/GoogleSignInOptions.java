package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.auth.api.signin.internal.HashAccumulator;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.AccountType;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@SafeParcelable.Class(creator = "GoogleSignInOptionsCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions.class */
public class GoogleSignInOptions extends AbstractSafeParcelable implements Api.ApiOptions.Optional, ReflectedParcelable {
    @RecentlyNonNull
    public static final GoogleSignInOptions DEFAULT_GAMES_SIGN_IN;
    @RecentlyNonNull
    public static final GoogleSignInOptions DEFAULT_SIGN_IN;
    @RecentlyNonNull
    @VisibleForTesting
    public static final Scope zad;
    @SafeParcelable.VersionField(m4803id = 1)
    public final int zaf;
    @SafeParcelable.Field(getter = "getScopes", m4805id = 2)
    private final ArrayList<Scope> zag;
    @SafeParcelable.Field(getter = "getAccount", m4805id = 3)
    private Account zah;
    @SafeParcelable.Field(getter = "isIdTokenRequested", m4805id = 4)
    private boolean zai;
    @SafeParcelable.Field(getter = "isServerAuthCodeRequested", m4805id = 5)
    private final boolean zaj;
    @SafeParcelable.Field(getter = "isForceCodeForRefreshToken", m4805id = 6)
    private final boolean zak;
    @SafeParcelable.Field(getter = "getServerClientId", m4805id = 7)
    private String zal;
    @SafeParcelable.Field(getter = "getHostedDomain", m4805id = 8)
    private String zam;
    @SafeParcelable.Field(getter = "getExtensions", m4805id = 9)
    private ArrayList<GoogleSignInOptionsExtensionParcelable> zan;
    @SafeParcelable.Field(getter = "getLogSessionId", m4805id = 10)
    private String zao;
    private Map<Integer, GoogleSignInOptionsExtensionParcelable> zap;
    @RecentlyNonNull
    @VisibleForTesting
    public static final Scope zaa = new Scope(Scopes.PROFILE);
    @RecentlyNonNull
    @VisibleForTesting
    public static final Scope zab = new Scope(Scopes.EMAIL);
    @RecentlyNonNull
    @VisibleForTesting
    public static final Scope zac = new Scope(Scopes.OPEN_ID);
    @RecentlyNonNull
    @VisibleForTesting
    public static final Scope zae = new Scope(Scopes.GAMES);
    @RecentlyNonNull
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR = new zad();
    private static Comparator<Scope> zaq = new zac();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder.class */
    public static final class Builder {
        private Set<Scope> zaa;
        private boolean zab;
        private boolean zac;
        private boolean zad;
        private String zae;
        private Account zaf;
        private String zag;
        private Map<Integer, GoogleSignInOptionsExtensionParcelable> zah;
        private String zai;

        public Builder() {
            this.zaa = new HashSet();
            this.zah = new HashMap();
        }

        public Builder(@RecentlyNonNull GoogleSignInOptions googleSignInOptions) {
            this.zaa = new HashSet();
            this.zah = new HashMap();
            Preconditions.checkNotNull(googleSignInOptions);
            this.zaa = new HashSet(googleSignInOptions.zag);
            this.zab = googleSignInOptions.zaj;
            this.zac = googleSignInOptions.zak;
            this.zad = googleSignInOptions.zai;
            this.zae = googleSignInOptions.zal;
            this.zaf = googleSignInOptions.zah;
            this.zag = googleSignInOptions.zam;
            this.zah = GoogleSignInOptions.zam(googleSignInOptions.zan);
            this.zai = googleSignInOptions.zao;
        }

        private final String zaa(String str) {
            Preconditions.checkNotEmpty(str);
            String str2 = this.zae;
            boolean z = true;
            if (str2 != null) {
                z = str2.equals(str);
            }
            Preconditions.checkArgument(z, "two different server client ids provided");
            return str;
        }

        @RecentlyNonNull
        public Builder addExtension(@RecentlyNonNull GoogleSignInOptionsExtension googleSignInOptionsExtension) {
            if (!this.zah.containsKey(Integer.valueOf(googleSignInOptionsExtension.getExtensionType()))) {
                List<Scope> impliedScopes = googleSignInOptionsExtension.getImpliedScopes();
                if (impliedScopes != null) {
                    this.zaa.addAll(impliedScopes);
                }
                this.zah.put(Integer.valueOf(googleSignInOptionsExtension.getExtensionType()), new GoogleSignInOptionsExtensionParcelable(googleSignInOptionsExtension));
                return this;
            }
            throw new IllegalStateException("Only one extension per type may be added");
        }

        @RecentlyNonNull
        public GoogleSignInOptions build() {
            if (this.zaa.contains(GoogleSignInOptions.zae)) {
                Set<Scope> set = this.zaa;
                Scope scope = GoogleSignInOptions.zad;
                if (set.contains(scope)) {
                    this.zaa.remove(scope);
                }
            }
            if (this.zad && (this.zaf == null || !this.zaa.isEmpty())) {
                requestId();
            }
            return new GoogleSignInOptions(3, new ArrayList(this.zaa), this.zaf, this.zad, this.zab, this.zac, this.zae, this.zag, this.zah, this.zai, null);
        }

        @RecentlyNonNull
        public Builder requestEmail() {
            this.zaa.add(GoogleSignInOptions.zab);
            return this;
        }

        @RecentlyNonNull
        public Builder requestId() {
            this.zaa.add(GoogleSignInOptions.zac);
            return this;
        }

        @RecentlyNonNull
        public Builder requestIdToken(@RecentlyNonNull String str) {
            this.zad = true;
            zaa(str);
            this.zae = str;
            return this;
        }

        @RecentlyNonNull
        public Builder requestProfile() {
            this.zaa.add(GoogleSignInOptions.zaa);
            return this;
        }

        @RecentlyNonNull
        public Builder requestScopes(@RecentlyNonNull Scope scope, @RecentlyNonNull Scope... scopeArr) {
            this.zaa.add(scope);
            this.zaa.addAll(Arrays.asList(scopeArr));
            return this;
        }

        @RecentlyNonNull
        public Builder requestServerAuthCode(@RecentlyNonNull String str) {
            requestServerAuthCode(str, false);
            return this;
        }

        @RecentlyNonNull
        public Builder requestServerAuthCode(@RecentlyNonNull String str, boolean z) {
            this.zab = true;
            zaa(str);
            this.zae = str;
            this.zac = z;
            return this;
        }

        @RecentlyNonNull
        public Builder setAccountName(@RecentlyNonNull String str) {
            this.zaf = new Account(Preconditions.checkNotEmpty(str), AccountType.GOOGLE);
            return this;
        }

        @RecentlyNonNull
        public Builder setHostedDomain(@RecentlyNonNull String str) {
            this.zag = Preconditions.checkNotEmpty(str);
            return this;
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder setLogSessionId(@RecentlyNonNull String str) {
            this.zai = str;
            return this;
        }
    }

    static {
        Scope scope = new Scope(Scopes.GAMES_LITE);
        zad = scope;
        Builder builder = new Builder();
        builder.requestId();
        builder.requestProfile();
        DEFAULT_SIGN_IN = builder.build();
        Builder builder2 = new Builder();
        builder2.requestScopes(scope, new Scope[0]);
        DEFAULT_GAMES_SIGN_IN = builder2.build();
    }

    @SafeParcelable.Constructor
    public GoogleSignInOptions(@SafeParcelable.Param(m4804id = 1) int i, @SafeParcelable.Param(m4804id = 2) ArrayList<Scope> arrayList, @SafeParcelable.Param(m4804id = 3) Account account, @SafeParcelable.Param(m4804id = 4) boolean z, @SafeParcelable.Param(m4804id = 5) boolean z2, @SafeParcelable.Param(m4804id = 6) boolean z3, @SafeParcelable.Param(m4804id = 7) String str, @SafeParcelable.Param(m4804id = 8) String str2, @SafeParcelable.Param(m4804id = 9) ArrayList<GoogleSignInOptionsExtensionParcelable> arrayList2, @SafeParcelable.Param(m4804id = 10) String str3) {
        this(i, arrayList, account, z, z2, z3, str, str2, zam(arrayList2), str3);
    }

    private GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map<Integer, GoogleSignInOptionsExtensionParcelable> map, String str3) {
        this.zaf = i;
        this.zag = arrayList;
        this.zah = account;
        this.zai = z;
        this.zaj = z2;
        this.zak = z3;
        this.zal = str;
        this.zam = str2;
        this.zan = new ArrayList<>(map.values());
        this.zap = map;
        this.zao = str3;
    }

    public /* synthetic */ GoogleSignInOptions(int i, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map map, String str3, zac zacVar) {
        this(3, arrayList, account, z, z2, z3, str, str2, map, str3);
    }

    @RecentlyNullable
    public static GoogleSignInOptions zaa(String str) throws JSONException {
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
        Account account = !TextUtils.isEmpty(optString) ? new Account(optString, AccountType.GOOGLE) : null;
        ArrayList arrayList = new ArrayList(hashSet);
        boolean z = jSONObject.getBoolean("idTokenRequested");
        boolean z2 = jSONObject.getBoolean("serverAuthRequested");
        boolean z3 = jSONObject.getBoolean("forceCodeForRefreshToken");
        String optString2 = jSONObject.has("serverClientId") ? jSONObject.optString("serverClientId") : null;
        if (jSONObject.has("hostedDomain")) {
            str2 = jSONObject.optString("hostedDomain");
        }
        return new GoogleSignInOptions(3, arrayList, account, z, z2, z3, optString2, str2, new HashMap(), (String) null);
    }

    public static Map<Integer, GoogleSignInOptionsExtensionParcelable> zam(List<GoogleSignInOptionsExtensionParcelable> list) {
        HashMap hashMap = new HashMap();
        if (list == null) {
            return hashMap;
        }
        for (GoogleSignInOptionsExtensionParcelable googleSignInOptionsExtensionParcelable : list) {
            hashMap.put(Integer.valueOf(googleSignInOptionsExtensionParcelable.getType()), googleSignInOptionsExtensionParcelable);
        }
        return hashMap;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
            if (this.zan.size() <= 0 && googleSignInOptions.zan.size() <= 0 && this.zag.size() == googleSignInOptions.getScopes().size() && this.zag.containsAll(googleSignInOptions.getScopes())) {
                Account account = this.zah;
                if (account == null) {
                    if (googleSignInOptions.getAccount() != null) {
                        return false;
                    }
                } else if (!account.equals(googleSignInOptions.getAccount())) {
                    return false;
                }
                if (TextUtils.isEmpty(this.zal)) {
                    if (!TextUtils.isEmpty(googleSignInOptions.getServerClientId())) {
                        return false;
                    }
                } else if (!this.zal.equals(googleSignInOptions.getServerClientId())) {
                    return false;
                }
                if (this.zak != googleSignInOptions.isForceCodeForRefreshToken() || this.zai != googleSignInOptions.isIdTokenRequested() || this.zaj != googleSignInOptions.isServerAuthCodeRequested()) {
                    return false;
                }
                return TextUtils.equals(this.zao, googleSignInOptions.getLogSessionId());
            }
            return false;
        } catch (ClassCastException e) {
            return false;
        }
    }

    @RecentlyNullable
    @KeepForSdk
    public Account getAccount() {
        return this.zah;
    }

    @RecentlyNonNull
    @KeepForSdk
    public ArrayList<GoogleSignInOptionsExtensionParcelable> getExtensions() {
        return this.zan;
    }

    @RecentlyNullable
    @KeepForSdk
    public String getLogSessionId() {
        return this.zao;
    }

    @RecentlyNonNull
    public Scope[] getScopeArray() {
        ArrayList<Scope> arrayList = this.zag;
        return (Scope[]) arrayList.toArray(new Scope[arrayList.size()]);
    }

    @RecentlyNonNull
    @KeepForSdk
    public ArrayList<Scope> getScopes() {
        return new ArrayList<>(this.zag);
    }

    @RecentlyNullable
    @KeepForSdk
    public String getServerClientId() {
        return this.zal;
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList<Scope> arrayList2 = this.zag;
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(arrayList2.get(i).getScopeUri());
        }
        Collections.sort(arrayList);
        HashAccumulator hashAccumulator = new HashAccumulator();
        hashAccumulator.addObject(arrayList);
        hashAccumulator.addObject(this.zah);
        hashAccumulator.addObject(this.zal);
        hashAccumulator.zaa(this.zak);
        hashAccumulator.zaa(this.zai);
        hashAccumulator.zaa(this.zaj);
        hashAccumulator.addObject(this.zao);
        return hashAccumulator.hash();
    }

    @KeepForSdk
    public boolean isForceCodeForRefreshToken() {
        return this.zak;
    }

    @KeepForSdk
    public boolean isIdTokenRequested() {
        return this.zai;
    }

    @KeepForSdk
    public boolean isServerAuthCodeRequested() {
        return this.zaj;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zaf);
        SafeParcelWriter.writeTypedList(parcel, 2, getScopes(), false);
        SafeParcelWriter.writeParcelable(parcel, 3, getAccount(), i, false);
        SafeParcelWriter.writeBoolean(parcel, 4, isIdTokenRequested());
        SafeParcelWriter.writeBoolean(parcel, 5, isServerAuthCodeRequested());
        SafeParcelWriter.writeBoolean(parcel, 6, isForceCodeForRefreshToken());
        SafeParcelWriter.writeString(parcel, 7, getServerClientId(), false);
        SafeParcelWriter.writeString(parcel, 8, this.zam, false);
        SafeParcelWriter.writeTypedList(parcel, 9, getExtensions(), false);
        SafeParcelWriter.writeString(parcel, 10, getLogSessionId(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @RecentlyNonNull
    public final String zab() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.zag, zaq);
            Iterator<Scope> it2 = this.zag.iterator();
            while (it2.hasNext()) {
                jSONArray.put(it2.next().getScopeUri());
            }
            jSONObject.put("scopes", jSONArray);
            Account account = this.zah;
            if (account != null) {
                jSONObject.put("accountName", account.name);
            }
            jSONObject.put("idTokenRequested", this.zai);
            jSONObject.put("forceCodeForRefreshToken", this.zak);
            jSONObject.put("serverAuthRequested", this.zaj);
            if (!TextUtils.isEmpty(this.zal)) {
                jSONObject.put("serverClientId", this.zal);
            }
            if (!TextUtils.isEmpty(this.zam)) {
                jSONObject.put("hostedDomain", this.zam);
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }
}
