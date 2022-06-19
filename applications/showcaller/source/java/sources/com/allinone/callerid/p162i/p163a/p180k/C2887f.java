package com.allinone.callerid.p162i.p163a.p180k;

import android.content.Context;
import android.os.AsyncTask;
import com.allinone.callerid.util.C3735e1;
import com.allinone.callerid.util.C3767h1;
/* renamed from: com.allinone.callerid.i.a.k.f */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/k/f.class */
public class C2887f {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.k.f$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/k/f$a.class */
    public static class AsyncTaskC2888a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2886e f9653a;

        /* renamed from: b */
        private String f9654b;

        /* renamed from: c */
        private Context f9655c;

        /* renamed from: d */
        private int f9656d;

        AsyncTaskC2888a(Context context, String str, AbstractC2886e abstractC2886e) {
            this.f9653a = abstractC2886e;
            this.f9654b = str;
            this.f9655c = context;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            this.f9656d = C3767h1.m24262Z(this.f9655c, this.f9654b);
            return C3767h1.m24217w(this.f9655c, this.f9654b);
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9653a.mo24814a(this.f9656d, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.k.f$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/k/f$b.class */
    public static class AsyncTaskC2889b extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2885d f9657a;

        /* renamed from: b */
        private String f9658b;

        /* renamed from: c */
        private Context f9659c;

        AsyncTaskC2889b(Context context, String str, AbstractC2885d abstractC2885d) {
            this.f9657a = abstractC2885d;
            this.f9658b = str;
            this.f9659c = context;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            return C3767h1.m24217w(this.f9659c, this.f9658b);
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9657a.mo24810a(str);
        }
    }

    /* renamed from: a */
    public static void m26466a(Context context, String str, AbstractC2885d abstractC2885d) {
        try {
            new AsyncTaskC2889b(context, str, abstractC2885d).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m26465b(Context context, String str, AbstractC2886e abstractC2886e) {
        try {
            new AsyncTaskC2888a(context, str, abstractC2886e).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
