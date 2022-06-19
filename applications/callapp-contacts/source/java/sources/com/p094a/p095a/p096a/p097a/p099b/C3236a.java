package com.p094a.p095a.p096a.p097a.p099b;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.multipro.p192d.C5106a;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
/* renamed from: com.a.a.a.a.b.a */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/b/a.class */
public class C3236a {

    /* renamed from: c */
    private static volatile C3236a f11653c;

    /* renamed from: a */
    private String f11654a = "";

    /* renamed from: b */
    private final ExecutorService f11655b = Executors.newSingleThreadExecutor();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.a.a.a.a.b.a$a */
    /* loaded from: classes-dex2jar.jar:com/a/a/a/a/b/a$a.class */
    public final class CallableC3238a implements Callable<String> {
        private CallableC3238a() {
            C3236a.this = r4;
        }

        /* renamed from: a */
        public String call() throws Exception {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(C4600n.m34815a());
                if (advertisingIdInfo != null) {
                    String id = advertisingIdInfo.getId();
                    C5478q.m32112b("gaid-", "getAdvertisingId: ".concat(String.valueOf(id)));
                    C3236a.m39085a(id);
                }
            } catch (Throwable th) {
                C5478q.m32108c("AdvertisingIdHelper", "getAdvertisingIdInfo error", th);
            }
            try {
                AdvertisingIdClient.Info advertisingIdInfo2 = AdvertisingIdClient.getAdvertisingIdInfo(C4600n.m34815a());
                if (advertisingIdInfo2 != null) {
                    C3236a.this.f11654a = advertisingIdInfo2.getId();
                    advertisingIdInfo2.isLimitAdTrackingEnabled();
                }
            } catch (Throwable th2) {
                C5478q.m32108c("AdvertisingIdHelper", "getAdvertisingIdInfo error", th2);
            }
            C5478q.m32112b("AdvertisingIdHelper", "mGAId:" + C3236a.this.f11654a + " , get gaid consume time :" + (System.currentTimeMillis() - currentTimeMillis));
            return C3236a.this.f11654a;
        }
    }

    private C3236a() {
    }

    /* renamed from: a */
    public static C3236a m39088a() {
        if (f11653c == null) {
            synchronized (C3236a.class) {
                try {
                    if (f11653c == null) {
                        f11653c = new C3236a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f11653c;
    }

    /* renamed from: a */
    static /* synthetic */ void m39085a(String str) {
        if (!TextUtils.isEmpty(str)) {
            C5106a.m33041a("name_gaid", "gaid", str);
        }
    }

    /* renamed from: b */
    public final String m39084b() {
        if (!TextUtils.isEmpty(this.f11654a)) {
            return this.f11654a;
        }
        try {
            this.f11654a = C5106a.m33035b("name_gaid", "gaid", "");
            C5478q.m32109c("gaid-", "getGAIdTimeOut-mGAId=" + this.f11654a);
            if (TextUtils.isEmpty(this.f11654a)) {
                FutureTask futureTask = new FutureTask(new CallableC3238a());
                this.f11655b.execute(futureTask);
                this.f11654a = (String) futureTask.get(500000L, TimeUnit.MICROSECONDS);
            }
        } catch (Throwable th) {
            C5478q.m32108c("AdvertisingIdHelper", "getGAIdTimeOut error", th);
        }
        return this.f11654a;
    }
}
