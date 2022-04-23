package com.bytedance.sdk.openadsdk.k.f;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.k.a.c;
import com.bytedance.sdk.openadsdk.k.d;
import com.bytedance.sdk.openadsdk.k.e;
import com.bytedance.sdk.openadsdk.k.f;
import com.bytedance.sdk.openadsdk.utils.q;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/f/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f9743a = q.c();

    /* renamed from: b  reason: collision with root package name */
    private HashMap<String, Boolean> f9744b;

    /* renamed from: c  reason: collision with root package name */
    private C0177a f9745c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.k.f.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/f/a$a.class */
    public class C0177a extends Thread {

        /* renamed from: d  reason: collision with root package name */
        private final Queue<C0178a> f9749d = new ArrayBlockingQueue(10);

        /* renamed from: b  reason: collision with root package name */
        private Queue<C0178a> f9747b = new LinkedBlockingQueue();

        /* renamed from: c  reason: collision with root package name */
        private boolean f9748c = true;
        private Queue<C0178a> e = new LinkedBlockingQueue();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.bytedance.sdk.openadsdk.k.f.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/f/a$a$a.class */
        public class C0178a {

            /* renamed from: a  reason: collision with root package name */
            public int f9750a;

            /* renamed from: b  reason: collision with root package name */
            public String f9751b;

            /* renamed from: c  reason: collision with root package name */
            public String[] f9752c;

            /* renamed from: d  reason: collision with root package name */
            public int f9753d;
            public String e;
            public com.bytedance.sdk.openadsdk.k.f.b f;

            public C0178a() {
            }
        }

        public C0177a() {
        }

        private C0178a a(int i, com.bytedance.sdk.openadsdk.k.f.b bVar) {
            b();
            q.b("VideoCachePreloader", "pool: " + this.f9749d.size());
            C0178a poll = this.f9749d.poll();
            C0178a aVar = poll;
            if (poll == null) {
                aVar = new C0178a();
            }
            aVar.f9750a = i;
            aVar.f = bVar;
            return aVar;
        }

        private void a() {
        }

        private void a(C0178a aVar) {
            a();
            aVar.f9752c = null;
            aVar.f9751b = null;
            aVar.f9750a = -1;
            aVar.f = null;
            this.f9749d.offer(aVar);
        }

        private void b() {
        }

        private void b(C0178a aVar) {
            synchronized (this) {
                b();
                this.e.add(aVar);
                notify();
            }
        }

        private void c() {
            a();
            while (true) {
                C0178a poll = this.e.poll();
                if (poll != null) {
                    poll.f9751b = poll.f.f9755a;
                    poll.f9752c = new String[]{poll.f.f9755a};
                    poll.f9753d = poll.f.f9756b;
                    poll.e = poll.f.f9757c;
                    if (!TextUtils.isEmpty(poll.f.f9757c)) {
                        poll.f9751b = poll.f.f9757c;
                    }
                    poll.f = null;
                    c(poll);
                } else {
                    return;
                }
            }
        }

        private void c(C0178a aVar) {
            a();
            if (aVar != null) {
                this.f9747b.offer(aVar);
                notify();
            }
        }

        public void a(com.bytedance.sdk.openadsdk.k.f.b bVar) {
            b(a(0, bVar));
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            String[] strArr;
            while (this.f9748c) {
                synchronized (this) {
                    if (!this.e.isEmpty()) {
                        c();
                    }
                    while (!this.f9747b.isEmpty()) {
                        C0178a poll = this.f9747b.poll();
                        if (poll != null) {
                            int i = poll.f9750a;
                            if (i != 0) {
                                if (i == 1) {
                                    d.c().a(poll.f9751b);
                                } else if (i == 2) {
                                    d.c().d();
                                } else if (i == 3) {
                                    d.c().d();
                                    if (e.c() != null) {
                                        e.c().a();
                                    }
                                    if (e.b() != null) {
                                        e.b().a();
                                    }
                                } else if (i == 4) {
                                    d.c().d();
                                    this.f9748c = false;
                                }
                            } else if (poll.f9752c != null && poll.f9752c.length > 0) {
                                ArrayList arrayList = new ArrayList();
                                for (String str : poll.f9752c) {
                                    if (com.bytedance.sdk.openadsdk.k.g.d.a(str)) {
                                        arrayList.add(str);
                                    }
                                }
                                d.c().a(false, !TextUtils.isEmpty(poll.e), poll.f9753d, poll.f9751b, (String[]) arrayList.toArray(new String[arrayList.size()]));
                            }
                            a(poll);
                        }
                    }
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/f/a$b.class */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private static final a f9754a = new a();
    }

    private a() {
        this.f9744b = new HashMap<>();
        b();
    }

    public static a a() {
        return b.f9754a;
    }

    private static c c() {
        IOException e;
        c cVar = null;
        cVar = null;
        if (com.bytedance.sdk.openadsdk.k.g.a.d()) {
            File file = new File(com.bytedance.sdk.openadsdk.k.g.a.a(com.bytedance.sdk.openadsdk.k.g.a.b(), "cache").getPath());
            if (!file.exists()) {
                file.mkdirs();
            }
            try {
                cVar = new c(file);
            } catch (IOException e2) {
                e = e2;
            }
            try {
                cVar.a(104857600L);
            } catch (IOException e3) {
                e = e3;
                e.printStackTrace();
                return cVar;
            }
        }
        return cVar;
    }

    public boolean a(com.bytedance.sdk.openadsdk.k.f.b bVar) {
        if (!b()) {
            return false;
        }
        this.f9745c.a(bVar);
        return true;
    }

    public String b(com.bytedance.sdk.openadsdk.k.f.b bVar) {
        if (bVar == null) {
            return null;
        }
        boolean z = !TextUtils.isEmpty(bVar.f9757c);
        return f.a().a(false, z, z ? bVar.f9757c : bVar.f9755a, bVar.f9755a);
    }

    public boolean b() {
        if (this.f9745c != null) {
            return true;
        }
        c c2 = c();
        if (c2 == null) {
            return false;
        }
        e.a(true);
        e.b(true);
        e.a(1);
        f.a().d();
        try {
            C0177a aVar = new C0177a();
            this.f9745c = aVar;
            aVar.start();
            e.a(c2, n.a());
            d.c().a(30000L, 30000L, 30000L);
            d.c().a(10485759);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
