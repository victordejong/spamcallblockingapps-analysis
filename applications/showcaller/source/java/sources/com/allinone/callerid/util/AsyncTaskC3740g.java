package com.allinone.callerid.util;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p161h.C2735a;
import com.allinone.callerid.p197j.C3029a;
import com.allinone.callerid.search.CallLogBean;
import java.util.HashMap;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.util.g */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/g.class */
public class AsyncTaskC3740g extends AsyncTask<Object, Void, String> {

    /* renamed from: a */
    String f11921a;

    /* renamed from: b */
    Context f11922b;

    /* renamed from: com.allinone.callerid.util.g$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/g$a.class */
    public class RunnableC3741a implements Runnable {
        RunnableC3741a() {
            AsyncTaskC3740g.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2735a.m26730o().m26728q();
        }
    }

    public AsyncTaskC3740g(Context context, String str) {
        this.f11921a = str;
        this.f11922b = context;
    }

    /* renamed from: a */
    public String doInBackground(Object[] objArr) {
        String str;
        try {
            String m24268T = C3767h1.m24268T(EZCallApplication.m26146c());
            String m24265W = C3767h1.m24265W(EZCallApplication.m26146c());
            String country_code = C3806p.m24083d(EZCallApplication.m26146c()).getCountry_code();
            String m24271Q = C3767h1.m24271Q(EZCallApplication.m26146c(), this.f11921a);
            String str2 = this.f11921a;
            str = "";
            if (str2 != null) {
                str = "";
                if (!"".equals(str2)) {
                    str = "";
                    if (m24268T != null) {
                        str = "";
                        if (!"".equals(m24268T)) {
                            str = "";
                            if (m24265W != null) {
                                str = "";
                                if (!"".equals(m24265W)) {
                                    str = "";
                                    if (country_code != null) {
                                        str = "";
                                        if (!"".equals(country_code)) {
                                            str = "";
                                            if (m24271Q != null) {
                                                str = "";
                                                if (!"".equals(m24271Q)) {
                                                    if (C3718c0.f11914a) {
                                                        C3718c0.m24436a("searchCopy", "所有参数：number:" + this.f11921a + "\ndevice:android\nuid:" + m24268T + "\nversion:" + m24265W + "\ndefault_cc:" + country_code + "\nstamp:" + m24271Q + "\n");
                                                    }
                                                    HashMap hashMap = new HashMap();
                                                    hashMap.put("tel_number", this.f11921a);
                                                    hashMap.put("device", "android");
                                                    hashMap.put("uid", m24268T);
                                                    hashMap.put("version", m24265W);
                                                    hashMap.put("default_cc", country_code);
                                                    hashMap.put("cc", country_code);
                                                    hashMap.put("stamp", m24271Q);
                                                    hashMap.put("cid", "");
                                                    hashMap.put("is_contacts", "");
                                                    str = C3029a.m26206b("https://app.show-caller.com/api/v1/sea.php", hashMap);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            str = "";
        }
        if (C3718c0.f11914a) {
            C3718c0.m24436a("searchCopy", "resultJson:" + str);
        }
        return str;
    }

    /* renamed from: b */
    public void onPostExecute(String str) {
        super.onPostExecute(str);
        if (str == null || "".equals(str)) {
            return;
        }
        CallLogBean callLogBean = new CallLogBean();
        callLogBean.m24951E0(this.f11921a);
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.getInt("status") != 1) {
                return;
            }
            C3874x0.m23899b(jSONObject, this.f11921a, false);
            String string = jSONObject.getString("type_label");
            callLogBean.m24901e1(C3767h1.m24292D(EZCallApplication.m26146c(), string));
            callLogBean.m24898f1(string);
            String string2 = jSONObject.getString(ShortCut.NAME);
            if (string2 == null || "".equals(string2)) {
                callLogBean.m24955C0("");
                callLogBean.m24937M0("");
            } else {
                callLogBean.m24955C0(string2);
                callLogBean.m24937M0(string2);
            }
            callLogBean.m24939L0(jSONObject.getString("report_count"));
            String string3 = jSONObject.getString("old_tel_number");
            if (string3 != null && !"".equals(string3)) {
                callLogBean.m24947G0(string3);
            }
            String string4 = jSONObject.getString("format_tel_number");
            if (string4 != null && !string4.equals("")) {
                callLogBean.m24863x0(string4);
            }
            String string5 = jSONObject.getString("avatar");
            if (string5 != null && !"".equals(string5)) {
                callLogBean.m24902e0(string5);
            }
            callLogBean.m24945H0(jSONObject.getString("operator"));
            callLogBean.m24933O0(jSONObject.getString("type"));
            callLogBean.m24905d0(jSONObject.getString("address"));
            String string6 = jSONObject.getString("belong_area");
            if (string6 == null || "".equals(string6)) {
                callLogBean.m24896g0("");
            } else {
                callLogBean.m24896g0(string6);
            }
            int i = jSONObject.getInt("faild_error_log");
            if (i == 0 || i != 1) {
                return;
            }
            try {
                C2735a.m26730o().m26724u(this.f11922b, callLogBean);
                new Handler().postDelayed(new RunnableC3741a(), 6000L);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
