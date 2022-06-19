package com.huawei.updatesdk.p097a.p106b.p109c;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.huawei.updatesdk.a.b.c.c.d;
import com.huawei.updatesdk.p097a.p098a.C2511a;
import com.huawei.updatesdk.p097a.p098a.p099b.C2513b;
import com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a;
import com.huawei.updatesdk.p097a.p098a.p103d.AbstractC2523h;
import com.huawei.updatesdk.p097a.p106b.p109c.p110c.AbstractC2535a;
import com.huawei.updatesdk.p097a.p106b.p109c.p110c.C2538c;
import com.huawei.updatesdk.p097a.p106b.p109c.p110c.d$a;
import com.huawei.updatesdk.p111b.p120g.C2565a;
import com.huawei.updatesdk.p111b.p120g.C2566b;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ConnectException;
import java.net.SocketTimeoutException;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.a.b.c.b */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/b/c/b.class */
public class AsyncTaskC2534b extends AsyncTask<C2538c, Void, d> {

    /* renamed from: a */
    public C2538c f8217a;

    /* renamed from: c */
    private AbstractC2535a f8219c;

    /* renamed from: b */
    private d f8218b = null;

    /* renamed from: d */
    private C2513b f8220d = null;

    /* renamed from: e */
    private int f8221e = 0;

    public AsyncTaskC2534b(C2538c c2538c, AbstractC2535a abstractC2535a) {
        this.f8217a = null;
        this.f8219c = null;
        this.f8217a = c2538c;
        this.f8219c = abstractC2535a;
    }

    /* renamed from: a */
    private d m36737a(String str, d dVar) {
        try {
            dVar.fromJson(new JSONObject(str));
            dVar.b(0);
        } catch (Exception e) {
            C2515a.m36848a("StoreTask", "parse json error", e);
        }
        return dVar;
    }

    /* renamed from: a */
    private void m36740a(d dVar, int i, d$a d_a, Throwable th) {
        if (dVar != null) {
            dVar.b(i);
            dVar.a(d_a);
            String th2 = th.toString();
            if (m36738a(th.toString())) {
                th2 = th.getClass().getName();
            }
            dVar.a(th2);
        }
    }

    /* renamed from: a */
    private void m36739a(d dVar, Throwable th, String str) {
        d$a d_a;
        int i = 1;
        if (th instanceof ConnectException) {
            d_a = d$a.CONNECT_EXCEPTION;
        } else if ((th instanceof SocketTimeoutException) || (th.getMessage() != null && th.getMessage().contains("ConnectTimeoutException"))) {
            d_a = d$a.CONNECT_EXCEPTION;
            i = 2;
        } else if (th instanceof IllegalArgumentException) {
            d_a = d$a.PARAM_ERROR;
            i = 5;
        } else if (th instanceof IllegalAccessException) {
            d_a = d$a.UNKNOWN_EXCEPTION;
        } else if (!(th instanceof ArrayIndexOutOfBoundsException)) {
            if ((th instanceof InterruptedException) || (th instanceof InterruptedIOException)) {
                m36740a(dVar, 0, d$a.NORMAL, th);
                C2511a.m36863a("StoreTask", "UpdateSDK task is canceled");
            } else if (th instanceof IOException) {
                d_a = d$a.IO_EXCEPTION;
            } else if (dVar != null) {
                dVar.a(th.toString());
            }
            m36736a(str, th);
        } else {
            d_a = d$a.NO_PROGUARD;
            i = 6;
        }
        m36740a(dVar, i, d_a, th);
        m36736a(str, th);
    }

    /* renamed from: a */
    private void m36736a(String str, Throwable th) {
        StringBuilder sb = new StringBuilder();
        String th2 = th.toString();
        if (m36738a(th.toString())) {
            th2 = th.getClass().getName();
        }
        C22128a.m8666T0(sb, "invoke store error", ", exceptionType:", th2, ", url:");
        sb.append(str);
        sb.append(", method:");
        sb.append(this.f8217a.m36719b());
        sb.append(", retryTimes:" + this.f8221e);
        String sb2 = sb.toString();
        C2515a.m36848a("StoreTask", sb2, th);
        C2511a.m36863a("StoreTask", "UpdateSDK call store error: " + sb2);
    }

