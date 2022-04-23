package com.a.a.a.a.b;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.utils.q;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/b/a.class */
public class a {

    /* renamed from: c  reason: collision with root package name */
    private static volatile a f6351c;

    /* renamed from: a  reason: collision with root package name */
    private String f6352a = "";

    /* renamed from: b  reason: collision with root package name */
    private final ExecutorService f6353b = Executors.newSingleThreadExecutor();

    /* renamed from: com.a.a.a.a.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/a/a/a/a/b/a$a.class */
    final class CallableC0128a implements Callable<String> {
        private CallableC0128a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public String call() throws Exception {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(n.a());
                if (advertisingIdInfo != null) {
                    String id = advertisingIdInfo.getId();
                    q.b("gaid-", "getAdvertisingId: ".concat(String.valueOf(id)));
                    a.a(id);
                }
            } catch (Throwable th) {
                q.c("AdvertisingIdHelper", "getAdvertisingIdInfo error", th);
            }
            try {
                AdvertisingIdClient.Info advertisingIdInfo2 = AdvertisingIdClient.getAdvertisingIdInfo(n.a());
                if (advertisingIdInfo2 != null) {
                    a.this.f6352a = advertisingIdInfo2.getId();
                    advertisingIdInfo2.isLimitAdTrackingEnabled();
                }
            } catch (Throwable th2) {
                q.c("AdvertisingIdHelper", "getAdvertisingIdInfo error", th2);
            }
            q.b("AdvertisingIdHelper", "mGAId:" + a.this.f6352a + " , get gaid consume time :" + (System.currentTimeMillis() - currentTimeMillis));
            return a.this.f6352a;
        }
    }

    private a() {
    }

    public static a a() {
        if (f6351c == null) {
            synchronized (a.class) {
                try {
                    if (f6351c == null) {
                        f6351c = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f6351c;
    }

    static /* synthetic */ void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            com.bytedance.sdk.openadsdk.multipro.d.a.a("name_gaid", "gaid", str);
        }
    }

    public final String b() {
        if (!TextUtils.isEmpty(this.f6352a)) {
            return this.f6352a;
        }
        try {
            this.f6352a = com.bytedance.sdk.openadsdk.multipro.d.a.b("name_gaid", "gaid", "");
            q.c("gaid-", "getGAIdTimeOut-mGAId=" + this.f6352a);
            if (TextUtils.isEmpty(this.f6352a)) {
                FutureTask futureTask = new FutureTask(new CallableC0128a());
                this.f6353b.execute(futureTask);
                this.f6352a = (String) futureTask.get(500000L, TimeUnit.MICROSECONDS);
            }
        } catch (Throwable th) {
            q.c("AdvertisingIdHelper", "getGAIdTimeOut error", th);
        }
        return this.f6352a;
    }
}
