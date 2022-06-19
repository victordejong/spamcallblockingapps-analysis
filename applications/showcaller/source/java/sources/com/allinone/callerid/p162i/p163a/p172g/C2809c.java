package com.allinone.callerid.p162i.p163a.p172g;

import android.database.Cursor;
import android.os.AsyncTask;
import androidx.core.content.C0586a;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3767h1;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.allinone.callerid.i.a.g.c */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/g/c.class */
public class C2809c {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.g.c$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/g/c$a.class */
    public static class AsyncTaskC2810a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2823j f9559a;

        /* renamed from: b */
        private ArrayList<CallLogBean> f9560b = new ArrayList<>();

        /* renamed from: c */
        private List<String> f9561c = new ArrayList();

        AsyncTaskC2810a(AbstractC2823j abstractC2823j) {
            this.f9559a = abstractC2823j;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                EZCallApplication m26146c = EZCallApplication.m26146c();
                if (C0586a.m33353a(m26146c, "android.permission.READ_CALL_LOG") != 0) {
                    return "";
                }
                Cursor query = m26146c.getContentResolver().query(C3714b1.m24450h(), new String[]{ShortCut.NUMBER, ShortCut.NAME}, null, null, "date DESC");
                if (query != null && query.getCount() > 0) {
                    this.f9560b.clear();
                    this.f9561c.clear();
                    query.moveToFirst();
                    for (int i = 0; i < query.getCount(); i++) {
                        query.moveToPosition(i);
                        String string = query.getString(query.getColumnIndex(ShortCut.NUMBER));
                        String string2 = query.getString(query.getColumnIndex(ShortCut.NAME));
                        if (string != null && !C3767h1.m24216w0(string) && !this.f9561c.contains(string)) {
                            this.f9561c.add(string);
                            CallLogBean callLogBean = new CallLogBean();
                            callLogBean.m24951E0(string);
                            callLogBean.m24955C0(string2);
                            if (string2 != null && !"".equals(string2)) {
                                callLogBean.m24878p0(true);
                            }
                            this.f9560b.add(callLogBean);
                        }
                    }
                }
                if (query == null) {
                    return "";
                }
                query.close();
                return "";
            } catch (Exception e) {
                e.printStackTrace();
                return "";
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9559a.mo26541a(this.f9560b);
        }
    }

    /* renamed from: a */
    public static void m26563a(AbstractC2823j abstractC2823j) {
        try {
            new AsyncTaskC2810a(abstractC2823j).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
