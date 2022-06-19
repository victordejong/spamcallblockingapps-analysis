package com.allinone.callerid.p199k;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.allinone.callerid.bean.ParserIpBean;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p162i.p163a.p185o.C2921c;
import com.allinone.callerid.p197j.C3029a;
import com.allinone.callerid.p199k.AsyncTaskC3034c;
import com.allinone.callerid.p200l.p201a.AbstractC3041d;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3725e;
import com.allinone.callerid.util.C3738f0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.C3810q;
import com.hzy.lib7z.ExtractCallback;
import com.hzy.lib7z.Z7Extractor;
import java.io.File;
import java.util.HashMap;
import org.json.JSONObject;
import p078c.p122d.p123a.AbstractC1978a;
import p078c.p122d.p123a.AbstractC2027i;
import p078c.p122d.p123a.C2058q;
/* renamed from: com.allinone.callerid.k.c */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/k/c.class */
public class AsyncTaskC3034c extends AsyncTask<String, Void, String> {

    /* renamed from: c */
    private AbstractC3041d f9883c;

    /* renamed from: d */
    private boolean f9884d;

    /* renamed from: e */
    private Context f9885e;

    /* renamed from: a */
    private String f9881a = EZCallApplication.m26146c().getExternalFilesDir("") + "/offlinedata.7z";

    /* renamed from: b */
    private String f9882b = "data/data/" + C3767h1.m24275M(EZCallApplication.m26146c()) + "/databases";

    /* renamed from: f */
    private int f9886f = 0;

    /* renamed from: g */
    private String f9887g = "";

    /* renamed from: h */
    private AbstractC2027i f9888h = new C3035a();

    /* renamed from: com.allinone.callerid.k.c$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/k/c$a.class */
    public class C3035a extends AbstractC2027i {
        C3035a() {
            AsyncTaskC3034c.this = r4;
        }

        /* renamed from: l */
        public /* synthetic */ void m26193m() {
            try {
                AsyncTaskC3034c asyncTaskC3034c = AsyncTaskC3034c.this;
                asyncTaskC3034c.m26195j(asyncTaskC3034c.f9881a, AsyncTaskC3034c.this.f9882b);
            } catch (Exception e) {
                e.printStackTrace();
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("checkupdate", "IOException: " + e.getMessage());
                }
                new File(AsyncTaskC3034c.this.f9881a).delete();
                if (AsyncTaskC3034c.this.f9883c == null) {
                    return;
                }
                AsyncTaskC3034c.this.f9883c.mo24847b();
            }
        }

