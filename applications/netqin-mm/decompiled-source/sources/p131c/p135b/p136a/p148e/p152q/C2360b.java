package p131c.p135b.p136a.p148e.p152q;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
/* renamed from: c.b.a.e.q.b */
/* loaded from: classes-dex2jar.jar:c/b/a/e/q/b.class */
public class C2360b<T> {

    /* renamed from: a */
    public String f9165a;

    /* renamed from: b */
    public String f9166b;

    /* renamed from: c */
    public Map<String, String> f9167c;

    /* renamed from: d */
    public Map<String, String> f9168d;

    /* renamed from: e */
    public final JSONObject f9169e;

    /* renamed from: f */
    public String f9170f;

    /* renamed from: g */
    public final T f9171g;

    /* renamed from: h */
    public final boolean f9172h;

    /* renamed from: i */
    public final int f9173i;

    /* renamed from: j */
    public int f9174j;

    /* renamed from: k */
    public final int f9175k;

    /* renamed from: l */
    public final int f9176l;

    /* renamed from: m */
    public final boolean f9177m;

    /* renamed from: n */
    public final boolean f9178n;

    /* renamed from: c.b.a.e.q.b$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/q/b$a.class */
    public static class C2361a<T> {

        /* renamed from: a */
        public String f9179a;

        /* renamed from: b */
        public String f9180b;

        /* renamed from: c */
        public String f9181c;

        /* renamed from: e */
        public Map<String, String> f9183e;

        /* renamed from: f */
        public JSONObject f9184f;

        /* renamed from: g */
        public T f9185g;

        /* renamed from: j */
        public int f9188j;

        /* renamed from: k */
        public int f9189k;

        /* renamed from: l */
        public boolean f9190l;

        /* renamed from: m */
        public boolean f9191m;

        /* renamed from: h */
        public boolean f9186h = true;

        /* renamed from: i */
        public int f9187i = 1;

        /* renamed from: d */
        public Map<String, String> f9182d = new HashMap();

        public C2361a(C2341l lVar) {
            this.f9188j = ((Integer) lVar.m30291a(C2251d.C2256e.f8750t2)).intValue();
            this.f9189k = ((Integer) lVar.m30291a(C2251d.C2256e.f8744s2)).intValue();
            this.f9190l = ((Boolean) lVar.m30291a(C2251d.C2256e.f8586P3)).booleanValue();
        }

        /* renamed from: a */
        public C2361a<T> mo30105a(int i) {
            this.f9187i = i;
            return this;
        }

        /* renamed from: a */
        public C2361a<T> mo30103a(T t) {
            this.f9185g = t;
            return this;
        }

        /* renamed from: a */
        public C2361a<T> mo30102a(String str) {
            this.f9180b = str;
            return this;
        }

        /* renamed from: a */
        public C2361a<T> mo30101a(Map<String, String> map) {
            this.f9182d = map;
            return this;
        }

        /* renamed from: a */
        public C2361a<T> mo30100a(JSONObject jSONObject) {
            this.f9184f = jSONObject;
            return this;
        }

        /* renamed from: a */
        public C2361a<T> mo30099a(boolean z) {
            this.f9190l = z;
            return this;
        }

        /* renamed from: a */
        public C2360b<T> mo30106a() {
            return new C2360b<>(this);
        }

        /* renamed from: b */
        public C2361a<T> mo30097b(int i) {
            this.f9188j = i;
            return this;
        }

        /* renamed from: b */
        public C2361a<T> mo30095b(String str) {
            this.f9179a = str;
            return this;
        }

        /* renamed from: b */
        public C2361a<T> mo30094b(Map<String, String> map) {
            this.f9183e = map;
            return this;
        }

        /* renamed from: b */
        public C2361a<T> m30158b(boolean z) {
            this.f9191m = z;
            return this;
        }

        /* renamed from: c */
        public C2361a<T> mo30092c(int i) {
            this.f9189k = i;
            return this;
        }

        /* renamed from: c */
        public C2361a<T> mo30091c(String str) {
            this.f9181c = str;
            return this;
        }
    }

    public C2360b(C2361a<T> aVar) {
        this.f9165a = aVar.f9180b;
        this.f9166b = aVar.f9179a;
        this.f9167c = aVar.f9182d;
        this.f9168d = aVar.f9183e;
        this.f9169e = aVar.f9184f;
        this.f9170f = aVar.f9181c;
        this.f9171g = aVar.f9185g;
        this.f9172h = aVar.f9186h;
        int i = aVar.f9187i;
        this.f9173i = i;
        this.f9174j = i;
        this.f9175k = aVar.f9188j;
        this.f9176l = aVar.f9189k;
        this.f9177m = aVar.f9190l;
        this.f9178n = aVar.f9191m;
    }

    /* renamed from: a */
    public static <T> C2361a<T> m30174a(C2341l lVar) {
        return new C2361a<>(lVar);
    }

    /* renamed from: a */
    public String m30176a() {
        return this.f9165a;
    }

    /* renamed from: a */
    public void m30175a(int i) {
        this.f9174j = i;
    }

