package com.callerid.block.p056k.p057a;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.util.C1170d;
import com.callerid.block.util.C1184j;
import com.callerid.block.util.C1186k;
import com.callerid.block.util.C1199n0;
import com.callerid.block.util.C1209r;
import com.callerid.block.util.C1215t;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import com.callerid.block.util.C1236z;
import com.phone.libphone.C2805k;
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
import p092e.p096e.p097a.AbstractC3005a;
import p092e.p096e.p097a.AbstractC3067i;
import p092e.p096e.p097a.C3085q;
/* renamed from: com.callerid.block.k.a.d */
/* loaded from: classes-dex2jar.jar:com/callerid/block/k/a/d.class */
public class AsyncTaskC1082d extends AsyncTask<String, Void, String> {

    /* renamed from: b */
    private AbstractC1080b f4561b;

    /* renamed from: a */
    private String f4560a = C2805k.f11645a + "/office.zip";

    /* renamed from: c */
    private AbstractC3067i f4562c = new a(this);

    /* renamed from: com.callerid.block.k.a.d$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/k/a/d$b.class */
    class RunnableC1083b implements Runnable {
        RunnableC1083b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AsyncTaskC1082d.this.f4561b != null) {
                AsyncTaskC1082d.this.f4561b.m10196a();
                AsyncTaskC1082d.this.f4561b.m10194c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AsyncTaskC1082d(AbstractC1080b bVar) {
        this.f4561b = bVar;
    }

    /* renamed from: d */
    private static File m10189d(String str, String str2) {
        String replace = str2.replace("\\", "/");
        String[] split = replace.split("/");
        File file = new File(str);
        if (split.length <= 1) {
            return new File(file, replace);
        }
        for (int i = 0; i < split.length - 1; i++) {
            file = new File(file, split[i]);
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, split[split.length - 1]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public String doInBackground(String... strArr) {
        try {
            long A1 = C1199n0.m9780A1();
            C1186k.m9816c().m9812g("request_offline_parser");
            String iso_code = C1184j.m9826d(EZCallApplication.m10163c()).getIso_code();
            String country_code = C1184j.m9826d(EZCallApplication.m10163c()).getCountry_code();
            String str = iso_code;
            if (iso_code.contains("/")) {
                str = iso_code.substring(0, iso_code.indexOf("/"));
            }
            String E = C1216t0.m9607E(EZCallApplication.m10163c());
            HashMap hashMap = new HashMap();
            hashMap.put("app_version", C1216t0.m9605G(EZCallApplication.m10163c()));
            hashMap.put("uid", E);
            hashMap.put("country", str);
            hashMap.put("cc", country_code);
            hashMap.put("language", Locale.getDefault().getLanguage());
            hashMap.put("last_update_time", String.valueOf(A1));
            hashMap.put("stamp", C1216t0.m9611A(EZCallApplication.m10163c(), E));
            if (C1227w.f5084a) {
                C1227w.m9527a("wbb", "params: " + hashMap.toString());
            }
            String b = C1209r.m9627b(C1215t.m9615b("https://app.ayamote.com/proc/v1/parcheupd.php", hashMap, "utf-8"));
            C1227w.m9527a("wbb", "result=" + b);
            if (b == null) {
                return "";
            }
            String string = new JSONObject(b).getString("data_url");
            if (!"".equals(string) && string != null) {
                return string;
            }
            if (A1 == 0) {
                return "";
            }
            C1199n0.m9765F1();
            return "";
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public void onPostExecute(String str) {
        AbstractC1080b bVar;
        super.onPostExecute(str);
        if (C1227w.f5084a) {
            C1227w.m9527a("wbb", "onPostExecute: " + str);
        }
        if (str == null || str.equals("")) {
            bVar = this.f4561b;
            if (bVar == null) {
                return;
            }
        } else if (C1170d.m9900b(EZCallApplication.m10163c())) {
            C1186k.m9816c().m9812g("download_offline_parser");
            m10187f(str);
            return;
        } else {
            bVar = this.f4561b;
            if (bVar == null) {
                return;
            }
        }
        bVar.m10196a();
    }

    /* renamed from: f */
    public void m10187f(String str) {
        if (C1227w.f5084a) {
            C1227w.m9527a("wbb", "开始下载离线解析库: " + str);
        }
        try {
            AbstractC3005a c = C3085q.m300d().m301c(str);
            c.mo551l(this.f4560a);
            c.mo567Q(this.f4562c);
            c.mo578E(8);
            c.mo568O(1000);
            c.mo574I(1000);
            c.start();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: g */
    public void m10186g(String str, String str2) {
        ZipFile zipFile = new ZipFile(str);
        Enumeration<? extends ZipEntry> entries = zipFile.entries();
        byte[] bArr = new byte[1024];
        while (entries.hasMoreElements()) {
            ZipEntry zipEntry = (ZipEntry) entries.nextElement();
            if (zipEntry.isDirectory()) {
                String str3 = str2 + zipEntry.getName();
                str3.trim();
                new File(str3).mkdir();
            } else {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(m10189d(str2, zipEntry.getName())));
                BufferedInputStream bufferedInputStream = new BufferedInputStream(zipFile.getInputStream(zipEntry));
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
            C1186k.m9816c().m9812g("download_offline_parser_ok");
            C1236z.m9487d(EZCallApplication.m10163c());
            C1199n0.m9765F1();
        } catch (Exception e) {
            e.printStackTrace();
        }
        new Handler(Looper.getMainLooper()).post(new RunnableC1083b());
    }
}
