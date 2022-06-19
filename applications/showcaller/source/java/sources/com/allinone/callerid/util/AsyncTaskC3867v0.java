package com.allinone.callerid.util;

import android.os.AsyncTask;
import com.allinone.callerid.p197j.C3029a;
import java.util.HashMap;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.util.v0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/v0.class */
public class AsyncTaskC3867v0 extends AsyncTask<Void, Void, String> {

    /* renamed from: a */
    private String f12202a;

    /* renamed from: b */
    private String f12203b;

    /* renamed from: c */
    private String f12204c;

    /* renamed from: d */
    private String f12205d;

    /* renamed from: e */
    private String f12206e;

    /* renamed from: f */
    private String f12207f;

    /* renamed from: g */
    private String f12208g;

    public AsyncTaskC3867v0(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f12202a = str4;
        this.f12204c = str6;
        this.f12203b = str;
        this.f12205d = str2;
        this.f12206e = str3;
        this.f12207f = str5;
        this.f12208g = str7;
    }

    /* renamed from: a */
    public String doInBackground(Void... voidArr) {
        if (C3718c0.f11914a) {
            C3718c0.m24436a("reportWrongInfo", "所有参数：tel_number:" + this.f12202a + "\ndevice:" + this.f12203b + "\ncountry:" + this.f12204c + "\nversion:" + this.f12205d + "\ncc:" + this.f12206e + "\nstamp:" + this.f12207f + "\ncontent:" + this.f12208g + "\n");
        }
        String str = null;
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("device", this.f12203b);
            hashMap.put("version", this.f12205d);
            hashMap.put("cc", this.f12206e);
            hashMap.put("tel_number", this.f12202a);
            hashMap.put("stamp", this.f12207f);
            hashMap.put("country", this.f12204c);
            hashMap.put("content", this.f12208g);
            str = C3029a.m26206b("https://ct.show-caller.com/c_l/api/v1/clrwro.php", hashMap);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (C3718c0.f11914a) {
            C3718c0.m24436a("reportWrongInfo", "result:" + str);
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
                C3718c0.m24436a("reportWrongInfo", sb.toString());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
