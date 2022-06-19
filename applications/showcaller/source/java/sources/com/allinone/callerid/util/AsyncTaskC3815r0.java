package com.allinone.callerid.util;

import android.os.AsyncTask;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p197j.C3029a;
import java.net.URLEncoder;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.util.r0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/r0.class */
public class AsyncTaskC3815r0 extends AsyncTask {

    /* renamed from: a */
    private String f12067a;

    /* renamed from: b */
    private String f12068b;

    /* renamed from: c */
    private String f12069c;

    /* renamed from: d */
    private String f12070d;

    /* renamed from: e */
    private String f12071e;

    /* renamed from: f */
    private String f12072f;

    /* renamed from: g */
    private String f12073g;

    /* renamed from: h */
    private String f12074h;

    public AsyncTaskC3815r0(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f12067a = str;
        this.f12068b = str2;
        this.f12070d = str3;
        this.f12071e = str4;
        this.f12072f = str5;
        this.f12073g = str6;
        this.f12074h = str7;
    }

    @Override // android.os.AsyncTask
    protected Object doInBackground(Object[] objArr) {
        String str;
        try {
            this.f12069c = C3767h1.m24268T(EZCallApplication.m26146c());
            if (C3718c0.f11914a) {
                C3718c0.m24436a("subtype", "所有参数：tel_number:" + this.f12067a + "\ndevice:" + this.f12068b + "\nuid:" + this.f12069c + "\nversion:" + this.f12070d + "\ncc:" + this.f12071e + "\nstamp:" + this.f12072f + "\nsubtype:" + this.f12074h + "\n");
            }
            HashMap hashMap = new HashMap();
            hashMap.put("tel_number", URLEncoder.encode(this.f12067a, "UTF-8"));
            hashMap.put("device", this.f12068b);
            hashMap.put("uid", this.f12069c);
            hashMap.put("version", this.f12070d);
            hashMap.put("cc", this.f12071e);
            hashMap.put("stamp", this.f12072f);
            hashMap.put("lang", this.f12073g);
            hashMap.put("subtype", this.f12074h);
            str = C3029a.m26206b("https://sa.show-caller.com/api/v1/atnkey.php", hashMap);
        } catch (Exception e) {
            e.printStackTrace();
            str = null;
        }
        if (C3718c0.f11914a) {
            C3718c0.m24436a("subtype", "result:" + str);
        }
        return str;
    }

    @Override // android.os.AsyncTask
    protected void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        try {
            int i = new JSONObject(obj.toString()).getInt("status");
            if (!C3718c0.f11914a) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("标记状态：");
            sb.append(i == 1 ? "ok" : "failed");
            C3718c0.m24436a("subtype", sb.toString());
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
