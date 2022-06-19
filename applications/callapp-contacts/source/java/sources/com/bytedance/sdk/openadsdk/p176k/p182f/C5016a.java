package com.bytedance.sdk.openadsdk.p176k.p182f;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.p176k.C4991d;
import com.bytedance.sdk.openadsdk.p176k.C5001e;
import com.bytedance.sdk.openadsdk.p176k.C5011f;
import com.bytedance.sdk.openadsdk.p176k.p177a.C4966c;
import com.bytedance.sdk.openadsdk.p176k.p183g.C5027a;
import com.bytedance.sdk.openadsdk.p176k.p183g.C5030d;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
/* renamed from: com.bytedance.sdk.openadsdk.k.f.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/f/a.class */
public class C5016a {

    /* renamed from: a */
    public static final boolean f18178a = C5478q.m32110c();

    /* renamed from: b */
    private HashMap<String, Boolean> f18179b;

    /* renamed from: c */
    private C5018a f18180c;

    /* renamed from: com.bytedance.sdk.openadsdk.k.f.a$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/f/a$a.class */
    public class C5018a extends Thread {

        /* renamed from: d */
        private final Queue<C5019a> f18184d = new ArrayBlockingQueue(10);

        /* renamed from: b */
        private Queue<C5019a> f18182b = new LinkedBlockingQueue();

        /* renamed from: c */
        private boolean f18183c = true;

        /* renamed from: e */
        private Queue<C5019a> f18185e = new LinkedBlockingQueue();

        /* renamed from: com.bytedance.sdk.openadsdk.k.f.a$a$a */
        /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/f/a$a$a.class */
        public class C5019a {

            /* renamed from: a */
            public int f18186a;

            /* renamed from: b */
            public String f18187b;

            /* renamed from: c */
            public String[] f18188c;

            /* renamed from: d */
            public int f18189d;

            /* renamed from: e */
            public String f18190e;

            /* renamed from: f */
            public C5021b f18191f;

            public C5019a() {
                C5018a.this = r4;
            }
        }

        public C5018a() {
            C5016a.this = r6;
        }

        /* renamed from: a */
        private C5019a m33283a(int i, C5021b c5021b) {
            m33280b();
            C5478q.m32112b("VideoCachePreloader", "pool: " + this.f18184d.size());
            C5019a poll = this.f18184d.poll();
            C5019a c5019a = poll;
            if (poll == null) {
                c5019a = new C5019a();
            }
            c5019a.f18186a = i;
            c5019a.f18191f = c5021b;
            return c5019a;
        }

        /* renamed from: a */
        private void m33284a() {
        }

        /* renamed from: a */
        private void m33282a(C5019a c5019a) {
            m33284a();
            c5019a.f18188c = null;
            c5019a.f18187b = null;
            c5019a.f18186a = -1;
            c5019a.f18191f = null;
            this.f18184d.offer(c5019a);
        }

        /* renamed from: b */
        private void m33280b() {
        }

        /* renamed from: b */
        private void m33279b(C5019a c5019a) {
            synchronized (this) {
                m33280b();
                this.f18185e.add(c5019a);
                notify();
            }
        }

        /* renamed from: c */
        private void m33278c() {
            m33284a();
            while (true) {
                C5019a poll = this.f18185e.poll();
                if (poll != null) {
                    poll.f18187b = poll.f18191f.f18194a;
                    poll.f18188c = new String[]{poll.f18191f.f18194a};
                    poll.f18189d = poll.f18191f.f18195b;
                    poll.f18190e = poll.f18191f.f18196c;
                    if (!TextUtils.isEmpty(poll.f18191f.f18196c)) {
                        poll.f18187b = poll.f18191f.f18196c;
                    }
                    poll.f18191f = null;
                    m33277c(poll);
                } else {
                    return;
                }
            }
        }

