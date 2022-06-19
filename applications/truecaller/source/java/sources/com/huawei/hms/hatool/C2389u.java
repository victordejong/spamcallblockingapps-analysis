package com.huawei.hms.hatool;

import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.huawei.hms.hatool.u */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/u.class */
public class C2389u {

    /* renamed from: a */
    public String f7602a;

    /* renamed from: b */
    public String f7603b;

    /* renamed from: c */
    public String f7604c;

    /* renamed from: d */
    public List<q> f7605d;

    /* renamed from: e */
    public String f7606e;

    public C2389u(String str, String str2, String str3, List<q> list, String str4) {
        this.f7602a = str;
        this.f7603b = str2;
        this.f7604c = str3;
        this.f7605d = list;
        this.f7606e = str4;
    }

    /* renamed from: a */
    public final String m37520a(String str, String str2) {
        String str3;
        String str4;
        String m37764f = AbstractC2351c.m37764f(str, str2);
        if (TextUtils.isEmpty(m37764f)) {
            C2398y.m37478a("hmsSdk", "No report address,TAG : %s,TYPE: %s ", str, str2);
            return "";
        }
        if ("oper".equals(str2)) {
            str4 = "{url}/common/hmshioperqrt";
        } else if (!"maint".equals(str2)) {
            str3 = "";
            if ("diffprivacy".equals(str2)) {
                str4 = "{url}/common/common2";
            }
            return str3;
        } else {
            str4 = "{url}/common/hmshimaintqrt";
        }
        str3 = str4.replace("{url}", m37764f);
        return str3;
    }

    /* renamed from: a */
    public void m37522a() {
        C2378o0 c2378o0;
        AbstractRunnableC2376n0 abstractRunnableC2376n0;
        String str;
        String m37520a = m37520a(this.f7602a, this.f7603b);
        if (!TextUtils.isEmpty(m37520a) || "preins".equals(this.f7603b)) {
            if (!"_hms_config_tag".equals(this.f7602a) && !"_openness_config_tag".equals(this.f7602a)) {
                m37519b();
            }
            r m37517d = m37517d();
            if (m37517d != null) {
                byte[] m37521a = m37521a(m37517d);
                if (m37521a.length == 0) {
                    str = "request body is empty";
                } else {
                    abstractRunnableC2376n0 = new i0(m37521a, m37520a, this.f7602a, this.f7603b, this.f7606e, this.f7605d);
                    c2378o0 = C2378o0.m37554b();
                }
            } else {
                abstractRunnableC2376n0 = new l0(this.f7605d, this.f7602a, this.f7606e, this.f7603b);
                c2378o0 = C2378o0.m37553c();
            }
            c2378o0.m37555a(abstractRunnableC2376n0);
            return;
        }
        str = "collectUrl is empty";
        C2398y.m37470e("hmsSdk", str);
    }

    /* renamed from: a */
    public final byte[] m37521a(r rVar) {
        String str;
        try {
            JSONObject a = rVar.a();
            if (a != null) {
                return C2388t0.m37523a(a.toString().getBytes(StringConstant.UTF8));
            }
            C2398y.m37470e("hmsSdk", "uploadEvents is null");
            return new byte[0];
        } catch (UnsupportedEncodingException e) {
            str = "sendData(): getBytes - Unsupported coding format!!";
            C2398y.m37470e("hmsSdk", str);
            return new byte[0];
        } catch (JSONException e2) {
            str = "uploadEvents to json error";
            C2398y.m37470e("hmsSdk", str);
            return new byte[0];
        }
    }

    /* renamed from: b */
    public final void m37519b() {
        if (C2383q0.m37543a(AbstractC2349b.m37779i(), "backup_event", 5242880)) {
            C2398y.m37471d("hmsSdk", "backup file reach max limited size, discard new event ");
            return;
        }
        JSONArray m37518c = m37518c();
        String m37512a = AbstractC2390u0.m37512a(this.f7602a, this.f7603b, this.f7606e);
        C2398y.m37473c("hmsSdk", "Update data cached into backup,spKey: " + m37512a);
        C2362g0.m37692b(AbstractC2349b.m37779i(), "backup_event", m37512a, m37518c.toString());
    }

    /* renamed from: c */
    public final JSONArray m37518c() {
        JSONArray jSONArray = new JSONArray();
        for (q qVar : this.f7605d) {
            try {
                jSONArray.put(qVar.d());
            } catch (JSONException e) {
                C2398y.m37473c("hmsSdk", "handleEvents: json error,Abandon this data");
            }
        }
        return jSONArray;
    }

    /* renamed from: d */
    public final r m37517d() {
        return d1.a(this.f7605d, this.f7602a, this.f7603b, this.f7606e, this.f7604c);
    }
}