        /* renamed from: n */
        public /* synthetic */ void m26191o() {
            try {
                AsyncTaskC3034c asyncTaskC3034c = AsyncTaskC3034c.this;
                asyncTaskC3034c.m26195j(asyncTaskC3034c.f9881a, AsyncTaskC3034c.this.f9882b);
            } catch (Exception e) {
                e.printStackTrace();
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("checkupdate", "IOException: " + e.getMessage());
                }
                new File(AsyncTaskC3034c.this.f9881a).delete();
            }
        }

        @Override // p078c.p122d.p123a.AbstractC2027i
        /* renamed from: b */
        public void mo26181b(AbstractC1978a abstractC1978a) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("checkupdate", "下载完成：开始解压数据： " + Thread.currentThread().getName());
            }
            C3810q.m24071b().m24070c("download_offline_db_complete");
            new Thread(new Runnable() { // from class: com.allinone.callerid.k.b
                @Override // java.lang.Runnable
                public final void run() {
                    AsyncTaskC3034c.C3035a.this.m26193m();
                }
            }).start();
        }

        @Override // p078c.p122d.p123a.AbstractC2027i
        /* renamed from: d */
        public void mo26180d(AbstractC1978a abstractC1978a, Throwable th) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("checkupdate", "下载失败：失败原因：" + th.getMessage() + " : " + Thread.currentThread().getName());
            }
            if ("Requested Range Not Satisfiable".equals(th.getMessage())) {
                new Thread(new Runnable() { // from class: com.allinone.callerid.k.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        AsyncTaskC3034c.C3035a.this.m26191o();
                    }
                }).start();
            }
            C3711a1.m24617L1(0L);
            if (AsyncTaskC3034c.this.f9883c != null) {
                AsyncTaskC3034c.this.f9883c.mo24847b();
            }
        }

        @Override // p078c.p122d.p123a.AbstractC2027i
        /* renamed from: f */
        public void mo26179f(AbstractC1978a abstractC1978a, int i, int i2) {
        }

        @Override // p078c.p122d.p123a.AbstractC2027i
        /* renamed from: g */
        public void mo26178g(AbstractC1978a abstractC1978a, int i, int i2) {
        }

        @Override // p078c.p122d.p123a.AbstractC2027i
        /* renamed from: h */
        public void mo26177h(AbstractC1978a abstractC1978a, int i, int i2) {
            float mo28367v = abstractC1978a.mo28367v() / abstractC1978a.mo28382f();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("checkupdate", "下载进度： " + i2 + "/" + i + "/   进度：" + ((int) (mo28367v * 100.0f)) + "%");
            }
        }

        @Override // p078c.p122d.p123a.AbstractC2027i
        /* renamed from: k */
        public void mo26176k(AbstractC1978a abstractC1978a) {
        }
    }

    /* renamed from: com.allinone.callerid.k.c$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/k/c$b.class */
    public class C3036b extends ExtractCallback {

        /* renamed from: com.allinone.callerid.k.c$b$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/k/c$b$a.class */
        class RunnableC3037a implements Runnable {
            RunnableC3037a() {
                C3036b.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (AsyncTaskC3034c.this.f9883c != null) {
                    AsyncTaskC3034c.this.f9883c.mo24847b();
                    AsyncTaskC3034c.this.f9883c.mo24848a();
                }
            }
        }

        C3036b() {
            AsyncTaskC3034c.this = r4;
        }

        @Override // com.hzy.lib7z.IExtractCallback
        public void onError(int i, String str) {
            if (C3718c0.f11914a) {
                Log.e("checkupdate", "解压失败： " + str);
            }
            C3810q.m24071b().m24070c("un_7zip_filed");
            new File(AsyncTaskC3034c.this.f9881a).delete();
            if (AsyncTaskC3034c.this.f9883c != null) {
                AsyncTaskC3034c.this.f9883c.mo24847b();
            }
        }

        @Override // com.hzy.lib7z.IExtractCallback
        public void onProgress(String str, long j) {
            AsyncTaskC3034c.this.f9887g = str;
            if (C3718c0.f11914a) {
                Log.e("checkupdate", "解压中... " + j);
            }
        }

        @Override // com.hzy.lib7z.ExtractCallback, com.hzy.lib7z.IExtractCallback
        public void onSucceed() {
            super.onSucceed();
            if (C3718c0.f11914a) {
                Log.e("checkupdate", "解压完成... ");
            }
            try {
                File file = new File(AsyncTaskC3034c.this.f9882b + "/" + AsyncTaskC3034c.this.f9887g);
                StringBuilder sb = new StringBuilder();
                sb.append(AsyncTaskC3034c.this.f9882b);
                sb.append("/offlinedata.sqlite");
                file.renameTo(new File(sb.toString()));
                Thread.sleep(1000L);
                File file2 = new File(AsyncTaskC3034c.this.f9881a);
                if (file2.exists()) {
                    file2.delete();
                }
                if (C3767h1.m24240k0()) {
                    C3718c0.m24436a("checkupdate", "保存成功");
                    C3738f0.m24377j(EZCallApplication.m26146c());
                    C3810q.m24071b().m24069d("download_offline_db_ok_new");
                    C3738f0.m24373n(EZCallApplication.m26146c());
                    if (C3711a1.m24576W() == 0) {
                        C3738f0.m24376k(EZCallApplication.m26146c());
                        C3810q.m24071b().m24069d("download_offline_db_ok_first_new");
                    }
                    C3718c0.m24436a("checkupdate", "保存成功");
                    C3711a1.m24661A1(System.currentTimeMillis());
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            new Handler(Looper.getMainLooper()).post(new RunnableC3037a());
        }
    }

    public AsyncTaskC3034c(Context context, boolean z, AbstractC3041d abstractC3041d) {
        this.f9883c = abstractC3041d;
        this.f9884d = z;
        this.f9885e = context.getApplicationContext();
    }

    /* renamed from: i */
    private void m26196i(String str) {
        if (C3718c0.f11914a) {
            C3718c0.m24436a("checkupdate", "开始下载离线库: " + str);
        }
        try {
            C2058q.m28155d().m28156c(str).mo28380h(this.f9881a).mo28392P(this.f9888h).mo28402F(8).mo28394N(1000).mo28399I(1000).start();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: j */
    public void m26195j(String str, String str2) {
        C3810q.m24071b().m24070c("un_7zip");
        Z7Extractor.extractFile(str, str2, new C3036b());
    }

    /* renamed from: g */
    public String doInBackground(String... strArr) {
        String str;
        String str2;
        try {
            String lowerCase = C3806p.m24083d(this.f9885e).getIso_code().split("/")[0].toLowerCase();
            String country_code = C3806p.m24083d(this.f9885e).getCountry_code();
            String m24268T = C3767h1.m24268T(this.f9885e);
            boolean z = "0";
            ParserIpBean m26410b = C2921c.m26411a().m26410b();
            if (m26410b != null) {
                String str3 = lowerCase;
                if (m26410b.getCountry() != null) {
                    str3 = lowerCase;
                    if (!"".equals(m26410b.getCountry())) {
                        str3 = m26410b.getCountry();
                    }
                }
                str = (m26410b.getState() == null || "".equals(m26410b.getState())) ? "" : m26410b.getState();
                if (m26410b.getCity() == null || "".equals(m26410b.getCity())) {
                    lowerCase = str3;
                    str2 = "";
                } else {
                    lowerCase = str3;
                    str2 = m26410b.getCity();
                }
            } else {
                str2 = "";
                str = str2;
            }
            if (C3711a1.m24500q()) {
                z = "1";
            }
            C3738f0.m24363x(EZCallApplication.m26146c());
            C3810q.m24071b().m24069d("request_offline_db_new");
            if (C3711a1.m24576W() == 0) {
                C3810q.m24071b().m24070c("request_offline_db_first_new");
                C3810q.m24071b().m24069d("request_offline_db_first_new");
            }
            C3738f0.m24364w(EZCallApplication.m26146c());
            HashMap hashMap = new HashMap();
            hashMap.put("last_update_time", String.valueOf(C3711a1.m24576W() / 1000));
            hashMap.put("cc", country_code);
            hashMap.put("platform", "android");
            hashMap.put("package", C3767h1.m24275M(this.f9885e));
            hashMap.put("app_version", C3767h1.m24265W(this.f9885e));
            hashMap.put("uid", m24268T);
            hashMap.put("stamp", C3767h1.m24271Q(this.f9885e, m24268T));
            hashMap.put("country", lowerCase);
            hashMap.put("state", str);
            hashMap.put("city", str2);
            hashMap.put("is_need_full", z);
            if (C3718c0.f11914a) {
                C3718c0.m24436a("checkupdate", "params: " + hashMap.toString());
            }
            String m26206b = C3029a.m26206b("https://app.show-caller.com/proc/v1/offpaccheupd.php", hashMap);
            C3718c0.m24436a("checkupdate", "result=" + m26206b);
            if (m26206b == null || "".equals(m26206b)) {
                return "";
            }
            C3711a1.m24617L1(System.currentTimeMillis() + 43200000);
            JSONObject jSONObject = new JSONObject(m26206b);
            if (jSONObject.getInt("status") != 1) {
                return "";
            }
            String string = jSONObject.getString("data_url");
            C3718c0.m24436a("checkupdate", "dataurl=" + string);
            String string2 = jSONObject.getString("filesize");
            if (string2 != null && !"".equals(string2)) {
                this.f9886f = Integer.valueOf(string2).intValue();
            }
            if (jSONObject.getInt("is_need_full") == 1) {
                C3711a1.m24586T0(true);
            } else {
                C3711a1.m24586T0(false);
            }
            return string != null ? !"".equals(string) ? string : "" : "";
        } catch (Exception e) {
            e.printStackTrace();
            if (!C3718c0.f11914a) {
                return "";
            }
            C3718c0.m24436a("wbb", "Exception: " + e.getMessage());
            return "";
        }
    }

    /* renamed from: h */
    public void onPostExecute(String str) {
        super.onPostExecute(str);
        if (C3718c0.f11914a) {
            C3718c0.m24436a("checkupdate", "onPostExecute: " + str);
        }
        if (str == null || str.equals("")) {
            AbstractC3041d abstractC3041d = this.f9883c;
            if (abstractC3041d == null) {
                return;
            }
            abstractC3041d.mo24847b();
        } else if (!this.f9884d) {
            C3738f0.m24378i(this.f9885e);
            C3810q.m24071b().m24069d("download_offline_db_new");
            C3738f0.m24379h(this.f9885e);
            m26196i(str);
        } else if (C3725e.m24415d(this.f9885e)) {
            C3738f0.m24378i(this.f9885e);
            C3810q.m24071b().m24069d("download_offline_db_new");
            C3738f0.m24379h(this.f9885e);
            m26196i(str);
            if (C3711a1.m24576W() != 0) {
                return;
            }
            C3810q.m24071b().m24069d("download_offline_db_first_new");
        } else if (!C3725e.m24416c(this.f9885e)) {
        } else {
            if (C3711a1.m24576W() == 0) {
                C3738f0.m24378i(this.f9885e);
                C3810q.m24071b().m24069d("download_offline_db_new");
                C3738f0.m24379h(this.f9885e);
                m26196i(str);
                if (C3711a1.m24576W() != 0) {
                    return;
                }
                C3810q.m24071b().m24069d("download_offline_db_first_new");
                return;
            }
            int i = this.f9886f;
            if (i == 0) {
                return;
            }
            if (i >= 1048576) {
                AbstractC3041d abstractC3041d2 = this.f9883c;
                if (abstractC3041d2 == null) {
                    return;
                }
                abstractC3041d2.mo24847b();
                return;
            }
            C3738f0.m24378i(this.f9885e);
            C3810q.m24071b().m24069d("download_offline_db_new");
            C3738f0.m24379h(this.f9885e);
            m26196i(str);
            if (C3711a1.m24576W() != 0) {
                return;
            }
            C3810q.m24071b().m24069d("download_offline_db_first_new");
        }
    }
}
