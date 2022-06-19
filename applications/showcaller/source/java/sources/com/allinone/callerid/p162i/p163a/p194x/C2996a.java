package com.allinone.callerid.p162i.p163a.p194x;

import android.content.Context;
import android.database.Cursor;
import android.os.AsyncTask;
import android.provider.ContactsContract;
import android.text.TextUtils;
import com.allinone.callerid.bean.SearchHis;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.p157f.C2631f;
import com.allinone.callerid.p157f.C2635h;
import com.allinone.callerid.p197j.C3029a;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.search.EZSearchResult;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3735e1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3771i;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.C3848s;
import com.allinone.callerid.util.C3866v;
import com.allinone.callerid.util.C3874x0;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.i.a.x.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/x/a.class */
public class C2996a {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.x.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/x/a$a.class */
    public static class AsyncTaskC2997a extends AsyncTask<String, Void, EZSearchResult> {

        /* renamed from: a */
        private AbstractC3006e f9803a;

        /* renamed from: b */
        private String f9804b;

        /* renamed from: c */
        private EZSearchResult f9805c;

        /* renamed from: d */
        private boolean f9806d;

        /* renamed from: e */
        private String f9807e;

        /* renamed from: f */
        private String f9808f;

        /* renamed from: g */
        private Context f9809g;

        /* renamed from: h */
        private JSONObject f9810h;

        /* renamed from: i */
        private JSONObject f9811i;

        AsyncTaskC2997a(Context context, String str, String str2, String str3, AbstractC3006e abstractC3006e) {
            this.f9803a = abstractC3006e;
            this.f9804b = str3;
            this.f9807e = str;
            this.f9808f = str2;
            this.f9809g = context;
        }

