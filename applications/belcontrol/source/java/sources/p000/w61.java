package p000;

import android.text.TextUtils;
import com.google.android.gms.common.internal.ImagesContract;
import com.mopub.network.ImpressionData;
import java.io.Serializable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
import p000.fa1;
import p000.j91;
import p000.n91;
import p000.q71;
import p000.r71;
import p000.u81;
/* renamed from: w61 */
/* loaded from: classes3-dex2jar.jar:w61.class */
public class w61 implements u61 {

    /* renamed from: a */
    public boolean f8415a;

    /* renamed from: b */
    public HashMap<String, C1702b> f8416b = new HashMap<>();

    /* renamed from: c */
    public String f8417c = "";

    /* renamed from: d */
    public JSONArray f8418d = new JSONArray();

    /* renamed from: w61$a */
    /* loaded from: classes3-dex2jar.jar:w61$a.class */
    public static /* synthetic */ class C1701a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f8419a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x0101 -> B:100:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x0105 -> B:76:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x0109 -> B:70:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x010d -> B:86:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0111 -> B:80:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0115 -> B:94:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0119 -> B:90:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x011d -> B:104:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0121 -> B:98:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x0125 -> B:74:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0129 -> B:68:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x012d -> B:84:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x0131 -> B:78:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x0135 -> B:92:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x0139 -> B:88:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x013d -> B:102:0x00c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x0141 -> B:96:0x00d0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x0145 -> B:72:0x00dc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x0149 -> B:66:0x00e8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x014d -> B:82:0x00f4). Please submit an issue!!! */
        static {
            int[] iArr = new int[n91.EnumC1484a.values().length];
            f8419a = iArr;
            try {
                iArr[n91.EnumC1484a.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f8419a[n91.EnumC1484a.BLACK_LIST.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f8419a[n91.EnumC1484a.BLACK_LIST_MASK.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f8419a[n91.EnumC1484a.WHITE_LIST.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f8419a[n91.EnumC1484a.PRIVATE_CALL.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f8419a[n91.EnumC1484a.UNKNOWN_CALL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f8419a[n91.EnumC1484a.FAKE_CALLER.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f8419a[n91.EnumC1484a.NON_NUMERIC_CALLER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f8419a[n91.EnumC1484a.EMAILED_TEXT_MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f8419a[n91.EnumC1484a.TOLL_FREE_NUMBER.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f8419a[n91.EnumC1484a.CONTACT.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f8419a[n91.EnumC1484a.COMMUNITY_BLACKLIST.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f8419a[n91.EnumC1484a.DND.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f8419a[n91.EnumC1484a.VOICE_MAILED_ANDROID.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f8419a[n91.EnumC1484a.EMERGENCY_NUMBER.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f8419a[n91.EnumC1484a.REPEATED_CALL.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f8419a[n91.EnumC1484a.INTERNATIONAL_CALL.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f8419a[n91.EnumC1484a.SPOOFED_SIMILAR_NUMBER.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            try {
                f8419a[n91.EnumC1484a.ATTORNEY.ordinal()] = 19;
            } catch (NoSuchFieldError e19) {
            }
            try {
                f8419a[n91.EnumC1484a.SUSPECTED_SPAM.ordinal()] = 20;
            } catch (NoSuchFieldError e20) {
            }
            try {
                f8419a[n91.EnumC1484a.CARRIER_NAME.ordinal()] = 21;
            } catch (NoSuchFieldError e21) {
            }
        }
    }

    /* renamed from: w61$b */
    /* loaded from: classes3-dex2jar.jar:w61$b.class */
    public static final class C1702b implements Serializable {

        /* renamed from: a */
        public String f8420a;

        /* renamed from: b */
        public int f8421b;

        /* renamed from: c */
        public String f8422c;

        /* renamed from: d */
        public String f8423d;

        /* renamed from: f */
        public String f8424f;

        /* renamed from: g */
        public int f8425g;

        /* renamed from: h */
        public long f8426h;

        /* renamed from: j */
        public long f8427j;

        /* renamed from: k */
        public int f8428k;

        /* renamed from: l */
        public int[] f8429l;

        public C1702b(JSONObject jSONObject) {
            this.f8428k = jSONObject.optInt("caller_type_id");
            this.f8420a = jSONObject.optString("phone_number");
            this.f8421b = jSONObject.optInt("spam_level");
            this.f8425g = jSONObject.optInt("spam_likely");
            u81 u81Var = new u81();
            u81Var.m413F(fa1.C1420e.m1800o(this.f8420a), jSONObject.optString("caller_name"));
            this.f8422c = u81Var.f8288d;
            this.f8423d = jSONObject.optString("caller_type");
            this.f8424f = jSONObject.optString("location");
            this.f8426h = jSONObject.optLong("complaints");
            this.f8427j = jSONObject.optLong("blocking_stats");
            jSONObject.optBoolean("related_numbers");
            JSONArray optJSONArray = jSONObject.optJSONArray("activity");
            if (optJSONArray == null || JSONObject.NULL == optJSONArray || optJSONArray.length() <= 0) {
                this.f8429l = null;
                return;
            }
            this.f8429l = new int[optJSONArray.length()];
            int length = optJSONArray.length();
            for (int i = 0; i < length; i++) {
                this.f8429l[i] = optJSONArray.optInt(i);
            }
        }

        public /* synthetic */ C1702b(JSONObject jSONObject, C1701a c1701a) {
            this(jSONObject);
        }

        /* renamed from: a */
        public static C1702b m290a() {
            return new C1702b(new JSONObject());
        }
    }

    @Override // p000.u61
    /* renamed from: a */
    public JSONObject mo73a() {
        j91.m1522B(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"));
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("level", this.f8415a ? 1 : 0);
            jSONObject.put("phone_number", this.f8418d);
            jSONObject.put("user_consent", r71.EnumC1638a.f7987s1.m695a() ? 0 : 1);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), true);
            return jSONObject;
        } catch (Throwable th) {
            j91.m1504l(this, "Unable to build request", th);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), false);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x013b A[Catch: all -> 0x014f, TryCatch #0 {all -> 0x014f, blocks: (B:2:0x0000, B:5:0x000e, B:7:0x0015, B:9:0x001f, B:11:0x0026, B:13:0x0031, B:17:0x0040, B:22:0x0056, B:27:0x0092, B:31:0x00da, B:33:0x00e7, B:37:0x00f2, B:39:0x0119, B:41:0x0124, B:43:0x013b, B:45:0x0144), top: B:49:0x0000 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m296b(p000.l81 r6) {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.w61.m296b(l81):void");
    }

    /* renamed from: c */
    public void m295c(i91 i91Var, boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("phone_number", i91Var.toString());
            jSONObject.put(ImpressionData.COUNTRY, i91Var.m1612b());
            jSONObject.put("called", z ? 1 : 0);
            this.f8418d.put(jSONObject);
        } catch (Throwable th) {
            j91.m1504l(this, "Unable to add number", th);
        }
    }

    /* renamed from: d */
    public void m294d(String str) {
        JSONObject jSONObject;
        j91.m1522B(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"));
        if (TextUtils.isEmpty(str)) {
            j91.m1505k(this, "Empty response");
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"), false);
            return;
        }
        String str2 = "Server JSON: " + str;
        try {
            jSONObject = new JSONObject(str);
        } catch (Throwable th) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("results", new JSONArray(str));
                jSONObject = jSONObject2;
            } catch (Throwable th2) {
                j91.m1504l(this, "Unable to parse response", th2);
                j91.m1520D(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"), false);
                return;
            }
        }
        r71.EnumC1638a.f7941c1.m683m(Integer.valueOf(jSONObject.optInt("credits")));
        JSONObject optJSONObject = jSONObject.optJSONObject("attorney_request");
        this.f8417c = optJSONObject != null ? optJSONObject.optString(ImagesContract.URL) : "";
        this.f8416b.clear();
        JSONArray optJSONArray = jSONObject.optJSONArray("results");
        if (optJSONArray == null) {
            j91.m1505k(this, "Unable to get results. Seems like returned no 'results'");
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"), false);
            return;
        }
        u81 u81Var = new u81();
        int length = optJSONArray.length();
        for (int i = 0; i < length; i++) {
            C1702b c1702b = new C1702b(optJSONArray.optJSONObject(i), null);
            i91 m1800o = fa1.C1420e.m1800o(c1702b.f8420a);
            u81Var.m413F(m1800o, null);
            if (u81Var.f8288d == null && !TextUtils.isEmpty(c1702b.f8422c)) {
                u81Var.m412G(m1800o, c1702b.f8422c, u81.EnumC1675a.OVERRIDE_AUTO);
                u81Var.mo148z();
            }
            u81Var.m414E();
            this.f8416b.put(c1702b.f8420a, c1702b);
        }
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < this.f8418d.length(); i2++) {
            JSONObject optJSONObject2 = this.f8418d.optJSONObject(i2);
            String optString = optJSONObject2.optString("carrier_name", "");
            String optString2 = optJSONObject2.optString("phone_number", "");
            if (!TextUtils.isEmpty(optString)) {
                hashSet.add(optString2);
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            new n81().m1220E((String) it.next());
        }
        j91.m1520D(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"), true);
    }

    /* renamed from: e */
    public final int m293e(n91.EnumC1484a enumC1484a) {
        switch (C1701a.f8419a[enumC1484a.ordinal()]) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return 5;
            case 7:
                return 6;
            case 8:
                return 7;
            case 9:
                return 8;
            case 10:
                return 9;
            case 11:
                return 10;
            case 12:
                return 11;
            case 13:
                return 12;
            case 14:
                return 13;
            case 15:
                return 14;
            case 16:
                return 15;
            case 17:
                return 16;
            case 18:
                return 17;
            case 19:
                return 18;
            case 20:
                return 19;
            case 21:
                return 20;
            default:
                return -1;
        }
    }

    /* renamed from: f */
    public final int m292f(l81 l81Var) {
        if (l81Var.f6931o.contains(q71.EnumC1618e.CALL)) {
            return 0;
        }
        if (l81Var.f6931o.contains(q71.EnumC1618e.SMS)) {
            return 1;
        }
        return l81Var.f6931o.contains(q71.EnumC1618e.MMS) ? 2 : -1;
    }

    /* renamed from: g */
    public long m291g() {
        return this.f8418d.length();
    }
}
