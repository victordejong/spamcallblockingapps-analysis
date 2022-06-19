package com.allinone.callerid.util;

import android.content.Context;
import android.os.AsyncTask;
import com.allinone.callerid.p197j.C3029a;
import java.util.HashMap;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.util.x */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/x.class */
public class AsyncTaskC3872x extends AsyncTask {

    /* renamed from: a */
    private String f12224a;

    /* renamed from: b */
    private String f12225b;

    /* renamed from: c */
    private String f12226c;

    /* renamed from: d */
    private String f12227d;

    /* renamed from: e */
    private String f12228e;

    /* renamed from: f */
    private String f12229f;

    /* renamed from: g */
    private Context f12230g;

    /* renamed from: h */
    private AbstractC3873a f12231h;

    /* renamed from: com.allinone.callerid.util.x$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/x$a.class */
    public interface AbstractC3873a {
        /* renamed from: a */
        void mo23901a(int i);
    }

    public AsyncTaskC3872x(Context context, String str, String str2, String str3) {
        this.f12224a = str3;
        this.f12225b = str2;
        this.f12226c = str;
        this.f12230g = context;
    }

    /* renamed from: a */
    public void m23902a(AbstractC3873a abstractC3873a) {
        this.f12231h = abstractC3873a;
    }

    @Override // android.os.AsyncTask
    protected Object doInBackground(Object[] objArr) {
        this.f12227d = C3767h1.m24268T(this.f12230g);
        this.f12228e = C3767h1.m24265W(this.f12230g);
        this.f12229f = C3767h1.m24271Q(this.f12230g, this.f12225b);
        if (C3718c0.f11914a) {
            C3718c0.m24436a("comment", "所有参数：device:" + this.f12226c + "\nuid:" + this.f12227d + "\nversion:" + this.f12228e + "\nstamp:" + this.f12229f + "\ncid:" + this.f12225b + "\nt_p:" + this.f12224a + "\n");
        }
        String str = null;
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("device", "android");
            hashMap.put("uid", this.f12227d);
            hashMap.put("version", this.f12228e);
            hashMap.put("stamp", this.f12229f);
            hashMap.put("cid", this.f12225b);
            hashMap.put("t_p", this.f12224a);
            str = C3029a.m26206b("https://ct.show-caller.com/c_l/api/v1/clcinf.php", hashMap);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (C3718c0.f11914a) {
            C3718c0.m24436a("comment", "enlode_result:" + str);
        }
        return str;
    }

    @Override // android.os.AsyncTask
    protected void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        if (obj != null) {
            try {
                if ("".equals(obj)) {
                    return;
                }
                int i = new JSONObject(obj.toString()).getInt("status");
                if (C3718c0.f11914a) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("标记状态：");
                    sb.append(i == 1 ? "ok" : "failed");
                    C3718c0.m24436a("comment", sb.toString());
                }
                AbstractC3873a abstractC3873a = this.f12231h;
                if (abstractC3873a == null) {
                    return;
                }
                abstractC3873a.mo23901a(i);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
