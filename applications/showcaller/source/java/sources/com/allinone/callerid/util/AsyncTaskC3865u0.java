package com.allinone.callerid.util;

import android.os.AsyncTask;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p197j.C3029a;
import java.net.URLEncoder;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.util.u0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/u0.class */
public class AsyncTaskC3865u0 extends AsyncTask {

    /* renamed from: a */
    private String f12192a;

    /* renamed from: b */
    private String f12193b;

    /* renamed from: c */
    private String f12194c;

    /* renamed from: d */
    private String f12195d;

    /* renamed from: e */
    private String f12196e;

    /* renamed from: f */
    private String f12197f;

    /* renamed from: g */
    private String f12198g;

    /* renamed from: h */
    private String f12199h;

    /* renamed from: i */
    private String f12200i;

    /* renamed from: j */
    private String f12201j;

    public AsyncTaskC3865u0(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        this.f12192a = str;
        this.f12193b = str2;
        this.f12195d = str3;
        this.f12196e = str4;
        this.f12197f = str5;
        this.f12198g = str6;
        this.f12199h = str7;
        this.f12200i = str8;
        this.f12201j = str9;
    }

    @Override // android.os.AsyncTask
    protected Object doInBackground(Object[] objArr) {
        String str;
        try {
            this.f12194c = C3767h1.m24268T(EZCallApplication.m26146c());
            if (C3718c0.f11914a) {
                C3718c0.m24436a("subtype", "所有参数：tel_number:" + this.f12192a + "\ndevice:" + this.f12193b + "\nuid:" + this.f12194c + "\nversion:" + this.f12195d + "\ncc:" + this.f12196e + "\nstamp:" + this.f12197f + "\nt_p:" + this.f12199h + "\nsubtype_id:" + this.f12200i + "\ntype:" + this.f12201j + "\n");
            }
            HashMap hashMap = new HashMap();
            hashMap.put("tel_number", URLEncoder.encode(this.f12192a, "UTF-8"));
            hashMap.put("device", this.f12193b);
            hashMap.put("uid", this.f12194c);
            hashMap.put("version", this.f12195d);
            hashMap.put("cc", this.f12196e);
            hashMap.put("stamp", this.f12197f);
            hashMap.put("lang", this.f12198g);
            hashMap.put("t_p", this.f12199h);
            hashMap.put("subtype_id", this.f12200i);
            hashMap.put("type", this.f12201j);
            str = C3029a.m26206b("https://sa.show-caller.com/api/v1/rtnsub.php", hashMap);
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
