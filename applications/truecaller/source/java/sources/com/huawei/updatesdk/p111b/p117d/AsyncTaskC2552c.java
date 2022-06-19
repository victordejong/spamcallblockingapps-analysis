package com.huawei.updatesdk.p111b.p117d;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a;
import com.huawei.updatesdk.p097a.p098a.p103d.AbstractC2519d;
import com.huawei.updatesdk.p097a.p106b.p107a.C2530a;
import com.huawei.updatesdk.p097a.p106b.p108b.C2532b;
import com.huawei.updatesdk.p111b.p119f.C2564c;
import com.huawei.updatesdk.p111b.p120g.C2566b;
import com.huawei.updatesdk.p111b.p120g.C2567c;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.b.d.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/d/c.class */
public class AsyncTaskC2552c extends AsyncTask<Void, Void, Void> {

    /* renamed from: a */
    private String f8260a;

    /* renamed from: b */
    private HttpURLConnection f8261b;

    /* renamed from: d */
    private C2551b f8263d;

    /* renamed from: c */
    private boolean f8262c = false;

    /* renamed from: e */
    private Handler f8264e = new HandlerC2554b(null);

    /* renamed from: com.huawei.updatesdk.b.d.c$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/d/c$a.class */
    public class RunnableC2553a implements Runnable {
        public RunnableC2553a() {
            AsyncTaskC2552c.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AsyncTaskC2552c.this.f8261b != null) {
                AsyncTaskC2552c.this.f8262c = true;
                AsyncTaskC2552c.this.f8261b.disconnect();
            }
            AbstractC2519d.m36837a(new File(AsyncTaskC2552c.m36642e()));
        }
    }

    /* renamed from: com.huawei.updatesdk.b.d.c$b */
    /* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/d/c$b.class */
    public static class HandlerC2554b extends Handler {
        private HandlerC2554b() {
        }

        public /* synthetic */ HandlerC2554b(RunnableC2553a runnableC2553a) {
            this();
        }

        /* renamed from: a */
        private void m36641a(Message message, Intent intent, C2532b c2532b) {
            Bundle bundle = new Bundle();
            bundle.putInt("download_status_param", message.what);
            intent.putExtras(bundle);
            C2564c.m36610b().m36609b(c2532b);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            Object obj = message.obj;
            if (!(obj instanceof C2551b)) {
                return;
            }
            C2551b c2551b = (C2551b) obj;
            Intent intent = new Intent();
            C2532b m36751a = C2532b.m36751a(intent);
            int i = message.what;
            if (i == 2) {
                intent.putExtra("download_apk_size", c2551b.m36654e());
                intent.putExtra("download_apk_already", c2551b.m36662a());
                C2564c.m36610b().m36611a(m36751a);
                return;
            }
            if (i != 3) {
                if (i == 4) {
                    Context m36757a = C2530a.m36754c().m36757a();
                    C2556e.m36636a(m36757a, AsyncTaskC2552c.m36642e() + "/appmarket.apk", c2551b.m36656c(), c2551b.m36655d());
                } else if (i != 5) {
                    return;
                }
            }
            m36641a(message, intent, m36751a);
        }
    }

    public AsyncTaskC2552c(C2551b c2551b) {
        this.f8263d = c2551b;
        if (!TextUtils.isEmpty(c2551b.m36656c())) {
            this.f8260a = c2551b.m36656c();
        }
    }

    /* renamed from: a */
    private void m36651a(C2551b c2551b, String str) {
        Throwable th;
        FileOutputStream fileOutputStream;
        FileNotFoundException e;
        Exception e2;
        FileOutputStream fileOutputStream2;
        if (c2551b == null || TextUtils.isEmpty(c2551b.m36658b())) {
            return;
        }
        String m8543z2 = C22128a.m8543z2(str, "/appmarket.apk");
        FileOutputStream fileOutputStream3 = null;
        try {
            try {
                try {
                    fileOutputStream3 = null;
                    fileOutputStream2 = new FileOutputStream(new File(m8543z2));
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (FileNotFoundException e3) {
                e = e3;
                fileOutputStream = null;
            } catch (Exception e4) {
                e2 = e4;
                fileOutputStream = null;
            }
            try {
                if (!m36652a(c2551b, fileOutputStream2, m8543z2)) {
                    AbstractC2519d.m36837a(new File(m36642e()));
                }
                fileOutputStream2.close();
            } catch (FileNotFoundException e5) {
                fileOutputStream = fileOutputStream2;
                e = e5;
                FileOutputStream fileOutputStream4 = fileOutputStream;
                StringBuilder sb = new StringBuilder();
                FileOutputStream fileOutputStream5 = fileOutputStream;
                sb.append("DOWNLOAD market package FileNotFoundException error:");
                FileOutputStream fileOutputStream6 = fileOutputStream;
                sb.append(e.toString());
                fileOutputStream3 = fileOutputStream;
                C2515a.m36847b("DownloadMarketTask", sb.toString());
                if (fileOutputStream == null) {
                    return;
                }
                fileOutputStream.close();
            } catch (Exception e6) {
                fileOutputStream = fileOutputStream2;
                e2 = e6;
                FileOutputStream fileOutputStream7 = fileOutputStream;
                StringBuilder sb2 = new StringBuilder();
                FileOutputStream fileOutputStream8 = fileOutputStream;
                sb2.append("DOWNLOAD market package Exception error:");
                FileOutputStream fileOutputStream9 = fileOutputStream;
                sb2.append(e2.toString());
                fileOutputStream3 = fileOutputStream;
                C2515a.m36847b("DownloadMarketTask", sb2.toString());
                if (fileOutputStream == null) {
                    return;
                }
                fileOutputStream.close();
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream3 = fileOutputStream2;
                if (fileOutputStream3 != null) {
                    try {
                        fileOutputStream3.close();
                    } catch (IOException e7) {
                        C2515a.m36847b("DownloadMarketTask", "Close FileOutputStream failed!");
                    }
                }
                throw th;
            }
        } catch (IOException e8) {
            C2515a.m36847b("DownloadMarketTask", "Close FileOutputStream failed!");
        }
    }

    /* renamed from: a */
    private void m36648a(InputStream inputStream, OutputStream outputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                StringBuilder m8728C = C22128a.m8728C("downloadUrlToStream(String urlString,OutputStream outputStream) ");
                m8728C.append(e.toString());
                C2515a.m36847b("DownloadMarketTask", m8728C.toString());
            }
        }
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e2) {
                StringBuilder m8728C2 = C22128a.m8728C("downloadUrlToStream(String urlString,OutputStream outputStream) ");
                m8728C2.append(e2.toString());
                C2515a.m36847b("DownloadMarketTask", m8728C2.toString());
            }
        }
    }

    /* renamed from: a */
    private void m36647a(String str, int i, long j, String str2, int i2) {
        C2551b c2551b = new C2551b();
        c2551b.m36661a(i);
        c2551b.m36660a(j);
        c2551b.m36659a(str2);
        c2551b.m36657b(str);
        Handler handler = this.f8264e;
        if (handler == null) {
            return;
        }
        handler.sendMessage(handler.obtainMessage(i2, c2551b));
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x018b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01b0  */
    /* JADX WARN: Type inference failed for: r0v100, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m36652a(com.huawei.updatesdk.p111b.p117d.C2551b r9, java.io.OutputStream r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 764
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.updatesdk.p111b.p117d.AsyncTaskC2552c.m36652a(com.huawei.updatesdk.b.d.b, java.io.OutputStream, java.lang.String):boolean");
    }

    /* renamed from: d */
    private void m36643d() {
        HttpURLConnection httpURLConnection = this.f8261b;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    /* renamed from: e */
    public static String m36642e() {
        String m36755b = C2530a.m36754c().m36755b();
        if (TextUtils.isEmpty(m36755b)) {
            return "";
        }
        String m8543z2 = C22128a.m8543z2(m36755b, "/updatesdk");
        File file = new File(m8543z2);
        return (file.exists() || file.mkdirs()) ? m8543z2 : "";
    }

    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        C2566b.m36605a(this);
        m36651a(this.f8263d, m36642e());
        return null;
    }

    /* renamed from: a */
    public void m36653a() {
        C2567c.f8275a.execute(new RunnableC2553a());
    }

    /* renamed from: b */
    public void m36645b() {
        this.f8264e = null;
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        super.onCancelled();
        m36653a();
    }
}
