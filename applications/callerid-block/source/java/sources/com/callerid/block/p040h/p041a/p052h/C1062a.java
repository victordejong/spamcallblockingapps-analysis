package com.callerid.block.p040h.p041a.p052h;

import android.os.AsyncTask;
import com.callerid.block.bean.EZBlackList;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.p056k.p057a.AbstractC1091f;
import com.callerid.block.search.EZSearchResult;
import com.callerid.block.util.C1186k;
import com.callerid.block.util.C1190l0;
import com.callerid.block.util.C1209r;
import com.callerid.block.util.C1215t;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import java.util.HashMap;
import org.json.JSONObject;
/* renamed from: com.callerid.block.h.a.h.a */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/h/a.class */
public class C1062a {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.callerid.block.h.a.h.a$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/h/a$a.class */
    public static class AsyncTaskC1063a extends AsyncTask<String, Void, EZSearchResult> {

        /* renamed from: a */
        private AbstractC1091f f4510a;

        /* renamed from: b */
        private String f4511b;

        /* renamed from: c */
        private EZSearchResult f4512c;

        /* renamed from: d */
        private String f4513d;

        /* renamed from: e */
        private String f4514e;

        AsyncTaskC1063a(String str, String str2, String str3, AbstractC1091f abstractC1091f) {
            this.f4510a = abstractC1091f;
            this.f4511b = str3;
            this.f4513d = str;
            this.f4514e = str2;
        }

        /* renamed from: a */
        public EZSearchResult doInBackground(String... strArr) {
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("tel_number", C1209r.m9626c(this.f4511b));
                hashMap.put("device", "android");
                hashMap.put("uid", C1216t0.m9607E(EZCallApplication.m10163c()));
                hashMap.put("version", C1216t0.m9605G(EZCallApplication.m10163c()));
                hashMap.put("default_cc", this.f4513d);
                hashMap.put("cc", this.f4514e);
                hashMap.put("stamp", C1216t0.m9611A(EZCallApplication.m10163c(), this.f4511b));
                hashMap.put("cid", "");
                String m9612e = C1215t.m9612e("https://app.ayamote.com/api/v1/sea.php", hashMap, "utf-8");
                if (C1227w.f5084a) {
                    C1227w.m9527a("searchNumber", "result:" + m9612e);
                }
                String m9627b = C1209r.m9627b(m9612e);
                if (C1227w.f5084a) {
                    C1227w.m9527a("searchNumber", "enlode_result:" + m9627b);
                }
                if (m9627b != null && !"".equals(m9627b)) {
                    EZSearchResult eZSearchResult = new EZSearchResult();
                    this.f4512c = eZSearchResult;
                    eZSearchResult.setNumber(this.f4511b);
                    JSONObject jSONObject = new JSONObject(m9627b);
                    if (jSONObject.getInt("status") == 1) {
                        if (C1227w.f5084a) {
                            C1227w.m9527a("searchNumber", "response：" + m9627b);
                        }
                        String string = jSONObject.getString("type_label");
                        this.f4512c.setType_label(C1216t0.m9559r(EZCallApplication.m10163c(), string));
                        String string2 = jSONObject.getString("type");
                        if (string2 != null && ("Mobile".equals(string2) || "Fixed line".equals(string2))) {
                            this.f4512c.setType(C1216t0.m9554w(EZCallApplication.m10163c(), string2));
                        }
                        String string3 = jSONObject.getString(EZBlackList.NAME);
                        if (string3 == null || "".equals(string3)) {
                            this.f4512c.setName("");
                        } else {
                            this.f4512c.setName(string3);
                        }
                        if (!"".equals(string3) || !"".equals(string)) {
                            C1186k.m9816c().m9812g("whatsapp_incoming_search_ok");
                            C1190l0.m9795b(jSONObject, this.f4511b);
                        }
                        String string4 = jSONObject.getString("old_tel_number");
                        if (string4 != null && !"".equals(string4)) {
                            this.f4512c.setOld_tel_number(string4);
                        }
                        String string5 = jSONObject.getString("operator");
                        if (string5 != null && !"".equals(string5)) {
                            this.f4512c.setOperator(string5);
                        }
                        String string6 = jSONObject.getString("format_tel_number");
                        if (string6 != null && !"".equals(string6)) {
                            this.f4512c.setFormat_tel_number(string6);
                        }
                        this.f4512c.setTel_number(jSONObject.getString("tel_number"));
                        this.f4512c.setT_p(jSONObject.getString("t_p"));
                        String string7 = jSONObject.getString("avatar");
                        if (string7 != null && !"".equals(string7)) {
                            this.f4512c.setIcon(string7);
                        }
                        String string8 = jSONObject.getString("report_count");
                        int parseInt = "".equals(string8) ? 0 : Integer.parseInt(string8);
                        if (string == null || (parseInt <= 0 && "".equals(string))) {
                            this.f4512c.setIsSpam(false);
                        } else {
                            this.f4512c.setIsSpam(true);
                        }
                        String string9 = jSONObject.getString("belong_area");
                        if (string9 == null || "".equals(string9)) {
                            this.f4512c.setLocation("");
                        } else {
                            this.f4512c.setLocation(string9);
                        }
                        String string10 = jSONObject.getString("address");
                        if (string10 != null && !"".equals(string10)) {
                            this.f4512c.setLocation(string10);
                        }
                        this.f4512c.setComplaint_times(jSONObject.getString("report_count"));
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return this.f4512c;
        }

        /* renamed from: b */
        public void onPostExecute(EZSearchResult eZSearchResult) {
            super.onPostExecute(eZSearchResult);
            this.f4510a.m10166a(eZSearchResult);
        }
    }

    /* renamed from: a */
    public static void m10274a(String str, String str2, String str3, AbstractC1091f abstractC1091f) {
        new AsyncTaskC1063a(str, str2, str3, abstractC1091f).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
    }
}
