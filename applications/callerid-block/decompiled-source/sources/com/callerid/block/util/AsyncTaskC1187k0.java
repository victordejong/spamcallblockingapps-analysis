package com.callerid.block.util;

import android.content.Context;
import android.os.AsyncTask;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.callerid.block.util.k0 */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/k0.class */
public class AsyncTaskC1187k0 extends AsyncTask {

    /* renamed from: a */
    private String f5010a;

    /* renamed from: b */
    private String f5011b;

    /* renamed from: c */
    private String f5012c;

    /* renamed from: d */
    private String f5013d;

    /* renamed from: e */
    private String f5014e;

    /* renamed from: f */
    private String f5015f;

    /* renamed from: g */
    private String f5016g;

    public AsyncTaskC1187k0(Context context, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f5014e = str4;
        this.f5012c = str6;
        this.f5011b = str;
        this.f5013d = str2;
        this.f5010a = str3;
        this.f5015f = str5;
        this.f5016g = str7;
    }

    @Override // android.os.AsyncTask
    protected Object doInBackground(Object[] objArr) {
        if (C1227w.f5084a) {
            C1227w.m9527a("reportName", "所有参数：platform:" + this.f5011b + "\ncountry:" + this.f5012c + "\napp_version:" + this.f5013d + "\ndefault_cc:" + this.f5010a + "\nuser_tel_number:" + this.f5014e + "\nstamp:" + this.f5015f + "\ncontent:" + this.f5016g + "\n");
        }
        String str = null;
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("platform", this.f5011b);
            hashMap.put("app_version", this.f5013d);
            hashMap.put("default_cc", this.f5010a);
            hashMap.put("user_tel_number", this.f5014e);
            hashMap.put("stamp", this.f5015f);
            hashMap.put("country", this.f5012c);
            hashMap.put("content", this.f5016g);
            String b = C1215t.m9615b("https://ct.ayamote.com/c_l/api/v1/clrnam.php", hashMap, "utf-8");
            if (C1227w.f5084a) {
                StringBuilder sb = new StringBuilder();
                sb.append("result:");
                sb.append(b);
                C1227w.m9527a("reportName", sb.toString());
            }
            String b2 = C1209r.m9627b(b);
            str = b2;
            if (C1227w.f5084a) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("response:");
                sb2.append(b2);
                str = b2;
                C1227w.m9527a("reportName", sb2.toString());
                str = b2;
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
                        C1227w.m9527a("reportName", sb.toString());
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }
}
