package com.allinone.callerid.util;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.p157f.C2629e;
import com.allinone.callerid.p157f.C2631f;
import com.allinone.callerid.p197j.C3029a;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
import p020b.p067p.p068a.C1764a;
/* renamed from: com.allinone.callerid.util.t0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/t0.class */
public class AsyncTaskC3853t0 extends AsyncTask {

    /* renamed from: a */
    private String f12158a;

    /* renamed from: b */
    private String f12159b;

    /* renamed from: c */
    private String f12160c;

    /* renamed from: d */
    private String f12161d;

    /* renamed from: e */
    private String f12162e;

    /* renamed from: f */
    private String f12163f;

    /* renamed from: g */
    private String f12164g;

    /* renamed from: h */
    private String f12165h;

    /* renamed from: i */
    private Context f12166i;

    /* renamed from: com.allinone.callerid.util.t0$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/t0$a.class */
    public static class AsyncTaskC3854a extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        String f12167a;

        /* renamed from: b */
        String f12168b;

        AsyncTaskC3854a(String str, String str2) {
            this.f12167a = str;
            this.f12168b = str2;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            try {
                C2629e.m27010d().m27007g(this.f12167a);
                EZSearchContacts m26999d = C2631f.m27001b().m26999d(this.f12167a);
                if (m26999d == null) {
                    EZSearchContacts eZSearchContacts = new EZSearchContacts();
                    eZSearchContacts.setOld_tel_number(this.f12167a);
                    eZSearchContacts.setType_label(this.f12168b);
                    eZSearchContacts.setReport_count("1");
                    C2631f.m27001b().m27000c(eZSearchContacts);
                    return null;
                }
                m26999d.setType_label(this.f12168b);
                if (m26999d.getReport_count() == null || "".equals(m26999d.getReport_count())) {
                    m26999d.setReport_count("1");
                } else {
                    m26999d.setReport_count(String.valueOf(Integer.parseInt(m26999d.getReport_count()) + 1));
                }
                C2631f.m27001b().m26998e(m26999d, "type_label", "report_count");
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            Intent intent = new Intent();
            intent.setAction("com.allinone.callerid.RELOAD_DATA");
            C1764a.m28939b(EZCallApplication.m26146c()).m28937d(intent);
        }
    }

    public AsyncTaskC3853t0(Context context, String str, String str2, String str3, String str4, String str5, String str6) {
        this.f12158a = str;
        this.f12159b = str2;
        this.f12160c = str3;
        this.f12162e = str4;
        this.f12163f = str5;
        this.f12165h = str6;
        this.f12166i = context;
    }

    /* renamed from: a */
    private void m23959a() {
        new AsyncTaskC3854a(this.f12158a, this.f12165h).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    @Override // android.os.AsyncTask
    protected Object doInBackground(Object[] objArr) {
        String str;
        String m24268T = C3767h1.m24268T(this.f12166i);
        this.f12161d = m24268T;
        this.f12164g = C3767h1.m24271Q(this.f12166i, m24268T);
        String m24274N = C3767h1.m24274N();
        String m24270R = C3767h1.m24270R();
        String m24298A = C3767h1.m24298A();
        String m24082e = C3806p.m24082e(this.f12166i);
        if (C3718c0.f11914a) {
            C3718c0.m24436a("reportNumber", "所有参数：number:" + this.f12158a + "\nreport_type:" + this.f12159b + "\ndevice:" + this.f12160c + "\nuid:" + this.f12161d + "\nversion:" + this.f12162e + "\ndefault_cc:" + this.f12163f + "\nstamp:" + this.f12164g + "\n");
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("cc", this.f12163f);
            jSONObject.put("tel_number", this.f12158a);
            jSONObject.put("report_type", this.f12159b);
            jSONObject.put("user", m24082e);
            jSONObject.put("version", m24270R);
            jSONObject.put("device", m24274N);
            jSONObject.put("uid", this.f12161d);
            jSONObject.put("ip", m24298A);
            str = C3866v.m23912c(jSONObject.toString());
        } catch (JSONException e) {
            e.printStackTrace();
            str = "";
        }
        String str2 = "";
        if (!"".equals(str)) {
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("device", this.f12160c);
                hashMap.put("uid", this.f12161d);
                hashMap.put("version", this.f12162e);
                hashMap.put("stamp", this.f12164g);
                hashMap.put("content", str);
                str2 = C3029a.m26206b("https://ct.show-caller.com/c_l/api/v1/clrnum.php", hashMap);
            } catch (Exception e2) {
                e2.printStackTrace();
                str2 = "";
            }
        }
        return str2;
    }

    @Override // android.os.AsyncTask
    protected void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        if (obj != null) {
            try {
                if ("".equals(obj)) {
                    return;
                }
                int i = new JSONObject(obj.toString()).getInt("status");
                if (C3718c0.f11914a) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("标记状态：");
                    sb.append(i == 1 ? "ok" : "failed");
                    C3718c0.m24436a("reportNumber", sb.toString());
                }
                m23959a();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
