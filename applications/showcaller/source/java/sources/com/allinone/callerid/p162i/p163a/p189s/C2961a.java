package com.allinone.callerid.p162i.p163a.p189s;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.provider.ContactsContract;
import android.text.TextUtils;
import androidx.core.content.C0586a;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.p157f.C2631f;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3735e1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3771i;
import com.allinone.callerid.util.p205t9.C3859d;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
/* renamed from: com.allinone.callerid.i.a.s.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/s/a.class */
public class C2961a {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.s.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/s/a$a.class */
    public static class AsyncTaskC2962a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private List<CallLogBean> f9749a;

        /* renamed from: b */
        private List<String> f9750b;

        /* renamed from: c */
        private HashMap<String, Integer> f9751c;

        /* renamed from: d */
        AbstractC2964b f9752d;

        AsyncTaskC2962a(List<CallLogBean> list, List<String> list2, HashMap<String, Integer> hashMap, AbstractC2964b abstractC2964b) {
            this.f9749a = list;
            this.f9750b = list2;
            this.f9751c = hashMap;
            this.f9752d = abstractC2964b;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String str;
            String str2;
            String str3;
            CallLogBean callLogBean;
            String string;
            try {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "load_1:" + C3771i.m24206d(System.currentTimeMillis()));
                }
                Cursor query = EZCallApplication.m26146c().getContentResolver().query(C3714b1.m24450h(), null, null, null, "date DESC");
                if (query != null && query.getCount() > 0) {
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.getDefault());
                    while (query.moveToNext()) {
                        Date date = new Date(query.getLong(query.getColumnIndex("date")));
                        String string2 = query.getString(query.getColumnIndex(ShortCut.NUMBER));
                        String string3 = query.getString(query.getColumnIndex(ShortCut.NAME));
                        int i = query.getInt(query.getColumnIndex("type"));
                        int i2 = query.getInt(query.getColumnIndex("_id"));
                        int i3 = Build.VERSION.SDK_INT;
                        if (i3 >= 21) {
                            str2 = query.getString(query.getColumnIndex("photo_id"));
                            str = query.getString(query.getColumnIndex("formatted_number"));
                        } else {
                            str2 = "";
                            str = str2;
                        }
                        int i4 = query.getInt(query.getColumnIndex("numbertype"));
                        String str4 = string2 + i + simpleDateFormat.format(date) + "";
                        if (this.f9750b.contains(str4)) {
                            this.f9751c.put(str4, Integer.valueOf(this.f9751c.get(str4).intValue() + 1));
                        } else {
                            this.f9750b.add(str4);
                            this.f9751c.put(str4, 1);
                            String string4 = query.getString(query.getColumnIndex("numberlabel"));
                            String str5 = (i4 == 0 && string4 == null) ? "" : (String) ContactsContract.CommonDataKinds.Phone.getTypeLabel(EZCallApplication.m26146c().getResources(), i4, string4);
                            Uri parse = (i3 < 21 || (string = query.getString(query.getColumnIndex("lookup_uri"))) == null) ? null : Uri.parse(string);
                            if (C3714b1.m24440r()) {
                                int columnIndex = query.getColumnIndex("simid");
                                if (columnIndex != -1) {
                                    str3 = query.getString(columnIndex);
                                    String m24451g = C3714b1.m24451g(query);
                                    callLogBean = new CallLogBean();
                                    callLogBean.m24862y0(i2);
                                    callLogBean.m24910b1(str4);
                                    callLogBean.m24944I0(str2);
                                    callLogBean.m24951E0(string2);
                                    callLogBean.m24889j0(str);
                                    callLogBean.m24955C0(string3);
                                    if (string3 != null && !"".equals(string3)) {
                                        callLogBean.m24878p0(true);
                                        if (str2 != null && !"0".equals(str2)) {
                                            callLogBean.m24869u0(true);
                                        }
                                    }
                                    callLogBean.m24959A0(parse);
                                    callLogBean.m24949F0(str5);
                                    callLogBean.m24904d1(i);
                                    callLogBean.m24891i1(C3771i.m24202h(date));
                                    callLogBean.m24924U0(C3771i.m24196n(date));
                                    callLogBean.m24873s0(C3771i.m24207c(date));
                                    callLogBean.m24899f0(date);
                                    callLogBean.m24927S0(m24451g);
                                    callLogBean.m24907c1(str3);
                                    this.f9749a.add(callLogBean);
                                }
                            }
                            str3 = "";
                            String m24451g2 = C3714b1.m24451g(query);
                            callLogBean = new CallLogBean();
                            callLogBean.m24862y0(i2);
                            callLogBean.m24910b1(str4);
                            callLogBean.m24944I0(str2);
                            callLogBean.m24951E0(string2);
                            callLogBean.m24889j0(str);
                            callLogBean.m24955C0(string3);
                            if (string3 != null) {
                                callLogBean.m24878p0(true);
                                if (str2 != null) {
                                    callLogBean.m24869u0(true);
                                }
                            }
                            callLogBean.m24959A0(parse);
                            callLogBean.m24949F0(str5);
                            callLogBean.m24904d1(i);
                            callLogBean.m24891i1(C3771i.m24202h(date));
                            callLogBean.m24924U0(C3771i.m24196n(date));
                            callLogBean.m24873s0(C3771i.m24207c(date));
                            callLogBean.m24899f0(date);
                            callLogBean.m24927S0(m24451g2);
                            callLogBean.m24907c1(str3);
                            this.f9749a.add(callLogBean);
                        }
                    }
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("tony", "load_2:" + C3771i.m24206d(System.currentTimeMillis()));
                    }
                }
                if (query == null) {
                    return null;
                }
                query.close();
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9752d.mo25969a(this.f9749a, this.f9750b, this.f9751c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.s.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/s/a$b.class */
    public static class AsyncTaskC2963b extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2966d f9753a;

        /* renamed from: b */
        private ArrayList<CallLogBean> f9754b;

        AsyncTaskC2963b(AbstractC2966d abstractC2966d) {
            this.f9753a = abstractC2966d;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            Cursor query;
            try {
                if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CALL_LOG") == 0 && (query = EZCallApplication.m26146c().getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"display_name", "data1", "sort_key", "contact_id"}, null, null, "sort_key COLLATE LOCALIZED ASC")) != null && query.getCount() != 0) {
                    int columnIndex = query.getColumnIndex("data1");
                    int columnIndex2 = query.getColumnIndex("display_name");
                    query.getColumnIndex("sort_key");
                    if (query.getCount() > 0) {
                        this.f9754b = new ArrayList<>();
                        while (query.moveToNext()) {
                            String string = query.getString(columnIndex);
                            if (!TextUtils.isEmpty(string)) {
                                String string2 = query.getString(columnIndex2);
                                int i = query.getInt(query.getColumnIndex("contact_id"));
                                CallLogBean callLogBean = new CallLogBean();
                                callLogBean.m24942J0(i);
                                callLogBean.m24951E0(string.replaceAll(" ", ""));
                                if (string2 != null) {
                                    callLogBean.m24955C0(string2);
                                    callLogBean.m24878p0(true);
                                    callLogBean.f11518i0 = C3859d.m23936c(string2);
                                    this.f9754b.add(callLogBean);
                                }
                            }
                        }
                    }
                    query.close();
                    ArrayList<CallLogBean> arrayList = this.f9754b;
                    if (arrayList == null || arrayList.size() == 0) {
                        return null;
                    }
                    for (int i2 = 0; i2 < this.f9754b.size(); i2++) {
                        for (int size = this.f9754b.size() - 1; size > i2; size--) {
                            if (this.f9754b.get(i2).m24868v() == this.f9754b.get(size).m24868v()) {
                                this.f9754b.remove(size);
                            }
                        }
                    }
                    return null;
                }
                return null;
            } catch (Exception e) {
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9753a.mo25966a(this.f9754b);
        }
    }

    /* renamed from: a */
    public static void m26337a(List<CallLogBean> list, List<CallLogBean> list2, AbstractC2965c abstractC2965c) {
        try {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "loadData_start:" + C3771i.m24206d(System.currentTimeMillis()));
            }
            list2.clear();
            for (int i = 0; i < list.size(); i++) {
                CallLogBean callLogBean = list.get(i);
                if (!callLogBean.m24918Y()) {
                    list2.add(callLogBean);
                }
                EZSearchContacts m26999d = C2631f.m27001b().m26999d(callLogBean.m24880o());
                if (m26999d != null) {
                    if (!callLogBean.m24918Y()) {
                        callLogBean.m24901e1(C3767h1.m24292D(EZCallApplication.m26146c(), m26999d.getType_label()));
                        callLogBean.m24939L0(m26999d.getReport_count());
                    }
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
                    callLogBean.m24921W0(m26999d.getSubtype());
                    callLogBean.m24919X0(m26999d.getSubtype_cc());
                    callLogBean.m24867v0(m26999d.getFaild_error_log());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (C3718c0.f11914a) {
            C3718c0.m24436a("tony", "loadData_end:" + C3771i.m24206d(System.currentTimeMillis()));
        }
        abstractC2965c.mo25968a(list, list2);
    }

    /* renamed from: b */
    public static void m26336b(AbstractC2966d abstractC2966d) {
        try {
            new AsyncTaskC2963b(abstractC2966d).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m26335c(List<CallLogBean> list, List<String> list2, HashMap<String, Integer> hashMap, AbstractC2964b abstractC2964b) {
        try {
            new AsyncTaskC2962a(list, list2, hashMap, abstractC2964b).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public static List<CallLogBean> m26334d(List<CallLogBean> list) {
        try {
            if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CONTACTS") == 0) {
                boolean m24448j = C3714b1.m24448j(EZCallApplication.m26146c());
                if (list != null && list.size() > 0) {
                    ContentResolver contentResolver = EZCallApplication.m26146c().getContentResolver();
                    for (int i = 0; i < list.size(); i++) {
                        CallLogBean callLogBean = list.get(i);
                        if (callLogBean.m24918Y()) {
                            callLogBean.m24942J0(C3767h1.m24262Z(EZCallApplication.m26146c(), callLogBean.m24880o()));
                        }
                        if (C3714b1.m24440r() && m24448j && m24448j && callLogBean.m24936N() != null && !callLogBean.m24936N().equals("")) {
                            Cursor query = contentResolver.query(Uri.parse("content://telephony/siminfo"), null, "_id=?", new String[]{callLogBean.m24936N()}, null);
                            if (query != null) {
                                String str = "";
                                while (query.moveToNext()) {
                                    int columnIndex = query.getColumnIndex("sim_id");
                                    if (columnIndex != -1) {
                                        str = query.getString(columnIndex);
                                    }
                                    callLogBean.m24927S0(str);
                                }
                            }
                            if (query != null) {
                                query.close();
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
