package com.applovin.impl.adview;

import android.os.Handler;
import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import p007a6.C0033h;
/* renamed from: com.applovin.impl.adview.j */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/j.class */
public final class C0998j {

    /* renamed from: a */
    private final C1479t f3649a;

    /* renamed from: b */
    private final Handler f3650b;

    /* renamed from: c */
    private final Set<C1001b> f3651c = new HashSet();

    /* renamed from: d */
    private final AtomicInteger f3652d = new AtomicInteger();

    /* renamed from: com.applovin.impl.adview.j$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/j$a.class */
    public interface AbstractC1000a {
        /* renamed from: a */
        void mo6846a();

        /* renamed from: b */
        boolean mo6845b();
    }

    /* renamed from: com.applovin.impl.adview.j$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/j$b.class */
    public static class C1001b {

        /* renamed from: a */
        private final String f3656a;

        /* renamed from: b */
        private final AbstractC1000a f3657b;

        /* renamed from: c */
        private final long f3658c;

        private C1001b(String str, long j, AbstractC1000a abstractC1000a) {
            this.f3656a = str;
            this.f3658c = j;
            this.f3657b = abstractC1000a;
        }

        /* renamed from: a */
        public String m6844a() {
            return this.f3656a;
        }

        /* renamed from: b */
        public long m6842b() {
            return this.f3658c;
        }

        /* renamed from: c */
        public AbstractC1000a m6840c() {
            return this.f3657b;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C1001b)) {
                return false;
            }
            String str = this.f3656a;
            String str2 = ((C1001b) obj).f3656a;
            if (str != null) {
                z = str.equalsIgnoreCase(str2);
            } else if (str2 != null) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            String str = this.f3656a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8752j = C0082b.m8752j("CountdownProxy{identifier='");
            C0033h.m8882o(m8752j, this.f3656a, '\'', ", countdownStepMillis=");
            m8752j.append(this.f3658c);
            m8752j.append('}');
            return m8752j.toString();
        }
    }

    public C0998j(Handler handler, C1408l c1408l) {
        if (handler != null) {
            if (c1408l == null) {
                throw new IllegalArgumentException("No sdk specified.");
            }
            this.f3650b = handler;
            this.f3649a = c1408l.m5542A();
            return;
        }
        throw new IllegalArgumentException("No handler specified.");
    }

    /* renamed from: a */
    public void m6853a(final C1001b c1001b, final int i) {
        this.f3650b.postDelayed(new Runnable() { // from class: com.applovin.impl.adview.j.1
            @Override // java.lang.Runnable
            public void run() {
                AbstractC1000a m6840c = c1001b.m6840c();
                if (!m6840c.mo6845b()) {
                    C1479t c1479t = C0998j.this.f3649a;
                    StringBuilder m8752j = C0082b.m8752j("Ending countdown for ");
                    m8752j.append(c1001b.m6844a());
                    c1479t.m5116b("CountdownManager", m8752j.toString());
                } else if (C0998j.this.f3652d.get() != i) {
                    C1479t c1479t2 = C0998j.this.f3649a;
                    StringBuilder m8752j2 = C0082b.m8752j("Killing duplicate countdown from previous generation: ");
                    m8752j2.append(c1001b.m6844a());
                    c1479t2.m5112d("CountdownManager", m8752j2.toString());
                } else {
                    try {
                        m6840c.mo6846a();
                    } catch (Throwable th) {
                        C1479t c1479t3 = C0998j.this.f3649a;
                        StringBuilder m8752j3 = C0082b.m8752j("Encountered error on countdown step for: ");
                        m8752j3.append(c1001b.m6844a());
                        c1479t3.m5115b("CountdownManager", m8752j3.toString(), th);
                    }
                    C0998j.this.m6853a(c1001b, i);
                }
            }
        }, c1001b.m6842b());
    }

    /* renamed from: a */
    public void m6854a() {
        HashSet hashSet = new HashSet(this.f3651c);
        C1479t c1479t = this.f3649a;
        StringBuilder m8752j = C0082b.m8752j("Starting ");
        m8752j.append(hashSet.size());
        m8752j.append(" countdowns...");
        c1479t.m5116b("CountdownManager", m8752j.toString());
        int incrementAndGet = this.f3652d.incrementAndGet();
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            C1001b c1001b = (C1001b) it2.next();
            C1479t c1479t2 = this.f3649a;
            StringBuilder m8752j2 = C0082b.m8752j("Starting countdown: ");
            m8752j2.append(c1001b.m6844a());
            m8752j2.append(" for generation ");
            m8752j2.append(incrementAndGet);
            m8752j2.append("...");
            c1479t2.m5116b("CountdownManager", m8752j2.toString());
            m6853a(c1001b, incrementAndGet);
        }
    }

    /* renamed from: a */
    public void m6850a(String str, long j, AbstractC1000a abstractC1000a) {
        if (j > 0) {
            if (this.f3650b == null) {
                throw new IllegalArgumentException("No handler specified.");
            }
            C1479t c1479t = this.f3649a;
            c1479t.m5116b("CountdownManager", "Adding countdown: " + str);
            this.f3651c.add(new C1001b(str, j, abstractC1000a));
            return;
        }
        throw new IllegalArgumentException("Invalid step specified.");
    }

    /* renamed from: b */
    public void m6849b() {
        this.f3649a.m5116b("CountdownManager", "Removing all countdowns...");
        m6847c();
        this.f3651c.clear();
    }

    /* renamed from: c */
    public void m6847c() {
        this.f3649a.m5116b("CountdownManager", "Stopping countdowns...");
        this.f3652d.incrementAndGet();
        this.f3650b.removeCallbacksAndMessages(null);
    }
}
