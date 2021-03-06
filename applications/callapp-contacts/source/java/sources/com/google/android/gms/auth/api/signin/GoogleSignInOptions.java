package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.internal.C11741a;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.api.AbstractC11821d;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
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
public class GoogleSignInOptions extends AbstractSafeParcelable implements AbstractC11821d, ReflectedParcelable {
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
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR = new C11739i();
    private static Comparator<Scope> zaq = new C11738h();

    /* renamed from: com.google.android.gms.auth.api.signin.GoogleSignInOptions$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions$a.class */
    public static final class C11728a {

        /* renamed from: a */
        public boolean f39034a;

        /* renamed from: b */
        public String f39035b;

        /* renamed from: c */
        public String f39036c;

        /* renamed from: d */
        private Set<Scope> f39037d;

        /* renamed from: e */
        private boolean f39038e;

        /* renamed from: f */
        private boolean f39039f;

        /* renamed from: g */
        private Account f39040g;

        /* renamed from: h */
        private String f39041h;

        /* renamed from: i */
        private Map<Integer, GoogleSignInOptionsExtensionParcelable> f39042i;

        public C11728a() {
            this.f39037d = new HashSet();
            this.f39042i = new HashMap();
        }

        public C11728a(GoogleSignInOptions googleSignInOptions) {
            this.f39037d = new HashSet();
            this.f39042i = new HashMap();
            C12045o.m19162a(googleSignInOptions);
            this.f39037d = new HashSet(googleSignInOptions.zag);
            this.f39038e = googleSignInOptions.zaj;
            this.f39039f = googleSignInOptions.zak;
            this.f39034a = googleSignInOptions.zai;
            this.f39035b = googleSignInOptions.zal;
            this.f39040g = googleSignInOptions.zah;
            this.f39041h = googleSignInOptions.zam;
            this.f39042i = GoogleSignInOptions.zam(googleSignInOptions.zan);
            this.f39036c = googleSignInOptions.zao;
        }

        /* renamed from: a */
        public final C11728a m19571a() {
            this.f39037d.add(GoogleSignInOptions.zac);
            return this;
        }

        /* renamed from: a */
        public final C11728a m19570a(Scope scope, Scope... scopeArr) {
            this.f39037d.add(scope);
            this.f39037d.addAll(Arrays.asList(scopeArr));
            return this;
        }

        /* renamed from: b */
        public final C11728a m19569b() {
            this.f39037d.add(GoogleSignInOptions.zab);
            return this;
        }

        /* renamed from: c */
        public final C11728a m19568c() {
            this.f39037d.add(GoogleSignInOptions.zaa);
            return this;
        }

        /* renamed from: d */
        public final GoogleSignInOptions m19567d() {
            if (this.f39037d.contains(GoogleSignInOptions.zae) && this.f39037d.contains(GoogleSignInOptions.zad)) {
                this.f39037d.remove(GoogleSignInOptions.zad);
            }
            if (this.f39034a && (this.f39040g == null || !this.f39037d.isEmpty())) {
                m19571a();
            }
            return new GoogleSignInOptions(3, new ArrayList(this.f39037d), this.f39040g, this.f39034a, this.f39038e, this.f39039f, this.f39035b, this.f39041h, this.f39042i, this.f39036c, null);
        }
    }

    static {
        Scope scope = new Scope("https://www.googleapis.com/auth/games_lite");
        zad = scope;
        C11728a c11728a = new C11728a();
        c11728a.m19571a();
        c11728a.m19568c();
        DEFAULT_SIGN_IN = c11728a.m19567d();
        C11728a c11728a2 = new C11728a();
        c11728a2.m19570a(scope, new Scope[0]);
        DEFAULT_GAMES_SIGN_IN = c11728a2.m19567d();
    }

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

    /* synthetic */ GoogleSignInOptions(int i, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map map, String str3, C11738h c11738h) {
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
        C11741a c11741a = new C11741a();
        c11741a.m19551a(arrayList);
        c11741a.m19551a(this.zah);
        c11741a.m19551a(this.zal);
        c11741a.m19550a(this.zak);
        c11741a.m19550a(this.zai);
        c11741a.m19550a(this.zaj);
        c11741a.m19551a(this.zao);
        return c11741a.f39061b;
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
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zaf);
        C12050a.m19102a(parcel, 2, (List) getScopes(), false);
        C12050a.m19107a(parcel, 3, getAccount(), i, false);
        C12050a.m19101a(parcel, 4, isIdTokenRequested());
        C12050a.m19101a(parcel, 5, isServerAuthCodeRequested());
        C12050a.m19101a(parcel, 6, isForceCodeForRefreshToken());
        C12050a.m19104a(parcel, 7, getServerClientId(), false);
        C12050a.m19104a(parcel, 8, this.zam, false);
        C12050a.m19102a(parcel, 9, (List) getExtensions(), false);
        C12050a.m19104a(parcel, 10, getLogSessionId(), false);
        C12050a.m19095b(parcel, m19116a);
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
