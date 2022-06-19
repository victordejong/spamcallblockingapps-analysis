package com.allinone.callerid.p162i.p163a.p174i.p177k;

import android.content.Context;
import android.database.Cursor;
import android.os.AsyncTask;
import androidx.core.content.C0586a;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.p157f.C2631f;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3771i;
import java.util.Date;
import org.json.JSONArray;
/* renamed from: com.allinone.callerid.i.a.i.k.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/k/b.class */
public class C2863b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.i.k.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/k/b$a.class */
    public static class AsyncTaskC2864a extends AsyncTask<String, Void, JSONArray> {

        /* renamed from: a */
        private AbstractC2862a f9619a;

        /* renamed from: b */
        private Context f9620b;

        /* renamed from: c */
        private String f9621c;

        /* renamed from: d */
        private String f9622d;

        /* renamed from: e */
        private String f9623e;

        /* renamed from: f */
        private String f9624f;

        /* renamed from: g */
        private String f9625g;

        AsyncTaskC2864a(Context context, String str, String str2, String str3, String str4, String str5, AbstractC2862a abstractC2862a) {
            this.f9619a = abstractC2862a;
            this.f9620b = context;
            this.f9621c = str;
            this.f9622d = str2;
            this.f9623e = str3;
            this.f9624f = str4;
            this.f9625g = str5;
        }

        /* renamed from: a */
        public JSONArray doInBackground(String... strArr) {
            String str;
            String str2;
            String str3;
            String str4;
            String str5;
            String str6;
            Object obj;
            String str7;
            JSONArray jSONArray = new JSONArray();
            try {
                if (!C3767h1.m24263Y(this.f9620b, this.f9621c)) {
                    CallLogBean callLogBean = null;
                    if (C0586a.m33353a(this.f9620b, "android.permission.READ_CALL_LOG") == 0) {
                        int i = 0;
                        Cursor query = this.f9620b.getContentResolver().query(C3714b1.m24450h(), new String[]{"date", ShortCut.NUMBER, "type", "duration"}, "number=?", new String[]{this.f9621c}, "date DESC");
                        CallLogBean callLogBean2 = null;
                        if (query != null) {
                            callLogBean2 = null;
                            if (query.getCount() > 0) {
                                query.moveToFirst();
                                while (true) {
                                    callLogBean2 = null;
                                    if (i >= query.getCount()) {
                                        break;
                                    }
                                    query.moveToPosition(i);
                                    Date date = new Date(query.getLong(query.getColumnIndex("date")));
                                    String string = query.getString(query.getColumnIndex("duration"));
                                    String string2 = query.getString(query.getColumnIndex(ShortCut.NUMBER));
                                    int i2 = query.getInt(query.getColumnIndex("type"));
                                    if (i2 != 2) {
                                        callLogBean2 = new CallLogBean();
                                        callLogBean2.m24951E0(string2);
                                        callLogBean2.m24904d1(i2);
                                        callLogBean2.m24899f0(date);
                                        callLogBean2.m24871t0(string);
                                        break;
                                    }
                                    i++;
                                }
                            }
                        }
                        callLogBean = callLogBean2;
                        if (query != null) {
                            query.close();
                            callLogBean = callLogBean2;
                        }
                    }
                    if (callLogBean != null) {
                        str2 = callLogBean.m24894h();
                        if (callLogBean.m24934O() == 1) {
                            if (str2 != null && Integer.parseInt(str2) > 0) {
                                str4 = "1";
                                str7 = "0";
                                str3 = String.valueOf(callLogBean.m24912b().getTime() / 1000);
                                str5 = C3771i.m24203g(callLogBean.m24912b().getTime());
                                str = str7;
                            }
                            str7 = "1";
                            str4 = "0";
                            str3 = String.valueOf(callLogBean.m24912b().getTime() / 1000);
                            str5 = C3771i.m24203g(callLogBean.m24912b().getTime());
                            str = str7;
                        } else if (callLogBean.m24934O() == 5) {
                            str7 = "1";
                            str4 = "0";
                            str3 = String.valueOf(callLogBean.m24912b().getTime() / 1000);
                            str5 = C3771i.m24203g(callLogBean.m24912b().getTime());
                            str = str7;
                        } else {
                            str4 = "0";
                            str7 = str4;
                            str3 = String.valueOf(callLogBean.m24912b().getTime() / 1000);
                            str5 = C3771i.m24203g(callLogBean.m24912b().getTime());
                            str = str7;
                        }
                    } else {
                        str5 = "";
                        str2 = "0";
                        str3 = str2;
                        str = str2;
                        str4 = str2;
                    }
                    EZSearchContacts m26999d = C2631f.m27001b().m26999d(this.f9621c);
                    if (m26999d != null) {
                        String str8 = (!m26999d.isSearched() || m26999d.getE164_tel_number() == null || "".equals(m26999d.getE164_tel_number())) ? "-1" : "1";
                        if (m26999d.getE164_tel_number() == null || "".equals(m26999d.getE164_tel_number())) {
                            this.f9621c = C3767h1.m24233o(this.f9621c);
                            str6 = "";
                            obj = str8;
                        } else {
                            this.f9621c = m26999d.getE164_tel_number();
                            str6 = "";
                            obj = str8;
                            if (m26999d.getCc() != null) {
                                str6 = "";
                                obj = str8;
                                if (!"".equals(m26999d.getCc())) {
                                    str6 = m26999d.getCc();
                                    obj = str8;
                                }
                            }
                        }
                    } else {
                        obj = "0";
                        str6 = "";
                    }
                    JSONArray jSONArray2 = new JSONArray();
                    jSONArray2.put(this.f9621c);
                    jSONArray2.put(C3767h1.m24251f(str6));
                    jSONArray2.put(obj);
                    jSONArray2.put(C3767h1.m24251f(str3));
                    jSONArray2.put(C3767h1.m24251f("0"));
                    jSONArray2.put(C3767h1.m24251f(str2));
                    jSONArray2.put(C3767h1.m24251f(str4));
                    jSONArray2.put(this.f9622d);
                    jSONArray2.put(this.f9623e);
                    jSONArray2.put(this.f9624f);
                    jSONArray2.put(this.f9625g);
                    jSONArray2.put("0");
                    jSONArray2.put(str);
                    jSONArray2.put(C3767h1.m24251f(str5));
                    jSONArray.put(jSONArray2);
                }
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("collectinfo", "tel_number_info" + jSONArray.toString());
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return jSONArray;
        }

        /* renamed from: b */
        public void onPostExecute(JSONArray jSONArray) {
            super.onPostExecute(jSONArray);
            this.f9619a.mo26496a(jSONArray);
        }
    }

    /* renamed from: a */
    public static void m26495a(Context context, String str, String str2, String str3, String str4, String str5, AbstractC2862a abstractC2862a) {
        try {
            new AsyncTaskC2864a(context, str, str2, str3, str4, str5, abstractC2862a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
