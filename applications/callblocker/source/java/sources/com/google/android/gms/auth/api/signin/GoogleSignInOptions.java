package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.internal.C2421a;
import com.google.android.gms.auth.api.signin.internal.C2422b;
import com.google.android.gms.common.api.C2471a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions.class */
public class GoogleSignInOptions extends AbstractC2663a implements C2471a.AbstractC2475d.AbstractC2481f, ReflectedParcelable {

    /* renamed from: h */
    private final int f6905h;

    /* renamed from: i */
    private final ArrayList<Scope> f6906i;

    /* renamed from: j */
    private Account f6907j;

    /* renamed from: k */
    private boolean f6908k;

    /* renamed from: l */
    private final boolean f6909l;

    /* renamed from: m */
    private final boolean f6910m;

    /* renamed from: n */
    private String f6911n;

    /* renamed from: o */
    private String f6912o;

    /* renamed from: p */
    private ArrayList<C2421a> f6913p;

    /* renamed from: q */
    private String f6914q;

    /* renamed from: r */
    private Map<Integer, C2421a> f6915r;

    /* renamed from: a */
    public static final Scope f6897a = new Scope("profile");

    /* renamed from: b */
    public static final Scope f6898b = new Scope("email");

    /* renamed from: c */
    public static final Scope f6899c = new Scope("openid");

    /* renamed from: d */
    public static final Scope f6900d = new Scope("https://www.googleapis.com/auth/games_lite");

    /* renamed from: e */
    public static final Scope f6901e = new Scope("https://www.googleapis.com/auth/games");

    /* renamed from: f */
    public static final GoogleSignInOptions f6902f = new C2408a().m14560a().m14556c().m14555d();

    /* renamed from: g */
    public static final GoogleSignInOptions f6903g = new C2408a().m14559a(f6900d, new Scope[0]).m14555d();
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR = new C2418h();

    /* renamed from: s */
    private static Comparator<Scope> f6904s = new C2417g();

    /* renamed from: com.google.android.gms.auth.api.signin.GoogleSignInOptions$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions$a.class */
    public static final class C2408a {

        /* renamed from: a */
        private Set<Scope> f6916a;

        /* renamed from: b */
        private boolean f6917b;

        /* renamed from: c */
        private boolean f6918c;

        /* renamed from: d */
        private boolean f6919d;

        /* renamed from: e */
        private String f6920e;

        /* renamed from: f */
        private Account f6921f;

        /* renamed from: g */
        private String f6922g;

        /* renamed from: h */
        private Map<Integer, C2421a> f6923h;

        /* renamed from: i */
        private String f6924i;

        public C2408a() {
            this.f6916a = new HashSet();
            this.f6923h = new HashMap();
        }

        public C2408a(GoogleSignInOptions googleSignInOptions) {
            this.f6916a = new HashSet();
            this.f6923h = new HashMap();
            C2662s.m13981a(googleSignInOptions);
            this.f6916a = new HashSet(googleSignInOptions.f6906i);
            this.f6917b = googleSignInOptions.f6909l;
            this.f6918c = googleSignInOptions.f6910m;
            this.f6919d = googleSignInOptions.f6908k;
            this.f6920e = googleSignInOptions.f6911n;
            this.f6921f = googleSignInOptions.f6907j;
            this.f6922g = googleSignInOptions.f6912o;
            this.f6923h = GoogleSignInOptions.m14576b(googleSignInOptions.f6913p);
            this.f6924i = googleSignInOptions.f6914q;
        }

        /* renamed from: a */
        public final C2408a m14560a() {
            this.f6916a.add(GoogleSignInOptions.f6899c);
            return this;
        }

        /* renamed from: a */
        public final C2408a m14559a(Scope scope, Scope... scopeArr) {
            this.f6916a.add(scope);
            this.f6916a.addAll(Arrays.asList(scopeArr));
            return this;
        }

        /* renamed from: a */
        public final C2408a m14558a(String str) {
            this.f6924i = str;
            return this;
        }

        /* renamed from: b */
        public final C2408a m14557b() {
            this.f6916a.add(GoogleSignInOptions.f6898b);
            return this;
        }

        /* renamed from: c */
        public final C2408a m14556c() {
            this.f6916a.add(GoogleSignInOptions.f6897a);
            return this;
        }

        /* renamed from: d */
        public final GoogleSignInOptions m14555d() {
            if (this.f6916a.contains(GoogleSignInOptions.f6901e) && this.f6916a.contains(GoogleSignInOptions.f6900d)) {
                this.f6916a.remove(GoogleSignInOptions.f6900d);
            }
            if (this.f6919d && (this.f6921f == null || !this.f6916a.isEmpty())) {
                m14560a();
            }
            return new GoogleSignInOptions(3, new ArrayList(this.f6916a), this.f6921f, this.f6919d, this.f6917b, this.f6918c, this.f6920e, this.f6922g, this.f6923h, this.f6924i, null);
        }
    }

