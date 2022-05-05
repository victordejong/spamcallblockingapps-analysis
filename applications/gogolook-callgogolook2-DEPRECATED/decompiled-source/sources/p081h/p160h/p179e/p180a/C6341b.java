package p081h.p160h.p179e.p180a;

import android.text.TextUtils;
import androidx.media2.exoplayer.external.text.webvtt.WebvttCueParser;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.flurry.sdk.C3478n;
import gogolook.callgogolook2.gson.NumberInfo;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.msgpack.jackson.dataformat.MessagePackFactory;
import p081h.p160h.p179e.p180a.p181f.C6345a;
import p081h.p160h.p179e.p180a.p181f.C6346b;
import p081h.p160h.p179e.p180a.p181f.C6347c;
import p081h.p160h.p179e.p180a.p181f.C6348d;
import p081h.p160h.p179e.p180a.p181f.C6349e;
import p081h.p160h.p179e.p180a.p181f.C6350f;
import p081h.p160h.p179e.p180a.p181f.C6351g;
import p081h.p160h.p179e.p180a.p181f.C6352h;
import p081h.p160h.p179e.p180a.p181f.C6353i;
import p081h.p160h.p179e.p180a.p186m.AbstractC6378d;
import p081h.p160h.p179e.p180a.p190p.C6432e;
import p081h.p160h.p179e.p180a.p190p.C6438i;
import p081h.p203i.p383d.C10080c;
/* renamed from: h.h.e.a.b */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/b.class */
public class C6341b {

    /* renamed from: a */
    public String f15755a;

    /* renamed from: b */
    public String f15756b;

    /* renamed from: c */
    public String f15757c;

    /* renamed from: d */
    public String f15758d;

    /* renamed from: e */
    public long f15759e;

    /* renamed from: f */
    public AbstractC6378d f15760f;

    /* renamed from: g */
    public JSONObject f15761g;

    /* renamed from: h */
    public String f15762h;

    /* renamed from: i */
    public boolean f15763i;

    /* renamed from: j */
    public boolean f15764j;

    /* renamed from: k */
    public boolean f15765k;

    /* renamed from: l */
    public boolean f15766l;

    /* renamed from: m */
    public boolean f15767m;

    /* renamed from: n */
    public boolean f15768n;

    /* renamed from: o */
    public boolean f15769o;

    /* renamed from: p */
    public boolean f15770p;

    /* renamed from: q */
    public int f15771q;

    /* renamed from: r */
    public int f15772r;

    /* renamed from: s */
    public int f15773s;

    public C6341b() {
        this.f15755a = null;
        this.f15756b = null;
        this.f15757c = null;
        this.f15758d = null;
        this.f15759e = 0L;
        this.f15760f = null;
        this.f15761g = null;
        this.f15762h = null;
        this.f15763i = false;
        this.f15764j = false;
        this.f15765k = false;
        this.f15766l = false;
        this.f15767m = false;
        this.f15768n = false;
        this.f15769o = false;
        this.f15770p = false;
        this.f15771q = 0;
        this.f15772r = 0;
        this.f15773s = -1;
    }

    public C6341b(C6353i iVar) throws Exception {
        this.f15755a = null;
        this.f15756b = null;
        this.f15757c = null;
        this.f15758d = null;
        this.f15759e = 0L;
        this.f15760f = null;
        this.f15761g = null;
        this.f15762h = null;
        this.f15763i = false;
        this.f15764j = false;
        this.f15765k = false;
        this.f15766l = false;
        this.f15767m = false;
        this.f15768n = false;
        this.f15769o = false;
        this.f15770p = false;
        this.f15771q = 0;
        this.f15772r = 0;
        this.f15773s = -1;
        if (iVar != null) {
            this.f15755a = iVar.m23110a();
            this.f15756b = iVar.m23102b();
            this.f15757c = iVar.m23097c();
            this.f15758d = iVar.m23094d();
            this.f15759e = iVar.m23091e();
            this.f15771q = iVar.m23075n();
            this.f15772r = iVar.m23074o();
            this.f15763i = iVar.m23088f();
            this.f15764j = iVar.m23085g();
            this.f15765k = iVar.m23082h();
            this.f15766l = iVar.m23080i();
            this.f15767m = iVar.m23079j();
            this.f15768n = iVar.m23078k();
            this.f15769o = iVar.m23077l();
            this.f15770p = iVar.m23076m();
            this.f15773s = iVar.m23073p();
        }
    }

