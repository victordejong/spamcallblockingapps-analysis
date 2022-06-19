package com.allinone.callerid.p162i.p163a.p174i.p178l;

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
/* renamed from: com.allinone.callerid.i.a.i.l.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/l/b.class */
public class C2866b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.i.l.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/l/b$a.class */
    public static class AsyncTaskC2867a extends AsyncTask<String, Void, JSONArray> {

        /* renamed from: a */
        private AbstractC2865a f9626a;

        /* renamed from: b */
        private Context f9627b;

        /* renamed from: c */
        private String f9628c;

        AsyncTaskC2867a(Context context, String str, AbstractC2865a abstractC2865a) {
            this.f9626a = abstractC2865a;
            this.f9627b = context;
            this.f9628c = str;
        }

        /* renamed from: a */
        public JSONArray doInBackground(String... strArr) {
            String str;
            String str2;
            Object obj;
            String str3;
            String str4;
            String str5;
            String str6;
            Object obj2;
            String str7;
            JSONArray jSONArray = new JSONArray();
            try {
                if (!C3767h1.m24216w0(this.f9628c) && !C3767h1.m24263Y(this.f9627b, this.f9628c)) {
                    CallLogBean callLogBean = null;
                    if (C0586a.m33353a(this.f9627b, "android.permission.READ_CALL_LOG") == 0) {
                        int i = 0;
                        Cursor query = this.f9627b.getContentResolver().query(C3714b1.m24450h(), new String[]{"date", ShortCut.NUMBER, "type", "duration"}, "number=?", new String[]{this.f9628c}, "date DESC");
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
                        str3 = callLogBean.m24894h();
                        if (callLogBean.m24934O() == 1) {
                            if (str3 != null && Integer.parseInt(str3) > 0) {
                                str7 = "1";
                                str4 = "0";
                                long time = callLogBean.m24912b().getTime() / 1000;
                                str2 = C3771i.m24203g(callLogBean.m24912b().getTime());
                                str5 = String.valueOf(time);
                                obj = "1";
                                str = str7;
                            }
                            str4 = "1";
                            str7 = "0";
                            long time2 = callLogBean.m24912b().getTime() / 1000;
                            str2 = C3771i.m24203g(callLogBean.m24912b().getTime());
                            str5 = String.valueOf(time2);
                            obj = "1";
                            str = str7;
                        } else if (callLogBean.m24934O() == 5) {
                            str4 = "1";
                            str7 = "0";
                            long time22 = callLogBean.m24912b().getTime() / 1000;
                            str2 = C3771i.m24203g(callLogBean.m24912b().getTime());
                            str5 = String.valueOf(time22);
                            obj = "1";
                            str = str7;
                        } else {
                            str7 = "0";
                            str4 = str7;
                            long time222 = callLogBean.m24912b().getTime() / 1000;
                            str2 = C3771i.m24203g(callLogBean.m24912b().getTime());
                            str5 = String.valueOf(time222);
                            obj = "1";
                            str = str7;
                        }
                    } else {
                        obj = "2";
                        str2 = "";
                        str3 = "0";
                        str4 = str3;
                        str5 = str4;
                        str = str3;
                    }
                    EZSearchContacts m26999d = C2631f.m27001b().m26999d(this.f9628c);
                    if (m26999d != null) {
                        String str8 = (!m26999d.isSearched() || m26999d.getE164_tel_number() == null || "".equals(m26999d.getE164_tel_number())) ? "-1" : "1";
                        if (m26999d.getE164_tel_number() == null || "".equals(m26999d.getE164_tel_number())) {
                            this.f9628c = C3767h1.m24233o(this.f9628c);
                            obj2 = str8;
                            str6 = "";
                        } else {
                            this.f9628c = m26999d.getE164_tel_number();
                            obj2 = str8;
                            str6 = "";
                            if (m26999d.getCc() != null) {
                                obj2 = str8;
                                str6 = "";
                                if (!"".equals(m26999d.getCc())) {
                                    str6 = m26999d.getCc();
                                    obj2 = str8;
                                }
                            }
                        }
                    } else {
                        obj2 = "0";
                        str6 = "";
                    }
                    JSONArray jSONArray2 = new JSONArray();
                    jSONArray2.put(this.f9628c);
                    jSONArray2.put(C3767h1.m24251f(str6));
                    jSONArray2.put(obj2);
                    jSONArray2.put(C3767h1.m24251f(str5));
                    jSONArray2.put(C3767h1.m24251f("0"));
                    jSONArray2.put(C3767h1.m24251f(str3));
                    jSONArray2.put(C3767h1.m24251f(str));
                    jSONArray2.put("0");
                    jSONArray2.put("0");
                    jSONArray2.put("0");
                    jSONArray2.put("0");
                    jSONArray2.put(obj);
                    jSONArray2.put(str4);
                    jSONArray2.put(C3767h1.m24251f(str2));
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
            this.f9626a.mo25868a(jSONArray);
        }
    }

    /* renamed from: a */
    public static void m26492a(Context context, String str, AbstractC2865a abstractC2865a) {
        try {
            AsyncTaskC2867a asyncTaskC2867a = new AsyncTaskC2867a(context, str, abstractC2865a);
            if (asyncTaskC2867a.getStatus() == AsyncTask.Status.RUNNING) {
                return;
            }
            asyncTaskC2867a.cancel(true);
            new AsyncTaskC2867a(context, str, abstractC2865a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
