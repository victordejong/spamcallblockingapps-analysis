package com.callerid.block.main;

import android.os.AsyncTask;
import android.os.Handler;
import android.view.ViewGroup;
import com.callerid.block.bean.EZBlackList;
import com.callerid.block.f.a;
import com.callerid.block.p038f.AbstractC0952b;
import com.callerid.block.search.CallLogBean;
import com.callerid.block.util.C1190l0;
import com.callerid.block.util.C1209r;
import com.callerid.block.util.C1215t;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/callerid/block/main/MainActivity$u.class */
class MainActivity$u extends AsyncTask<Object, Void, Object> {

    /* renamed from: a */
    String f4604a;

    /* renamed from: b */
    String f4605b;

    /* renamed from: c */
    String f4606c;

    /* renamed from: d */
    String f4607d;

    /* renamed from: e */
    String f4608e;

    /* renamed from: f */
    String f4609f;

    /* renamed from: com.callerid.block.main.MainActivity$u$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/main/MainActivity$u$a.class */
    class RunnableC1097a implements Runnable {
        RunnableC1097a(MainActivity$u mainActivity$u) {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewGroup viewGroup = AbstractC0952b.f4315a;
            if (viewGroup == null || !viewGroup.isShown()) {
                return;
            }
            a.n(EZCallApplication.m10163c());
        }
    }

    MainActivity$u(String str, String str2, String str3, String str4, String str5) {
        this.f4604a = str;
        this.f4605b = str2;
        this.f4607d = str3;
        this.f4608e = str4;
        this.f4609f = str5;
    }

    /* renamed from: a */
    public String doInBackground(Object[] objArr) {
        this.f4606c = C1216t0.m9607E(EZCallApplication.m10163c());
        C1227w.m9527a("searchCopy", "所有参数：number:" + this.f4604a + "\ndevice:" + this.f4605b + "\nuid:" + this.f4606c + "\nversion:" + this.f4607d + "\ndefault_cc:" + this.f4608e + "\nstamp:" + this.f4609f + "\n");
        HashMap hashMap = new HashMap();
        hashMap.put("tel_number", C1209r.m9626c(this.f4604a));
        hashMap.put("device", this.f4605b);
        hashMap.put("uid", this.f4606c);
        hashMap.put("version", this.f4607d);
        hashMap.put("default_cc", this.f4608e);
        hashMap.put("cc", this.f4608e);
        hashMap.put("stamp", this.f4609f);
        hashMap.put("cid", "1");
        String m9612e = C1215t.m9612e("https://app.ayamote.com/api/v1/sea.php", hashMap, "utf-8");
        String str = "";
        if (m9612e != null) {
            str = "";
            if (!"".equals(m9612e)) {
                str = C1209r.m9627b(m9612e);
            }
        }
        C1227w.m9527a("searchCopy", "resultJson:" + str);
        return str;
    }

    @Override // android.os.AsyncTask
    protected void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        if (obj == null || "".equals(obj.toString())) {
            return;
        }
        CallLogBean callLogBean = new CallLogBean();
        callLogBean.m10048m0(this.f4604a);
        try {
            JSONObject jSONObject = new JSONObject(obj.toString());
            if (jSONObject.getInt("status") != 1) {
                return;
            }
            C1190l0.m9795b(jSONObject, this.f4604a);
            callLogBean.m10092H0(jSONObject.getString("type_label"));
            String string = jSONObject.getString(EZBlackList.NAME);
            if (string == null || "".equals(string)) {
                callLogBean.m10050l0("");
                callLogBean.m10035t0("");
            } else {
                callLogBean.m10050l0(string);
                callLogBean.m10035t0(string);
            }
            callLogBean.m10037s0(jSONObject.getString("report_count"));
            String string2 = jSONObject.getString("old_tel_number");
            if (string2 != null && !"".equals(string2)) {
                callLogBean.m10044o0(string2);
            }
            String string3 = jSONObject.getString("format_tel_number");
            if (string3 != null && !string3.equals("")) {
                callLogBean.m10056h0(string3);
            }
            String string4 = jSONObject.getString("avatar");
            if (string4 != null && !"".equals(string4)) {
                callLogBean.m10077U(string4);
            }
            callLogBean.m10042p0(jSONObject.getString("operator"));
            callLogBean.m10032v0(jSONObject.getString("type"));
            callLogBean.m10078T(jSONObject.getString("address"));
            String string5 = jSONObject.getString("belong_area");
            if (string5 == null || "".equals(string5)) {
                callLogBean.m10075W("");
            } else {
                callLogBean.m10075W(string5);
            }
            int i = jSONObject.getInt("faild_error_log");
            if (i == 0 || i != 1) {
                return;
            }
            a.r(EZCallApplication.m10163c(), callLogBean);
            new Handler().postDelayed(new RunnableC1097a(this), 6000L);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
