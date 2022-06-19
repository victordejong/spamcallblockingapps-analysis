package com.allinone.callerid.p200l.p201a;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p197j.C3029a;
import com.allinone.callerid.p200l.p201a.AsyncTaskC3042e;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3725e;
import com.allinone.callerid.util.C3738f0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.C3810q;
import com.phone.libphone.C9410k;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.json.JSONObject;
import p078c.p122d.p123a.AbstractC1978a;
import p078c.p122d.p123a.AbstractC2027i;
import p078c.p122d.p123a.C2058q;
/* renamed from: com.allinone.callerid.l.a.e */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/l/a/e.class */
public class AsyncTaskC3042e extends AsyncTask<String, Void, String> {

    /* renamed from: b */
    private AbstractC3041d f9895b;

    /* renamed from: a */
    private String f9894a = C9410k.f40248a + "/office.zip";

    /* renamed from: c */
    private AbstractC2027i f9896c = new C3043a();

    /* renamed from: com.allinone.callerid.l.a.e$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/l/a/e$a.class */
    public class C3043a extends AbstractC2027i {
        C3043a() {
            AsyncTaskC3042e.this = r4;
        }

        /* renamed from: l */
        public /* synthetic */ void m26174m() {
            try {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("wbb", "Util.path: " + C9410k.f40248a);
                }
                AsyncTaskC3042e asyncTaskC3042e = AsyncTaskC3042e.this;
                String str = asyncTaskC3042e.f9894a;
                asyncTaskC3042e.m26182g(str, C9410k.f40248a + "/");
            } catch (Exception e) {
                e.printStackTrace();
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("wbb", "IOException: " + e.getMessage());
                }
                if (AsyncTaskC3042e.this.f9895b == null) {
                    return;
                }
                AsyncTaskC3042e.this.f9895b.mo24847b();
            }
        }

        /* renamed from: n */
        public /* synthetic */ void m26172o() {
            new File(AsyncTaskC3042e.this.f9894a).delete();
        }

        @Override // p078c.p122d.p123a.AbstractC2027i
        /* renamed from: b */
        public void mo26181b(AbstractC1978a abstractC1978a) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "下载完成：开始解压数据： " + Thread.currentThread().getName());
            }
            new Thread(new Runnable() { // from class: com.allinone.callerid.l.a.b
                @Override // java.lang.Runnable
                public final void run() {
                    AsyncTaskC3042e.C3043a.this.m26174m();
                }
            }).start();
        }

        @Override // p078c.p122d.p123a.AbstractC2027i
        /* renamed from: d */
        public void mo26180d(AbstractC1978a abstractC1978a, Throwable th) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "下载失败：失败原因：" + th.getMessage() + " : " + Thread.currentThread().getName());
            }
            if ("Requested Range Not Satisfiable".equals(th.getMessage())) {
                new Thread(new Runnable() { // from class: com.allinone.callerid.l.a.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        AsyncTaskC3042e.C3043a.this.m26172o();
                    }
                }).start();
            }
            if (AsyncTaskC3042e.this.f9895b != null) {
                AsyncTaskC3042e.this.f9895b.mo24847b();
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
                C3718c0.m24436a("wbb", "下载进度： " + i2 + "/" + i + "/   进度：" + ((int) (mo28367v * 100.0f)) + "%");
            }
        }

        @Override // p078c.p122d.p123a.AbstractC2027i
        /* renamed from: k */
        public void mo26176k(AbstractC1978a abstractC1978a) {
        }
    }

    /* renamed from: com.allinone.callerid.l.a.e$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/l/a/e$b.class */
    public class RunnableC3044b implements Runnable {
        RunnableC3044b() {
            AsyncTaskC3042e.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AsyncTaskC3042e.this.f9895b != null) {
                AsyncTaskC3042e.this.f9895b.mo24847b();
                AsyncTaskC3042e.this.f9895b.mo24848a();
            }
        }
    }

    public AsyncTaskC3042e(AbstractC3041d abstractC3041d) {
        this.f9895b = abstractC3041d;
    }

    /* renamed from: d */
    private static File m26185d(String str, String str2) {
        String replace = str2.replace("\\", "/");
        String[] split = replace.split("/");
        File file = new File(str);
        if (split.length > 1) {
            for (int i = 0; i < split.length - 1; i++) {
                file = new File(file, split[i]);
            }
            if (!file.exists()) {
                file.mkdirs();
            }
            return new File(file, split[split.length - 1]);
        }
        return new File(file, replace);
    }

    /* renamed from: c */
    public String doInBackground(String... strArr) {
        try {
            long m24473w2 = C3711a1.m24473w2();
            int i = (m24473w2 > 0L ? 1 : (m24473w2 == 0L ? 0 : -1));
            if (i != 0 && System.currentTimeMillis() - m24473w2 <= 2592000000L) {
                return null;
            }
            C3810q.m24071b().m24070c("request_offline_parser_new");
            C3738f0.m24362y(EZCallApplication.m26146c());
            String iso_code = C3806p.m24083d(EZCallApplication.m26146c()).getIso_code();
            String country_code = C3806p.m24083d(EZCallApplication.m26146c()).getCountry_code();
            String str = iso_code;
            if (iso_code.contains("/")) {
                str = iso_code.substring(0, iso_code.indexOf("/"));
            }
            String m24268T = C3767h1.m24268T(EZCallApplication.m26146c());
            HashMap hashMap = new HashMap();
            hashMap.put("app_version", C3767h1.m24265W(EZCallApplication.m26146c()));
            hashMap.put("uid", m24268T);
            hashMap.put("country", str);
            hashMap.put("cc", country_code);
            hashMap.put("language", Locale.getDefault().getLanguage());
            hashMap.put("last_update_time", String.valueOf(m24473w2));
            hashMap.put("stamp", C3767h1.m24271Q(EZCallApplication.m26146c(), m24268T));
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "params: " + hashMap.toString());
            }
            String m26206b = C3029a.m26206b("https://app.show-caller.com/proc/v1/parcheupd.php", hashMap);
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "result=" + m26206b);
            }
            if (m26206b == null) {
                return "";
            }
            String string = new JSONObject(m26206b).getString("data_url");
            if (!"".equals(string) && string != null) {
                return string;
            }
            if (i == 0) {
                return "";
            }
            C3711a1.m24600P2();
            return "";
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: e */
    public void onPostExecute(String str) {
        super.onPostExecute(str);
        if (C3718c0.f11914a) {
            C3718c0.m24436a("wbb", "onPostExecute: " + str);
        }
        if (str == null || str.equals("")) {
            AbstractC3041d abstractC3041d = this.f9895b;
            if (abstractC3041d == null) {
                return;
            }
            abstractC3041d.mo24847b();
        } else if (C3725e.m24415d(EZCallApplication.m26146c())) {
            C3810q.m24071b().m24070c("download_offline_parser_new");
            C3738f0.m24375l(EZCallApplication.m26146c());
            m26183f(str);
        } else {
            AbstractC3041d abstractC3041d2 = this.f9895b;
            if (abstractC3041d2 == null) {
                return;
            }
            abstractC3041d2.mo24847b();
        }
    }

    /* renamed from: f */
    public void m26183f(String str) {
        if (C3718c0.f11914a) {
            C3718c0.m24436a("wbb", "开始下载离线解析库: " + str);
        }
        try {
            C2058q.m28155d().m28156c(str).mo28380h(this.f9894a).mo28392P(this.f9896c).mo28402F(8).mo28394N(1000).mo28399I(1000).start();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: g */
    public void m26182g(String str, String str2) {
        ZipFile zipFile = new ZipFile(str);
        Enumeration<? extends ZipEntry> entries = zipFile.entries();
        byte[] bArr = new byte[1024];
        while (entries.hasMoreElements()) {
            ZipEntry nextElement = entries.nextElement();
            if (nextElement.isDirectory()) {
                String str3 = str2 + nextElement.getName();
                str3.trim();
                new File(str3).mkdir();
            } else {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(m26185d(str2, nextElement.getName())));
                BufferedInputStream bufferedInputStream = new BufferedInputStream(zipFile.getInputStream(nextElement));
                while (true) {
                    int read = bufferedInputStream.read(bArr, 0, 1024);
                    if (read == -1) {
                        break;
                    }
                    bufferedOutputStream.write(bArr, 0, read);
                }
                bufferedInputStream.close();
                bufferedOutputStream.close();
            }
        }
        zipFile.close();
        Thread.sleep(2000L);
        try {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
            C3810q.m24071b().m24070c("download_offline_parser_ok_new");
            C3738f0.m24374m(EZCallApplication.m26146c());
            C3711a1.m24600P2();
        } catch (Exception e) {
            e.printStackTrace();
        }
        new Handler(Looper.getMainLooper()).post(new RunnableC3044b());
    }
}
