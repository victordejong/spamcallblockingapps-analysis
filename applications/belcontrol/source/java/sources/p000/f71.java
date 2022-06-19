package p000;

import android.app.Application;
import android.content.Intent;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.mopub.common.Constants;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
import p000.fa1;
import p000.i91;
import p000.j91;
import p000.m91;
import p000.q71;
import p000.r71;
/* renamed from: f71 */
/* loaded from: classes3-dex2jar.jar:f71.class */
public class f71 implements u61 {

    /* renamed from: a */
    public boolean f6544a = false;

    /* renamed from: f71$b */
    /* loaded from: classes3-dex2jar.jar:f71$b.class */
    public class C1401b extends q81 {
        public C1401b(f71 f71Var) {
        }

        @Override // p000.q81
        /* renamed from: m0 */
        public void mo859m0() {
        }
    }

    /* renamed from: f71$c */
    /* loaded from: classes3-dex2jar.jar:f71$c.class */
    public class C1402c extends x81 {
        public C1402c(f71 f71Var) {
        }

        @Override // p000.x81
        /* renamed from: S */
        public void mo154S() {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:128:0x051c  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x037c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0261 A[SYNTHETIC] */
    @Override // p000.u61
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject mo73a() {
        /*
            Method dump skipped, instructions count: 1385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.f71.mo73a():org.json.JSONObject");
    }

    /* JADX WARN: Type inference failed for: r0v232, types: [long] */
    /* JADX WARN: Type inference failed for: r0v255, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:242:0x08c4 -> B:260:0x011f). Please submit an issue!!! */
    /* renamed from: b */
    public void m1928b(String str) {
        boolean z;
        boolean z2;
        String str2;
        JSONObject optJSONObject;
        j91.m1522B(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"));
        String str3 = "Server JSON: \n" + str;
        int i = 0;
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f6544a = true;
            boolean m695a = r71.EnumC1638a.f7994v.m695a();
            int optInt = jSONObject.optInt("services", 0);
            if (!q71.C1619f.m897d()) {
                optInt = 7;
            }
            r71.EnumC1638a enumC1638a = r71.EnumC1638a.f7909M0;
            boolean m695a2 = enumC1638a.m695a();
            r71.EnumC1638a enumC1638a2 = r71.EnumC1638a.f7913O0;
            boolean m695a3 = enumC1638a2.m695a();
            enumC1638a.m685k(Boolean.valueOf((optInt & 1) == 1));
            r71.EnumC1638a.f7911N0.m685k(Boolean.valueOf((optInt & 2) == 2));
            enumC1638a2.m685k(Boolean.valueOf((optInt & 4) == 4));
            if (!m695a2 && enumC1638a.m695a()) {
                r71.EnumC1638a.f7953h.m685k(Boolean.TRUE);
            }
            if (m695a3 && m695a2 && !enumC1638a.m695a() && !enumC1638a2.m695a()) {
                r71.EnumC1638a.f7990t1.m685k(Boolean.TRUE);
            }
            try {
                r71.m727I(jSONObject.optLong("expiration_date"));
            } catch (Throwable th) {
            }
            try {
                r71.m726J(jSONObject.optLong("signed_date"));
            } catch (Throwable th2) {
            }
            try {
                r71.EnumC1638a.f7941c1.m683m(Integer.valueOf(jSONObject.optInt("credits")));
            } catch (Throwable th3) {
            }
            try {
                r71.m725K(jSONObject.optInt("status", 0));
            } catch (Throwable th4) {
            }
            try {
                if (!TextUtils.isEmpty(jSONObject.get("call_types").toString())) {
                    r71.EnumC1638a.f7927V0.m681o(jSONObject.get("call_types").toString());
                }
            } catch (Throwable th5) {
                j91.m1504l(this, "Unable to parse call_types", th5);
            }
            String m692d = r71.EnumC1638a.m692d();
            try {
                JSONObject optJSONObject2 = jSONObject.optJSONObject("settings");
                if (optJSONObject2 != null) {
                    if (optJSONObject2.length() > 0) {
                        Iterator<String> keys = optJSONObject2.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            if (!next.equals("__DND__") && !next.equals(r71.EnumC1638a.f7947f.m690f()) && !next.equals(r71.EnumC1638a.f7896G.m690f())) {
                                String str4 = next;
                                if (next.equals("GENERAL_BLOCK_INCOMING_CALLS")) {
                                    str4 = r71.EnumC1638a.f7942d.m690f();
                                }
                                r71.EnumC1638a enumC1638a3 = r71.EnumC1638a.f7952g1;
                                if (str4.equals(enumC1638a3.m690f())) {
                                    enumC1638a3.m681o(optJSONObject2.optString(str4).replace(",", ";"));
                                    r71.m711k();
                                } else {
                                    String optString = optJSONObject2.optString(str4);
                                    r71.EnumC1638a valueOf = r71.EnumC1638a.valueOf(str4);
                                    Class<?> m686j = valueOf.m686j();
                                    if (m686j == Boolean.class) {
                                        valueOf.m685k(Boolean.valueOf(optString));
                                    } else if (m686j == Integer.class) {
                                        valueOf.m683m(Integer.valueOf(optString));
                                    } else if (m686j == Float.class) {
                                        valueOf.m684l(Float.valueOf(optString));
                                    } else if (m686j == Long.class) {
                                        valueOf.m682n(Long.valueOf(optString));
                                    } else {
                                        valueOf.m681o(optString);
                                    }
                                }
                            }
                        }
                    }
                    r71.EnumC1638a enumC1638a4 = r71.EnumC1638a.f7892E;
                    if (enumC1638a4.m687i().isEmpty()) {
                        enumC1638a4.m681o(b91.m5723k(0));
                    }
                    u71.m431l(new String(da1.m2714b(optJSONObject2.optString("__DND__").getBytes())));
                    r71.EnumC1638a enumC1638a5 = r71.EnumC1638a.f7896G;
                    enumC1638a5.m681o(new String(da1.m2714b(optJSONObject2.optString(enumC1638a5.m690f()).getBytes())));
                    r71.C1639b.m679f().m678g();
                }
            } catch (Throwable th6) {
                j91.m1504l(this, "Unable to parse settings", th6);
                this.f6544a = false;
            }
            if (!r71.EnumC1638a.f7911N0.m695a()) {
                r71.EnumC1638a enumC1638a6 = r71.EnumC1638a.f7961k;
                if (enumC1638a6.m695a()) {
                    enumC1638a6.m685k(Boolean.FALSE);
                }
            }
            if (!p71.m940f(q71.EnumC1614a.m915a())) {
                q71.EnumC1614a enumC1614a = q71.EnumC1614a.VOICE_MAIL;
                if (!p71.m940f(enumC1614a)) {
                    enumC1614a = q71.EnumC1614a.IGNORE;
                }
                q71.EnumC1614a.m911e(enumC1614a);
                z = true;
            } else {
                z = false;
            }
            if (!p71.m940f(q71.EnumC1614a.m914b())) {
                q71.EnumC1614a enumC1614a2 = q71.EnumC1614a.VOICE_MAIL;
                if (!p71.m940f(enumC1614a2)) {
                    enumC1614a2 = q71.EnumC1614a.IGNORE;
                }
                q71.EnumC1614a.m910f(enumC1614a2);
                z = true;
            }
            JSONObject optJSONObject3 = jSONObject.optJSONObject("flags");
            if (optJSONObject3 != null) {
                r71.EnumC1638a.f7969m1.m683m(Integer.valueOf(optJSONObject3.optInt("ctl", -1)));
                r71.EnumC1638a.f7972n1.m682n(Long.valueOf(optJSONObject3.optLong("rqs", 0L)));
                r71.EnumC1638a.f7975o1.m685k(Boolean.valueOf(optJSONObject3.optInt("tad", 0) == 1));
                r71.EnumC1638a.f7978p1.m685k(Boolean.valueOf(optJSONObject3.optInt("tncch", 0) == 1));
                r71.EnumC1638a.f7981q1.m682n(Long.valueOf(optJSONObject3.optLong("icdp", 120L) * 1000));
                Long valueOf2 = Long.valueOf(optJSONObject3.optLong("app", -1L));
                r71.EnumC1638a enumC1638a7 = r71.EnumC1638a.f7984r1;
                long longValue = valueOf2.longValue();
                ?? longValue2 = valueOf2.longValue();
                char c = longValue2;
                if (longValue > 0) {
                    c = longValue2 * 1000;
                }
                enumC1638a7.m682n(Long.valueOf(c));
                r71.EnumC1638a.f7996v1.m681o(optJSONObject3.optString("cbu", "https://cb.callcontrol.com/"));
                r71.EnumC1638a.f7999w1.m682n(Long.valueOf(optJSONObject3.optLong("cbi", 3600000L)));
                r71.EnumC1638a.f8002x1.m683m(Integer.valueOf(optJSONObject3.optInt("cbp", 0)));
                r71.EnumC1638a.f7903J0.m685k(Boolean.valueOf(optJSONObject3.optInt("ugc", 0) == 1));
                r71.EnumC1638a.f7905K0.m685k(Boolean.valueOf(optJSONObject3.optInt("urb", 0) == 1));
            }
            if (!r71.EnumC1638a.m692d().equals(m692d)) {
                m91.m1279c(this, null);
                Intent m1843g = fa1.m1843g(new Intent("com.kedlin.cca.action.SETTINGS_CHANGED"));
                if (m1843g != null) {
                    fa1.m1851O(fa1.m1840j(), m1843g);
                }
            }
            try {
                JSONArray optJSONArray = jSONObject.optJSONArray("rules");
                String str5 = "PROTO_FROM_SERVER";
                z2 = z;
                if (optJSONArray != null) {
                    str5 = "PROTO_FROM_SERVER";
                    z2 = z;
                    if (optJSONArray.length() > 0) {
                        int length = optJSONArray.length();
                        while (true) {
                            str5 = "PROTO_FROM_SERVER";
                            z2 = z;
                            if (i >= length) {
                                break;
                            }
                            try {
                                JSONObject optJSONObject4 = optJSONArray.optJSONObject(i);
                                if (optJSONObject4 != null && Integer.valueOf(optJSONObject4.optString("kind", "-1")).intValue() != q71.EnumC1621h.UNDEFINED.m895a().intValue()) {
                                    if (Integer.valueOf(optJSONObject4.optString("kind", "-1")).intValue() == q71.EnumC1621h.NUMBER.m895a().intValue()) {
                                        try {
                                            C1402c c1402c = new C1402c();
                                            i91 m1800o = fa1.C1420e.m1800o(optJSONObject4.optString("intl_address"));
                                            c1402c.m157P(m1800o);
                                            try {
                                                if (c1402c.f8635d <= 0 || !optJSONObject4.optBoolean("removed")) {
                                                    c1402c.f8637g = m1800o;
                                                    c1402c.f8640k = q71.EnumC1614a.m908h(Integer.valueOf(optJSONObject4.optString("handling_method")));
                                                    c1402c.f8639j = q71.EnumC1618e.m901c(Integer.valueOf(optJSONObject4.optString(Constants.VAST_TRACKER_CONTENT)));
                                                    c1402c.f8641l = q71.EnumC1620g.values()[Integer.valueOf(optJSONObject4.optString("permission")).intValue()];
                                                    i91.EnumC1446b enumC1446b = i91.EnumC1446b.values()[Integer.valueOf(optJSONObject4.optString("address_type")).intValue()];
                                                    c1402c.f8638h = enumC1446b;
                                                    if (enumC1446b == i91.EnumC1446b.ARBITRARY) {
                                                        c1402c.f8637g.m1591w(optJSONObject4.optString("address"));
                                                    }
                                                    if (optJSONObject4.has("name") && !optJSONObject4.isNull("name")) {
                                                        c1402c.f8636f = optJSONObject4.optString("name");
                                                    }
                                                    c1402c.mo148z();
                                                } else {
                                                    c1402c.mo149d();
                                                }
                                            } catch (Throwable th7) {
                                            }
                                        } catch (Throwable th8) {
                                        }
                                    } else if (Integer.valueOf(optJSONObject4.optInt("kind", -1)).intValue() == q71.EnumC1621h.CONTACT.m895a().intValue() && (optJSONObject = optJSONArray.optJSONObject(i)) != null) {
                                        long longValue3 = Long.valueOf(optJSONObject.optString("identifier")).longValue();
                                        try {
                                            C1401b c1401b = new C1401b();
                                            StringBuilder sb = new StringBuilder();
                                            sb.append(longValue3);
                                            try {
                                                sb.append("");
                                                c1401b.m373n(sb.toString());
                                                C1401b c1401b2 = c1401b;
                                                try {
                                                    if (c1401b2.f7778d > 0) {
                                                        try {
                                                            if (optJSONObject4.optBoolean("removed")) {
                                                                c1401b2.f7783k = q71.EnumC1620g.UNSPECIFIED;
                                                                c1401b2.mo148z();
                                                            }
                                                        } catch (Throwable th9) {
                                                        }
                                                    }
                                                    if (c1401b2.f7778d != longValue3) {
                                                        c1401b2.f7778d = longValue3;
                                                        c1401b2.m857o0(c1401b2.m876V());
                                                    }
                                                    if (optJSONObject.has("name") && !optJSONObject.isNull("name")) {
                                                        c1401b2.f7779f = optJSONObject.optString("name");
                                                    }
                                                    c1401b2.f7782j = q71.EnumC1614a.m908h(Integer.valueOf(optJSONObject.optString("handling_method")));
                                                    c1401b2.f7781h = q71.EnumC1618e.m901c(Integer.valueOf(optJSONObject.optString(Constants.VAST_TRACKER_CONTENT)));
                                                    c1401b2.f7783k = q71.EnumC1620g.values()[Integer.valueOf(optJSONObject.optString("permission")).intValue()];
                                                    c1401b2.mo148z();
                                                } catch (Throwable th10) {
                                                }
                                            } catch (Throwable th11) {
                                            }
                                        } catch (Throwable th12) {
                                        }
                                    }
                                }
                            } catch (Throwable th13) {
                            }
                            i++;
                        }
                    }
                }
                str2 = str5;
            } catch (Throwable th14) {
                str2 = "PROTO_FROM_SERVER";
                j91.m1504l(this, "Unable to parse rules", th14);
                this.f6544a = false;
                z2 = z;
            }
            if (z2 | new C1401b().m882P() | new C1402c().m165H()) {
                o71.m1155d();
                j91.m1499q(this, "Block mode restrictions applied!");
            }
            r71.EnumC1638a enumC1638a8 = r71.EnumC1638a.f7998w0;
            long m689g = enumC1638a8.m689g();
            m91.m1279c(this, null);
            enumC1638a8.m682n(Long.valueOf(m689g));
            boolean m695a4 = r71.EnumC1638a.f7994v.m695a();
            Application m1292a = lm1.m1292a();
            if (m1292a != null) {
                if (m695a != m695a4) {
                    ((fa1.AbstractC1417b) m1292a).mo1823a(m695a4);
                }
                r71.EnumC1638a enumC1638a9 = r71.EnumC1638a.f7958j;
                if (enumC1638a9.m695a() && Build.VERSION.SDK_INT >= 23 && !Settings.canDrawOverlays(m1292a)) {
                    enumC1638a9.m685k(Boolean.FALSE);
                }
            }
            if (!r71.EnumC1638a.f7903J0.m695a() || !r71.EnumC1638a.f7905K0.m695a() || !r71.EnumC1638a.f7950g.m695a()) {
                r71.EnumC1638a.f7953h.m685k(Boolean.FALSE);
            }
            j91.m1520D(j91.C1453b.m1488b(this, str2), this.f6544a);
        } catch (Throwable th15) {
            j91.m1504l(this, "Unable to parse server response", th15);
            this.f6544a = false;
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"), this.f6544a);
            m91.m1281a(this, m91.EnumC1470c.SERVER_SYNC_MAIN_DATA_COMPLETE, null);
        }
    }
}
