package com.allinone.callerid.p162i.p163a.p166c0;

import android.database.Cursor;
import android.os.AsyncTask;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.bean.SpamCall;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p157f.C2637i;
import com.allinone.callerid.util.C3714b1;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
/* renamed from: com.allinone.callerid.i.a.c0.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/c0/b.class */
public class C2780b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.c0.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/c0/b$a.class */
    public static class AsyncTaskC2781a extends AsyncTask<String, Void, List<SpamCall>> {

        /* renamed from: a */
        private AbstractC2779a f9531a;

        AsyncTaskC2781a(AbstractC2779a abstractC2779a) {
            this.f9531a = abstractC2779a;
        }

        /* renamed from: a */
        public List<SpamCall> doInBackground(String... strArr) {
            ArrayList arrayList = new ArrayList();
            try {
                List<SpamCall> m26988b = C2637i.m26989a().m26988b();
                if (m26988b != null && m26988b.size() > 0) {
                    for (int i = 0; i < m26988b.size(); i++) {
                        SpamCall spamCall = m26988b.get(i);
                        Cursor query = EZCallApplication.m26146c().getContentResolver().query(C3714b1.m24450h(), new String[]{"date", ShortCut.NUMBER, "type", "duration"}, "number=?", new String[]{spamCall.getNumber()}, "date DESC");
                        if (query != null && query.getCount() > 0) {
                            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MMM", Locale.ENGLISH);
                            query.moveToFirst();
                            query.moveToPosition(0);
                            Date date = new Date(query.getLong(query.getColumnIndex("date")));
                            int i2 = query.getInt(query.getColumnIndex("type"));
                            spamCall.setDate(simpleDateFormat.format(date));
                            spamCall.setCalltype(i2);
                            spamCall.setSelected(true);
                            arrayList.add(spamCall);
                            query.close();
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return arrayList;
        }

        /* renamed from: b */
        public void onPostExecute(List<SpamCall> list) {
            super.onPostExecute(list);
            this.f9531a.mo26607a(list);
        }
    }

    /* renamed from: a */
    public static void m26606a(AbstractC2779a abstractC2779a) {
        try {
            AsyncTaskC2781a asyncTaskC2781a = new AsyncTaskC2781a(abstractC2779a);
            if (asyncTaskC2781a.getStatus() == AsyncTask.Status.RUNNING) {
                return;
            }
            asyncTaskC2781a.cancel(true);
            new AsyncTaskC2781a(abstractC2779a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