    /* renamed from: a */
    public void m30173a(String str) {
        this.f9165a = str;
    }

    /* renamed from: b */
    public String m30172b() {
        return this.f9166b;
    }

    /* renamed from: b */
    public void m30171b(String str) {
        this.f9166b = str;
    }

    /* renamed from: c */
    public Map<String, String> m30170c() {
        return this.f9167c;
    }

    /* renamed from: d */
    public Map<String, String> m30169d() {
        return this.f9168d;
    }

    /* renamed from: e */
    public JSONObject m30168e() {
        return this.f9169e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2360b)) {
            return false;
        }
        C2360b bVar = (C2360b) obj;
        String str = this.f9165a;
        if (str != null) {
            if (!str.equals(bVar.f9165a)) {
                return false;
            }
        } else if (bVar.f9165a != null) {
            return false;
        }
        Map<String, String> map = this.f9167c;
        if (map != null) {
            if (!map.equals(bVar.f9167c)) {
                return false;
            }
        } else if (bVar.f9167c != null) {
            return false;
        }
        Map<String, String> map2 = this.f9168d;
        if (map2 != null) {
            if (!map2.equals(bVar.f9168d)) {
                return false;
            }
        } else if (bVar.f9168d != null) {
            return false;
        }
        String str2 = this.f9170f;
        if (str2 != null) {
            if (!str2.equals(bVar.f9170f)) {
                return false;
            }
        } else if (bVar.f9170f != null) {
            return false;
        }
        String str3 = this.f9166b;
        if (str3 != null) {
            if (!str3.equals(bVar.f9166b)) {
                return false;
            }
        } else if (bVar.f9166b != null) {
            return false;
        }
        JSONObject jSONObject = this.f9169e;
        if (jSONObject != null) {
            if (!jSONObject.equals(bVar.f9169e)) {
                return false;
            }
        } else if (bVar.f9169e != null) {
            return false;
        }
        T t = this.f9171g;
        if (t != null) {
            if (!t.equals(bVar.f9171g)) {
                return false;
            }
        } else if (bVar.f9171g != null) {
            return false;
        }
        return this.f9172h == bVar.f9172h && this.f9173i == bVar.f9173i && this.f9174j == bVar.f9174j && this.f9175k == bVar.f9175k && this.f9176l == bVar.f9176l && this.f9177m == bVar.f9177m && this.f9178n == bVar.f9178n;
    }

    /* renamed from: f */
    public String m30167f() {
        return this.f9170f;
    }

    /* renamed from: g */
    public T m30166g() {
        return this.f9171g;
    }

    /* renamed from: h */
    public boolean m30165h() {
        return this.f9172h;
    }

    public int hashCode() {
        int hashCode = super.hashCode();
        String str = this.f9165a;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f9170f;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f9166b;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        T t = this.f9171g;
        if (t != null) {
            i = t.hashCode();
        }
        int i2 = (((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i) * 31) + (this.f9172h ? 1 : 0)) * 31) + this.f9173i) * 31) + this.f9174j) * 31) + this.f9175k) * 31) + this.f9176l) * 31) + (this.f9177m ? 1 : 0)) * 31) + (this.f9178n ? 1 : 0);
        Map<String, String> map = this.f9167c;
        int i3 = i2;
        if (map != null) {
            i3 = (i2 * 31) + map.hashCode();
        }
        Map<String, String> map2 = this.f9168d;
        int i4 = i3;
        if (map2 != null) {
            i4 = (i3 * 31) + map2.hashCode();
        }
        JSONObject jSONObject = this.f9169e;
        int i5 = i4;
        if (jSONObject != null) {
            char[] charArray = jSONObject.toString().toCharArray();
            Arrays.sort(charArray);
            i5 = (i4 * 31) + new String(charArray).hashCode();
        }
        return i5;
    }

    /* renamed from: i */
    public int m30164i() {
        return this.f9173i - this.f9174j;
    }

    /* renamed from: j */
    public int m30163j() {
        return this.f9174j;
    }

    /* renamed from: k */
    public int m30162k() {
        return this.f9175k;
    }

    /* renamed from: l */
    public int m30161l() {
        return this.f9176l;
    }

    /* renamed from: m */
    public boolean m30160m() {
        return this.f9177m;
    }

    /* renamed from: n */
    public boolean m30159n() {
        return this.f9178n;
    }

    public String toString() {
        return "HttpRequest {endpoint=" + this.f9165a + ", backupEndpoint=" + this.f9170f + ", httpMethod=" + this.f9166b + ", httpHeaders=" + this.f9168d + ", body=" + this.f9169e + ", emptyResponse=" + this.f9171g + ", requiresResponse=" + this.f9172h + ", initialRetryAttempts=" + this.f9173i + ", retryAttemptsLeft=" + this.f9174j + ", timeoutMillis=" + this.f9175k + ", retryDelayMillis=" + this.f9176l + ", encodingEnabled=" + this.f9177m + ", trackConnectionSpeed=" + this.f9178n + '}';
    }
}
