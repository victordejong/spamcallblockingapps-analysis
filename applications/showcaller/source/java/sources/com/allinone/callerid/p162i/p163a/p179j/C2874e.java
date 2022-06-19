package com.allinone.callerid.p162i.p163a.p179j;

import android.os.AsyncTask;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p197j.C3029a;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3735e1;
import com.allinone.callerid.util.C3767h1;
import java.util.HashMap;
/* renamed from: com.allinone.callerid.i.a.j.e */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/j/e.class */
public class C2874e {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.j.e$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/j/e$a.class */
    public static class AsyncTaskC2875a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2873d f9633a;

        /* renamed from: b */
        private String f9634b;

        /* renamed from: c */
        private String f9635c;

        /* renamed from: d */
        private int f9636d;

        AsyncTaskC2875a(String str, String str2, int i, AbstractC2873d abstractC2873d) {
            this.f9633a = abstractC2873d;
            this.f9634b = str;
            this.f9635c = str2;
            this.f9636d = i;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String str;
            String str2 = null;
            try {
                EZCallApplication m26146c = EZCallApplication.m26146c();
                String m24268T = C3767h1.m24268T(m26146c);
                String m24265W = C3767h1.m24265W(m26146c);
                String m24271Q = C3767h1.m24271Q(m26146c, this.f9634b);
                String valueOf = String.valueOf(this.f9636d);
                str = null;
                if (m24268T != null) {
                    str = null;
                    if (!"".equals(m24268T)) {
                        str = null;
                        if (m24265W != null) {
                            str = null;
                            if (!"".equals(m24265W)) {
                                str = null;
                                if (valueOf != null) {
                                    str = null;
                                    if (!"".equals(valueOf)) {
                                        str = null;
                                        if (m24271Q != null) {
                                            str = null;
                                            if (!"".equals(m24271Q)) {
                                                HashMap hashMap = new HashMap();
                                                hashMap.put("device", "android");
                                                hashMap.put("uid", m24268T);
                                                hashMap.put("version", m24265W);
                                                hashMap.put("stamp", m24271Q);
                                                hashMap.put("t_p", C3767h1.m24251f(this.f9635c));
                                                hashMap.put("tel_number", this.f9634b);
                                                hashMap.put("page", valueOf);
                                                if (C3718c0.f11914a) {
                                                    StringBuilder sb = new StringBuilder();
                                                    sb.append("params:");
                                                    sb.append(hashMap.toString());
                                                    C3718c0.m24436a("comment", sb.toString());
                                                }
                                                String m26206b = C3029a.m26206b("https://app.show-caller.com/api/v1/getsofcom.php", hashMap);
                                                str = m26206b;
                                                if (C3718c0.f11914a) {
                                                    StringBuilder sb2 = new StringBuilder();
                                                    sb2.append("response:");
                                                    sb2.append(m26206b);
                                                    str2 = m26206b;
                                                    C3718c0.m24436a("comment", sb2.toString());
                                                    str = m26206b;
                                                }
                                            }
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
            this.f9633a.mo26482a(str);
        }
    }

    /* renamed from: a */
    public static void m26481a(String str, String str2, int i, AbstractC2873d abstractC2873d) {
        try {
            new AsyncTaskC2875a(str, str2, i, abstractC2873d).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