    public GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, ArrayList<C2421a> arrayList2, String str3) {
        this(i, arrayList, account, z, z2, z3, str, str2, m14576b(arrayList2), str3);
    }

    private GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map<Integer, C2421a> map, String str3) {
        this.f6905h = i;
        this.f6906i = arrayList;
        this.f6907j = account;
        this.f6908k = z;
        this.f6909l = z2;
        this.f6910m = z3;
        this.f6911n = str;
        this.f6912o = str2;
        this.f6913p = new ArrayList<>(map.values());
        this.f6915r = map;
        this.f6914q = str3;
    }

    /* synthetic */ GoogleSignInOptions(int i, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map map, String str3, C2417g c2417g) {
        this(3, arrayList, account, z, z2, z3, str, str2, map, str3);
    }

    /* renamed from: a */
    public static GoogleSignInOptions m14580a(String str) {
        GoogleSignInOptions googleSignInOptions;
        if (TextUtils.isEmpty(str)) {
            googleSignInOptions = null;
        } else {
            JSONObject jSONObject = new JSONObject(str);
            HashSet hashSet = new HashSet();
            JSONArray jSONArray = jSONObject.getJSONArray("scopes");
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                hashSet.add(new Scope(jSONArray.getString(i)));
            }
            String optString = jSONObject.optString("accountName", null);
            googleSignInOptions = new GoogleSignInOptions(3, new ArrayList(hashSet), !TextUtils.isEmpty(optString) ? new Account(optString, "com.google") : null, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.optString("serverClientId", null), jSONObject.optString("hostedDomain", null), new HashMap(), (String) null);
        }
        return googleSignInOptions;
    }

    /* renamed from: b */
    public static Map<Integer, C2421a> m14576b(List<C2421a> list) {
        HashMap hashMap = new HashMap();
        if (list != null) {
            for (C2421a c2421a : list) {
                hashMap.put(Integer.valueOf(c2421a.m14535a()), c2421a);
            }
        }
        return hashMap;
    }

    /* renamed from: j */
    private final JSONObject m14561j() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.f6906i, f6904s);
            ArrayList<Scope> arrayList = this.f6906i;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Scope scope = arrayList.get(i);
                i++;
                jSONArray.put(scope.m14463a());
            }
            jSONObject.put("scopes", jSONArray);
            if (this.f6907j != null) {
                jSONObject.put("accountName", this.f6907j.name);
            }
            jSONObject.put("idTokenRequested", this.f6908k);
            jSONObject.put("forceCodeForRefreshToken", this.f6910m);
            jSONObject.put("serverAuthRequested", this.f6909l);
            if (!TextUtils.isEmpty(this.f6911n)) {
                jSONObject.put("serverClientId", this.f6911n);
            }
            if (!TextUtils.isEmpty(this.f6912o)) {
                jSONObject.put("hostedDomain", this.f6912o);
            }
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    public ArrayList<Scope> m14582a() {
        return new ArrayList<>(this.f6906i);
    }

    /* renamed from: b */
    public Account m14578b() {
        return this.f6907j;
    }

    /* renamed from: c */
    public boolean m14575c() {
        return this.f6908k;
    }

    /* renamed from: d */
    public boolean m14573d() {
        return this.f6909l;
    }

    /* renamed from: e */
    public boolean m14571e() {
        return this.f6910m;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0057, code lost:
        if (r0.m14578b() == null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006d, code lost:
        if (android.text.TextUtils.isEmpty(r0.m14569f()) != false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00d0, code lost:
        if (r3.f6911n.equals(r0.m14569f()) != false) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.GoogleSignInOptions.equals(java.lang.Object):boolean");
    }

    /* renamed from: f */
    public String m14569f() {
        return this.f6911n;
    }

    /* renamed from: g */
    public String m14567g() {
        return this.f6914q;
    }

    /* renamed from: h */
    public ArrayList<C2421a> m14565h() {
        return this.f6913p;
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList<Scope> arrayList2 = this.f6906i;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            i++;
            arrayList.add(arrayList2.get(i).m14463a());
        }
        Collections.sort(arrayList);
        return new C2422b().m14533a(arrayList).m14533a(this.f6907j).m14533a(this.f6911n).m14532a(this.f6910m).m14532a(this.f6908k).m14532a(this.f6909l).m14533a(this.f6914q).m14534a();
    }

    /* renamed from: i */
    public final String m14563i() {
        return m14561j().toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f6905h);
        C2664b.m13921c(parcel, 2, m14582a(), false);
        C2664b.m13937a(parcel, 3, (Parcelable) m14578b(), i, false);
        C2664b.m13930a(parcel, 4, m14575c());
        C2664b.m13930a(parcel, 5, m14573d());
        C2664b.m13930a(parcel, 6, m14571e());
        C2664b.m13932a(parcel, 7, m14569f(), false);
        C2664b.m13932a(parcel, 8, this.f6912o, false);
        C2664b.m13921c(parcel, 9, m14565h(), false);
        C2664b.m13932a(parcel, 10, m14567g(), false);
        C2664b.m13943a(parcel, m13944a);
    }
}
