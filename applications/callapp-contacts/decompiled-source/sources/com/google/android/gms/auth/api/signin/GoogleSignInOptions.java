package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions.class */
public class GoogleSignInOptions extends AbstractSafeParcelable implements d, ReflectedParcelable {
    public static final GoogleSignInOptions DEFAULT_GAMES_SIGN_IN;
    public static final GoogleSignInOptions DEFAULT_SIGN_IN;
    public static final Scope zad;
    final int zaf;
    private final ArrayList<Scope> zag;
    private Account zah;
    private boolean zai;
    private final boolean zaj;
    private final boolean zak;
    private String zal;
    private String zam;
    private ArrayList<GoogleSignInOptionsExtensionParcelable> zan;
    private String zao;
    private Map<Integer, GoogleSignInOptionsExtensionParcelable> zap;
    public static final Scope zaa = new Scope("profile");
    public static final Scope zab = new Scope("email");
    public static final Scope zac = new Scope("openid");
    public static final Scope zae = new Scope("https://www.googleapis.com/auth/games");
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR = new i();
    private static Comparator<Scope> zaq = new h();

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f22490a;

        /* renamed from: b  reason: collision with root package name */
        public String f22491b;

        /* renamed from: c  reason: collision with root package name */
        public String f22492c;

        /* renamed from: d  reason: collision with root package name */
        private Set<Scope> f22493d;
        private boolean e;
        private boolean f;
        private Account g;
        private String h;
        private Map<Integer, GoogleSignInOptionsExtensionParcelable> i;

        public a() {
            this.f22493d = new HashSet();
            this.i = new HashMap();
        }

        public a(GoogleSignInOptions googleSignInOptions) {
            this.f22493d = new HashSet();
            this.i = new HashMap();
            o.a(googleSignInOptions);
            this.f22493d = new HashSet(googleSignInOptions.zag);
            this.e = googleSignInOptions.zaj;
            this.f = googleSignInOptions.zak;
            this.f22490a = googleSignInOptions.zai;
            this.f22491b = googleSignInOptions.zal;
            this.g = googleSignInOptions.zah;
            this.h = googleSignInOptions.zam;
            this.i = GoogleSignInOptions.zam(googleSignInOptions.zan);
            this.f22492c = googleSignInOptions.zao;
        }

        public final a a() {
            this.f22493d.add(GoogleSignInOptions.zac);
            return this;
        }

        public final a a(Scope scope, Scope... scopeArr) {
            this.f22493d.add(scope);
            this.f22493d.addAll(Arrays.asList(scopeArr));
            return this;
        }

        public final a b() {
            this.f22493d.add(GoogleSignInOptions.zab);
            return this;
        }

        public final a c() {
            this.f22493d.add(GoogleSignInOptions.zaa);
            return this;
        }

        public final GoogleSignInOptions d() {
            if (this.f22493d.contains(GoogleSignInOptions.zae) && this.f22493d.contains(GoogleSignInOptions.zad)) {
                this.f22493d.remove(GoogleSignInOptions.zad);
            }
            if (this.f22490a && (this.g == null || !this.f22493d.isEmpty())) {
                a();
            }
            return new GoogleSignInOptions(3, new ArrayList(this.f22493d), this.g, this.f22490a, this.e, this.f, this.f22491b, this.h, this.i, this.f22492c, null);
        }
    }

    static {
        Scope scope = new Scope("https://www.googleapis.com/auth/games_lite");
        zad = scope;
        a aVar = new a();
        aVar.a();
        aVar.c();
        DEFAULT_SIGN_IN = aVar.d();
        a aVar2 = new a();
        aVar2.a(scope, new Scope[0]);
        DEFAULT_GAMES_SIGN_IN = aVar2.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, ArrayList<GoogleSignInOptionsExtensionParcelable> arrayList2, String str3) {
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

    /* synthetic */ GoogleSignInOptions(int i, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map map, String str3, h hVar) {
        this(3, arrayList, account, z, z2, z3, str, str2, map, str3);
    }

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
        Account account = !TextUtils.isEmpty(optString) ? new Account(optString, "com.google") : null;
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

    /* JADX INFO: Access modifiers changed from: private */
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
                if (this.zak == googleSignInOptions.isForceCodeForRefreshToken() && this.zai == googleSignInOptions.isIdTokenRequested() && this.zaj == googleSignInOptions.isServerAuthCodeRequested()) {
                    return TextUtils.equals(this.zao, googleSignInOptions.getLogSessionId());
                }
                return false;
            }
            return false;
        } catch (ClassCastException e) {
            return false;
        }
    }

    public Account getAccount() {
        return this.zah;
    }

    public ArrayList<GoogleSignInOptionsExtensionParcelable> getExtensions() {
        return this.zan;
    }

    public String getLogSessionId() {
        return this.zao;
    }

    public Scope[] getScopeArray() {
        ArrayList<Scope> arrayList = this.zag;
        return (Scope[]) arrayList.toArray(new Scope[arrayList.size()]);
    }

    public ArrayList<Scope> getScopes() {
        return new ArrayList<>(this.zag);
    }

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
        com.google.android.gms.auth.api.signin.internal.a aVar = new com.google.android.gms.auth.api.signin.internal.a();
        aVar.a(arrayList);
        aVar.a(this.zah);
        aVar.a(this.zal);
        aVar.a(this.zak);
        aVar.a(this.zai);
        aVar.a(this.zaj);
        aVar.a(this.zao);
        return aVar.f22507b;
    }

    public boolean isForceCodeForRefreshToken() {
        return this.zak;
    }

    public boolean isIdTokenRequested() {
        return this.zai;
    }

    public boolean isServerAuthCodeRequested() {
        return this.zaj;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel, 20293);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, this.zaf);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, (List) getScopes(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, getAccount(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, isIdTokenRequested());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 5, isServerAuthCodeRequested());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 6, isForceCodeForRefreshToken());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 7, getServerClientId(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 8, this.zam, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 9, (List) getExtensions(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 10, getLogSessionId(), false);
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2);
    }

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
