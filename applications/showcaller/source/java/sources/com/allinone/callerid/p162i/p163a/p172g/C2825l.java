package com.allinone.callerid.p162i.p163a.p172g;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.os.AsyncTask;
import androidx.core.content.C0586a;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3735e1;
import com.allinone.callerid.util.C3767h1;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.allinone.callerid.i.a.g.l */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/g/l.class */
public class C2825l {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.g.l$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/g/l$a.class */
    public static class AsyncTaskC2826a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2813e f9575a;

        /* renamed from: b */
        private List<CallLogBean> f9576b;

        /* renamed from: c */
        private ArrayList<String> f9577c = new ArrayList<>();

        /* renamed from: d */
        private int f9578d;

        /* renamed from: e */
        private int f9579e;

        AsyncTaskC2826a(int i, int i2, List<CallLogBean> list, AbstractC2813e abstractC2813e) {
            this.f9575a = abstractC2813e;
            this.f9576b = list;
            this.f9578d = i;
            this.f9579e = i2;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                List<CallLogBean> list = this.f9576b;
                if (list == null || list.size() == 0) {
                    return "";
                }
                int min = Math.min(this.f9578d + this.f9579e, this.f9576b.size());
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("searchList", "length:" + min);
                }
                for (int i = this.f9578d; i < min; i++) {
                    CallLogBean callLogBean = this.f9576b.get(i);
                    if (callLogBean != null && !callLogBean.m24918Y() && !callLogBean.m24916Z() && callLogBean.m24923V() && System.currentTimeMillis() - callLogBean.m24960A() > 259200000 && callLogBean.m24880o() != null && !"".equals(callLogBean.m24880o())) {
                        this.f9577c.add(callLogBean.m24880o());
                        callLogBean.m24883m0(true);
                    }
                }
                ArrayList<String> arrayList = this.f9577c;
                if (arrayList == null || arrayList.size() <= 0) {
                    return "";
                }
                for (int i2 = 0; i2 < this.f9577c.size(); i2++) {
                    for (int size = this.f9577c.size() - 1; size > i2; size--) {
                        if (this.f9577c.get(i2).equals(this.f9577c.get(size))) {
                            this.f9577c.remove(size);
                        }
                    }
                }
                return "";
            } catch (Exception e) {
                e.printStackTrace();
                return "";
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9575a.mo26557a(this.f9577c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.g.l$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/g/l$b.class */
    public static class AsyncTaskC2827b extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2813e f9580a;

        /* renamed from: b */
        private List<CallLogBean> f9581b;

        /* renamed from: c */
        private ArrayList<String> f9582c = new ArrayList<>();

        AsyncTaskC2827b(List<CallLogBean> list, AbstractC2813e abstractC2813e) {
            this.f9580a = abstractC2813e;
            this.f9581b = list;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                List<CallLogBean> list = this.f9581b;
                if (list == null || list.size() == 0) {
                    return "";
                }
                for (int i = 0; i < this.f9581b.size(); i++) {
                    CallLogBean callLogBean = this.f9581b.get(i);
                    if (callLogBean != null && !callLogBean.m24918Y() && callLogBean.m24920X() && callLogBean.m24880o() != null && !"".equals(callLogBean.m24880o()) && !C3767h1.m24216w0(callLogBean.m24880o()) && callLogBean.m24912b() != null && System.currentTimeMillis() - callLogBean.m24912b().getTime() <= 604800000 && !this.f9582c.contains(callLogBean.m24880o())) {
                        this.f9582c.add(callLogBean.m24880o());
                    }
                }
                return "";
            } catch (Exception e) {
                e.printStackTrace();
                return "";
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9580a.mo26557a(this.f9582c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.g.l$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/g/l$c.class */
    public static class AsyncTaskC2828c extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2831n f9583a;

        /* renamed from: b */
        private Context f9584b;

        /* renamed from: c */
        private List<CallLogBean> f9585c;

        /* renamed from: d */
        private List<CallLogBean> f9586d = new ArrayList();

        /* renamed from: e */
        private List<String> f9587e = new ArrayList();

        /* renamed from: f */
        private long f9588f;

        AsyncTaskC2828c(Context context, List<CallLogBean> list, AbstractC2831n abstractC2831n) {
            this.f9583a = abstractC2831n;
            this.f9584b = context;
            this.f9585c = list;
            this.f9586d.addAll(list);
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            List<CallLogBean> list;
            try {
                ContentResolver contentResolver = this.f9584b.getContentResolver();
                if (C0586a.m33353a(this.f9584b, "android.permission.READ_CALL_LOG") != 0) {
                    return "";
                }
                Cursor query = contentResolver.query(C3714b1.m24450h(), null, null, null, "date DESC");
                if (query != null && query.getCount() > 0) {
                    query.moveToNext();
                    this.f9588f = query.getLong(query.getColumnIndex("date"));
                }
                if (query != null) {
                    query.close();
                }
                if (this.f9588f == 0 || (list = this.f9585c) == null || list.size() == 0) {
                    return "";
                }
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < this.f9585c.size(); i++) {
                    CallLogBean callLogBean = this.f9585c.get(i);
                    if (callLogBean != null && !callLogBean.m24918Y() && !callLogBean.m24916Z() && callLogBean.m24923V() && System.currentTimeMillis() - callLogBean.m24960A() > 259200000 && callLogBean.m24912b() != null && (this.f9588f - callLogBean.m24912b().getTime()) / 86400000 < 7 && callLogBean.m24880o() != null && !"".equals(callLogBean.m24880o())) {
                        arrayList.add(callLogBean.m24880o());
                        if (arrayList.size() < 20) {
                            callLogBean.m24883m0(true);
                        }
                    }
                }
                if (C3718c0.f11914a) {
                    C3718c0.m24433d("searchList", "通话记录数量:" + this.f9585c.size());
                    C3718c0.m24433d("searchList", "7天内可查询数量:" + arrayList.size());
                }
                int size = arrayList.size();
                if (size < 20) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24433d("searchList", "7天内可查询量小于20:");
                    }
                    if (this.f9585c.size() < 20) {
                        for (CallLogBean callLogBean2 : this.f9585c) {
                            if (callLogBean2 != null && !callLogBean2.m24918Y() && !callLogBean2.m24916Z() && callLogBean2.m24923V() && System.currentTimeMillis() - callLogBean2.m24960A() > 259200000 && callLogBean2.m24880o() != null && !"".equals(callLogBean2.m24880o())) {
                                this.f9587e.add(callLogBean2.m24880o());
                                callLogBean2.m24883m0(true);
                            }
                        }
                        if (C3718c0.f11914a) {
                            C3718c0.m24433d("searchList", "总数小于20:" + this.f9587e.size());
                        }
                    } else {
                        for (CallLogBean callLogBean3 : this.f9585c) {
                            if (callLogBean3 != null && !callLogBean3.m24918Y() && !callLogBean3.m24916Z() && callLogBean3.m24923V() && System.currentTimeMillis() - callLogBean3.m24960A() > 259200000 && callLogBean3.m24880o() != null && !"".equals(callLogBean3.m24880o())) {
                                if (this.f9587e.size() >= 20) {
                                    break;
                                }
                                this.f9587e.add(callLogBean3.m24880o());
                                callLogBean3.m24883m0(true);
                            }
                        }
                        if (C3718c0.f11914a) {
                            C3718c0.m24433d("searchList", "总数大于20:" + this.f9587e.size());
                        }
                    }
                } else if (size < 100) {
                    this.f9587e.addAll(arrayList);
                    if (C3718c0.f11914a) {
                        C3718c0.m24433d("searchList", "7天内可查询量大于20小于100:" + this.f9587e.size());
                    }
                } else {
                    this.f9587e.addAll(arrayList.subList(0, 100));
                    if (C3718c0.f11914a) {
                        C3718c0.m24433d("searchList", "7天内可查询量大于100:" + this.f9587e.size());
                    }
                }
                List<String> list2 = this.f9587e;
                if (list2 != null && list2.size() != 0) {
                    for (int i2 = 0; i2 < this.f9587e.size(); i2++) {
                        for (int size2 = this.f9587e.size() - 1; size2 > i2; size2--) {
                            if (this.f9587e.get(i2).equals(this.f9587e.get(size2))) {
                                this.f9587e.remove(size2);
                            }
                        }
                    }
                }
                if (!C3718c0.f11914a) {
                    return "";
                }
                C3718c0.m24433d("searchList", "去重后的可查询量：" + this.f9587e.size());
                return "";
            } catch (Exception e) {
                e.printStackTrace();
                return "";
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9583a.mo26527a(this.f9585c, this.f9587e);
        }
    }

    /* renamed from: a */
    public static void m26539a(List<CallLogBean> list, AbstractC2813e abstractC2813e) {
        try {
            AsyncTaskC2827b asyncTaskC2827b = new AsyncTaskC2827b(list, abstractC2813e);
            if (asyncTaskC2827b.getStatus() == AsyncTask.Status.RUNNING) {
                return;
            }
            asyncTaskC2827b.cancel(true);
            new AsyncTaskC2827b(list, abstractC2813e).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m26538b(int i, int i2, List<CallLogBean> list, AbstractC2813e abstractC2813e) {
        try {
            AsyncTaskC2826a asyncTaskC2826a = new AsyncTaskC2826a(i, i2, list, abstractC2813e);
            if (asyncTaskC2826a.getStatus() == AsyncTask.Status.RUNNING) {
                return;
            }
            asyncTaskC2826a.cancel(true);
            new AsyncTaskC2826a(i, i2, list, abstractC2813e).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m26537c(Context context, List<CallLogBean> list, AbstractC2831n abstractC2831n) {
        try {
            AsyncTaskC2828c asyncTaskC2828c = new AsyncTaskC2828c(context, list, abstractC2831n);
            if (asyncTaskC2828c.getStatus() == AsyncTask.Status.RUNNING) {
                return;
            }
            asyncTaskC2828c.cancel(true);
            new AsyncTaskC2828c(context, list, abstractC2831n).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
