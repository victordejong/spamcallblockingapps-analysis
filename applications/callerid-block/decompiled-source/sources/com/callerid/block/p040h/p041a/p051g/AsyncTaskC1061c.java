package com.callerid.block.p040h.p041a.p051g;

import android.content.Context;
import android.os.AsyncTask;
import com.callerid.block.bean.ParserIpBean;
import com.callerid.block.p055j.C1075b;
import com.callerid.block.util.C1184j;
import com.callerid.block.util.C1209r;
import com.callerid.block.util.C1215t;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import java.util.HashMap;
import org.json.JSONObject;
/* renamed from: com.callerid.block.h.a.g.c */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/g/c.class */
public class AsyncTaskC1061c extends AsyncTask<Object, Void, Object> {

    /* renamed from: a */
    private String f4507a;

    /* renamed from: b */
    private String f4508b;

    /* renamed from: c */
    private Context f4509c;

    public AsyncTaskC1061c(Context context, String str, String str2) {
        this.f4507a = str;
        this.f4508b = str2;
        this.f4509c = context;
    }

    @Override // android.os.AsyncTask
    protected Object doInBackground(Object[] objArr) {
        String str = "";
        try {
            String E = C1216t0.m9607E(this.f4509c);
            String G = C1216t0.m9605G(this.f4509c);
            String A = C1216t0.m9611A(this.f4509c, E);
            String country_code = C1184j.m9826d(this.f4509c).getCountry_code();
            String z = C1216t0.m9551z();
            String C = C1216t0.m9609C();
            String u = C1216t0.m9556u(this.f4509c);
            ParserIpBean b = C1075b.m10216a().m10215b();
            String true_ip = (b == null || b.getTrue_ip() == null || "".equals(b.getTrue_ip())) ? "" : b.getTrue_ip();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("cc", country_code);
            jSONObject.put("tel_number", this.f4507a);
            jSONObject.put("report_type", this.f4508b);
            jSONObject.put("user_tel_number", u);
            jSONObject.put("os_version", C);
            jSONObject.put("device", z);
            jSONObject.put("ip", true_ip);
            if (C1227w.f5084a) {
                StringBuilder sb = new StringBuilder();
                sb.append("content：");
                sb.append(jSONObject.toString());
                C1227w.m9527a("reportNumber", sb.toString());
            }
            String c = C1209r.m9626c(jSONObject.toString());
            str = "";
            if (!"".equals(c)) {
                HashMap hashMap = new HashMap();
                hashMap.put("platform", "android");
                hashMap.put("uid", E);
                hashMap.put("app_version", G);
                hashMap.put("stamp", A);
                hashMap.put("content", c);
                if (C1227w.f5084a) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("PPP：");
                    sb2.append(hashMap.toString());
                    C1227w.m9527a("reportNumber", sb2.toString());
                }
                String b2 = C1215t.m9615b("https://ct.ayamote.com/c_l/api/v1/clrnum.php", hashMap, "utf-8");
                if (C1227w.f5084a) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("result：");
                    sb3.append(b2);
                    C1227w.m9527a("reportNumber", sb3.toString());
                }
                str = "";
                if (b2 != null) {
                    str = "";
                    if (!"".equals(b2)) {
                        String b3 = C1209r.m9627b(b2);
                        str = b3;
                        if (C1227w.f5084a) {
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("enlode_result：");
                            sb4.append(b3);
                            str = b3;
                            C1227w.m9527a("reportNumber", sb4.toString());
                            str = b3;
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    @Override // android.os.AsyncTask
    protected void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        if (obj != null) {
            try {
                if (!"".equals(obj)) {
                    int i = new JSONObject(obj.toString()).getInt("status");
                    if (C1227w.f5084a) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("标记状态：");
                        sb.append(i == 1 ? "ok" : "failed");
                        C1227w.m9527a("reportNumber", sb.toString());
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