    /* renamed from: a */
    public static C6341b m23206a(byte[] bArr) throws IOException {
        try {
            return new C6341b(C6353i.m23104a(ByteBuffer.wrap(bArr)));
        } catch (Exception e) {
            e.printStackTrace();
            return (C6341b) new ObjectMapper(new MessagePackFactory()).readValue(bArr, C6341b.class);
        }
    }

    /* renamed from: c */
    public static byte[] m23202c(C6341b bVar) {
        if (bVar == null) {
            return null;
        }
        try {
            int i = 0;
            C10080c cVar = new C10080c(0);
            int a = bVar.f15755a == null ? 0 : cVar.m13439a(bVar.f15755a);
            int a2 = bVar.f15756b == null ? 0 : cVar.m13439a(bVar.f15756b);
            int a3 = bVar.f15758d == null ? 0 : cVar.m13439a(bVar.f15758d);
            if (bVar.f15757c != null) {
                i = cVar.m13439a(bVar.f15757c);
            }
            C6353i.m23108a(cVar);
            C6353i.m23107a(cVar, a);
            C6353i.m23099b(cVar, a2);
            C6353i.m23093d(cVar, a3);
            C6353i.m23096c(cVar, i);
            C6353i.m23106a(cVar, bVar.f15759e);
            C6353i.m23105a(cVar, bVar.f15763i);
            C6353i.m23098b(cVar, bVar.f15764j);
            C6353i.m23095c(cVar, bVar.f15765k);
            C6353i.m23092d(cVar, bVar.f15766l);
            C6353i.m23089e(cVar, bVar.f15767m);
            C6353i.m23086f(cVar, bVar.f15768n);
            C6353i.m23083g(cVar, bVar.f15769o);
            C6353i.m23081h(cVar, bVar.f15770p);
            C6353i.m23090e(cVar, bVar.f15771q);
            C6353i.m23087f(cVar, bVar.f15772r);
            C6353i.m23084g(cVar, bVar.f15773s);
            cVar.m13425c(C6353i.m23100b(cVar));
            ByteBuffer a4 = cVar.m13450a();
            byte[] bArr = new byte[a4.remaining()];
            a4.get(bArr);
            return bArr;
        } catch (Throwable th) {
            C6438i.m22583a(th);
            return null;
        }
    }

    /* renamed from: a */
    public final boolean m23207a(C6341b bVar) {
        if (this.f15772r != bVar.f15772r) {
            return false;
        }
        try {
            m23201d();
            if (this.f15761g.getJSONArray("datas").length() >= 10) {
                return false;
            }
            JSONObject d = bVar.m23201d();
            if (this.f15761g == null || d == null || !this.f15761g.getString("uid").equals(d.getString("uid")) || !this.f15761g.getString("did").equals(d.getString("did")) || !this.f15761g.getString("appvcode").equals(d.getString("appvcode"))) {
                return false;
            }
            if (this.f15761g.optString("region").equals(d.optString("region"))) {
                return true;
            }
            C6432e.m22604a("gf_region_change", this.f15761g.optString("region"), d.optString("region"));
            return false;
        } catch (Exception e) {
            C6438i.m22583a(e);
            return false;
        }
    }

