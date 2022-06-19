package com.bytedance.sdk.openadsdk.preload.geckox;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.preload.geckox.p206a.p207a.C5307a;
import com.bytedance.sdk.openadsdk.preload.geckox.p223i.AbstractC5384b;
import com.bytedance.sdk.openadsdk.preload.geckox.p223i.C5383a;
import com.bytedance.sdk.openadsdk.preload.geckox.p225k.AbstractC5393a;
import com.bytedance.sdk.openadsdk.preload.geckox.statistic.AbstractC5397a;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5416a;
import java.io.File;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/b.class */
public class C5320b {

    /* renamed from: a */
    private final Context f18776a;

    /* renamed from: b */
    private final Executor f18777b;

    /* renamed from: c */
    private final Executor f18778c;

    /* renamed from: d */
    private final AbstractC5393a f18779d;

    /* renamed from: e */
    private final AbstractC5397a f18780e;

    /* renamed from: f */
    private final AbstractC5384b f18781f;

    /* renamed from: g */
    private final List<String> f18782g;

    /* renamed from: h */
    private final List<String> f18783h;

    /* renamed from: i */
    private final C5307a f18784i;

    /* renamed from: j */
    private final Long f18785j;

    /* renamed from: k */
    private final String f18786k;

    /* renamed from: l */
    private final String f18787l;

    /* renamed from: m */
    private final String f18788m;

    /* renamed from: n */
    private final String f18789n;

    /* renamed from: o */
    private final String f18790o;

    /* renamed from: p */
    private final File f18791p;

    /* renamed from: q */
    private final boolean f18792q;

    /* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.b$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/b$a.class */
    public static class C5323a {

        /* renamed from: a */
        private AbstractC5384b f18795a;

        /* renamed from: b */
        private List<String> f18796b;

        /* renamed from: c */
        private List<String> f18797c;

        /* renamed from: d */
        private Context f18798d;

        /* renamed from: e */
        private Executor f18799e;

        /* renamed from: f */
        private Executor f18800f;

        /* renamed from: g */
        private AbstractC5393a f18801g;

        /* renamed from: h */
        private AbstractC5397a f18802h;

        /* renamed from: i */
        private boolean f18803i = true;

        /* renamed from: j */
        private C5307a f18804j;

        /* renamed from: k */
        private Long f18805k;

        /* renamed from: l */
        private String f18806l;

        /* renamed from: m */
        private String f18807m;

        /* renamed from: n */
        private String f18808n;

        /* renamed from: o */
        private File f18809o;

        /* renamed from: p */
        private String f18810p;

        /* renamed from: q */
        private String f18811q;

        public C5323a(Context context) {
            this.f18798d = context.getApplicationContext();
        }

        /* renamed from: a */
        public C5323a m32566a(long j) {
            this.f18805k = Long.valueOf(j);
            return this;
        }

        /* renamed from: a */
        public C5323a m32565a(C5307a c5307a) {
            this.f18804j = c5307a;
            return this;
        }

        /* renamed from: a */
        public C5323a m32563a(AbstractC5397a abstractC5397a) {
            this.f18802h = abstractC5397a;
            return this;
        }

        /* renamed from: a */
        public C5323a m32562a(File file) {
            this.f18809o = file;
            return this;
        }

        /* renamed from: a */
        public C5323a m32561a(String str) {
            this.f18806l = str;
            return this;
        }

        /* renamed from: a */
        public C5323a m32560a(Executor executor) {
            this.f18799e = executor;
            return this;
        }

        /* renamed from: a */
        public C5323a m32559a(boolean z) {
            this.f18803i = z;
            return this;
        }

        /* renamed from: a */
        public C5323a m32558a(String... strArr) {
            if (strArr != null && strArr.length > 0) {
                this.f18797c = Arrays.asList(strArr);
            }
            return this;
        }

        /* renamed from: a */
        public C5320b m32567a() {
            return new C5320b(this);
        }

        /* renamed from: b */
        public C5323a m32556b(String str) {
            this.f18807m = str;
            return this;
        }

        /* renamed from: b */
        public C5323a m32555b(Executor executor) {
            this.f18800f = executor;
            return this;
        }

        /* renamed from: b */
        public C5323a m32554b(String... strArr) {
            if (strArr != null && strArr.length > 0) {
                this.f18796b = Arrays.asList(strArr);
            }
            return this;
        }

