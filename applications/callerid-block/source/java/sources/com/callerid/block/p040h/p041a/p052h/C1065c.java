package com.callerid.block.p040h.p041a.p052h;

import android.content.Context;
import android.os.AsyncTask;
import com.callerid.block.util.C1184j;
import com.callerid.block.util.C1208q0;
import com.callerid.block.util.C1209r;
import com.callerid.block.util.C1215t;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import java.util.HashMap;
/* renamed from: com.callerid.block.h.a.h.c */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/h/c.class */
public class C1065c {

    /* renamed from: com.callerid.block.h.a.h.c$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/h/c$a.class */
    private static class AsyncTaskC1066a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC1064b f4515a;

        /* renamed from: b */
        private String f4516b;

        /* renamed from: c */
        private String f4517c;

        /* renamed from: d */
        private Context f4518d;

        AsyncTaskC1066a(Context context, String str, String str2, AbstractC1064b abstractC1064b) {
            this.f4515a = abstractC1064b;
            this.f4518d = context;
            this.f4516b = str2;
            this.f4517c = str;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String str;
            String str2 = null;
            try {
                String m9551z = C1216t0.m9551z();
                String m9607E = C1216t0.m9607E(this.f4518d);
                String m9605G = C1216t0.m9605G(this.f4518d);
                String country_code = C1184j.m9826d(this.f4518d).getCountry_code();
                String m9611A = C1216t0.m9611A(this.f4518d, this.f4516b);
                String str3 = this.f4516b;
                str = null;
                if (str3 != null) {
                    str = null;
                    if (!"".equals(str3)) {
                        str = null;
                        if (country_code != null) {
                            str = null;
                            if (!"".equals(country_code)) {
                                str = null;
                                if (m9611A != null) {
                                    str = null;
                                    if (!"".equals(m9611A)) {
                                        HashMap hashMap = new HashMap();
                                        hashMap.put("platform", "android");
                                        hashMap.put("device", m9551z);
                                        hashMap.put("uid", m9607E);
                                        hashMap.put("app_version", m9605G);
                                        hashMap.put("tel_number", C1209r.m9626c(this.f4516b));
                                        hashMap.put("default_cc", country_code);
                                        hashMap.put("cc", this.f4517c);
                                        hashMap.put("stamp", m9611A);
                                        if (C1227w.f5084a) {
                                            StringBuilder sb = new StringBuilder();
                                            sb.append("searchNumber：");
                                            sb.append(this.f4516b);
                                            C1227w.m9527a("buyu", sb.toString());
                                            StringBuilder sb2 = new StringBuilder();
                                            sb2.append("所有参数：");
                                            sb2.append(hashMap.toString());
                                            C1227w.m9527a("buyu", sb2.toString());
                                        }
                                        String m9615b = C1215t.m9615b("https://app.ayamote.com/api/v1/searep.php", hashMap, "utf-8");
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append("result=");
                                        sb3.append(m9615b);
                                        C1227w.m9527a("buyu", sb3.toString());
                                        String m9627b = C1209r.m9627b(m9615b);
                                        str = m9627b;
                                        if (C1227w.f5084a) {
                                            StringBuilder sb4 = new StringBuilder();
                                            sb4.append("response:");
                                            sb4.append(m9627b);
                                            str2 = m9627b;
                                            C1227w.m9527a("buyu", sb4.toString());
                                            str = m9627b;
                                        }
                                    }
                                }
                            }
                        }
                    }
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
            this.f4515a.m10271a(str);
        }
    }

    /* renamed from: a */
    public static void m10270a(Context context, String str, String str2, AbstractC1064b abstractC1064b) {
        try {
            new AsyncTaskC1066a(context, str, str2, abstractC1064b).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