    /* renamed from: a */
    public byte[] m23208a() {
        int i;
        try {
            JSONObject d = m23201d();
            if (this.f15772r == 3) {
                C10080c cVar = new C10080c(0);
                int a = cVar.m13439a(d.optString("appvcode", ""));
                int a2 = cVar.m13439a(d.optString("region", ""));
                int a3 = cVar.m13439a(d.optString("uid", ""));
                int a4 = cVar.m13439a(d.optString("did", ""));
                int a5 = cVar.m13439a(d.optString("city", ""));
                int a6 = cVar.m13439a(d.optString(WebvttCueParser.TAG_LANG, ""));
                int a7 = cVar.m13439a(d.optString("adid", ""));
                JSONObject jSONObject = !d.isNull("ab_testing") ? d.getJSONObject("ab_testing") : new JSONObject();
                int[] iArr = new int[jSONObject.length()];
                Iterator<String> keys = jSONObject.keys();
                int i2 = 0;
                while (keys.hasNext()) {
                    String next = keys.next();
                    iArr[i2] = C6351g.m23118a(cVar, cVar.m13439a(next), cVar.m13439a(jSONObject.getString(next)));
                    i2++;
                }
                int a8 = C6347c.m23155a(cVar, iArr);
                int[] iArr2 = new int[d.getJSONArray("datas").length()];
                for (int i3 = 0; i3 < iArr2.length; i3++) {
                    JSONObject jSONObject2 = d.getJSONArray("datas").getJSONObject(i3);
                    int a9 = cVar.m13439a(jSONObject2.optString("eid"));
                    int a10 = cVar.m13439a(jSONObject2.optString(C3478n.f5989a));
                    long optLong = jSONObject2.optLong("ts", 0L);
                    int i4 = jSONObject2.getInt("net");
                    JSONArray optJSONArray = !jSONObject2.isNull("strs") ? jSONObject2.optJSONArray("strs") : new JSONArray();
                    int[] iArr3 = new int[optJSONArray.length()];
                    for (int i5 = 0; i5 < iArr3.length; i5++) {
                        iArr3[i5] = cVar.m13439a(optJSONArray.getString(i5));
                    }
                    int a11 = C6346b.m23164a(cVar, iArr3);
                    JSONArray jSONArray = !jSONObject2.isNull("ints") ? jSONObject2.getJSONArray("ints") : new JSONArray();
                    int[] iArr4 = new int[jSONArray.length()];
                    for (int i6 = 0; i6 < iArr4.length; i6++) {
                        iArr4[i6] = jSONArray.getInt(i6);
                    }
                    iArr2[i3] = C6346b.m23166a(cVar, a9, a10, i4, optLong, a11, C6346b.m23162b(cVar, iArr4));
                }
                int b = C6347c.m23152b(cVar, iArr2);
                C6347c.m23158a(cVar);
                C6347c.m23156a(cVar, a);
                C6347c.m23153b(cVar, a2);
                C6347c.m23151c(cVar, a3);
                C6347c.m23150d(cVar, a4);
                C6347c.m23149e(cVar, a5);
                C6347c.m23148f(cVar, d.optInt("subs"));
                C6347c.m23147g(cVar, a8);
                C6347c.m23146h(cVar, b);
                C6347c.m23145i(cVar, a6);
                C6347c.m23144j(cVar, a7);
                C6347c.m23157a(cVar, d.optDouble("os_ver"));
                cVar.m13425c(C6347c.m23154b(cVar));
                ByteBuffer a12 = cVar.m13450a();
                byte[] bArr = new byte[a12.remaining()];
                a12.get(bArr);
                return bArr;
            } else if (this.f15772r != 4) {
                return null;
            } else {
                C10080c cVar2 = new C10080c(0);
                int a13 = cVar2.m13439a(d.optString("appvcode", ""));
                int a14 = cVar2.m13439a(d.optString("region", ""));
                int a15 = cVar2.m13439a(d.optString("uid", ""));
                int a16 = cVar2.m13439a(d.optString("did", ""));
                int a17 = cVar2.m13439a(d.optString("adid", ""));
                int[] iArr5 = new int[d.getJSONArray("datas").length()];
                for (int i7 = 0; i7 < iArr5.length; i7++) {
                    JSONObject jSONObject3 = d.getJSONArray("datas").getJSONObject(i7);
                    int a18 = cVar2.m13439a(jSONObject3.optString("id"));
                    int a19 = cVar2.m13439a(jSONObject3.optString("aws_id"));
                    int a20 = cVar2.m13439a(jSONObject3.optString("data_id"));
                    int a21 = cVar2.m13439a(jSONObject3.optString("nginx_id"));
                    JSONObject jSONObject4 = jSONObject3.getJSONObject("data").getJSONObject("c_info");
                    int a22 = cVar2.m13439a(jSONObject4.optString("num", ""));
                    int a23 = cVar2.m13439a(jSONObject4.optString("ori_num", ""));
                    int a24 = cVar2.m13439a(jSONObject4.optString("name_d", ""));
                    int a25 = cVar2.m13439a(jSONObject4.optString("name_type", ""));
                    int a26 = cVar2.m13439a(jSONObject4.optString("spam_type", ""));
                    int a27 = cVar2.m13439a(jSONObject4.optString("biz_category", ""));
                    int a28 = cVar2.m13439a(jSONObject4.optString("lookup_source", ""));
                    int length = jSONObject4.optJSONArray("lnglat").length();
                    if (length > 0) {
                        double[] dArr = new double[length];
                        for (int i8 = 0; i8 < length; i8++) {
                            dArr[i8] = jSONObject4.optJSONArray("lnglat").getDouble(i8);
                        }
                        i = C6345a.m23182a(cVar2, dArr);
                    } else {
                        i = 0;
                    }
                    C6345a.m23185a(cVar2);
                    C6345a.m23184a(cVar2, a22);
                    C6345a.m23180b(cVar2, a23);
                    C6345a.m23178c(cVar2, a24);
                    C6345a.m23176d(cVar2, a25);
                    C6345a.m23175e(cVar2, a26);
                    C6345a.m23174f(cVar2, a27);
                    C6345a.m23173g(cVar2, a28);
                    C6345a.m23183a(cVar2, jSONObject4.optBoolean("name", false));
                    C6345a.m23179b(cVar2, jSONObject4.optBoolean("spam", false));
                    C6345a.m23177c(cVar2, jSONObject4.optBoolean("contact", false));
                    C6345a.m23172h(cVar2, jSONObject4.optInt("duration", 0));
                    C6345a.m23171i(cVar2, jSONObject4.optInt("server_latency", 0));
                    C6345a.m23170j(cVar2, jSONObject4.optInt("status", 0));
                    if (length > 0) {
                        C6345a.m23169k(cVar2, i);
                    }
                    int b2 = C6345a.m23181b(cVar2);
                    JSONObject jSONObject5 = jSONObject3.getJSONObject("data").getJSONObject("s_info");
                    int a29 = C6352h.m23113a(cVar2, jSONObject5.optBoolean("name", false), jSONObject5.optBoolean("spam", false), cVar2.m13439a(jSONObject5.optString(NumberInfo.KEY_NAME_SOURCE, "")), cVar2.m13439a(jSONObject5.optString(NumberInfo.KEY_DATA_SOURCE, "")));
                    JSONObject jSONObject6 = jSONObject3.getJSONObject("data").getJSONObject("off_info");
                    int[] iArr6 = new int[jSONObject6.length()];
                    Iterator<String> keys2 = jSONObject6.keys();
                    int i9 = 0;
                    while (keys2.hasNext()) {
                        String next2 = keys2.next();
                        iArr6[i9] = C6351g.m23118a(cVar2, cVar2.m13439a(next2), cVar2.m13439a(jSONObject6.getString(next2)));
                        i9++;
                    }
                    iArr5[i7] = C6348d.m23141a(cVar2, a18, a19, a20, a21, jSONObject3.optLong("ts", 0L), C6350f.m23124a(cVar2, b2, a29, C6350f.m23123a(cVar2, iArr6)));
                }
                cVar2.m13425c(C6349e.m23133a(cVar2, a13, a14, a15, a16, a17, C6349e.m23132a(cVar2, iArr5)));
                ByteBuffer a30 = cVar2.m13450a();
                byte[] bArr2 = new byte[a30.remaining()];
                a30.get(bArr2);
                return bArr2;
            }
        } catch (Exception e) {
            C6438i.m22583a(e);
            return null;
        }
    }

