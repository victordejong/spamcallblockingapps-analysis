package com.callerid.block.p055j;

import android.content.Context;
import android.os.AsyncTask;
import com.callerid.block.bean.ParserIpBean;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.p056k.p057a.AbstractC1080b;
import com.callerid.block.util.C1170d;
import com.callerid.block.util.C1181h0;
import com.callerid.block.util.C1184j;
import com.callerid.block.util.C1186k;
import com.callerid.block.util.C1199n0;
import com.callerid.block.util.C1209r;
import com.callerid.block.util.C1215t;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import com.callerid.block.util.C1236z;
import com.hzy.lib7z.Z7Extractor;
import java.util.HashMap;
import org.json.JSONObject;
import p092e.p096e.p097a.AbstractC3005a;
import p092e.p096e.p097a.AbstractC3067i;
import p092e.p096e.p097a.C3085q;
/* renamed from: com.callerid.block.j.d */
/* loaded from: classes-dex2jar.jar:com/callerid/block/j/d.class */
public class AsyncTaskC1078d extends AsyncTask<String, Void, String> {

    /* renamed from: d */
    private AbstractC1080b f4551d;

    /* renamed from: e */
    private boolean f4552e;

    /* renamed from: f */
    private Context f4553f;

    /* renamed from: a */
    private String f4548a = EZCallApplication.m10163c().getExternalFilesDir("") + "/offlinedatavest.7z";

    /* renamed from: b */
    private String f4549b = "data/data/" + C1216t0.m9552y(EZCallApplication.m10163c()) + "/databases";

    /* renamed from: c */
    private String f4550c = "data/data/" + C1216t0.m9552y(EZCallApplication.m10163c()) + "/databases/offlinedatavest.sqlite";

    /* renamed from: g */
    private int f4554g = 0;

    /* renamed from: h */
    private String f4555h = "";

    /* renamed from: i */
    private AbstractC3067i f4556i = new a(this);

    public AsyncTaskC1078d(Context context, boolean z, AbstractC1080b abstractC1080b) {
        this.f4551d = abstractC1080b;
        this.f4552e = z;
        this.f4553f = context;
    }

    /* renamed from: l */
    public void m10199l(String str, String str2) {
        C1186k.m9816c().m9812g("un_7zip");
        Z7Extractor.extractFile(str, str2, new b(this));
    }

