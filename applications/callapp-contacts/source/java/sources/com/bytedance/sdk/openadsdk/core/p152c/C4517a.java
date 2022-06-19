package com.bytedance.sdk.openadsdk.core.p152c;

import android.os.Handler;
import android.os.Looper;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p157h.C4588e;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Queue;
/* renamed from: com.bytedance.sdk.openadsdk.core.c.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/c/a.class */
public class C4517a {

    /* renamed from: a */
    private static volatile C4517a f16404a;

    /* renamed from: b */
    private static volatile boolean f16405b;

    /* renamed from: c */
    private static volatile long f16406c;

    /* renamed from: e */
    private Handler f16408e;

    /* renamed from: d */
    private final Queue<C4519a> f16407d = new LinkedList();

    /* renamed from: f */
    private final C4588e f16409f = C4600n.m34805h();

    /* renamed from: com.bytedance.sdk.openadsdk.core.c.a$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/c/a$a.class */
    public static class C4519a {

        /* renamed from: a */
        private final long f16411a;

        /* renamed from: b */
        private final String f16412b;

        private C4519a(long j, String str) {
            this.f16411a = j;
            this.f16412b = str;
        }
    }

    private C4517a() {
    }

    /* renamed from: a */
    public static C4517a m35409a() {
        if (f16404a == null) {
            synchronized (C4517a.class) {
                try {
                    if (f16404a == null) {
                        f16404a = new C4517a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16404a;
    }

    /* renamed from: a */
    private void m35408a(long j) {
        synchronized (this) {
            if (this.f16408e == null) {
                this.f16408e = new Handler(Looper.getMainLooper());
            }
            this.f16408e.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.c.a.1
                @Override // java.lang.Runnable
                public void run() {
                    C4517a.this.m35405a(false);
                }
            }, j);
        }
    }

    /* renamed from: a */
    public void m35405a(boolean z) {
        synchronized (this) {
            f16405b = z;
        }
    }

    /* renamed from: b */
    private void m35403b(long j) {
        synchronized (this) {
            f16406c = j;
        }
    }

    /* renamed from: b */
    private boolean m35402b(String str) {
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            int m34885h = this.f16409f.m34885h();
            long m34887g = this.f16409f.m34887g();
            if (this.f16407d.size() <= 0 || this.f16407d.size() < m34885h) {
                this.f16407d.offer(new C4519a(currentTimeMillis, str));
            } else {
                long abs = Math.abs(currentTimeMillis - this.f16407d.peek().f16411a);
                if (abs <= m34887g) {
                    m35403b(m34887g - abs);
                    return true;
                }
                this.f16407d.poll();
                this.f16407d.offer(new C4519a(currentTimeMillis, str));
            }
            return false;
        }
    }

    /* renamed from: a */
    public boolean m35406a(String str) {
        boolean z;
        synchronized (this) {
            if (m35402b(str)) {
                m35405a(true);
                m35408a(f16406c);
            } else {
                m35405a(false);
            }
            z = f16405b;
        }
        return z;
    }

    /* renamed from: b */
    public boolean m35404b() {
        boolean z;
        synchronized (this) {
            z = f16405b;
        }
        return z;
    }

    /* renamed from: c */
    public String m35401c() {
        String str;
        synchronized (this) {
            HashMap hashMap = new HashMap();
            for (C4519a c4519a : this.f16407d) {
                if (hashMap.containsKey(c4519a.f16412b)) {
                    hashMap.put(c4519a.f16412b, Integer.valueOf(((Integer) hashMap.get(c4519a.f16412b)).intValue() + 1));
                } else {
                    hashMap.put(c4519a.f16412b, 1);
                }
            }
            int i = Integer.MIN_VALUE;
            str = "";
            for (String str2 : hashMap.keySet()) {
                int intValue = ((Integer) hashMap.get(str2)).intValue();
                if (i < intValue) {
                    str = str2;
                    i = intValue;
                }
            }
        }
        return str;
    }
}
