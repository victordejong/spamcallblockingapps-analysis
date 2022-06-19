package com.allinone.callerid.p162i.p163a.p181l;

import android.os.AsyncTask;
import com.allinone.callerid.R$string;
import com.allinone.callerid.bean.WeekInfo;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p157f.p158j.C2641b;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3771i;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.allinone.callerid.i.a.l.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/l/d.class */
public class C2897d {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.l.d$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/l/d$a.class */
    public static class AsyncTaskC2898a extends AsyncTask<String, Void, ArrayList<WeekInfo>> {

        /* renamed from: a */
        private ArrayList<WeekInfo> f9671a;

        public AsyncTaskC2898a(ArrayList<WeekInfo> arrayList) {
            this.f9671a = arrayList;
        }

        /* renamed from: a */
        public ArrayList<WeekInfo> doInBackground(String... strArr) {
            ArrayList<WeekInfo> arrayList = this.f9671a;
            if (arrayList != null && arrayList.size() > 0) {
                C2641b.m26981a().m26976f(this.f9671a);
            }
            return this.f9671a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.l.d$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/l/d$b.class */
    public static class AsyncTaskC2899b extends AsyncTask<String, Void, ArrayList<WeekInfo>> {

        /* renamed from: a */
        private AbstractC2896c f9672a;

        public AsyncTaskC2899b(AbstractC2896c abstractC2896c) {
            this.f9672a = abstractC2896c;
        }

        /* renamed from: a */
        public ArrayList<WeekInfo> doInBackground(String... strArr) {
            ArrayList<WeekInfo> arrayList = (ArrayList) C2641b.m26981a().m26978d();
            if (arrayList != null && arrayList.size() > 0) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("wbb", "list: " + arrayList.toString());
                }
                Iterator<WeekInfo> it = arrayList.iterator();
                while (it.hasNext()) {
                    WeekInfo next = it.next();
                    if (next.getWeekId() == -1) {
                        next.setWeek(EZCallApplication.m26146c().getString(R$string.All));
                    } else {
                        next.setWeek(C3771i.m24195o(next.getWeekId()));
                    }
                }
            }
            return arrayList;
        }

        /* renamed from: b */
        public void onPostExecute(ArrayList<WeekInfo> arrayList) {
            super.onPostExecute(arrayList);
            AbstractC2896c abstractC2896c = this.f9672a;
            if (abstractC2896c != null) {
                abstractC2896c.mo25244a(arrayList);
            }
        }
    }

    /* renamed from: a */
    public static void m26450a(ArrayList<WeekInfo> arrayList) {
        try {
            new AsyncTaskC2898a(arrayList).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m26449b(AbstractC2896c abstractC2896c) {
        try {
            new AsyncTaskC2899b(abstractC2896c).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
