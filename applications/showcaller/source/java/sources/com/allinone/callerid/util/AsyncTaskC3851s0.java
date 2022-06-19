package com.allinone.callerid.util;

import android.os.AsyncTask;
import com.allinone.callerid.p197j.C3029a;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.util.s0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/s0.class */
public class AsyncTaskC3851s0 extends AsyncTask<Void, Void, String> {

    /* renamed from: a */
    private String f12151a;

    /* renamed from: b */
    private String f12152b;

    /* renamed from: c */
    private String f12153c;

    /* renamed from: d */
    private String f12154d;

    /* renamed from: e */
    private String f12155e;

    /* renamed from: f */
    private String f12156f;

    /* renamed from: g */
    private String f12157g;

    public AsyncTaskC3851s0(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f12151a = str4;
        this.f12153c = str6;
        this.f12152b = str;
        this.f12154d = str2;
        this.f12155e = str3;
        this.f12156f = str5;
        this.f12157g = str7;
    }

    /* renamed from: a */
    public String doInBackground(Void... voidArr) {
        String str;
        if (C3718c0.f11914a) {
            C3718c0.m24436a("reportName", "所有参数：tel_number:" + this.f12151a + "\ndevice:" + this.f12152b + "\ncountry:" + this.f12153c + "\nversion:" + this.f12154d + "\ncc:" + this.f12155e + "\nstamp:" + this.f12156f + "\ncontent:" + this.f12157g + "\n");
        }
        String str2 = null;
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("device", this.f12152b);
            hashMap.put("version", this.f12154d);
            hashMap.put("cc", this.f12155e);
            hashMap.put("tel_number", this.f12151a);
            hashMap.put("stamp", this.f12156f);
            hashMap.put("country", this.f12153c);
            hashMap.put("content", this.f12157g);
            String m26206b = C3029a.m26206b("https://ct.show-caller.com/c_l/api/v1/clrnam.php", hashMap);
            str = m26206b;
            if (C3718c0.f11914a) {
                StringBuilder sb = new StringBuilder();
                sb.append("result：");
                sb.append(m26206b);
                str2 = m26206b;
                C3718c0.m24436a("reportName", sb.toString());
                str = m26206b;
            }
        } catch (Exception e) {
            e.printStackTrace();
            str = str2;
        }
        return str;
    }

    /* renamed from: b */
    public void onPostExecute(String str) {
        super.onPostExecute(str);
        if (str != null) {
            try {
                if ("".equals(str)) {
                    return;
                }
                int i = new JSONObject(str).getInt("status");
                if (!C3718c0.f11914a) {
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("标记状态：");
                sb.append(i == 1 ? "ok" : "failed");
                C3718c0.m24436a("reportName", sb.toString());
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }
}