        /* renamed from: c */
        public C5323a m32552c(String str) {
            this.f18808n = str;
            return this;
        }
    }

    private C5320b(C5323a c5323a) {
        Context context = c5323a.f18798d;
        this.f18776a = context;
        if (context != null) {
            List<String> list = c5323a.f18796b;
            this.f18782g = list;
            this.f18783h = c5323a.f18797c;
            this.f18779d = c5323a.f18801g;
            this.f18784i = c5323a.f18804j;
            Long l = c5323a.f18805k;
            this.f18785j = l;
            if (TextUtils.isEmpty(c5323a.f18806l)) {
                this.f18786k = C5416a.m32364a(context);
            } else {
                this.f18786k = c5323a.f18806l;
            }
            String str = c5323a.f18807m;
            this.f18787l = str;
            this.f18789n = c5323a.f18810p;
            this.f18790o = c5323a.f18811q;
            if (c5323a.f18809o == null) {
                this.f18791p = new File(context.getFilesDir(), "gecko_offline_res_x");
            } else {
                this.f18791p = c5323a.f18809o;
            }
            String str2 = c5323a.f18808n;
            this.f18788m = str2;
            if (TextUtils.isEmpty(str2)) {
                throw new IllegalArgumentException("host == null");
            }
            if (list == null || list.isEmpty()) {
                throw new IllegalArgumentException("access key empty");
            }
            if (l == null) {
                throw new IllegalArgumentException("appId == null");
            }
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("deviceId key empty");
            }
            if (c5323a.f18799e == null) {
                ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.b.1
                    @Override // java.util.concurrent.ThreadFactory
                    public Thread newThread(Runnable runnable) {
                        Thread thread = new Thread(runnable);
                        thread.setName("tt_pangle_thread_gecko_update");
                        thread.setPriority(3);
                        return thread;
                    }
                });
                threadPoolExecutor.allowCoreThreadTimeOut(true);
                this.f18777b = threadPoolExecutor;
            } else {
                this.f18777b = c5323a.f18799e;
            }
            if (c5323a.f18800f == null) {
                ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(1, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.b.2
                    @Override // java.util.concurrent.ThreadFactory
                    public Thread newThread(Runnable runnable) {
                        Thread thread = new Thread(runnable);
                        thread.setName("tt_pangle_thread_gecko_check_update");
                        thread.setPriority(3);
                        return thread;
                    }
                });
                threadPoolExecutor2.allowCoreThreadTimeOut(true);
                this.f18778c = threadPoolExecutor2;
            } else {
                this.f18778c = c5323a.f18800f;
            }
            if (c5323a.f18795a == null) {
                this.f18781f = new C5383a();
            } else {
                this.f18781f = c5323a.f18795a;
            }
            this.f18780e = c5323a.f18802h;
            this.f18792q = c5323a.f18803i;
            return;
        }
        throw new IllegalArgumentException("context == null");
    }

    /* renamed from: a */
    public Context m32584a() {
        return this.f18776a;
    }

    /* renamed from: b */
    public C5307a m32583b() {
        return this.f18784i;
    }

    /* renamed from: c */
    public boolean m32582c() {
        return this.f18792q;
    }

    /* renamed from: d */
    public List<String> m32581d() {
        return this.f18783h;
    }

    /* renamed from: e */
    public List<String> m32580e() {
        return this.f18782g;
    }

    /* renamed from: f */
    public Executor m32579f() {
        return this.f18777b;
    }

    /* renamed from: g */
    public Executor m32578g() {
        return this.f18778c;
    }

    /* renamed from: h */
    public AbstractC5384b m32577h() {
        return this.f18781f;
    }

    /* renamed from: i */
    public String m32576i() {
        return this.f18788m;
    }

    /* renamed from: j */
    public long m32575j() {
        return this.f18785j.longValue();
    }

    /* renamed from: k */
    public String m32574k() {
        return this.f18790o;
    }

    /* renamed from: l */
    public String m32573l() {
        return this.f18789n;
    }

    /* renamed from: m */
    public File m32572m() {
        return this.f18791p;
    }

    /* renamed from: n */
    public String m32571n() {
        return this.f18786k;
    }

    /* renamed from: o */
    public AbstractC5393a m32570o() {
        return this.f18779d;
    }

    /* renamed from: p */
    public AbstractC5397a m32569p() {
        return this.f18780e;
    }

    /* renamed from: q */
    public String m32568q() {
        return this.f18787l;
    }
}
