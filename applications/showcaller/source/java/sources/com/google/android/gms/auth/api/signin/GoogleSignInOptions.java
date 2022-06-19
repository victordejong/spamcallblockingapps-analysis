package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.auth.api.signin.internal.C5913a;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.api.C5984a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions.class */
public class GoogleSignInOptions extends AbstractSafeParcelable implements C5984a.AbstractC5988d, ReflectedParcelable {
    @RecentlyNonNull

    /* renamed from: d */
    public static final GoogleSignInOptions f18984d;
    @RecentlyNonNull

    /* renamed from: e */
    public static final GoogleSignInOptions f18985e;
    @RecentlyNonNull

    /* renamed from: i */
    public static final Scope f18989i;

    /* renamed from: l */
    final int f18992l;

    /* renamed from: m */
    private final ArrayList<Scope> f18993m;

    /* renamed from: n */
    private Account f18994n;

    /* renamed from: o */
    private boolean f18995o;

    /* renamed from: p */
    private final boolean f18996p;

    /* renamed from: q */
    private final boolean f18997q;

    /* renamed from: r */
    private String f18998r;

    /* renamed from: s */
    private String f18999s;

    /* renamed from: t */
    private ArrayList<GoogleSignInOptionsExtensionParcelable> f19000t;

    /* renamed from: u */
    private String f19001u;

    /* renamed from: v */
    private Map<Integer, GoogleSignInOptionsExtensionParcelable> f19002v;
    @RecentlyNonNull

    /* renamed from: f */
    public static final Scope f18986f = new Scope("profile");
    @RecentlyNonNull

    /* renamed from: g */
    public static final Scope f18987g = new Scope("email");
    @RecentlyNonNull

    /* renamed from: h */
    public static final Scope f18988h = new Scope("openid");
    @RecentlyNonNull

    /* renamed from: j */
    public static final Scope f18990j = new Scope("https://www.googleapis.com/auth/games");
    @RecentlyNonNull
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR = new C5910h();

    /* renamed from: k */
    private static Comparator<Scope> f18991k = new C5909g();

    /* renamed from: com.google.android.gms.auth.api.signin.GoogleSignInOptions$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions$a.class */
    public static final class C5900a {

        /* renamed from: a */
        private Set<Scope> f19003a;

        /* renamed from: b */
        private boolean f19004b;

        /* renamed from: c */
        private boolean f19005c;

        /* renamed from: d */
        private boolean f19006d;

        /* renamed from: e */
        private String f19007e;

        /* renamed from: f */
        private Account f19008f;

        /* renamed from: g */
        private String f19009g;

        /* renamed from: h */
        private Map<Integer, GoogleSignInOptionsExtensionParcelable> f19010h;

        /* renamed from: i */
        private String f19011i;

        public C5900a() {
            this.f19003a = new HashSet();
            this.f19010h = new HashMap();
        }

        public C5900a(@RecentlyNonNull GoogleSignInOptions googleSignInOptions) {
            this.f19003a = new HashSet();
            this.f19010h = new HashMap();
            C6155o.m17018j(googleSignInOptions);
            this.f19003a = new HashSet(googleSignInOptions.f18993m);
            this.f19004b = googleSignInOptions.f18996p;
            this.f19005c = googleSignInOptions.f18997q;
            this.f19006d = googleSignInOptions.f18995o;
            this.f19007e = googleSignInOptions.f18998r;
            this.f19008f = googleSignInOptions.f18994n;
            this.f19009g = googleSignInOptions.f18999s;
            this.f19010h = GoogleSignInOptions.m17647D0(googleSignInOptions.f19000t);
            this.f19011i = googleSignInOptions.f19001u;
        }

        @RecentlyNonNull
        /* renamed from: a */
        public GoogleSignInOptions m17629a() {
            if (this.f19003a.contains(GoogleSignInOptions.f18990j)) {
                Set<Scope> set = this.f19003a;
                Scope scope = GoogleSignInOptions.f18989i;
                if (set.contains(scope)) {
                    this.f19003a.remove(scope);
                }
            }
            if (this.f19006d && (this.f19008f == null || !this.f19003a.isEmpty())) {
                m17627c();
            }
            return new GoogleSignInOptions(3, new ArrayList(this.f19003a), this.f19008f, this.f19006d, this.f19004b, this.f19005c, this.f19007e, this.f19009g, this.f19010h, this.f19011i, null);
        }

        @RecentlyNonNull
        /* renamed from: b */
        public C5900a m17628b() {
            this.f19003a.add(GoogleSignInOptions.f18987g);
            return this;
        }

        @RecentlyNonNull
        /* renamed from: c */
        public C5900a m17627c() {
            this.f19003a.add(GoogleSignInOptions.f18988h);
            return this;
        }

        @RecentlyNonNull
        /* renamed from: d */
        public C5900a m17626d() {
            this.f19003a.add(GoogleSignInOptions.f18986f);
            return this;
        }

        @RecentlyNonNull
        /* renamed from: e */
        public C5900a m17625e(@RecentlyNonNull Scope scope, @RecentlyNonNull Scope... scopeArr) {
            this.f19003a.add(scope);
            this.f19003a.addAll(Arrays.asList(scopeArr));
            return this;
        }

        @RecentlyNonNull
        /* renamed from: f */
        public C5900a m17624f(@RecentlyNonNull String str) {
            this.f19011i = str;
            return this;
        }
    }

    static {
        Scope scope = new Scope("https://www.googleapis.com/auth/games_lite");
        f18989i = scope;
        C5900a c5900a = new C5900a();
        c5900a.m17627c();
        c5900a.m17626d();
        f18984d = c5900a.m17629a();
        C5900a c5900a2 = new C5900a();
        c5900a2.m17625e(scope, new Scope[0]);
        f18985e = c5900a2.m17629a();
    }

