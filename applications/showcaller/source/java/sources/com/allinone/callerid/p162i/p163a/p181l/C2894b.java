package com.allinone.callerid.p162i.p163a.p181l;

import android.database.Cursor;
import android.os.AsyncTask;
import androidx.core.content.C0586a;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p157f.p158j.C2639a;
import com.allinone.callerid.p157f.p158j.C2641b;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3735e1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3771i;
import com.allinone.callerid.util.p203i1.C3773a;
import com.allinone.callerid.util.p204j1.C3776a;
/* renamed from: com.allinone.callerid.i.a.l.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/l/b.class */
public class C2894b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.l.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/l/b$a.class */
    public static class AsyncTaskC2895a extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private String f9669a;

        /* renamed from: b */
        private AbstractC2893a f9670b;

        AsyncTaskC2895a(String str, AbstractC2893a abstractC2893a) {
            this.f9669a = str;
            this.f9670b = abstractC2893a;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            if (C3773a.m24181i() && !C2894b.m26453e(this.f9669a) && !C2894b.m26455c(this.f9669a)) {
                if (!C3773a.m24180j()) {
                    return Boolean.TRUE;
                }
                if (C2641b.m26981a().m26979c() && C3771i.m24193q(C3773a.m24189a(), C3773a.m24188b(), C3773a.m24186d(), C3773a.m24185e())) {
                    return Boolean.TRUE;
                }
                return Boolean.FALSE;
            }
            return Boolean.FALSE;
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            AbstractC2893a abstractC2893a = this.f9670b;
            if (abstractC2893a != null) {
                abstractC2893a.mo24817a(bool.booleanValue());
            }
        }
    }

    /* renamed from: c */
    public static boolean m26455c(String str) {
        if (!C3773a.m24184f() || !C3776a.m24161d(EZCallApplication.m26146c()) || !C3767h1.m24263Y(EZCallApplication.m26146c(), str)) {
            return C3773a.m24183g() && C2639a.m26985b().m26984c(str);
        }
        return true;
    }

    /* renamed from: d */
    public static void m26454d(String str, AbstractC2893a abstractC2893a) {
        try {
            new AsyncTaskC2895a(str, abstractC2893a).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public static boolean m26453e(String str) {
        boolean z = false;
        if (C3773a.m24182h()) {
            boolean z2 = false;
            z = false;
            try {
                if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CALL_LOG") == 0) {
                    Cursor query = EZCallApplication.m26146c().getContentResolver().query(C3714b1.m24450h(), null, "number=?", new String[]{str}, "date DESC");
                    boolean z3 = false;
                    if (query != null) {
                        z3 = false;
                        if (query.getCount() > 0) {
                            query.moveToNext();
                            z3 = false;
                            if (query.getInt(query.getColumnIndex("type")) != 2) {
                                long j = query.getLong(query.getColumnIndex("date"));
                                z3 = false;
                                if (j != 0) {
                                    z3 = false;
                                    if (System.currentTimeMillis() - j < 180000) {
                                        z3 = true;
                                    }
                                }
                            }
                        }
                    }
                    z = z3;
                    if (query != null) {
                        z2 = z3;
                        query.close();
                        z = z3;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                z = z2;
            }
        }
        return z;
    }
}