        /* renamed from: c */
        private void m33277c(C5019a c5019a) {
            m33284a();
            if (c5019a == null) {
                return;
            }
            this.f18182b.offer(c5019a);
            notify();
        }

        /* renamed from: a */
        public void m33281a(C5021b c5021b) {
            m33279b(m33283a(0, c5021b));
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            String[] strArr;
            while (this.f18183c) {
                synchronized (this) {
                    if (!this.f18185e.isEmpty()) {
                        m33278c();
                    }
                    while (!this.f18182b.isEmpty()) {
                        C5019a poll = this.f18182b.poll();
                        if (poll != null) {
                            int i = poll.f18186a;
                            if (i != 0) {
                                if (i == 1) {
                                    C4991d.m33345c().m33352a(poll.f18187b);
                                } else if (i == 2) {
                                    C4991d.m33345c().m33344d();
                                } else if (i == 3) {
                                    C4991d.m33345c().m33344d();
                                    if (C5001e.m33335c() != null) {
                                        C5001e.m33335c().m33407a();
                                    }
                                    if (C5001e.m33337b() != null) {
                                        C5001e.m33337b().m33404a();
                                    }
                                } else if (i == 4) {
                                    C4991d.m33345c().m33344d();
                                    this.f18183c = false;
                                }
                            } else if (poll.f18188c != null && poll.f18188c.length > 0) {
                                ArrayList arrayList = new ArrayList();
                                for (String str : poll.f18188c) {
                                    if (C5030d.m33224a(str)) {
                                        arrayList.add(str);
                                    }
                                }
                                C4991d.m33345c().m33349a(false, !TextUtils.isEmpty(poll.f18190e), poll.f18189d, poll.f18187b, (String[]) arrayList.toArray(new String[arrayList.size()]));
                            }
                            m33282a(poll);
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

    /* renamed from: com.bytedance.sdk.openadsdk.k.f.a$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/f/a$b.class */
    public static class C5020b {

        /* renamed from: a */
        private static final C5016a f18193a = new C5016a();
    }

    private C5016a() {
        this.f18179b = new HashMap<>();
        m33287b();
    }

    /* renamed from: a */
    public static C5016a m33290a() {
        return C5020b.f18193a;
    }

    /* renamed from: c */
    private static C4966c m33285c() {
        IOException e;
        C4966c c4966c = null;
        if (C5027a.m33246d()) {
            File file = new File(C5027a.m33253a(C5027a.m33249b(), "cache").getPath());
            if (!file.exists()) {
                file.mkdirs();
            }
            try {
                c4966c = new C4966c(file);
            } catch (IOException e2) {
                e = e2;
                c4966c = null;
            }
            try {
                c4966c.m33403a(104857600L);
            } catch (IOException e3) {
                e = e3;
                e.printStackTrace();
                return c4966c;
            }
        }
        return c4966c;
    }

    /* renamed from: a */
    public boolean m33288a(C5021b c5021b) {
        if (m33287b()) {
            this.f18180c.m33281a(c5021b);
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public String m33286b(C5021b c5021b) {
        if (c5021b == null) {
            return null;
        }
        boolean z = !TextUtils.isEmpty(c5021b.f18196c);
        return C5011f.m33315a().m33307a(false, z, z ? c5021b.f18196c : c5021b.f18194a, c5021b.f18194a);
    }

    /* renamed from: b */
    public boolean m33287b() {
        if (this.f18180c != null) {
            return true;
        }
        C4966c m33285c = m33285c();
        if (m33285c == null) {
            return false;
        }
        C5001e.m33338a(true);
        C5001e.m33336b(true);
        C5001e.m33340a(1);
        C5011f.m33315a().m33301d();
        try {
            C5018a c5018a = new C5018a();
            this.f18180c = c5018a;
            c5018a.start();
            C5001e.m33339a(m33285c, C4600n.m34815a());
            C4991d.m33345c().m33357a(30000L, 30000L, 30000L);
            C4991d.m33345c().m33358a(10485759);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