        /* renamed from: a */
        public EZSearchResult doInBackground(String... strArr) {
            Exception e;
            Exception e2;
            String m24274N;
            String m24268T;
            String m24265W;
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("tel_number", this.f9804b);
                hashMap.put("device", "android");
                hashMap.put("uid", C3767h1.m24268T(this.f9809g));
                hashMap.put("version", C3767h1.m24265W(this.f9809g));
                hashMap.put("default_cc", this.f9807e);
                hashMap.put("cc", this.f9808f);
                hashMap.put("stamp", C3767h1.m24271Q(this.f9809g, this.f9804b));
                hashMap.put("cid", "");
                hashMap.put("is_contacts", "");
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("searchNumber", "params:" + hashMap.toString());
                }
                C3810q.m24071b().m24070c("search_number");
                if (C3711a1.m24659B() != 0 && C3771i.m24192r(new Date(System.currentTimeMillis()), new Date(C3711a1.m24659B()))) {
                    C3810q.m24071b().m24070c("search_number_install_day");
                }
                String m26206b = C3029a.m26206b("https://app.show-caller.com/api/v1/sea.php", hashMap);
                if (m26206b != null && !"".equals(m26206b)) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("searchNumber", "response:" + m26206b);
                    }
                    EZSearchResult eZSearchResult = new EZSearchResult();
                    this.f9805c = eZSearchResult;
                    eZSearchResult.setNumber(this.f9804b);
                    JSONObject jSONObject = new JSONObject(m26206b);
                    this.f9810h = jSONObject;
                    int i = jSONObject.getInt("status");
                    this.f9805c.setStatus(i);
                    try {
                        if (i == 1) {
                            String string = this.f9810h.getString("type_label");
                            this.f9805c.setType_label_id(string);
                            this.f9805c.setType_label(C3767h1.m24292D(this.f9809g, string));
                            String string2 = this.f9810h.getString("type");
                            if (string2 != null && ("Mobile".equals(string2) || "Fixed line".equals(string2))) {
                                this.f9805c.setType(C3767h1.m24280J(this.f9809g, string2));
                            }
                            int i2 = this.f9810h.getInt("faild_error_log");
                            if (i2 != 0 && i2 == 1) {
                                C3810q.m24071b().m24070c("new_search_success_zhudong");
                            }
                            String string3 = this.f9810h.getString(ShortCut.NAME);
                            if (string3 == null || "".equals(string3)) {
                                this.f9805c.setName("");
                            } else {
                                this.f9805c.setName(string3);
                                C3810q.m24071b().m24070c("new_search_name_success_zhudong");
                            }
                            String string4 = this.f9810h.getString("old_tel_number");
                            if (string4 != null && !"".equals(string4)) {
                                this.f9805c.setOld_tel_number(string4);
                            }
                            String string5 = this.f9810h.getString("operator");
                            if (string5 != null && !"".equals(string5)) {
                                this.f9805c.setOperator(string5);
                            }
                            String string6 = this.f9810h.getString("format_tel_number");
                            if (string6 != null && !"".equals(string6)) {
                                this.f9805c.setFormat_tel_number(string6);
                            }
                            this.f9805c.setTel_number(this.f9810h.getString("tel_number"));
                            this.f9805c.setT_p(this.f9810h.getString("t_p"));
                            String string7 = this.f9810h.getString("avatar");
                            if (string7 != null && !"".equals(string7)) {
                                this.f9805c.setIcon(string7);
                            }
                            if (string == null || "".equals(string)) {
                                this.f9805c.setIsSpam(false);
                            } else {
                                this.f9805c.setIsSpam(true);
                                C3810q.m24071b().m24070c("search_number_spam");
                            }
                            String string8 = this.f9810h.getString("belong_area");
                            if (string8 == null || "".equals(string8)) {
                                this.f9805c.setLocation("");
                            } else {
                                this.f9805c.setLocation(string8);
                                if (C3718c0.f11914a) {
                                    C3718c0.m24436a("searchNumber", "位置：" + string8);
                                }
                            }
                            String string9 = this.f9810h.getString("soft_comments_tags");
                            if (string9 != null && !"".equals(string9)) {
                                this.f9805c.setComment_tags(string9);
                            }
                            String string10 = this.f9810h.getString("country");
                            if (string10 != null && !"".equals(string10)) {
                                this.f9805c.setCountry(string10);
                            }
                            String string11 = this.f9810h.getString("address");
                            if (string11 != null && !"".equals(string11)) {
                                this.f9805c.setLocation(string11);
                            }
                            this.f9805c.setComplaint_times(this.f9810h.getString("report_count"));
                            String m24217w = C3767h1.m24217w(this.f9809g, this.f9804b);
                            if (m24217w != null && !"".equals(m24217w)) {
                                this.f9805c.setContact(true);
                                this.f9805c.setName(m24217w);
                                this.f9805c.setRaw_contact_id(C3767h1.m24262Z(this.f9809g, this.f9804b));
                            }
                            String string12 = this.f9810h.getString("e164_tel_number");
                            String string13 = this.f9810h.getString("cc");
                            if (System.currentTimeMillis() - C3711a1.m24556c() > 0 && i2 == 0 && string12 != null && !"".equals(string12)) {
                                if (C3711a1.m24552d()) {
                                    C3810q.m24071b().m24070c("search_buyu_token_max_zhudong");
                                    C3810q.m24071b().m24069d("search_buyu_token_max_zhudong");
                                } else {
                                    C3810q.m24071b().m24070c("search_buyu_count_zhudong");
                                    C3810q.m24071b().m24069d("search_buyu_count_zhudong");
                                }
                                try {
                                    m24274N = C3767h1.m24274N();
                                    m24268T = C3767h1.m24268T(this.f9809g);
                                    m24265W = C3767h1.m24265W(this.f9809g);
                                } catch (Exception e3) {
                                    e2 = e3;
                                }
                                try {
                                    String country_code = C3806p.m24083d(this.f9809g).getCountry_code();
                                    String m24271Q = C3767h1.m24271Q(this.f9809g, string12);
                                    if (!"".equals(string12) && country_code != null && !"".equals(country_code) && m24271Q != null && !"".equals(m24271Q)) {
                                        HashMap hashMap2 = new HashMap();
                                        hashMap2.put("platform", "android");
                                        hashMap2.put("device", m24274N);
                                        hashMap2.put("uid", m24268T);
                                        hashMap2.put("app_version", m24265W);
                                        hashMap2.put("tel_number", C3866v.m23912c(string12));
                                        hashMap2.put("default_cc", country_code);
                                        hashMap2.put("cc", string13);
                                        hashMap2.put("stamp", m24271Q);
                                        if (C3718c0.f11914a) {
                                            C3718c0.m24436a("buyu", "searchNumber：" + string12);
                                            C3718c0.m24436a("buyu", "所有参数：" + hashMap2.toString());
                                        }
                                        String m26206b2 = C3029a.m26206b("https://app2.show-caller.com/api/v1/scl.php", hashMap2);
                                        if (C3718c0.f11914a) {
                                            C3718c0.m24436a("buyu", "response:" + m26206b2);
                                        }
                                        if (m26206b2 != null && !"".equals(m26206b2)) {
                                            try {
                                                JSONObject jSONObject2 = new JSONObject(m26206b2);
                                                this.f9811i = jSONObject2;
                                                int i3 = jSONObject2.getInt("status");
                                                if (i3 == 1) {
                                                    C3711a1.m24638G0(false);
                                                    if (this.f9811i.getInt("faild_error_log") == 1) {
                                                        C3810q.m24071b().m24069d("search_buyu_count_zhudong_ok");
                                                    }
                                                    C3711a1.m24642F0(0L);
                                                    String string14 = this.f9811i.getString("type_label");
                                                    String string15 = this.f9811i.getString(ShortCut.NAME);
                                                    String string16 = this.f9811i.getString("format_tel_number");
                                                    String string17 = this.f9811i.getString("avatar");
                                                    String string18 = this.f9811i.getString("operator");
                                                    String string19 = this.f9811i.getString("type");
                                                    this.f9805c.setName(string15);
                                                    this.f9805c.setType_label_id(string14);
                                                    this.f9805c.setType_label(C3767h1.m24292D(this.f9809g, string14));
                                                    this.f9805c.setFormat_tel_number(string16);
                                                    this.f9805c.setIcon(string17);
                                                    if (string19 != null && ("Mobile".equals(string19) || "Fixed line".equals(string19))) {
                                                        this.f9805c.setType(C3767h1.m24280J(this.f9809g, string19));
                                                    }
                                                    this.f9805c.setOperator(string18);
                                                } else if (i3 == 2) {
                                                    C3711a1.m24638G0(true);
                                                    String string20 = this.f9811i.getString("time_stamp");
                                                    if (string20 != null && !"".equals(string20)) {
                                                        C3711a1.m24642F0(Long.parseLong(string20) * 1000);
                                                    }
                                                } else if (i3 == -30) {
                                                    C3711a1.m24638G0(false);
                                                    C3810q.m24071b().m24070c("search_buyu_error_30_zhudong");
                                                } else {
                                                    C3711a1.m24638G0(false);
                                                }
                                            } catch (Exception e4) {
                                                e4.printStackTrace();
                                            }
                                        }
                                    }
                                } catch (Exception e5) {
                                    e2 = e5;
                                    e2.printStackTrace();
                                    return this.f9805c;
                                }
                            }
                        } else if (i == -20) {
                            C3848s.m23967a();
                        }
                    } catch (Exception e6) {
                        e = e6;
                        C3810q.m24071b().m24066g(e.getMessage());
                        if ("connect timed out".equals(e.getMessage())) {
                            this.f9806d = true;
                        }
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("searchNumber", "Exception:" + e.getMessage());
                        }
                        e.printStackTrace();
                        return this.f9805c;
                    }
                }
            } catch (Exception e7) {
                e = e7;
            }
            return this.f9805c;
        }

        /* renamed from: b */
        public void onPostExecute(EZSearchResult eZSearchResult) {
            super.onPostExecute(eZSearchResult);
            try {
                this.f9803a.mo25869a(eZSearchResult, this.f9806d);
                JSONObject jSONObject = this.f9810h;
                if (jSONObject != null) {
                    int i = jSONObject.getInt("status");
                    this.f9805c.setStatus(i);
                    if (i == 1) {
                        C3874x0.m23899b(this.f9810h, this.f9804b, true);
                    }
                }
                JSONObject jSONObject2 = this.f9811i;
                if (jSONObject2 == null || jSONObject2.getInt("status") != 1) {
                    return;
                }
                C3874x0.m23900a(this.f9811i, this.f9804b);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.x.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/x/a$b.class */
    public static class AsyncTaskC2998b extends AsyncTask<Void, String, Void> {

        /* renamed from: a */
        private List<CallLogBean> f9812a;

        /* renamed from: b */
        private List<String> f9813b;

        /* renamed from: c */
        private HashMap<String, Integer> f9814c;

        /* renamed from: d */
        private List<CallLogBean> f9815d;

        /* renamed from: e */
        private AbstractC3004c f9816e;

        AsyncTaskC2998b(List<CallLogBean> list, List<String> list2, HashMap<String, Integer> hashMap, List<CallLogBean> list3, AbstractC3004c abstractC3004c) {
            this.f9812a = list;
            this.f9813b = list2;
            this.f9814c = hashMap;
            this.f9815d = list3;
            this.f9816e = abstractC3004c;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            Cursor query = EZCallApplication.m26146c().getContentResolver().query(C3714b1.m24450h(), new String[]{"date", ShortCut.NUMBER, "type", "_id", "numbertype", "numberlabel"}, null, null, "date DESC");
            if (query == null || query.getCount() <= 0) {
                List<CallLogBean> list = this.f9812a;
                if (list == null || list.size() <= 0) {
                    return null;
                }
                this.f9812a.clear();
                return null;
            }
            this.f9812a.clear();
            this.f9813b.clear();
            this.f9814c.clear();
            query.moveToFirst();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.getDefault());
            for (int i = 0; i < query.getCount(); i++) {
                query.moveToPosition(i);
                Date date = new Date(query.getLong(query.getColumnIndex("date")));
                String string = query.getString(query.getColumnIndex(ShortCut.NUMBER));
                int i2 = query.getInt(query.getColumnIndex("type"));
                int i3 = query.getInt(query.getColumnIndex("_id"));
                int i4 = query.getInt(query.getColumnIndex("numbertype"));
                String str = string + i2 + simpleDateFormat.format(date) + "";
                if (this.f9813b.contains(str)) {
                    this.f9814c.put(str, Integer.valueOf(this.f9814c.get(str).intValue() + 1));
                } else {
                    this.f9813b.add(str);
                    this.f9814c.put(str, 1);
                    String string2 = query.getString(query.getColumnIndex("numberlabel"));
                    String str2 = (i4 == 0 && string2 == null) ? "" : (String) ContactsContract.CommonDataKinds.Phone.getTypeLabel(EZCallApplication.m26146c().getResources(), i4, string2);
                    CallLogBean callLogBean = new CallLogBean();
                    callLogBean.m24862y0(i3);
                    callLogBean.m24910b1(str);
                    callLogBean.m24951E0(string);
                    callLogBean.m24955C0("");
                    callLogBean.m24949F0(str2);
                    callLogBean.m24904d1(i2);
                    callLogBean.m24924U0(C3771i.m24196n(date));
                    callLogBean.m24899f0(date);
                    this.f9812a.add(callLogBean);
                }
            }
            List<CallLogBean> list2 = this.f9812a;
            if (list2 != null && list2.size() != 0) {
                try {
                    this.f9815d.clear();
                    for (int i5 = 0; i5 < this.f9812a.size(); i5++) {
                        if (!C3767h1.m24263Y(EZCallApplication.m26146c(), this.f9812a.get(i5).m24880o())) {
                            this.f9815d.add(this.f9812a.get(i5));
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            query.close();
            return null;
        }

        /* renamed from: b */
        public void onPostExecute(Void r7) {
            super.onPostExecute(r7);
            this.f9816e.mo25864a(this.f9812a, this.f9813b, this.f9814c, this.f9815d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.x.a$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/x/a$c.class */
    public static class AsyncTaskC2999c extends AsyncTask<Void, String, Void> {

        /* renamed from: a */
        private AbstractC3003b f9817a;

        AsyncTaskC2999c(AbstractC3003b abstractC3003b) {
            this.f9817a = abstractC3003b;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            try {
                C2635h.m26993b().m26994a();
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            this.f9817a.mo25870a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.x.a$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/x/a$d.class */
    public static class AsyncTaskC3000d extends AsyncTask<Void, Void, List<CallLogBean>> {

        /* renamed from: a */
        private List<CallLogBean> f9818a;

        /* renamed from: b */
        private AbstractC3005d f9819b;

        AsyncTaskC3000d(List<CallLogBean> list, AbstractC3005d abstractC3005d) {
            this.f9818a = list;
            this.f9819b = abstractC3005d;
        }

        /* renamed from: a */
        public List<CallLogBean> doInBackground(Void... voidArr) {
            ArrayList arrayList = new ArrayList();
            try {
                List<SearchHis> m26992c = C2635h.m26993b().m26992c();
                if (m26992c != null && m26992c.size() > 0) {
                    for (int i = 0; i < m26992c.size(); i++) {
                        CallLogBean callLogBean = new CallLogBean();
                        callLogBean.m24951E0(m26992c.get(i).getNumber());
                        EZSearchContacts m26999d = C2631f.m27001b().m26999d(m26992c.get(i).getNumber());
                        if (m26999d != null) {
                            callLogBean.m24955C0(m26999d.getName());
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
                            callLogBean.m24915Z0(m26999d.getT_p());
                            callLogBean.m24879o0(m26999d.getComment_tags());
                            callLogBean.m24875r0(m26999d.getCountry());
                            callLogBean.m24945H0(m26999d.getOperator());
                            callLogBean.m24867v0(m26999d.getFaild_error_log());
                            String m24217w = C3767h1.m24217w(EZCallApplication.m26146c(), callLogBean.m24880o());
                            if (m24217w != null && !"".equals(m24217w)) {
                                callLogBean.m24878p0(true);
                                callLogBean.m24955C0(m24217w);
                                callLogBean.m24942J0(C3767h1.m24262Z(EZCallApplication.m26146c(), callLogBean.m24880o()));
                            }
                        }
                        arrayList.add(callLogBean);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            List<CallLogBean> list = this.f9818a;
            if (list != null) {
                list.clear();
                this.f9818a.addAll(arrayList);
                Collections.reverse(this.f9818a);
            }
            return this.f9818a;
        }

        /* renamed from: b */
        public void onPostExecute(List<CallLogBean> list) {
            super.onPostExecute(list);
            this.f9819b.mo25865a(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.x.a$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/x/a$e.class */
    public static class AsyncTaskC3001e extends AsyncTask<Void, String, String> {

        /* renamed from: a */
        private AbstractC3005d f9820a;

        /* renamed from: b */
        private ArrayList<CallLogBean> f9821b;

        AsyncTaskC3001e(AbstractC3005d abstractC3005d) {
            this.f9820a = abstractC3005d;
        }

        /* renamed from: a */
        public String doInBackground(Void... voidArr) {
            try {
                Cursor query = EZCallApplication.m26146c().getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"display_name", "data1", "sort_key", "contact_id"}, null, null, "sort_key COLLATE LOCALIZED ASC");
                if (query != null && query.getCount() != 0) {
                    int columnIndex = query.getColumnIndex("data1");
                    int columnIndex2 = query.getColumnIndex("display_name");
                    query.getColumnIndex("sort_key");
                    if (query.getCount() > 0) {
                        this.f9821b = new ArrayList<>();
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
                                    this.f9821b.add(callLogBean);
                                }
                            }
                        }
                    }
                    query.close();
                    ArrayList<CallLogBean> arrayList = this.f9821b;
                    if (arrayList == null || arrayList.size() == 0) {
                        return "ok";
                    }
                    for (int i2 = 0; i2 < this.f9821b.size(); i2++) {
                        for (int size = this.f9821b.size() - 1; size > i2; size--) {
                            if (this.f9821b.get(i2).m24868v() == this.f9821b.get(size).m24868v()) {
                                this.f9821b.remove(size);
                            }
                        }
                    }
                    return "ok";
                }
                return null;
            } catch (Exception e) {
                return "ok";
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            if (str != null) {
                this.f9820a.mo25865a(this.f9821b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.x.a$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/x/a$f.class */
    public static class AsyncTaskC3002f extends AsyncTask<Void, String, Void> {

        /* renamed from: a */
        String f9822a;

        AsyncTaskC3002f(String str) {
            this.f9822a = str;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            try {
                if (C2635h.m26993b().m26991d(this.f9822a) != null) {
                    return null;
                }
                SearchHis searchHis = new SearchHis();
                searchHis.setNumber(this.f9822a);
                C2635h.m26993b().m26990e(searchHis);
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
        }
    }

    /* renamed from: a */
    public static void m26290a(AbstractC3003b abstractC3003b) {
        try {
            AsyncTaskC2999c asyncTaskC2999c = new AsyncTaskC2999c(abstractC3003b);
            if (asyncTaskC2999c.getStatus() == AsyncTask.Status.RUNNING) {
                return;
            }
            asyncTaskC2999c.cancel(true);
            new AsyncTaskC2999c(abstractC3003b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m26289b(List<CallLogBean> list, List<String> list2, HashMap<String, Integer> hashMap, List<CallLogBean> list3, AbstractC3004c abstractC3004c) {
        try {
            new AsyncTaskC2998b(list, list2, hashMap, list3, abstractC3004c).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m26288c(List<CallLogBean> list, AbstractC3005d abstractC3005d) {
        try {
            new AsyncTaskC3000d(list, abstractC3005d).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public static void m26287d(AbstractC3005d abstractC3005d) {
        try {
            new AsyncTaskC3001e(abstractC3005d).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public static List<CallLogBean> m26286e(List<CallLogBean> list, String str) {
        ArrayList arrayList = new ArrayList();
        try {
            CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
            if (str.matches("^([0-9]|[/+]).*")) {
                String replaceAll = str.replaceAll("\\-|\\s", "");
                if (list != null && list.size() > 0) {
                    copyOnWriteArrayList.addAll(list);
                }
                if (copyOnWriteArrayList.size() > 0) {
                    for (int size = copyOnWriteArrayList.size() - 1; size >= 0; size--) {
                        CallLogBean callLogBean = (CallLogBean) copyOnWriteArrayList.get(size);
                        if (callLogBean.m24880o() != null && callLogBean.m24880o().replaceAll("\\-|\\s", "").contains(replaceAll) && !arrayList.contains(callLogBean)) {
                            if (callLogBean.m24880o().startsWith(replaceAll)) {
                                arrayList.add(0, callLogBean);
                            } else {
                                arrayList.add(callLogBean);
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    /* renamed from: f */
    public static List<CallLogBean> m26285f(ArrayList<CallLogBean> arrayList, String str) {
        ArrayList arrayList2 = new ArrayList();
        try {
            CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
            if (str.matches("^([0-9]|[/+]).*")) {
                String replaceAll = str.replaceAll("\\-|\\s", "");
                if (arrayList != null && arrayList.size() > 0) {
                    copyOnWriteArrayList.addAll(arrayList);
                }
                if (copyOnWriteArrayList.size() > 0) {
                    for (int size = copyOnWriteArrayList.size() - 1; size >= 0; size--) {
                        CallLogBean callLogBean = (CallLogBean) copyOnWriteArrayList.get(size);
                        if (callLogBean.m24880o() != null && callLogBean.m24880o().replaceAll("\\-|\\s", "").contains(replaceAll) && !arrayList2.contains(callLogBean)) {
                            if (callLogBean.m24880o().startsWith(replaceAll)) {
                                arrayList2.add(0, callLogBean);
                            } else {
                                arrayList2.add(callLogBean);
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList2;
    }

    /* renamed from: g */
    public static void m26284g(Context context, String str, String str2, String str3, AbstractC3006e abstractC3006e) {
        try {
            AsyncTaskC2997a asyncTaskC2997a = new AsyncTaskC2997a(context, str, str2, str3, abstractC3006e);
            if (asyncTaskC2997a.getStatus() == AsyncTask.Status.RUNNING) {
                return;
            }
            asyncTaskC2997a.cancel(true);
            new AsyncTaskC2997a(context, str, str2, str3, abstractC3006e).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: h */
    public static void m26283h(String str) {
        try {
            new AsyncTaskC3002f(str).executeOnExecutor(C3735e1.m24405a(), new Void[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