    public GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, ArrayList<GoogleSignInOptionsExtensionParcelable> arrayList2, String str3) {
        this(i, arrayList, account, z, z2, z3, str, str2, m17647D0(arrayList2), str3);
    }

    private GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map<Integer, GoogleSignInOptionsExtensionParcelable> map, String str3) {
        this.f18992l = i;
        this.f18993m = arrayList;
        this.f18994n = account;
        this.f18995o = z;
        this.f18996p = z2;
        this.f18997q = z3;
        this.f18998r = str;
        this.f18999s = str2;
        this.f19000t = new ArrayList<>(map.values());
        this.f19002v = map;
        this.f19001u = str3;
    }

    /* synthetic */ GoogleSignInOptions(int i, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map map, String str3, C5909g c5909g) {
        this(3, arrayList, account, z, z2, z3, str, str2, map, str3);
    }

    /* renamed from: D0 */
    public static Map<Integer, GoogleSignInOptionsExtensionParcelable> m17647D0(List<GoogleSignInOptionsExtensionParcelable> list) {
        HashMap hashMap = new HashMap();
        if (list == null) {
            return hashMap;
        }
        for (GoogleSignInOptionsExtensionParcelable googleSignInOptionsExtensionParcelable : list) {
            hashMap.put(Integer.valueOf(googleSignInOptionsExtensionParcelable.m17612k0()), googleSignInOptionsExtensionParcelable);
        }
        return hashMap;
    }

    @RecentlyNullable
    /* renamed from: r0 */
    public static GoogleSignInOptions m17638r0(String str) {
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

    @RecentlyNullable
    /* renamed from: P */
    public Account m17646P() {
        return this.f18994n;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
            if (this.f19000t.size() <= 0 && googleSignInOptions.f19000t.size() <= 0 && this.f18993m.size() == googleSignInOptions.m17643m0().size() && this.f18993m.containsAll(googleSignInOptions.m17643m0())) {
                Account account = this.f18994n;
                if (account == null) {
                    if (googleSignInOptions.m17646P() != null) {
                        return false;
                    }
                } else if (!account.equals(googleSignInOptions.m17646P())) {
                    return false;
                }
                if (TextUtils.isEmpty(this.f18998r)) {
                    if (!TextUtils.isEmpty(googleSignInOptions.m17642n0())) {
                        return false;
                    }
                } else if (!this.f18998r.equals(googleSignInOptions.m17642n0())) {
                    return false;
                }
                if (this.f18997q != googleSignInOptions.m17641o0() || this.f18995o != googleSignInOptions.m17640p0() || this.f18996p != googleSignInOptions.m17639q0()) {
                    return false;
                }
                return TextUtils.equals(this.f19001u, googleSignInOptions.m17644l0());
            }
            return false;
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList<Scope> arrayList2 = this.f18993m;
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(arrayList2.get(i).m17492k0());
        }
        Collections.sort(arrayList);
        C5913a c5913a = new C5913a();
        c5913a.m17603a(arrayList);
        c5913a.m17603a(this.f18994n);
        c5913a.m17603a(this.f18998r);
        c5913a.m17601c(this.f18997q);
        c5913a.m17601c(this.f18995o);
        c5913a.m17601c(this.f18996p);
        c5913a.m17603a(this.f19001u);
        return c5913a.m17602b();
    }

    @RecentlyNonNull
    /* renamed from: k0 */
    public ArrayList<GoogleSignInOptionsExtensionParcelable> m17645k0() {
        return this.f19000t;
    }

    @RecentlyNullable
    /* renamed from: l0 */
    public String m17644l0() {
        return this.f19001u;
    }

    @RecentlyNonNull
    /* renamed from: m0 */
    public ArrayList<Scope> m17643m0() {
        return new ArrayList<>(this.f18993m);
    }

    @RecentlyNullable
    /* renamed from: n0 */
    public String m17642n0() {
        return this.f18998r;
    }

    /* renamed from: o0 */
    public boolean m17641o0() {
        return this.f18997q;
    }

    /* renamed from: p0 */
    public boolean m17640p0() {
        return this.f18995o;
    }

    /* renamed from: q0 */
    public boolean m17639q0() {
        return this.f18996p;
    }

    @RecentlyNonNull
    /* renamed from: s0 */
    public final String m17637s0() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.f18993m, f18991k);
            Iterator<Scope> it = this.f18993m.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().m17492k0());
            }
            jSONObject.put("scopes", jSONArray);
            Account account = this.f18994n;
            if (account != null) {
                jSONObject.put("accountName", account.name);
            }
            jSONObject.put("idTokenRequested", this.f18995o);
            jSONObject.put("forceCodeForRefreshToken", this.f18997q);
            jSONObject.put("serverAuthRequested", this.f18996p);
            if (!TextUtils.isEmpty(this.f18998r)) {
                jSONObject.put("serverClientId", this.f18998r);
            }
            if (!TextUtils.isEmpty(this.f18999s)) {
                jSONObject.put("hostedDomain", this.f18999s);
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f18992l);
        C6170a.m16926v(parcel, 2, m17643m0(), false);
        C6170a.m16931q(parcel, 3, m17646P(), i, false);
        C6170a.m16945c(parcel, 4, m17640p0());
        C6170a.m16945c(parcel, 5, m17639q0());
        C6170a.m16945c(parcel, 6, m17641o0());
        C6170a.m16930r(parcel, 7, m17642n0(), false);
        C6170a.m16930r(parcel, 8, this.f18999s, false);
        C6170a.m16926v(parcel, 9, m17645k0(), false);
        C6170a.m16930r(parcel, 10, m17644l0(), false);
        C6170a.m16946b(parcel, m16947a);
    }
}
