package com.callerid.block.p040h.p041a.p050f;

import android.content.Context;
import android.os.AsyncTask;
import com.callerid.block.R$string;
import com.callerid.block.util.C1168c;
import com.callerid.block.util.C1182i;
import com.callerid.block.util.C1199n0;
import com.callerid.block.util.C1216t0;
/* renamed from: com.callerid.block.h.a.f.t */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/t.class */
public class C1054t {

    /* renamed from: com.callerid.block.h.a.f.t$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/t$a.class */
    private static class AsyncTaskC1055a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC1053s f4494a;

        /* renamed from: b */
        private String f4495b;

        /* renamed from: c */
        private String f4496c;

        /* renamed from: d */
        private String f4497d;

        /* renamed from: e */
        private String f4498e;

        /* renamed from: f */
        private boolean f4499f;

        /* renamed from: g */
        private Context f4500g;

        AsyncTaskC1055a(Context context, String str, String str2, AbstractC1053s sVar) {
            this.f4494a = sVar;
            this.f4495b = str;
            this.f4496c = str2;
            this.f4500g = context;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String str;
            String str2;
            StringBuilder sb;
            this.f4498e = this.f4500g.getResources().getString(R$string.missed_call);
            String j = C1216t0.m9567j(this.f4500g, this.f4495b);
            this.f4497d = j;
            if (j == null) {
                String str3 = this.f4496c;
                this.f4497d = (str3 == null || "".equals(str3)) ? this.f4495b : this.f4496c;
                if (C1216t0.m9582b0(this.f4500g) > 1) {
                    this.f4497d = C1216t0.m9555v(this.f4500g);
                    sb = new StringBuilder();
                    sb.append(C1216t0.m9582b0(this.f4500g));
                    sb.append(" ");
                    sb.append(this.f4500g.getResources().getString(R$string.missed_calls));
                    str = sb.toString();
                }
                str = this.f4500g.getResources().getString(R$string.missed_call);
            } else {
                if (C1216t0.m9582b0(this.f4500g) > 1) {
                    this.f4497d = C1216t0.m9555v(this.f4500g);
                    sb = new StringBuilder();
                    sb.append(C1216t0.m9582b0(this.f4500g));
                    sb.append(" ");
                    sb.append(this.f4500g.getResources().getString(R$string.missed_calls));
                    str = sb.toString();
                }
                str = this.f4500g.getResources().getString(R$string.missed_call);
            }
            this.f4498e = str;
            C1199n0.m9741Q0(this.f4500g, false);
            C1182i iVar = new C1182i(this.f4500g);
            if (C1199n0.m9650y(this.f4500g) && iVar.m9837f(this.f4495b).booleanValue()) {
                this.f4498e = this.f4500g.getResources().getString(R$string.block_noti);
                String str4 = this.f4496c;
                this.f4497d = (str4 == null || "".equals(str4)) ? this.f4495b : this.f4496c;
                this.f4499f = true;
            }
            if (C1199n0.m9647z(this.f4500g) && this.f4497d == null) {
                this.f4498e = this.f4500g.getResources().getString(R$string.block_noti);
                String str5 = this.f4496c;
                str2 = (str5 == null || "".equals(str5)) ? this.f4495b : this.f4496c;
            } else if (!C1199n0.m9713d(this.f4500g) || !C1168c.m9903b(this.f4500g, this.f4495b)) {
                return "";
            } else {
                this.f4498e = this.f4500g.getResources().getString(R$string.block_noti);
                String str6 = this.f4496c;
                str2 = (str6 == null || "".equals(str6)) ? this.f4495b : this.f4496c;
            }
            this.f4497d = str2;
            this.f4499f = true;
            return "";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f4494a.m10288a(this.f4497d, this.f4498e, this.f4499f);
        }
    }

    /* renamed from: a */
    public static void m10287a(Context context, String str, String str2, AbstractC1053s sVar) {
        try {
            new AsyncTaskC1055a(context, str, str2, sVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