    /* renamed from: a */
    private boolean m36738a(String str) {
        try {
            return Pattern.compile("((2[0-4]\\d|25[0-5]|[01]?\\d\\d?)\\.){3}(2[0-4]\\d|25[0-5]|[01]?\\d\\d?)").matcher(str).find();
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("is contain ip error: ");
            m8728C.append(e.toString());
            C2511a.m36862b("StoreTask", m8728C.toString());
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0070  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m36732b(com.huawei.updatesdk.a.b.c.c.d r5) {
        /*
            r4 = this;
            r0 = r4
            boolean r0 = r0.isCancelled()
            if (r0 != 0) goto L8e
            r0 = r4
            com.huawei.updatesdk.a.b.c.c.a r0 = r0.f8219c
            if (r0 == 0) goto L8e
            r0 = r5
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L80
            java.lang.String r0 = "StoreTask"
            java.lang.String r1 = "notifyResult, response is null"
            com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a.m36847b(r0, r1)
            r0 = r4
            com.huawei.updatesdk.a.b.c.c.c r0 = r0.f8217a     // Catch: java.lang.IllegalAccessException -> L2b java.lang.InstantiationException -> L37
            java.lang.String r0 = r0.m36719b()     // Catch: java.lang.IllegalAccessException -> L2b java.lang.InstantiationException -> L37
            com.huawei.updatesdk.a.b.c.c.d r0 = com.huawei.updatesdk.p097a.p106b.p109c.C2533a.m36743a(r0)     // Catch: java.lang.IllegalAccessException -> L2b java.lang.InstantiationException -> L37
            r6 = r0
            r0 = r6
            r5 = r0
            goto L5d
        L2b:
            r6 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            goto L40
        L37:
            r6 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
        L40:
            r0 = r7
            java.lang.String r1 = "notifyResult, create response error, method:"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r4
            com.huawei.updatesdk.a.b.c.c.c r1 = r1.f8217a
            java.lang.String r1 = r1.m36719b()
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "StoreTask"
            r1 = r7
            java.lang.String r1 = r1.toString()
            r2 = r6
            com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a.m36848a(r0, r1, r2)
        L5d:
            r0 = r5
            if (r0 != 0) goto L70
            com.huawei.updatesdk.a.b.c.c.d r0 = new com.huawei.updatesdk.a.b.c.c.d
            r1 = r0
            r1.<init>()
            r5 = r0
            com.huawei.updatesdk.a.b.c.c.d$a r0 = com.huawei.updatesdk.p097a.p106b.p109c.p110c.d$a.PARAM_ERROR
            r6 = r0
            goto L74
        L70:
            com.huawei.updatesdk.a.b.c.c.d$a r0 = com.huawei.updatesdk.p097a.p106b.p109c.p110c.d$a.UNKNOWN_EXCEPTION
            r6 = r0
        L74:
            r0 = r5
            r1 = r6
            r0.a(r1)
            r0 = r5
            r1 = 1
            r0.b(r1)
            r0 = r5
            r6 = r0
        L80:
            r0 = r4
            com.huawei.updatesdk.a.b.c.c.a r0 = r0.f8219c
            r1 = r4
            com.huawei.updatesdk.a.b.c.c.c r1 = r1.f8217a
            r2 = r6
            r0.m36723b(r1, r2)
        L8e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.updatesdk.p097a.p106b.p109c.AsyncTaskC2534b.m36732b(com.huawei.updatesdk.a.b.c.c.d):void");
    }

    /* renamed from: b */
    private boolean m36731b(String str) {
        return TextUtils.isEmpty(str) || !AbstractC2523h.m36814d(str);
    }

    /* renamed from: c */
    private boolean m36729c(d dVar) {
        if (isCancelled()) {
            return false;
        }
        if (dVar.d() != 1 && dVar.d() != 2) {
            return false;
        }
        int i = this.f8221e;
        this.f8221e = i + 1;
        if (i >= 3) {
            StringBuilder m8728C = C22128a.m8728C("retry completed total times = ");
            m8728C.append(this.f8221e);
            m8728C.append(",response.responseCode = ");
            m8728C.append(dVar.d());
            C2515a.m36849a("StoreTask", m8728C.toString());
            return false;
        }
        StringBuilder m8728C2 = C22128a.m8728C("retry times = ");
        m8728C2.append(this.f8221e);
        m8728C2.append(",response.responseCode = ");
        m8728C2.append(dVar.d());
        C2515a.m36849a("StoreTask", m8728C2.toString());
        return true;
    }

    /* renamed from: c */
    private boolean m36728c(String str) {
        return str != null && !str.contains("emuiApiLevel") && !str.contains("ts") && !str.contains("harmonyApiLevel");
    }

    /* renamed from: d */
    private String m36727d() {
        String m36607a = C2565a.m36607a();
        C2515a.m36846c("StoreTask", "UserAgent is: " + m36607a);
        String str = m36607a;
        if (TextUtils.isEmpty(m36607a)) {
            str = "Android/1.0";
        }
        return str;
    }

    /* renamed from: d */
    private void m36726d(String str) {
        C2511a.m36863a("StoreTask", TextUtils.isEmpty(str) ? "UpdateSDK response error, resData == null" : "UpdateSDK response error, resData is not json string");
    }

    /* renamed from: e */
    private void m36725e() {
        m36732b(this.f8218b);
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x028b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.huawei.updatesdk.a.b.c.c.d m36742a() {
        /*
            Method dump skipped, instructions count: 677
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.updatesdk.p097a.p106b.p109c.AsyncTaskC2534b.m36742a():com.huawei.updatesdk.a.b.c.c.d");
    }

    /* renamed from: a */
    public d doInBackground(C2538c... c2538cArr) {
        StringBuilder m8728C = C22128a.m8728C("doInBackground, method:");
        m8728C.append(this.f8217a.m36719b());
        C2515a.m36849a("StoreTask", m8728C.toString());
        C2566b.m36605a(this);
        d m36730c = m36730c();
        AbstractC2535a abstractC2535a = this.f8219c;
        if (abstractC2535a != null) {
            abstractC2535a.m36724a(this.f8217a, m36730c);
        }
        return m36730c;
    }

    /* renamed from: a */
    public void onPostExecute(d dVar) {
        StringBuilder m8728C = C22128a.m8728C("onPostExecute, method:");
        m8728C.append(this.f8217a.m36719b());
        C2515a.m36849a("StoreTask", m8728C.toString());
        C2566b.m36606a().remove(this);
        m36725e();
    }

    /* renamed from: a */
    public final void m36735a(Executor executor) {
        executeOnExecutor(executor, this.f8217a);
    }

    /* renamed from: b */
    public void m36733b() {
        C2513b c2513b = this.f8220d;
        if (c2513b != null) {
            c2513b.m36857a();
            this.f8220d = null;
        }
    }

    /* renamed from: c */
    public final d m36730c() {
        d m36742a;
        d dVar = null;
        do {
            if (this.f8221e > 0 && dVar != null) {
                StringBuilder m8728C = C22128a.m8728C("call store error! responseCode:");
                m8728C.append(dVar.d());
                m8728C.append(", retryTimes:");
                m8728C.append(this.f8221e);
                C2515a.m36849a("StoreTask", m8728C.toString());
            }
            m36742a = m36742a();
            dVar = m36742a;
        } while (m36729c(m36742a));
        this.f8218b = m36742a;
        return m36742a;
    }
}