    /* renamed from: i */
    public String doInBackground(String... strArr) {
        String str;
        String str2;
        try {
            String lowerCase = C1184j.m9826d(this.f4553f).getIso_code().split("/")[0].toLowerCase();
            String country_code = C1184j.m9826d(this.f4553f).getCountry_code();
            String m9607E = C1216t0.m9607E(this.f4553f);
            boolean z = "0";
            ParserIpBean m10215b = C1075b.m10216a().m10215b();
            if (m10215b != null) {
                String str3 = lowerCase;
                if (m10215b.getCountry() != null) {
                    str3 = lowerCase;
                    if (!"".equals(m10215b.getCountry())) {
                        str3 = m10215b.getCountry();
                    }
                }
                str = (m10215b.getState() == null || "".equals(m10215b.getState())) ? "" : m10215b.getState();
                if (m10215b.getCity() == null || "".equals(m10215b.getCity())) {
                    lowerCase = str3;
                    str2 = "";
                } else {
                    lowerCase = str3;
                    str2 = m10215b.getCity();
                }
            } else {
                str2 = "";
                str = str2;
            }
            if (C1199n0.m9656w(this.f4553f)) {
                z = "1";
            }
            C1236z.m9481j(this.f4553f);
            C1236z.m9482i(this.f4553f);
            HashMap hashMap = new HashMap();
            hashMap.put("last_update_time", String.valueOf(C1199n0.m9671r(this.f4553f) / 1000));
            hashMap.put("cc", country_code);
            hashMap.put("platform", "android");
            hashMap.put("package", C1216t0.m9552y(this.f4553f));
            hashMap.put("app_version", C1216t0.m9605G(this.f4553f));
            hashMap.put("uid", m9607E);
            hashMap.put("stamp", C1216t0.m9611A(this.f4553f, m9607E));
            hashMap.put("country", lowerCase);
            hashMap.put("state", str);
            hashMap.put("city", str2);
            hashMap.put("is_need_full", z);
            if (C1227w.f5084a) {
                C1227w.m9527a("checkupdate", "params: " + hashMap.toString());
            }
            String m9615b = C1215t.m9615b("https://app.ayamote.com/proc/v1/offpaccheupd.php", hashMap, "utf-8");
            C1227w.m9527a("checkupdate", "result=" + m9615b);
            String m9627b = C1209r.m9627b(m9615b);
            C1227w.m9527a("checkupdate", "enlode_result=" + m9627b);
            if (m9627b == null || "".equals(m9627b.toString())) {
                return "";
            }
            C1199n0.m9727X0(this.f4553f, System.currentTimeMillis() + 43200000);
            JSONObject jSONObject = new JSONObject(m9627b.toString());
            if (jSONObject.getInt("status") != 1) {
                return "";
            }
            String string = jSONObject.getString("data_url");
            String string2 = jSONObject.getString("filesize");
            if (string2 != null && !"".equals(string2)) {
                this.f4554g = Integer.valueOf(string2).intValue();
            }
            if (jSONObject.getInt("is_need_full") == 1) {
                C1199n0.m9763G0(this.f4553f, true);
            } else {
                C1199n0.m9763G0(this.f4553f, false);
            }
            C1227w.m9527a("checkupdate", "dataurl=" + string);
            return string != null ? !"".equals(string) ? string : "" : "";
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: j */
    public void onPostExecute(String str) {
        String str2;
        C1186k c1186k;
        super.onPostExecute(str);
        if (C1227w.f5084a) {
            C1227w.m9527a("checkupdate", "onPostExecute: " + str);
        }
        if (str == null || str.equals("")) {
            AbstractC1080b abstractC1080b = this.f4551d;
            if (abstractC1080b == null) {
                return;
            }
            abstractC1080b.m10196a();
        } else if (!this.f4552e || C1170d.m9898d(this.f4553f)) {
            C1236z.m9489b(this.f4553f);
            C1236z.m9490a(this.f4553f);
            m10200k(str);
            this.f4551d.m10195b();
        } else if (!C1170d.m9899c(this.f4553f)) {
        } else {
            if (C1199n0.m9671r(this.f4553f) != 0) {
                int i = this.f4554g;
                if (i == 0) {
                    return;
                }
                if (i >= 1048576) {
                    C1199n0.m9747N0(EZCallApplication.m10163c(), true);
                    if (C1199n0.m9656w(this.f4553f)) {
                        C1181h0.m9844a(this.f4553f);
                        c1186k = C1186k.m9816c();
                        str2 = "noti_offlinedb_download_show";
                    } else {
                        C1181h0.m9843b(this.f4553f);
                        c1186k = C1186k.m9816c();
                        str2 = "noti_offlinedb_update_show";
                    }
                    c1186k.m9812g(str2);
                    AbstractC1080b abstractC1080b2 = this.f4551d;
                    if (abstractC1080b2 != null) {
                        abstractC1080b2.m10196a();
                    }
                    C1186k.m9816c().m9812g("offline_db_big");
                    return;
                }
            }
            C1236z.m9489b(this.f4553f);
            C1236z.m9490a(this.f4553f);
            m10200k(str);
            this.f4551d.m10195b();
            C1186k.m9816c().m9812g("offline_db_small");
        }
    }

    /* renamed from: k */
    public void m10200k(String str) {
        if (C1227w.f5084a) {
            C1227w.m9527a("checkupdate", "开始下载离线库: " + str);
        }
        try {
            AbstractC3005a m301c = C3085q.m300d().m301c(str);
            m301c.mo551l(this.f4548a);
            m301c.mo567Q(this.f4556i);
            m301c.mo578E(8);
            m301c.mo568O(1000);
            m301c.mo574I(1000);
            m301c.start();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
