package com.allinone.callerid.p162i.p163a.p171f0;

import android.content.Context;
import android.os.AsyncTask;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.p157f.C2631f;
import com.allinone.callerid.p197j.C3029a;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3806p;
import java.util.HashMap;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.i.a.f0.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/f0/b.class */
public class C2805b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.f0.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/f0/b$a.class */
    public static class AsyncTaskC2806a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2804a f9553a;

        /* renamed from: b */
        private Context f9554b;

        /* renamed from: c */
        private String f9555c;

        /* renamed from: d */
        private int f9556d;

        /* renamed from: e */
        private int f9557e;

        /* renamed from: f */
        private boolean f9558f;

        AsyncTaskC2806a(Context context, String str, AbstractC2804a abstractC2804a) {
            this.f9553a = abstractC2804a;
            this.f9554b = context;
            this.f9555c = str;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String str;
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("tel_number", this.f9555c);
                hashMap.put("platform", "android");
                hashMap.put("uid", C3767h1.m24268T(this.f9554b));
                hashMap.put("app_version", C3767h1.m24265W(this.f9554b));
                hashMap.put("default_cc", C3806p.m24083d(this.f9554b).getCountry_code());
                hashMap.put("stamp", C3767h1.m24271Q(this.f9554b, this.f9555c));
                if (C3718c0.f11914a) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("params:");
                    sb.append(hashMap.toString());
                    C3718c0.m24436a("wiki", sb.toString());
                }
                String m26206b = C3029a.m26206b("https://app.show-caller.com/api/v1/seawik.php", hashMap);
                if (C3718c0.f11914a) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("response:");
                    sb2.append(m26206b);
                    C3718c0.m24436a("wiki", sb2.toString());
                }
                str = m26206b;
                if (m26206b != null) {
                    str = m26206b;
                    if (!"".equals(m26206b)) {
                        JSONObject jSONObject = new JSONObject(m26206b);
                        str = m26206b;
                        if (jSONObject.getInt("status") == 1) {
                            this.f9558f = true;
                            this.f9556d = jSONObject.getInt("block_count");
                            this.f9557e = jSONObject.getInt("declined_count");
                            EZSearchContacts m26999d = C2631f.m27001b().m26999d(this.f9555c);
                            if (m26999d == null) {
                                EZSearchContacts eZSearchContacts = new EZSearchContacts();
                                eZSearchContacts.setBlock_count(this.f9556d);
                                eZSearchContacts.setDeclined_count(this.f9557e);
                                eZSearchContacts.setOld_tel_number(this.f9555c);
                                eZSearchContacts.setWiki_search_time(System.currentTimeMillis());
                                C2631f.m27001b().m27000c(eZSearchContacts);
                                str = m26206b;
                            } else {
                                m26999d.setBlock_count(this.f9556d);
                                m26999d.setDeclined_count(this.f9557e);
                                m26999d.setWiki_search_time(System.currentTimeMillis());
                                C2631f.m27001b().m26998e(m26999d, "block_count", "declined_count", "wiki_search_time");
                                str = m26206b;
                            }
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                str = null;
            }
            return str;
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9553a.mo26567a(this.f9558f, this.f9556d, this.f9557e);
        }
    }

    /* renamed from: a */
    public static void m26566a(Context context, String str, AbstractC2804a abstractC2804a) {
        try {
            new AsyncTaskC2806a(context, str, abstractC2804a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
