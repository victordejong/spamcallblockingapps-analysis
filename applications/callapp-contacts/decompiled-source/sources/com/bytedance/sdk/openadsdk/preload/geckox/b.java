package com.bytedance.sdk.openadsdk.preload.geckox;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f10154a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f10155b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f10156c;

    /* renamed from: d  reason: collision with root package name */
    private final com.bytedance.sdk.openadsdk.preload.geckox.k.a f10157d;
    private final com.bytedance.sdk.openadsdk.preload.geckox.statistic.a e;
    private final com.bytedance.sdk.openadsdk.preload.geckox.i.b f;
    private final List<String> g;
    private final List<String> h;
    private final com.bytedance.sdk.openadsdk.preload.geckox.a.a.a i;
    private final Long j;
    private final String k;
    private final String l;
    private final String m;
    private final String n;
    private final String o;
    private final File p;
    private final boolean q;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/b$a.class */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private com.bytedance.sdk.openadsdk.preload.geckox.i.b f10160a;

        /* renamed from: b  reason: collision with root package name */
        private List<String> f10161b;

        /* renamed from: c  reason: collision with root package name */
        private List<String> f10162c;

        /* renamed from: d  reason: collision with root package name */
        private Context f10163d;
        private Executor e;
        private Executor f;
        private com.bytedance.sdk.openadsdk.preload.geckox.k.a g;
        private com.bytedance.sdk.openadsdk.preload.geckox.statistic.a h;
        private boolean i = true;
        private com.bytedance.sdk.openadsdk.preload.geckox.a.a.a j;
        private Long k;
        private String l;
        private String m;
        private String n;
        private File o;
        private String p;
        private String q;

        public a(Context context) {
            this.f10163d = context.getApplicationContext();
        }

        public a a(long j) {
            this.k = Long.valueOf(j);
            return this;
        }

        public a a(com.bytedance.sdk.openadsdk.preload.geckox.a.a.a aVar) {
            this.j = aVar;
            return this;
        }

        public a a(com.bytedance.sdk.openadsdk.preload.geckox.statistic.a aVar) {
            this.h = aVar;
            return this;
        }

        public a a(File file) {
            this.o = file;
            return this;
        }

        public a a(String str) {
            this.l = str;
            return this;
        }

        public a a(Executor executor) {
            this.e = executor;
            return this;
        }

        public a a(boolean z) {
            this.i = z;
            return this;
        }

        public a a(String... strArr) {
            if (strArr != null && strArr.length > 0) {
                this.f10162c = Arrays.asList(strArr);
            }
            return this;
        }

        public b a() {
            return new b(this);
        }

        public a b(String str) {
            this.m = str;
            return this;
        }

        public a b(Executor executor) {
            this.f = executor;
            return this;
        }

        public a b(String... strArr) {
            if (strArr != null && strArr.length > 0) {
                this.f10161b = Arrays.asList(strArr);
            }
            return this;
        }

        public a c(String str) {
            this.n = str;
            return this;
        }
    }

    private b(a aVar) {
        Context context = aVar.f10163d;
        this.f10154a = context;
        if (context != null) {
            List<String> list = aVar.f10161b;
            this.g = list;
            this.h = aVar.f10162c;
            this.f10157d = aVar.g;
            this.i = aVar.j;
            Long l = aVar.k;
            this.j = l;
            if (TextUtils.isEmpty(aVar.l)) {
                this.k = com.bytedance.sdk.openadsdk.preload.geckox.utils.a.a(context);
            } else {
                this.k = aVar.l;
            }
            String str = aVar.m;
            this.l = str;
            this.n = aVar.p;
            this.o = aVar.q;
            if (aVar.o == null) {
                this.p = new File(context.getFilesDir(), "gecko_offline_res_x");
            } else {
                this.p = aVar.o;
            }
            String str2 = aVar.n;
            this.m = str2;
            if (TextUtils.isEmpty(str2)) {
                throw new IllegalArgumentException("host == null");
            } else if (list == null || list.isEmpty()) {
                throw new IllegalArgumentException("access key empty");
            } else if (l == null) {
                throw new IllegalArgumentException("appId == null");
            } else if (!TextUtils.isEmpty(str)) {
                if (aVar.e == null) {
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
                    this.f10155b = threadPoolExecutor;
                } else {
                    this.f10155b = aVar.e;
                }
                if (aVar.f == null) {
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
                    this.f10156c = threadPoolExecutor2;
                } else {
                    this.f10156c = aVar.f;
                }
                if (aVar.f10160a == null) {
                    this.f = new com.bytedance.sdk.openadsdk.preload.geckox.i.a();
                } else {
                    this.f = aVar.f10160a;
                }
                this.e = aVar.h;
                this.q = aVar.i;
            } else {
                throw new IllegalArgumentException("deviceId key empty");
            }
        } else {
            throw new IllegalArgumentException("context == null");
        }
    }

    public Context a() {
        return this.f10154a;
    }

    public com.bytedance.sdk.openadsdk.preload.geckox.a.a.a b() {
        return this.i;
    }

    public boolean c() {
        return this.q;
    }

    public List<String> d() {
        return this.h;
    }

    public List<String> e() {
        return this.g;
    }

    public Executor f() {
        return this.f10155b;
    }

    public Executor g() {
        return this.f10156c;
    }

    public com.bytedance.sdk.openadsdk.preload.geckox.i.b h() {
        return this.f;
    }

    public String i() {
        return this.m;
    }

    public long j() {
        return this.j.longValue();
    }

    public String k() {
        return this.o;
    }

    public String l() {
        return this.n;
    }

    public File m() {
        return this.p;
    }

    public String n() {
        return this.k;
    }

    public com.bytedance.sdk.openadsdk.preload.geckox.k.a o() {
        return this.f10157d;
    }

    public com.bytedance.sdk.openadsdk.preload.geckox.statistic.a p() {
        return this.e;
    }

    public String q() {
        return this.l;
    }
}