    /* renamed from: b */
    public boolean m23204b(C6341b bVar) {
        if (!m23207a(bVar)) {
            return false;
        }
        try {
            JSONArray jSONArray = this.f15761g.getJSONArray("datas");
            JSONArray jSONArray2 = bVar.m23201d().getJSONArray("datas");
            for (int i = 0; i < jSONArray2.length(); i++) {
                jSONArray.put(jSONArray2.getJSONObject(i));
            }
            return true;
        } catch (JSONException e) {
            return false;
        }
    }

    /* renamed from: b */
    public byte[] m23205b() {
        try {
            ObjectMapper objectMapper = new ObjectMapper(new MessagePackFactory());
            return objectMapper.writeValueAsBytes(objectMapper.readTree(this.f15757c));
        } catch (Exception e) {
            C6438i.m22583a(e);
            return null;
        }
    }

    /* renamed from: c */
    public int m23203c() {
        int i = 0;
        i = 0;
        try {
            if (this.f15761g != null) {
                this.f15757c = this.f15761g.toString();
                i = this.f15761g.getJSONArray("datas").length();
                i = i;
                this.f15761g = null;
            }
        } catch (JSONException e) {
        }
        this.f15773s = i;
        return i;
    }

    /* renamed from: d */
    public JSONObject m23201d() {
        try {
            if (this.f15761g == null && !TextUtils.isEmpty(this.f15757c)) {
                this.f15761g = new JSONObject(this.f15757c);
            }
            return this.f15761g;
        } catch (JSONException e) {
            C6438i.m22583a(e);
            return null;
        }
    }

