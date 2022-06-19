package p193e.p1485h.p1486a.p1493c.p1494a1;

import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.h.a.c.a1.c */
/* loaded from: classes-dex2jar.jar:e/h/a/c/a1/c.class */
public final class C22714c {

    /* renamed from: b */
    public static final String[] f62847b = {StringConstant.DOT, StringConstant.COLON, "$", "'", "\"", "\\"};

    /* renamed from: c */
    public static final String[] f62848c = {StringConstant.DOT, StringConstant.COLON, "$", "'", "\"", "\\"};

    /* renamed from: d */
    public static final String[] f62849d = {"'", "\"", "\\"};

    /* renamed from: e */
    public static final String[] f62850e = {"Stayed", "Notification Clicked", "Notification Viewed", "UTM Visited", "Notification Sent", "App Launched", "wzrk_d", "App Uninstalled", "Notification Bounced", "Geocluster Entered", "Geocluster Exited"};

    /* renamed from: a */
    public ArrayList<String> f62851a;

    /* renamed from: e.h.a.c.a1.c$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/a1/c$a.class */
    public enum EnumC22715a {
        Name,
        Email,
        Education,
        Married,
        DOB,
        Gender,
        Phone,
        Age,
        FBID,
        GPID,
        Birthday
    }

    /* renamed from: e.h.a.c.a1.c$b */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/a1/c$b.class */
    public enum EnumC22716b {
        Profile,
        Event
    }

    /* renamed from: a */
    public C22712a m7925a(String str) {
        C22712a c22712a = new C22712a();
        String trim = str.trim();
        for (String str2 : f62847b) {
            trim = trim.replace(str2, "");
        }
        String str3 = trim;
        if (trim.length() > 512) {
            str3 = trim.substring(0, 511);
            C22712a m2468F = C26232y.m2468F(510, 11, str3.trim(), "512");
            c22712a.f62843b = m2468F.f62843b;
            c22712a.f62842a = m2468F.f62842a;
        }
        c22712a.f62844c = str3.trim();
        return c22712a;
    }

    /* renamed from: b */
    public C22712a m7924b(String str) {
        C22712a c22712a = new C22712a();
        String lowerCase = str.trim().toLowerCase();
        for (String str2 : f62849d) {
            lowerCase = lowerCase.replace(str2, "");
        }
        String str3 = lowerCase;
        String str4 = lowerCase;
        try {
            if (lowerCase.length() > 512) {
                String str5 = lowerCase;
                str3 = lowerCase.substring(0, 511);
                C22712a m2468F = C26232y.m2468F(521, 11, str3, "512");
                c22712a.f62843b = m2468F.f62843b;
                str4 = str3;
                c22712a.f62842a = m2468F.f62842a;
            }
        } catch (Exception e) {
            str3 = str4;
        }
        c22712a.f62844c = str3;
        return c22712a;
    }

