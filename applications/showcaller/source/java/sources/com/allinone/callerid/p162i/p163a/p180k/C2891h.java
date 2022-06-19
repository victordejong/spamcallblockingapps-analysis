package com.allinone.callerid.p162i.p163a.p180k;

import android.content.Context;
import android.os.AsyncTask;
import com.allinone.callerid.R$string;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3735e1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3800m;
/* renamed from: com.allinone.callerid.i.a.k.h */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/k/h.class */
public class C2891h {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.k.h$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/k/h$a.class */
    public static class AsyncTaskC2892a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2890g f9660a;

        /* renamed from: b */
        private String f9661b;

        /* renamed from: c */
        private String f9662c;

        /* renamed from: d */
        private String f9663d;

        /* renamed from: e */
        private String f9664e;

        /* renamed from: f */
        private boolean f9665f;

        /* renamed from: g */
        private boolean f9666g;

        /* renamed from: h */
        private boolean f9667h;

        /* renamed from: i */
        private Context f9668i;

        AsyncTaskC2892a(Context context, String str, String str2, AbstractC2890g abstractC2890g) {
            this.f9660a = abstractC2890g;
            this.f9661b = str;
            this.f9662c = str2;
            this.f9668i = context;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            this.f9664e = this.f9668i.getResources().getString(R$string.missed_call);
            String m24217w = C3767h1.m24217w(this.f9668i, this.f9661b);
            this.f9663d = m24217w;
            if (m24217w == null) {
                String str = this.f9662c;
                if (str == null || "".equals(str)) {
                    this.f9663d = this.f9661b;
                } else {
                    this.f9663d = this.f9662c;
                }
                if (C3711a1.m24595R()) {
                    this.f9664e = this.f9668i.getResources().getString(R$string.is_spam_tip);
                } else if (C3767h1.m24210z0(this.f9668i) > 1) {
                    this.f9663d = C3767h1.m24282I(this.f9668i);
                    this.f9664e = C3767h1.m24210z0(this.f9668i) + " " + this.f9668i.getResources().getString(R$string.missed_calls);
                } else {
                    this.f9664e = this.f9668i.getResources().getString(R$string.missed_call);
                }
            } else if (C3767h1.m24210z0(this.f9668i) > 1) {
                this.f9663d = C3767h1.m24282I(this.f9668i);
                this.f9664e = C3767h1.m24210z0(this.f9668i) + " " + this.f9668i.getResources().getString(R$string.missed_calls);
            } else {
                this.f9664e = this.f9668i.getResources().getString(R$string.missed_call);
            }
            C3711a1.m24478v1(false);
            C3800m c3800m = new C3800m(this.f9668i);
            if (C3711a1.m24488t() && c3800m.m24099j(this.f9661b).booleanValue()) {
                this.f9664e = this.f9668i.getResources().getString(R$string.block_noti);
                String str2 = this.f9662c;
                if (str2 == null || "".equals(str2)) {
                    this.f9663d = this.f9661b;
                } else {
                    this.f9663d = this.f9662c;
                }
                this.f9665f = true;
            } else if (C3711a1.m24643F()) {
                C3711a1.m24526j1(false);
                this.f9664e = this.f9668i.getResources().getString(R$string.block_noti);
                String str3 = this.f9662c;
                if (str3 == null || "".equals(str3)) {
                    this.f9663d = this.f9661b;
                } else {
                    this.f9663d = this.f9662c;
                }
                this.f9665f = true;
            }
            this.f9666g = C3711a1.m24481u2().booleanValue();
            this.f9667h = C3711a1.m24517l2().booleanValue();
            return "";
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9660a.mo24815a(this.f9663d, this.f9664e, this.f9665f, this.f9666g, this.f9667h);
        }
    }

    /* renamed from: a */
    public static void m26460a(Context context, String str, String str2, AbstractC2890g abstractC2890g) {
        try {
            new AsyncTaskC2892a(context, str, str2, abstractC2890g).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