    /* renamed from: e */
    public int m23200e() {
        if (this.f15773s == -1) {
            if (this.f15761g == null) {
                m23201d();
            }
            try {
                if (this.f15761g != null && !this.f15761g.isNull("datas")) {
                    this.f15773s = this.f15761g.getJSONArray("datas").length();
                }
            } catch (JSONException e) {
                C6438i.m22583a(e);
            }
        }
        return this.f15773s;
    }

    /* renamed from: f */
    public boolean m23199f() {
        try {
            m23201d();
            if (this.f15761g.getJSONArray("datas").length() != 1) {
                return false;
            }
            return System.currentTimeMillis() - this.f15761g.getJSONArray("datas").getJSONObject(0).getLong("ts") > NumberInfo.Whoscall.Spam.EXPIRE_INTERVAL;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: g */
    public boolean m23198g() {
        return (this.f15755a == null || this.f15756b == null) ? false : true;
    }

    public String toString() {
        try {
            StringBuilder sb = new StringBuilder();
            if (this.f15755a != null) {
                sb.append("url = " + this.f15755a + ",");
            }
            if (this.f15756b != null) {
                sb.append(" method = " + this.f15756b + ",");
            }
            if (this.f15757c != null) {
                sb.append(" body = " + this.f15757c + ",");
            }
            if (this.f15758d != null) {
                sb.append(" header = " + this.f15758d + ",");
            }
            if (this.f15759e != 0) {
                sb.append(" mQueueId = " + this.f15759e + ",");
            }
            if (this.f15760f != null) {
                sb.append(" callback = true,");
            }
            sb.append("isAddCache = " + this.f15763i);
            sb.append(",isUsingCache = " + this.f15764j);
            sb.append(",isRetry = " + this.f15765k);
            sb.append(",isUsingMsgPack = " + this.f15766l);
            sb.append(",isSslPinning = " + this.f15768n);
            sb.append(",mMode = " + this.f15771q);
            sb.append(",mType = " + this.f15772r);
            if (this.f15761g != null) {
                sb.append(" , mJsonBody = " + this.f15761g.toString());
            }
            if (this.f15762h != null) {
                sb.append(", etag = " + this.f15762h);
            }
            return sb.toString();
        } catch (OutOfMemoryError e) {
            return "OutOfMemoryError";
        }
    }
}
