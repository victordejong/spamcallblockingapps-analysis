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

    /* renamed from: com.callerid.block.h.a.e.l.c$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/l/c$a.class */
    private static class AsyncTaskC1020a extends AsyncTask<String, Void, JSONArray> {

        /* renamed from: a */
        private AbstractC1018b f4458a;

        /* renamed from: b */
        private Context f4459b;

        /* renamed from: c */
        private String f4460c;

        AsyncTaskC1020a(Context context, String str, AbstractC1018b bVar) {
            this.f4458a = bVar;
            this.f4459b = context;
            this.f4460c = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public JSONArray doInBackground(String... strArr) {
            String str;
            String str2;
            String str3;
            String str4;
            String str5;
            String str6;
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
                    String str9 = "1";
                    if (callLogBean != null) {
                        str3 = callLogBean.m10057h();
                        if (callLogBean.m10091I() == 1) {
                            if (str3 != null && Integer.parseInt(str3) > 0) {
                                str5 = "1";
                                str2 = "0";
                                long time = callLogBean.m10065d().getTime() / 1000;
                                str = C1174e.m9858f(callLogBean.m10065d().getTime());
                                str6 = String.valueOf(time);
                                str4 = "1";
                            }
                            str2 = "1";
                            str5 = "0";
                            long time2 = callLogBean.m10065d().getTime() / 1000;
                            str = C1174e.m9858f(callLogBean.m10065d().getTime());
                            str6 = String.valueOf(time2);
                            str4 = "1";
                        } else if (callLogBean.m10091I() == 5) {
                            str2 = "1";
                            str5 = "0";
                            long time22 = callLogBean.m10065d().getTime() / 1000;
                            str = C1174e.m9858f(callLogBean.m10065d().getTime());
                            str6 = String.valueOf(time22);
                            str4 = "1";
                        } else {
                            str5 = "0";
                            str2 = str5;
                            long time222 = callLogBean.m10065d().getTime() / 1000;
                            str = C1174e.m9858f(callLogBean.m10065d().getTime());
                            str6 = String.valueOf(time222);
                            str4 = "1";
                        }
                    } else {
                        str4 = "2";
                        str = "";
                        str3 = "0";
                        str6 = str3;
                        str2 = str3;
                        str5 = str3;
                    }
                    EZSearchContacts d = C0947d.m10470b().m10468d(this.f4460c);
                    if (d != null) {
                        if (!d.isSearched() || d.getE164_tel_number() == null || "".equals(d.getE164_tel_number())) {
                            str9 = "-1";
                        }
                        if (d.getE164_tel_number() == null || "".equals(d.getE164_tel_number())) {
                            this.f4460c = C1216t0.m9569i(this.f4460c);
                            str8 = str9;
                            str7 = "";
                        } else {
                            this.f4460c = d.getE164_tel_number();
                            str8 = str9;
                            str7 = "";
                            if (d.getCc() != null) {
                                str8 = str9;
                                str7 = "";
                                if (!"".equals(d.getCc())) {
                                    str7 = d.getCc();
                                    str8 = str9;
                                }
                            }
                        }
                    } else {
                        str8 = "0";
                        str7 = "";
                    }
                    JSONArray jSONArray2 = new JSONArray();
                    jSONArray2.put(this.f4460c);
                    jSONArray2.put(C1216t0.m9581c(str7));
                    jSONArray2.put(str8);
                    jSONArray2.put(C1216t0.m9581c(str6));
                    jSONArray2.put(C1216t0.m9581c("0"));
                    jSONArray2.put(C1216t0.m9581c(str3));
                    jSONArray2.put(C1216t0.m9581c(str5));
                    jSONArray2.put("0");
                    jSONArray2.put("0");
                    jSONArray2.put("0");
                    jSONArray2.put("0");
                    jSONArray2.put(str4);
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

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: b */
        public void onPostExecute(JSONArray jSONArray) {
            super.onPostExecute(jSONArray);
            this.f4458a.m10352a(jSONArray);
        }
    }

    /* renamed from: a */
    public static void m10351a(Context context, String str, AbstractC1018b bVar) {
        try {
            new AsyncTaskC1020a(context, str, bVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
