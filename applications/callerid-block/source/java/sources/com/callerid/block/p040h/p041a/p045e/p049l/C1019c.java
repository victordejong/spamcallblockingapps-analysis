package com.callerid.block.p040h.p041a.p045e.p049l;

import android.content.Context;
import android.database.Cursor;
import android.os.AsyncTask;
import android.provider.CallLog;
import com.callerid.block.bean.EZBlackList;
import com.callerid.block.bean.EZSearchContacts;
import com.callerid.block.p036d.C0947d;
import com.callerid.block.search.CallLogBean;
import com.callerid.block.util.C1174e;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import com.callerid.block.util.p060x0.C1230a;
import java.util.Date;
import org.json.JSONArray;
/* renamed from: com.callerid.block.h.a.e.l.c */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/l/c.class */
public class C1019c {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.callerid.block.h.a.e.l.c$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/l/c$a.class */
    public static class AsyncTaskC1020a extends AsyncTask<String, Void, JSONArray> {

        /* renamed from: a */
        private AbstractC1018b f4458a;

        /* renamed from: b */
        private Context f4459b;

        /* renamed from: c */
        private String f4460c;

        AsyncTaskC1020a(Context context, String str, AbstractC1018b abstractC1018b) {
            this.f4458a = abstractC1018b;
            this.f4459b = context;
            this.f4460c = str;
        }

        /* renamed from: a */
        public JSONArray doInBackground(String... strArr) {
            String str;
            String str2;
            String str3;
            Object obj;
            String str4;
            String str5;
            String str6;
            Object obj2;
            String str7;
            String str8;
            JSONArray jSONArray = new JSONArray();
            try {
                if (!C1216t0.m9587Y(this.f4460c) && !C1216t0.m9604H(this.f4459b, this.f4460c)) {
                    CallLogBean callLogBean = null;
                    if (C1230a.m9514b(this.f4459b, "android.permission.READ_CALL_LOG")) {
                        int i = 0;
                        Cursor query = this.f4459b.getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{"date", EZBlackList.NUMBER, "type", "duration"}, "number=?", new String[]{this.f4460c}, "date DESC");
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
                                    String string2 = query.getString(query.getColumnIndex(EZBlackList.NUMBER));
                                    int i2 = query.getInt(query.getColumnIndex("type"));
                                    if (i2 != 2) {
                                        callLogBean2 = new CallLogBean();
                                        callLogBean2.m10048m0(string2);
                                        callLogBean2.m10094G0(i2);
                                        callLogBean2.m10076V(date);
                                        callLogBean2.m10066c0(string);
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
                        str3 = callLogBean.m10057h();
                        if (callLogBean.m10091I() == 1) {
                            if (str3 != null && Integer.parseInt(str3) > 0) {
                                str8 = "1";
                                str7 = "0";
                                long time = callLogBean.m10065d().getTime() / 1000;
                                str = C1174e.m9858f(callLogBean.m10065d().getTime());
                                str5 = String.valueOf(time);
                                str2 = str7;
                                obj = "1";
                                str4 = str8;
                            }
                            str7 = "1";
                            str8 = "0";
                            long time2 = callLogBean.m10065d().getTime() / 1000;
                            str = C1174e.m9858f(callLogBean.m10065d().getTime());
                            str5 = String.valueOf(time2);
                            str2 = str7;
                            obj = "1";
                            str4 = str8;
                        } else if (callLogBean.m10091I() == 5) {
                            str7 = "1";
                            str8 = "0";
                            long time22 = callLogBean.m10065d().getTime() / 1000;
                            str = C1174e.m9858f(callLogBean.m10065d().getTime());
                            str5 = String.valueOf(time22);
                            str2 = str7;
                            obj = "1";
                            str4 = str8;
                        } else {
                            str8 = "0";
                            str7 = str8;
                            long time222 = callLogBean.m10065d().getTime() / 1000;
                            str = C1174e.m9858f(callLogBean.m10065d().getTime());
                            str5 = String.valueOf(time222);
                            str2 = str7;
                            obj = "1";
                            str4 = str8;
                        }
                    } else {
                        obj = "2";
                        str = "";
                        str3 = "0";
                        str5 = str3;
                        str2 = str3;
                        str4 = str3;
                    }
                    EZSearchContacts m10468d = C0947d.m10470b().m10468d(this.f4460c);
                    if (m10468d != null) {
                        String str9 = (!m10468d.isSearched() || m10468d.getE164_tel_number() == null || "".equals(m10468d.getE164_tel_number())) ? "-1" : "1";
                        if (m10468d.getE164_tel_number() == null || "".equals(m10468d.getE164_tel_number())) {
                            this.f4460c = C1216t0.m9569i(this.f4460c);
                            obj2 = str9;
                            str6 = "";
                        } else {
                            this.f4460c = m10468d.getE164_tel_number();
                            obj2 = str9;
                            str6 = "";
                            if (m10468d.getCc() != null) {
                                obj2 = str9;
                                str6 = "";
                                if (!"".equals(m10468d.getCc())) {
                                    str6 = m10468d.getCc();
                                    obj2 = str9;
                                }
                            }
                        }
                    } else {
                        obj2 = "0";
                        str6 = "";
                    }
                    JSONArray jSONArray2 = new JSONArray();
                    jSONArray2.put(this.f4460c);
                    jSONArray2.put(C1216t0.m9581c(str6));
                    jSONArray2.put(obj2);
                    jSONArray2.put(C1216t0.m9581c(str5));
                    jSONArray2.put(C1216t0.m9581c("0"));
                    jSONArray2.put(C1216t0.m9581c(str3));
                    jSONArray2.put(C1216t0.m9581c(str4));
                    jSONArray2.put("0");
                    jSONArray2.put("0");
                    jSONArray2.put("0");
                    jSONArray2.put("0");
                    jSONArray2.put(obj);
                    jSONArray2.put(str2);
                    jSONArray2.put(C1216t0.m9581c(str));
                    jSONArray.put(jSONArray2);
                }
                if (C1227w.f5084a) {
                    C1227w.m9527a("collectinfo", "tel_number_info" + jSONArray.toString());
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return jSONArray;
        }

        /* renamed from: b */
        public void onPostExecute(JSONArray jSONArray) {
            super.onPostExecute(jSONArray);
            this.f4458a.m10352a(jSONArray);
        }
    }

    /* renamed from: a */
    public static void m10351a(Context context, String str, AbstractC1018b abstractC1018b) {
        try {
            new AsyncTaskC1020a(context, str, abstractC1018b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
