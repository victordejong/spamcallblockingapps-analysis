package com.allinone.callerid.p162i.p163a.p193w;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Build;
import android.provider.ContactsContract;
import androidx.core.content.C0586a;
import com.allinone.callerid.bean.ReportedContent;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.p157f.C2631f;
import com.allinone.callerid.p157f.C2633g;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3735e1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3771i;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import p020b.p067p.p068a.C1764a;
/* renamed from: com.allinone.callerid.i.a.w.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/w/d.class */
public class C2987d {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.w.d$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/w/d$a.class */
    public static class AsyncTaskC2988a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private ArrayList<CallLogBean> f9779a = new ArrayList<>();

        /* renamed from: b */
        private Context f9780b;

        /* renamed from: c */
        private List<CallLogBean> f9781c;

        /* renamed from: d */
        private List<String> f9782d;

        /* renamed from: e */
        private HashMap<String, Integer> f9783e;

        /* renamed from: f */
        private AbstractC2986c f9784f;

        AsyncTaskC2988a(Context context, List<CallLogBean> list, List<String> list2, HashMap<String, Integer> hashMap, AbstractC2986c abstractC2986c) {
            this.f9780b = context;
            this.f9781c = list;
            this.f9782d = list2;
            this.f9783e = hashMap;
            this.f9784f = abstractC2986c;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            EZSearchContacts m26999d;
            try {
                if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CALL_LOG") != 0) {
                    return null;
                }
                Cursor query = this.f9780b.getContentResolver().query(C3714b1.m24450h(), new String[]{"date", ShortCut.NUMBER, "type", ShortCut.NAME, "_id", "numbertype", "numberlabel", "formatted_number"}, null, null, "date DESC");
                if (query != null && query.getCount() > 0) {
                    this.f9779a = new ArrayList<>();
                    this.f9781c.clear();
                    this.f9782d.clear();
                    this.f9783e.clear();
                    query.moveToFirst();
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.getDefault());
                    for (int i = 0; i < query.getCount(); i++) {
                        query.moveToPosition(i);
                        Date date = new Date(query.getLong(query.getColumnIndex("date")));
                        String string = query.getString(query.getColumnIndex(ShortCut.NUMBER));
                        int i2 = query.getInt(query.getColumnIndex("type"));
                        String string2 = query.getString(query.getColumnIndex(ShortCut.NAME));
                        String string3 = Build.VERSION.SDK_INT >= 21 ? query.getString(query.getColumnIndex("formatted_number")) : "";
                        int i3 = query.getInt(query.getColumnIndex("_id"));
                        int i4 = query.getInt(query.getColumnIndex("numbertype"));
                        String str = string + i2 + simpleDateFormat.format(date) + "";
                        if (this.f9782d.contains(str)) {
                            this.f9783e.put(str, Integer.valueOf(this.f9783e.get(str).intValue() + 1));
                        } else {
                            this.f9782d.add(str);
                            this.f9783e.put(str, 1);
                            String string4 = query.getString(query.getColumnIndex("numberlabel"));
                            String str2 = (i4 == 0 && string4 == null) ? "" : (String) ContactsContract.CommonDataKinds.Phone.getTypeLabel(EZCallApplication.m26146c().getResources(), i4, string4);
                            if ((string2 == null || "".equals(string2)) && (m26999d = C2631f.m27001b().m26999d(string)) != null && ((m26999d.getName() != null && !"".equals(m26999d.getName())) || (m26999d.getType_label() != null && !"".equals(m26999d.getType_label())))) {
                                CallLogBean callLogBean = new CallLogBean();
                                callLogBean.m24862y0(i3);
                                callLogBean.m24910b1(str);
                                callLogBean.m24951E0(string);
                                callLogBean.m24889j0(string3);
                                callLogBean.m24955C0("");
                                callLogBean.m24949F0(str2);
                                callLogBean.m24904d1(i2);
                                callLogBean.m24873s0(C3771i.m24207c(date));
                                callLogBean.m24891i1(C3771i.m24202h(date));
                                callLogBean.m24899f0(date);
                                callLogBean.m24931P0(m26999d.isSearched());
                                callLogBean.m24901e1(C3767h1.m24292D(EZCallApplication.m26146c(), m26999d.getType_label()));
                                callLogBean.m24898f1(m26999d.getType_label());
                                callLogBean.m24939L0(m26999d.getReport_count());
                                callLogBean.m24896g0(m26999d.getBelong_area());
                                callLogBean.m24937M0(m26999d.getName());
                                if (m26999d.getType() != null && ("Mobile".equals(m26999d.getType()) || "Fixed line".equals(m26999d.getType()))) {
                                    callLogBean.m24933O0(C3767h1.m24280J(EZCallApplication.m26146c(), m26999d.getType()));
                                }
                                callLogBean.m24913a1(m26999d.getTel_number());
                                callLogBean.m24915Z0(m26999d.getT_p());
                                callLogBean.m24947G0(m26999d.getOld_tel_number());
                                callLogBean.m24863x0(m26999d.getFormat_tel_number());
                                callLogBean.m24945H0(m26999d.getOperator());
                                callLogBean.m24905d0(m26999d.getAddress());
                                callLogBean.m24902e0(m26999d.getAvatar());
                                callLogBean.m24865w0(m26999d.getFb_avatar());
                                callLogBean.m24895g1(m26999d.getType_tags());
                                callLogBean.m24953D0(m26999d.getName_tags());
                                callLogBean.m24879o0(m26999d.getComment_tags());
                                callLogBean.m24875r0(m26999d.getCountry());
                                callLogBean.m24935N0(m26999d.getSearch_time());
                                callLogBean.m24867v0(m26999d.getFaild_error_log());
                                this.f9779a.add(callLogBean);
                            }
                        }
                    }
                }
                if (query != null) {
                    query.close();
                }
                ArrayList<CallLogBean> arrayList = this.f9779a;
                if (arrayList == null || arrayList.size() <= 0) {
                    return null;
                }
                this.f9781c.clear();
                this.f9781c.addAll(this.f9779a);
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            if (this.f9781c.size() > 0) {
                this.f9784f.mo25012a(this.f9781c, this.f9783e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.w.d$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/w/d$b.class */
    public static class AsyncTaskC2989b extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private ArrayList<CallLogBean> f9785a = new ArrayList<>();

        /* renamed from: b */
        private Context f9786b;

        /* renamed from: c */
        private List<CallLogBean> f9787c;

        /* renamed from: d */
        private List<String> f9788d;

        /* renamed from: e */
        private HashMap<String, Integer> f9789e;

        /* renamed from: f */
        private AbstractC2986c f9790f;

        AsyncTaskC2989b(Context context, List<CallLogBean> list, List<String> list2, HashMap<String, Integer> hashMap, AbstractC2986c abstractC2986c) {
            this.f9786b = context;
            this.f9787c = list;
            this.f9788d = list2;
            this.f9789e = hashMap;
            this.f9790f = abstractC2986c;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CALL_LOG") != 0) {
                    return null;
                }
                Cursor query = this.f9786b.getContentResolver().query(C3714b1.m24450h(), new String[]{"date", ShortCut.NUMBER, "type", ShortCut.NAME, "_id", "numbertype", "numberlabel", "formatted_number"}, null, null, "date DESC");
                if (query != null && query.getCount() > 0) {
                    this.f9785a = new ArrayList<>();
                    this.f9787c.clear();
                    this.f9788d.clear();
                    this.f9789e.clear();
                    query.moveToFirst();
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.getDefault());
                    for (int i = 0; i < query.getCount(); i++) {
                        query.moveToPosition(i);
                        Date date = new Date(query.getLong(query.getColumnIndex("date")));
                        String string = query.getString(query.getColumnIndex(ShortCut.NUMBER));
                        int i2 = query.getInt(query.getColumnIndex("type"));
                        String string2 = query.getString(query.getColumnIndex(ShortCut.NAME));
                        String string3 = Build.VERSION.SDK_INT >= 21 ? query.getString(query.getColumnIndex("formatted_number")) : "";
                        int i3 = query.getInt(query.getColumnIndex("_id"));
                        int i4 = query.getInt(query.getColumnIndex("numbertype"));
                        String str = string + i2 + simpleDateFormat.format(date) + "";
                        if (this.f9788d.contains(str)) {
                            this.f9789e.put(str, Integer.valueOf(this.f9789e.get(str).intValue() + 1));
                        } else {
                            this.f9788d.add(str);
                            this.f9789e.put(str, 1);
                            String string4 = query.getString(query.getColumnIndex("numberlabel"));
                            String str2 = (i4 == 0 && string4 == null) ? "" : (String) ContactsContract.CommonDataKinds.Phone.getTypeLabel(EZCallApplication.m26146c().getResources(), i4, string4);
                            if (string2 == null || "".equals(string2)) {
                                CallLogBean callLogBean = new CallLogBean();
                                callLogBean.m24862y0(i3);
                                callLogBean.m24910b1(str);
                                callLogBean.m24951E0(string);
                                callLogBean.m24889j0(string3);
                                callLogBean.m24955C0("");
                                callLogBean.m24949F0(str2);
                                callLogBean.m24904d1(i2);
                                callLogBean.m24873s0(C3771i.m24207c(date));
                                callLogBean.m24891i1(C3771i.m24202h(date));
                                callLogBean.m24899f0(date);
                                this.f9785a.add(callLogBean);
                            }
                        }
                    }
                }
                if (query != null) {
                    query.close();
                }
                ArrayList<CallLogBean> arrayList = this.f9785a;
                if (arrayList != null && arrayList.size() > 0) {
                    this.f9787c.clear();
                    this.f9787c.addAll(this.f9785a);
                }
                List<CallLogBean> list = this.f9787c;
                if (list == null || list.size() == 0) {
                    return null;
                }
                for (int i5 = 0; i5 < this.f9787c.size(); i5++) {
                    CallLogBean callLogBean2 = this.f9787c.get(i5);
                    EZSearchContacts m26999d = C2631f.m27001b().m26999d(callLogBean2.m24880o());
                    if (m26999d != null) {
                        callLogBean2.m24931P0(m26999d.isSearched());
                        callLogBean2.m24901e1(C3767h1.m24292D(EZCallApplication.m26146c(), m26999d.getType_label()));
                        callLogBean2.m24898f1(m26999d.getType_label());
                        callLogBean2.m24939L0(m26999d.getReport_count());
                        callLogBean2.m24896g0(m26999d.getBelong_area());
                        callLogBean2.m24937M0(m26999d.getName());
                        if (m26999d.getType() != null && ("Mobile".equals(m26999d.getType()) || "Fixed line".equals(m26999d.getType()))) {
                            callLogBean2.m24933O0(C3767h1.m24280J(EZCallApplication.m26146c(), m26999d.getType()));
                        }
                        callLogBean2.m24913a1(m26999d.getTel_number());
                        callLogBean2.m24915Z0(m26999d.getT_p());
                        callLogBean2.m24947G0(m26999d.getOld_tel_number());
                        callLogBean2.m24863x0(m26999d.getFormat_tel_number());
                        callLogBean2.m24945H0(m26999d.getOperator());
                        callLogBean2.m24905d0(m26999d.getAddress());
                        callLogBean2.m24902e0(m26999d.getAvatar());
                        callLogBean2.m24865w0(m26999d.getFb_avatar());
                        callLogBean2.m24895g1(m26999d.getType_tags());
                        callLogBean2.m24953D0(m26999d.getName_tags());
                        callLogBean2.m24879o0(m26999d.getComment_tags());
                        callLogBean2.m24875r0(m26999d.getCountry());
                        callLogBean2.m24935N0(m26999d.getSearch_time());
                        callLogBean2.m24867v0(m26999d.getFaild_error_log());
                    }
                }
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            if (this.f9787c.size() > 0) {
                this.f9790f.mo25012a(this.f9787c, this.f9789e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.w.d$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/w/d$c.class */
    public static class AsyncTaskC2990c extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private ArrayList<CallLogBean> f9791a;

        /* renamed from: b */
        int f9792b;

        /* renamed from: c */
        int f9793c;

        /* renamed from: d */
        int f9794d;

        /* renamed from: e */
        AbstractC2993e f9795e;

        /* renamed from: com.allinone.callerid.i.a.w.d$c$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/w/d$c$a.class */
        public class C2991a implements Comparator<ReportedContent> {
            C2991a() {
                AsyncTaskC2990c.this = r4;
            }

            /* renamed from: a */
            public int compare(ReportedContent reportedContent, ReportedContent reportedContent2) {
                return ((int) reportedContent2.getTime()) - ((int) reportedContent.getTime());
            }
        }

        AsyncTaskC2990c(int i, int i2, int i3, AbstractC2993e abstractC2993e) {
            this.f9792b = i;
            this.f9793c = i2;
            this.f9794d = i3;
            this.f9795e = abstractC2993e;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                List<ReportedContent> m26996b = C2633g.m26997a().m26996b();
                if (m26996b == null || m26996b.size() <= 0) {
                    return "5887";
                }
                this.f9791a = new ArrayList<>();
                Collections.sort(m26996b, new C2991a());
                for (int i = 0; i < m26996b.size(); i++) {
                    ReportedContent reportedContent = m26996b.get(i);
                    CallLogBean callLogBean = new CallLogBean();
                    callLogBean.m24951E0(reportedContent.getNumber());
                    callLogBean.m24899f0(new Date(reportedContent.getTime()));
                    String type = reportedContent.getType();
                    boolean z = true;
                    int hashCode = type.hashCode();
                    if (hashCode != -906718361) {
                        if (hashCode != 2082217073) {
                            if (hashCode == 2082229566 && type.equals("is_spam")) {
                                z = true;
                            }
                        } else if (type.equals("is_scam")) {
                            z = false;
                        }
                    } else if (type.equals("is_telemarketing")) {
                        z = true;
                    }
                    if (!z) {
                        this.f9792b++;
                    } else if (z) {
                        this.f9793c++;
                    } else if (z) {
                        this.f9794d++;
                    }
                    callLogBean.m24910b1(reportedContent.getType());
                    EZSearchContacts m26999d = C2631f.m27001b().m26999d(callLogBean.m24880o());
                    if (m26999d != null) {
                        callLogBean.m24931P0(m26999d.isSearched());
                        if (callLogBean.m24932P() == null || "".equals(callLogBean.m24932P())) {
                            callLogBean.m24901e1(C3767h1.m24292D(EZCallApplication.m26146c(), m26999d.getType_label()));
                            callLogBean.m24898f1(m26999d.getType_label());
                        }
                        if (callLogBean.m24958B() == null || "".equals(callLogBean.m24958B())) {
                            callLogBean.m24933O0(m26999d.getType());
                        }
                        if (callLogBean.m24892i() == null || "".equals(callLogBean.m24892i())) {
                            callLogBean.m24863x0(m26999d.getFormat_tel_number());
                        }
                        if (callLogBean.m24872t() == null || "".equals(callLogBean.m24872t())) {
                            callLogBean.m24945H0(m26999d.getOperator());
                        }
                        if (callLogBean.m24909c() == null || "".equals(callLogBean.m24909c())) {
                            callLogBean.m24896g0(m26999d.getBelong_area());
                        }
                        if (callLogBean.m24864x() == null || "".equals(callLogBean.m24864x())) {
                            callLogBean.m24939L0(m26999d.getReport_count());
                        }
                        callLogBean.m24937M0(m26999d.getName());
                        callLogBean.m24913a1(m26999d.getTel_number());
                        callLogBean.m24915Z0(m26999d.getT_p());
                        callLogBean.m24947G0(m26999d.getOld_tel_number());
                        callLogBean.m24905d0(m26999d.getAddress());
                        callLogBean.m24902e0(m26999d.getAvatar());
                        callLogBean.m24865w0(m26999d.getFb_avatar());
                        callLogBean.m24895g1(m26999d.getType_tags());
                        callLogBean.m24953D0(m26999d.getName_tags());
                        callLogBean.m24879o0(m26999d.getComment_tags());
                        callLogBean.m24875r0(m26999d.getCountry());
                        callLogBean.m24935N0(m26999d.getSearch_time());
                        callLogBean.m24867v0(m26999d.getFaild_error_log());
                    }
                    this.f9791a.add(callLogBean);
                }
                return "5887";
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            if ("5887".equals(str)) {
                this.f9795e.mo25022a(this.f9791a, this.f9792b, this.f9793c, this.f9794d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.w.d$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/w/d$d.class */
    public static class AsyncTaskC2992d extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private ReportedContent f9797a;

        AsyncTaskC2992d(ReportedContent reportedContent) {
            this.f9797a = reportedContent;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            C2633g.m26997a().m26995c(this.f9797a);
            return Boolean.TRUE;
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            C1764a.m28939b(EZCallApplication.m26146c()).m28937d(new Intent("com.allinone.callerid.REPROT_NUMBER"));
        }
    }

    /* renamed from: a */
    public static void m26306a(Context context, List<CallLogBean> list, List<String> list2, HashMap<String, Integer> hashMap, AbstractC2986c abstractC2986c) {
        try {
            new AsyncTaskC2988a(context, list, list2, hashMap, abstractC2986c).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m26305b(Context context, List<CallLogBean> list, List<String> list2, HashMap<String, Integer> hashMap, AbstractC2986c abstractC2986c) {
        try {
            new AsyncTaskC2989b(context, list, list2, hashMap, abstractC2986c).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m26304c(int i, int i2, int i3, AbstractC2993e abstractC2993e) {
        try {
            new AsyncTaskC2990c(i, i2, i3, abstractC2993e).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public static void m26303d(ReportedContent reportedContent) {
        try {
            new AsyncTaskC2992d(reportedContent).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
