package p193e.p1485h.p1486a.p1493c.p1505u0;

import android.content.Context;
import android.content.SharedPreferences;
import com.amazon.device.ads.DtbConstants;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.tenor.android.core.constant.StringConstant;
import e.h.a.c.x0.a;
import e.h.a.c.x0.b;
import e.h.a.c.x0.f;
import e.h.a.c.x0.g;
import e.h.a.c.x0.h;
import e.h.a.c.x0.i;
import e.h.a.c.x0.j;
import e.h.a.c.x0.k;
import e.h.a.c.x0.l;
import e.h.a.c.x0.m;
import e.h.a.c.x0.n;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import org.json.JSONArray;
import org.json.JSONObject;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1432d.p1443e.p1444x.AbstractC22212i;
import p193e.p1485h.p1486a.p1493c.AbstractC22742k;
import p193e.p1485h.p1486a.p1493c.C22718b0;
import p193e.p1485h.p1486a.p1493c.C22731f0;
import p193e.p1485h.p1486a.p1493c.C22735g0;
import p193e.p1485h.p1486a.p1493c.C22751m;
import p193e.p1485h.p1486a.p1493c.C22768o;
import p193e.p1485h.p1486a.p1493c.C22844v;
import p193e.p1485h.p1486a.p1493c.C22858w;
import p193e.p1485h.p1486a.p1493c.p1494a1.C22713b;
import p193e.p1485h.p1486a.p1493c.p1494a1.C22714c;
import p193e.p1485h.p1486a.p1493c.p1496l0.AbstractC22745a;
import p193e.p1485h.p1486a.p1493c.p1496l0.C22746b;
import p193e.p1485h.p1486a.p1493c.p1496l0.C22749c;
import p193e.p1485h.p1486a.p1493c.p1496l0.C22750d;
import p193e.p1485h.p1486a.p1493c.p1498n0.C22759e;
import p193e.p1485h.p1486a.p1493c.p1498n0.EnumC22757c;
import p193e.p1485h.p1486a.p1493c.p1509x0.AbstractC22878c;
import p193e.p1485h.p1486a.p1493c.p1509x0.C22880e;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22882a;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22895k;
import p193e.p1485h.p1486a.p1493c.p1510y0.RunnableC22894j;
/* renamed from: e.h.a.c.u0.b */
/* loaded from: classes-dex2jar.jar:e/h/a/c/u0/b.class */
public class C22841b extends AbstractC22840a {

    /* renamed from: n */
    public static SSLSocketFactory f63389n;

    /* renamed from: o */
    public static SSLContext f63390o;

    /* renamed from: a */
    public final AbstractC22742k f63391a;

    /* renamed from: b */
    public AbstractC22878c f63392b;

    /* renamed from: c */
    public final CleverTapInstanceConfig f63393c;

    /* renamed from: d */
    public final Context f63394d;

    /* renamed from: e */
    public final C22844v f63395e;

    /* renamed from: f */
    public final C22858w f63396f;

    /* renamed from: h */
    public final AbstractC22745a f63398h;

    /* renamed from: i */
    public final C22718b0 f63399i;

    /* renamed from: j */
    public final C22735g0 f63400j;

    /* renamed from: l */
    public final C22713b f63402l;

    /* renamed from: g */
    public int f63397g = 0;

    /* renamed from: k */
    public int f63401k = 0;

    /* renamed from: m */
    public int f63403m = 0;

    /* renamed from: e.h.a.c.u0.b$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/u0/b$a.class */
    public class CallableC22842a implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ Context f63404a;

