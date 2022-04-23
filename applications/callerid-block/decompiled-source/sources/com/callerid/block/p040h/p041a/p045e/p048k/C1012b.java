package com.callerid.block.p040h.p041a.p045e.p048k;

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
/* renamed from: com.callerid.block.h.a.e.k.b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/k/b.class */
public class C1012b {

    /* renamed from: com.callerid.block.h.a.e.k.b$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/k/b$a.class */
    private static class AsyncTaskC1013a extends AsyncTask<String, Void, JSONArray> {

        /* renamed from: a */
        private AbstractC1011a f4446a;

        /* renamed from: b */
        private Context f4447b;

        /* renamed from: c */
        private String f4448c;

        /* renamed from: d */
        private String f4449d;

        /* renamed from: e */
        private String f4450e;

        /* renamed from: f */
        private String f4451f;

        /* renamed from: g */
        private String f4452g;

        AsyncTaskC1013a(Context context, String str, String str2, String str3, String str4, String str5, AbstractC1011a aVar) {
            this.f4446a = aVar;
            this.f4447b = context;
            this.f4448c = str;
            this.f4449d = str2;
            this.f4450e = str3;
            this.f4451f = str4;
            this.f4452g = str5;
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
            JSONArray jSONArray = new JSONArray();
            try {
                if (!C1216t0.m9604H(this.f4447b, this.f4448c)) {
                    CallLogBean callLogBean = null;
                    if (C1230a.m9514b(this.f4447b, "android.permission.READ_CALL_LOG")) {
                        int i = 0;
                        Cursor query = this.f4447b.getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{"date", EZBlackList.NUMBER, "type", "duration"}, "number=?", new String[]{this.f4448c}, "date DESC");
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
                    String str8 = "1";
                    if (callLogBean != null) {
                        str2 = callLogBean.m10057h();
                        if (callLogBean.m10091I() == 1) {
                            if (str2 != null && Integer.parseInt(str2) > 0) {
                                str = "1";
                                str4 = "0";
                                str5 = String.valueOf(callLogBean.m10065d().getTime() / 1000);
                                str3 = C1174e.m9858f(callLogBean.m10065d().getTime());
                            }
                            str4 = "1";
                            str = "0";
                            str5 = String.valueOf(callLogBean.m10065d().getTime() / 1000);
                            str3 = C1174e.m9858f(callLogBean.m10065d().getTime());
                        } else if (callLogBean.m10091I() == 5) {
                            str4 = "1";
                            str = "0";
                            str5 = String.valueOf(callLogBean.m10065d().getTime() / 1000);
                            str3 = C1174e.m9858f(callLogBean.m10065d().getTime());
                        } else {
                            str = "0";
                            str4 = str;
                            str5 = String.valueOf(callLogBean.m10065d().getTime() / 1000);
                            str3 = C1174e.m9858f(callLogBean.m10065d().getTime());
                        }
                    } else {
                        str3 = "";
                        str2 = "0";
                        str4 = str2;
                        str5 = str4;
                        str = str2;
                    }
                    EZSearchContacts d = C0947d.m10470b().m10468d(this.f4448c);
                    if (d != null) {
                        if (!d.isSearched() || d.getE164_tel_number() == null || "".equals(d.getE164_tel_number())) {
                            str8 = "-1";
                        }
                        if (d.getE164_tel_number() == null || "".equals(d.getE164_tel_number())) {
                            this.f4448c = C1216t0.m9569i(this.f4448c);
                            str6 = "";
                            str7 = str8;
                        } else {
                            this.f4448c = d.getE164_tel_number();
                            str6 = "";
                            str7 = str8;
                            if (d.getCc() != null) {
                                str6 = "";
                                str7 = str8;
                                if (!"".equals(d.getCc())) {
                                    str6 = d.getCc();
                                    str7 = str8;
                                }
                            }
                        }
                    } else {
                        str7 = "0";
                        str6 = "";
                    }
                    JSONArray jSONArray2 = new JSONArray();
                    jSONArray2.put(this.f4448c);
                    jSONArray2.put(C1216t0.m9581c(str6));
                    jSONArray2.put(str7);
                    jSONArray2.put(C1216t0.m9581c(str5));
                    jSONArray2.put(C1216t0.m9581c("0"));
                    jSONArray2.put(C1216t0.m9581c(str2));
                    jSONArray2.put(C1216t0.m9581c(str));
                    jSONArray2.put(this.f4449d);
                    jSONArray2.put(this.f4450e);
                    jSONArray2.put(this.f4451f);
                    jSONArray2.put(this.f4452g);
                    jSONArray2.put("0");
                    jSONArray2.put(str4);
                    jSONArray2.put(C1216t0.m9581c(str3));
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
            this.f4446a.m10362a(jSONArray);
        }
    }

    /* renamed from: a */
    public static void m10361a(Context context, String str, String str2, String str3, String str4, String str5, AbstractC1011a aVar) {
        try {
            new AsyncTaskC1013a(context, str, str2, str3, str4, str5, aVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