    /* renamed from: c */
    public C22712a m7923c(String str) {
        C22712a c22712a = new C22712a();
        String trim = str.trim();
        for (String str2 : f62848c) {
            trim = trim.replace(str2, "");
        }
        String str3 = trim;
        if (trim.length() > 120) {
            str3 = trim.substring(0, 119);
            C22712a m2468F = C26232y.m2468F(520, 11, str3.trim(), "120");
            c22712a.f62843b = m2468F.f62843b;
            c22712a.f62842a = m2468F.f62842a;
        }
        c22712a.f62844c = str3.trim();
        return c22712a;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:87:0x0234 -> B:40:0x00d3). Please submit an issue!!! */
    /* renamed from: d */
    public C22712a m7922d(Object obj, EnumC22716b enumC22716b) throws IllegalArgumentException {
        C22712a c22712a = new C22712a();
        if ((obj instanceof Integer) || (obj instanceof Float) || (obj instanceof Boolean) || (obj instanceof Double) || (obj instanceof Long)) {
            c22712a.f62844c = obj;
            return c22712a;
        } else if ((obj instanceof String) || (obj instanceof Character)) {
            String trim = (obj instanceof Character ? String.valueOf(obj) : (String) obj).trim();
            for (String str : f62849d) {
                trim = trim.replace(str, "");
            }
            String str2 = trim;
            String str3 = trim;
            try {
                if (trim.length() > 512) {
                    String str4 = trim;
                    str2 = trim.substring(0, 511);
                    C22712a m2468F = C26232y.m2468F(521, 11, str2.trim(), "512");
                    c22712a.f62843b = m2468F.f62843b;
                    str3 = str2;
                    c22712a.f62842a = m2468F.f62842a;
                }
            } catch (Exception e) {
                str2 = str3;
            }
            c22712a.f62844c = str2.trim();
            return c22712a;
        } else if (obj instanceof Date) {
            StringBuilder m8728C = C22128a.m8728C("$D_");
            m8728C.append(((Date) obj).getTime() / 1000);
            c22712a.f62844c = m8728C.toString();
            return c22712a;
        } else {
            boolean z = obj instanceof String[];
            if ((!z && !(obj instanceof ArrayList)) || !enumC22716b.equals(EnumC22716b.Profile)) {
                throw new IllegalArgumentException("Not a String, Boolean, Long, Integer, Float, Double, or Date");
            }
            String[] strArr = null;
            ArrayList arrayList = obj instanceof ArrayList ? (ArrayList) obj : null;
            if (z) {
                strArr = (String[]) obj;
            }
            ArrayList arrayList2 = new ArrayList();
            if (strArr != null) {
                for (String str5 : strArr) {
                    try {
                        arrayList2.add(str5);
                    } catch (Exception e2) {
                    }
                }
            } else {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    try {
                        arrayList2.add((String) it.next());
                    } catch (Exception e3) {
                    }
                }
            }
            String[] strArr2 = (String[]) arrayList2.toArray(new String[0]);
            if (strArr2.length <= 0 || strArr2.length > 100) {
                C22712a m2468F2 = C26232y.m2468F(521, 13, C22128a.m8697J2(new StringBuilder(), strArr2.length, ""), "100");
                c22712a.f62843b = m2468F2.f62843b;
                c22712a.f62842a = m2468F2.f62842a;
            } else {
                JSONArray jSONArray = new JSONArray();
                JSONObject jSONObject = new JSONObject();
                for (String str6 : strArr2) {
                    jSONArray.put(str6);
                }
                try {
                    jSONObject.put("$set", jSONArray);
                } catch (JSONException e4) {
                }
                c22712a.f62844c = jSONObject;
            }
            return c22712a;
        }
    }

    /* renamed from: e */
    public C22712a m7921e(JSONArray jSONArray, JSONArray jSONArray2, String str, String str2) {
        C22712a c22712a = new C22712a();
        boolean equals = "multiValuePropertyRemoveValues".equals(str);
        JSONArray jSONArray3 = new JSONArray();
        HashSet hashSet = new HashSet();
        int length = jSONArray.length();
        int length2 = jSONArray2.length();
        BitSet bitSet = !equals ? new BitSet(length + length2) : null;
        int m7920f = m7920f(jSONArray2, hashSet, bitSet, length);
        int m7920f2 = (equals || hashSet.size() >= 100) ? 0 : m7920f(jSONArray, hashSet, bitSet, 0);
        for (int i = m7920f2; i < length; i++) {
            if (equals) {
                try {
                    String str3 = (String) jSONArray.get(i);
                    if (!hashSet.contains(str3)) {
                        jSONArray3.put(str3);
                    }
                } catch (Throwable th) {
                }
            } else if (!bitSet.get(i)) {
                jSONArray3.put(jSONArray.get(i));
            }
        }
        if (!equals && jSONArray3.length() < 100) {
            for (int i2 = m7920f; i2 < length2; i2++) {
                try {
                    if (!bitSet.get(i2 + length)) {
                        jSONArray3.put(jSONArray2.get(i2));
                    }
                } catch (Throwable th2) {
                }
            }
        }
        if (m7920f > 0 || m7920f2 > 0) {
            C22712a m2468F = C26232y.m2468F(521, 12, str2, "100");
            c22712a.f62842a = m2468F.f62842a;
            c22712a.f62843b = m2468F.f62843b;
        }
        c22712a.f62844c = jSONArray3;
        return c22712a;
    }

    /* renamed from: f */
    public final int m7920f(JSONArray jSONArray, Set<String> set, BitSet bitSet, int i) {
        for (int length = jSONArray.length() - 1; length >= 0; length--) {
            try {
                Object obj = jSONArray.get(length);
                String obj2 = obj != null ? obj.toString() : null;
                if (bitSet != null) {
                    if (obj2 != null && !set.contains(obj2)) {
                        set.add(obj2);
                        if (set.size() == 100) {
                            return length;
                        }
                    }
                    bitSet.set(length + i, true);
                } else if (obj2 != null) {
                    set.add(obj2);
                }
            } catch (Throwable th) {
            }
        }
        return 0;
    }
}