        public CallableC22842a(Context context) {
            C22841b.this = r4;
            this.f63404a = context;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            C22841b.this.f63398h.mo7820a(this.f63404a);
            return null;
        }
    }

    public C22841b(Context context, CleverTapInstanceConfig cleverTapInstanceConfig, C22718b0 c22718b0, C22858w c22858w, C22713b c22713b, C22844v c22844v, AbstractC22745a abstractC22745a, AbstractC22742k abstractC22742k, C22751m c22751m, C22714c c22714c, C22731f0 c22731f0) {
        this.f63394d = context;
        this.f63393c = cleverTapInstanceConfig;
        this.f63399i = c22718b0;
        this.f63391a = abstractC22742k;
        this.f63400j = cleverTapInstanceConfig.m42081b();
        this.f63396f = c22858w;
        this.f63402l = c22713b;
        this.f63395e = c22844v;
        this.f63398h = abstractC22745a;
        this.f63392b = new b(cleverTapInstanceConfig, this, c22731f0, new j(new l(new a(new f(new k(new n(new g(new h(new m(new i(new C22880e(), cleverTapInstanceConfig, abstractC22742k), cleverTapInstanceConfig, c22858w, c22844v), cleverTapInstanceConfig, c22844v), cleverTapInstanceConfig, abstractC22742k, c22844v), context, cleverTapInstanceConfig, abstractC22745a, abstractC22742k, c22844v), cleverTapInstanceConfig, c22751m, abstractC22742k, c22844v), cleverTapInstanceConfig), cleverTapInstanceConfig, this, c22714c, c22844v), cleverTapInstanceConfig, c22718b0, this), cleverTapInstanceConfig, c22844v, false));
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p1485h.p1486a.p1493c.p1505u0.AbstractC22840a
    /* renamed from: a */
    public void mo7710a(Context context, EnumC22757c enumC22757c) {
        HttpsURLConnection httpsURLConnection;
        String m7705f;
        String m7702i;
        C22750d c22750d;
        this.f63393c.m42081b().m7855b(this.f63393c.f2240a, "Somebody has invoked me to send the queue to CleverTap servers");
        boolean z = true;
        C22750d c22750d2 = null;
        while (z) {
            C22749c c22749c = (C22749c) this.f63398h;
            if (enumC22757c == EnumC22757c.PUSH_NOTIFICATION_VIEWED) {
                c22749c.f63012c.m42081b().m7855b(c22749c.f63012c.f2240a, "Returning Queued Notification Viewed events");
                c22750d2 = c22749c.m7818c(context, C22746b.EnumC22748b.PUSH_NOTIFICATION_VIEWED, 50, c22750d2);
            } else {
                c22749c.f63012c.m42081b().m7855b(c22749c.f63012c.f2240a, "Returning Queued events");
                Objects.requireNonNull(c22749c.f63011b);
                synchronized (Boolean.TRUE) {
                    C22746b.EnumC22748b enumC22748b = C22746b.EnumC22748b.EVENTS;
                    C22750d m7818c = c22749c.m7818c(context, enumC22748b, 50, c22750d2);
                    C22750d c22750d3 = m7818c;
                    if (m7818c.m7816a().booleanValue()) {
                        c22750d3 = m7818c;
                        if (m7818c.f63015c.equals(enumC22748b)) {
                            c22750d3 = c22749c.m7818c(context, C22746b.EnumC22748b.PROFILE_EVENTS, 50, null);
                        }
                    }
                    c22750d = c22750d3;
                    if (c22750d3.m7816a().booleanValue()) {
                        c22750d = null;
                    }
                }
                c22750d2 = c22750d;
            }
            if (c22750d2 == null || c22750d2.m7816a().booleanValue()) {
                this.f63393c.m42081b().m7855b(this.f63393c.f2240a, "No events in the queue, failing");
                return;
            }
            JSONArray jSONArray = c22750d2.f63013a;
            if (jSONArray == null || jSONArray.length() <= 0) {
                this.f63393c.m42081b().m7855b(this.f63393c.f2240a, "No events in the queue, failing");
                return;
            }
            if (jSONArray.length() > 0) {
                if (this.f63399i.m7910j() == null) {
                    this.f63400j.m7856a(this.f63393c.f2240a, "CleverTap Id not finalized, unable to send queue");
                } else {
                    try {
                        m7705f = m7705f(false, enumC22757c);
                    } catch (Throwable th) {
                        httpsURLConnection = null;
                    }
                    if (m7705f == null) {
                        this.f63400j.m7856a(this.f63393c.f2240a, "Problem configuring queue endpoint, unable to send queue");
                    } else {
                        httpsURLConnection = m7708c(m7705f);
                        try {
                            m7702i = m7702i(context, jSONArray);
                        } catch (Throwable th2) {
                            try {
                                C22735g0 c22735g0 = this.f63400j;
                                String str = this.f63393c.f2240a;
                                Objects.requireNonNull(c22735g0);
                                this.f63403m++;
                                this.f63401k++;
                                ((C22759e) ((C22768o) this.f63391a).f63072c).m7808h(context);
                                if (httpsURLConnection != null) {
                                    httpsURLConnection.getInputStream().close();
                                    httpsURLConnection.disconnect();
                                }
                                z = false;
                            } catch (Throwable th3) {
                                if (httpsURLConnection != null) {
                                    try {
                                        httpsURLConnection.getInputStream().close();
                                        httpsURLConnection.disconnect();
                                    } catch (Throwable th4) {
                                    }
                                }
                                throw th3;
                            }
                        }
                        if (m7702i != null) {
                            this.f63400j.m7856a(this.f63393c.f2240a, "Send queue contains " + jSONArray.length() + " items: " + m7702i);
                            this.f63400j.m7856a(this.f63393c.f2240a, "Sending queue to: " + m7705f);
                            httpsURLConnection.setDoOutput(true);
                            httpsURLConnection.getOutputStream().write(m7702i.getBytes(StringConstant.UTF8));
                            int responseCode = httpsURLConnection.getResponseCode();
                            if (responseCode != 200) {
                                throw new IOException("Response code is not 200. It is " + responseCode);
                                break;
                            }
                            String headerField = httpsURLConnection.getHeaderField("X-WZRK-RD");
                            if (headerField == null || headerField.trim().length() <= 0 || !(!headerField.equals(C26232y.m2483B0(this.f63394d, this.f63393c, "comms_dmn", null)))) {
                                if (m7700k(context, httpsURLConnection)) {
                                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpsURLConnection.getInputStream(), AbstractC22212i.PROTOCOL_CHARSET));
                                    StringBuilder sb = new StringBuilder();
                                    while (true) {
                                        String readLine = bufferedReader.readLine();
                                        if (readLine == null) {
                                            break;
                                        }
                                        sb.append(readLine);
                                    }
                                    this.f63392b.m7645a(null, sb.toString(), this.f63394d);
                                }
                                C26232y.m2470E1(this.f63394d, C26232y.m2398W1(this.f63393c, "comms_last_ts"), this.f63397g);
                                int i = this.f63397g;
                                if (C26232y.m2325n0(this.f63394d, this.f63393c, "comms_first_ts", 0) <= 0) {
                                    C26232y.m2470E1(this.f63394d, C26232y.m2398W1(this.f63393c, "comms_first_ts"), i);
                                }
                                this.f63400j.m7856a(this.f63393c.f2240a, "Queue sent successfully");
                                this.f63403m = 0;
                                this.f63401k = 0;
                                try {
                                    httpsURLConnection.getInputStream().close();
                                    httpsURLConnection.disconnect();
                                } catch (Throwable th5) {
                                }
                                z = true;
                            } else {
                                m7699l(context, headerField);
                                this.f63400j.m7856a(this.f63393c.f2240a, "The domain has changed to " + headerField + ". The request will be retried shortly.");
                                httpsURLConnection.getInputStream().close();
                            }
                        } else {
                            this.f63400j.m7856a(this.f63393c.f2240a, "Problem configuring queue request, unable to send queue");
                            try {
                                httpsURLConnection.getInputStream().close();
                            } catch (Throwable th6) {
                            }
                        }
                        httpsURLConnection.disconnect();
                    }
                }
            }
            z = false;
        }
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1505u0.AbstractC22840a
    /* renamed from: b */
    public boolean mo7709b(EnumC22757c enumC22757c) {
        return m7706e(enumC22757c) == null || this.f63403m > 5;
    }

    /* renamed from: c */
    public HttpsURLConnection m7708c(String str) throws IOException {
        SSLContext sSLContext;
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(str).openConnection();
        httpsURLConnection.setConnectTimeout(10000);
        httpsURLConnection.setReadTimeout(10000);
        httpsURLConnection.setRequestProperty("Content-Type", "application/json; charset=utf-8");
        httpsURLConnection.setRequestProperty("X-CleverTap-Account-ID", this.f63393c.f2240a);
        httpsURLConnection.setRequestProperty("X-CleverTap-Token", this.f63393c.f2242c);
        httpsURLConnection.setInstanceFollowRedirects(false);
        if (this.f63393c.f2257r) {
            synchronized (C22841b.class) {
                try {
                    if (f63390o == null) {
                        f63390o = new C22843c().m7696a();
                    }
                    sSLContext = f63390o;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (sSLContext != null) {
                if (f63389n == null) {
                    try {
                        f63389n = sSLContext.getSocketFactory();
                    } catch (Throwable th2) {
                    }
                }
                httpsURLConnection.setSSLSocketFactory(f63389n);
            }
        }
        return httpsURLConnection;
    }

    /* renamed from: d */
    public final JSONObject m7707d() {
        try {
            String m7703h = m7703h();
            if (m7703h == null) {
                return null;
            }
            Map<String, ?> all = (!C26232y.m2293v0(this.f63394d, m7703h).getAll().isEmpty() ? C26232y.m2293v0(this.f63394d, m7703h) : m7701j(m7703h, m7704g())).getAll();
            Iterator<Map.Entry<String, ?>> it = all.entrySet().iterator();
            while (it.hasNext()) {
                Object value = it.next().getValue();
                if ((value instanceof Number) && ((Number) value).intValue() == -1) {
                    it.remove();
                }
            }
            JSONObject jSONObject = new JSONObject(all);
            C22735g0 c22735g0 = this.f63400j;
            String str = this.f63393c.f2240a;
            c22735g0.m7855b(str, "Fetched ARP for namespace key: " + m7703h + " values: " + all.toString());
            return jSONObject;
        } catch (Throwable th) {
            C22735g0 c22735g02 = this.f63400j;
            String str2 = this.f63393c.f2240a;
            Objects.requireNonNull(c22735g02);
            return null;
        }
    }

    /* renamed from: e */
    public String m7706e(EnumC22757c enumC22757c) {
        EnumC22757c enumC22757c2 = EnumC22757c.PUSH_NOTIFICATION_VIEWED;
        try {
            String str = this.f63393c.f2241b;
            if (str != null && str.trim().length() > 0) {
                this.f63403m = 0;
                if (!enumC22757c.equals(enumC22757c2)) {
                    return str.trim().toLowerCase() + StringConstant.DOT + "wzrkt.com";
                }
                return str.trim().toLowerCase() + enumC22757c.f63033a + StringConstant.DOT + "wzrkt.com";
            }
        } catch (Throwable th) {
        }
        return enumC22757c.equals(enumC22757c2) ? C26232y.m2483B0(this.f63394d, this.f63393c, "comms_dmn_spiky", null) : C26232y.m2483B0(this.f63394d, this.f63393c, "comms_dmn", null);
    }

    /* renamed from: f */
    public String m7705f(boolean z, EnumC22757c enumC22757c) {
        String m7706e = m7706e(enumC22757c);
        boolean z2 = m7706e == null || m7706e.trim().length() == 0;
        String m8543z2 = (!z2 || z) ? z2 ? "wzrkt.com/hello" : C22128a.m8543z2(m7706e, "/a1") : null;
        if (m8543z2 == null) {
            this.f63400j.m7855b(this.f63393c.f2240a, "Unable to configure endpoint, domain is null");
            return null;
        }
        String str = this.f63393c.f2240a;
        if (str == null) {
            this.f63400j.m7855b(str, "Unable to configure endpoint, accountID is null");
            return null;
        }
        StringBuilder m8692L = C22128a.m8692L(DtbConstants.HTTPS, m8543z2, "?os=Android&t=");
        m8692L.append(this.f63399i.m7906n());
        String m8725C2 = C22128a.m8725C2(m8692L.toString(), "&z=", str);
        if (mo7709b(enumC22757c)) {
            return m8725C2;
        }
        this.f63397g = (int) (System.currentTimeMillis() / 1000);
        StringBuilder m8696K = C22128a.m8696K(m8725C2, "&ts=");
        m8696K.append(this.f63397g);
        return m8696K.toString();
    }

    /* renamed from: g */
    public final String m7704g() {
        String str = this.f63393c.f2240a;
        if (str == null) {
            return null;
        }
        C22735g0 c22735g0 = this.f63400j;
        c22735g0.m7855b(str, "Old ARP Key = ARP:" + str);
        return "ARP:" + str;
    }

    /* renamed from: h */
    public String m7703h() {
        String str = this.f63393c.f2240a;
        if (str == null) {
            return null;
        }
        C22735g0 c22735g0 = this.f63400j;
        StringBuilder m8692L = C22128a.m8692L("New ARP Key = ARP:", str, StringConstant.COLON);
        m8692L.append(this.f63399i.m7910j());
        c22735g0.m7855b(str, m8692L.toString());
        return "ARP:" + str + StringConstant.COLON + this.f63399i.m7910j();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0163 A[Catch: all -> 0x0353, TryCatch #2 {all -> 0x0353, blocks: (B:2:0x0000, B:4:0x0016, B:6:0x0021, B:7:0x002e, B:9:0x0040, B:12:0x0074, B:14:0x007f, B:17:0x0099, B:19:0x00a4, B:23:0x00c4, B:25:0x0136, B:30:0x014f, B:32:0x0163, B:34:0x0175, B:36:0x0198, B:38:0x01b5, B:45:0x0202, B:46:0x0205, B:82:0x02ba, B:83:0x02c1, B:87:0x02cb, B:90:0x02d1, B:92:0x02d9, B:94:0x02e4, B:96:0x02f1, B:97:0x02fb, B:98:0x030c, B:99:0x030f, B:102:0x0346, B:48:0x020d, B:49:0x0214, B:53:0x021e, B:56:0x0224, B:58:0x0230, B:59:0x0237, B:63:0x0241, B:66:0x0247, B:68:0x0253, B:69:0x025a, B:73:0x0264, B:76:0x026a, B:78:0x0277, B:80:0x027d, B:61:0x023a, B:71:0x025d, B:51:0x0217, B:40:0x01cc, B:42:0x01d6, B:44:0x01de, B:85:0x02c4), top: B:107:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0198 A[Catch: all -> 0x0353, TryCatch #2 {all -> 0x0353, blocks: (B:2:0x0000, B:4:0x0016, B:6:0x0021, B:7:0x002e, B:9:0x0040, B:12:0x0074, B:14:0x007f, B:17:0x0099, B:19:0x00a4, B:23:0x00c4, B:25:0x0136, B:30:0x014f, B:32:0x0163, B:34:0x0175, B:36:0x0198, B:38:0x01b5, B:45:0x0202, B:46:0x0205, B:82:0x02ba, B:83:0x02c1, B:87:0x02cb, B:90:0x02d1, B:92:0x02d9, B:94:0x02e4, B:96:0x02f1, B:97:0x02fb, B:98:0x030c, B:99:0x030f, B:102:0x0346, B:48:0x020d, B:49:0x0214, B:53:0x021e, B:56:0x0224, B:58:0x0230, B:59:0x0237, B:63:0x0241, B:66:0x0247, B:68:0x0253, B:69:0x025a, B:73:0x0264, B:76:0x026a, B:78:0x0277, B:80:0x027d, B:61:0x023a, B:71:0x025d, B:51:0x0217, B:40:0x01cc, B:42:0x01d6, B:44:0x01de, B:85:0x02c4), top: B:107:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0215  */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m7702i(android.content.Context r8, org.json.JSONArray r9) {
        /*
            Method dump skipped, instructions count: 875
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1485h.p1486a.p1493c.p1505u0.C22841b.m7702i(android.content.Context, org.json.JSONArray):java.lang.String");
    }

    /* renamed from: j */
    public final SharedPreferences m7701j(String str, String str2) {
        SharedPreferences m2293v0 = C26232y.m2293v0(this.f63394d, str2);
        SharedPreferences m2293v02 = C26232y.m2293v0(this.f63394d, str);
        SharedPreferences.Editor edit = m2293v02.edit();
        for (Map.Entry<String, ?> entry : m2293v0.getAll().entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Number) {
                edit.putInt(entry.getKey(), ((Number) value).intValue());
            } else if (value instanceof String) {
                String str3 = (String) value;
                if (str3.length() < 100) {
                    edit.putString(entry.getKey(), str3);
                } else {
                    C22735g0 c22735g0 = this.f63400j;
                    String str4 = this.f63393c.f2240a;
                    StringBuilder m8728C = C22128a.m8728C("ARP update for key ");
                    m8728C.append(entry.getKey());
                    m8728C.append(" rejected (string value too long)");
                    c22735g0.m7855b(str4, m8728C.toString());
                }
            } else if (value instanceof Boolean) {
                edit.putBoolean(entry.getKey(), ((Boolean) value).booleanValue());
            } else {
                C22735g0 c22735g02 = this.f63400j;
                String str5 = this.f63393c.f2240a;
                StringBuilder m8728C2 = C22128a.m8728C("ARP update for key ");
                m8728C2.append(entry.getKey());
                m8728C2.append(" rejected (invalid data type)");
                c22735g02.m7855b(str5, m8728C2.toString());
            }
        }
        C22735g0 c22735g03 = this.f63400j;
        String str6 = this.f63393c.f2240a;
        c22735g03.m7855b(str6, "Completed ARP update for namespace key: " + str + "");
        try {
            edit.apply();
        } catch (Throwable th) {
        }
        m2293v0.edit().clear().apply();
        return m2293v02;
    }

    /* renamed from: k */
    public boolean m7700k(Context context, HttpsURLConnection httpsURLConnection) {
        String headerField = httpsURLConnection.getHeaderField("X-WZRK-MUTE");
        if (headerField != null && headerField.trim().length() > 0) {
            if (headerField.equals("true")) {
                m7698m(context, true);
                return false;
            }
            m7698m(context, false);
        }
        String headerField2 = httpsURLConnection.getHeaderField("X-WZRK-RD");
        if (headerField2 == null || headerField2.trim().length() == 0) {
            return true;
        }
        String headerField3 = httpsURLConnection.getHeaderField("X-WZRK-SPIKY-RD");
        m7698m(context, false);
        m7699l(context, headerField2);
        if (headerField3 == null) {
            m7697n(context, headerField2);
            return true;
        }
        m7697n(context, headerField3);
        return true;
    }

    /* renamed from: l */
    public void m7699l(Context context, String str) {
        C22735g0 c22735g0 = this.f63400j;
        String str2 = this.f63393c.f2240a;
        c22735g0.m7855b(str2, "Setting domain to " + str);
        C26232y.m2466F1(context, C26232y.m2398W1(this.f63393c, "comms_dmn"), str);
    }

    /* renamed from: m */
    public final void m7698m(Context context, boolean z) {
        if (!z) {
            C26232y.m2470E1(context, C26232y.m2398W1(this.f63393c, "comms_mtd"), 0);
            return;
        }
        C26232y.m2470E1(context, C26232y.m2398W1(this.f63393c, "comms_mtd"), (int) (System.currentTimeMillis() / 1000));
        m7699l(context, null);
        C22895k m7641c = C22882a.m7644a(this.f63393c).m7641c();
        m7641c.f63554c.execute(new RunnableC22894j(m7641c, "CommsManager#setMuted", new CallableC22842a(context)));
    }

    /* renamed from: n */
    public void m7697n(Context context, String str) {
        C22735g0 c22735g0 = this.f63400j;
        String str2 = this.f63393c.f2240a;
        c22735g0.m7855b(str2, "Setting spiky domain to " + str);
        C26232y.m2466F1(context, C26232y.m2398W1(this.f63393c, "comms_dmn_spiky"), str);
    }
}
