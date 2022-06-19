package com.liulishuo.filedownloader.message;

import com.liulishuo.filedownloader.message.C9369b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import p078c.p122d.p123a.p128i0.C2029b;
/* renamed from: com.liulishuo.filedownloader.message.d */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/d.class */
public class C9373d {

    /* renamed from: a */
    private final List<C9374a> f40094a = new ArrayList();

    /* renamed from: b */
    private final C9369b.AbstractC9371b f40095b;

    /* renamed from: com.liulishuo.filedownloader.message.d$a */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/d$a.class */
    public class C9374a {

        /* renamed from: a */
        private final List<Integer> f40096a = new ArrayList();

        /* renamed from: b */
        private final Executor f40097b;

        /* renamed from: com.liulishuo.filedownloader.message.d$a$a */
        /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/d$a$a.class */
        public class RunnableC9375a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ MessageSnapshot f40099d;

            RunnableC9375a(MessageSnapshot messageSnapshot) {
                C9374a.this = r4;
                this.f40099d = messageSnapshot;
            }

            @Override // java.lang.Runnable
            public void run() {
                C9373d.this.f40095b.mo792D0(this.f40099d);
                C9374a.this.f40096a.remove(Integer.valueOf(this.f40099d.m901e()));
            }
        }

        public C9374a(int i) {
            C9373d.this = r5;
            this.f40097b = C2029b.m28265a(1, "Flow-" + i);
        }

        /* renamed from: b */
        public void m873b(int i) {
            this.f40096a.add(Integer.valueOf(i));
        }

        /* renamed from: c */
        public void m872c(MessageSnapshot messageSnapshot) {
            this.f40097b.execute(new RunnableC9375a(messageSnapshot));
        }
    }

    public C9373d(int i, C9369b.AbstractC9371b abstractC9371b) {
        this.f40095b = abstractC9371b;
        for (int i2 = 0; i2 < i; i2++) {
            this.f40094a.add(new C9374a(i2));
        }
    }

    /* renamed from: b */
    public void m875b(MessageSnapshot messageSnapshot) {
        C9374a c9374a;
        C9374a c9374a2;
        C9374a c9374a3 = null;
        try {
            synchronized (this.f40094a) {
                int m901e = messageSnapshot.m901e();
                Iterator<C9374a> it = this.f40094a.iterator();
                do {
                    c9374a = null;
                    if (!it.hasNext()) {
                        break;
                    }
                    c9374a = it.next();
                } while (!c9374a.f40096a.contains(Integer.valueOf(m901e)));
                c9374a2 = c9374a;
                if (c9374a == null) {
                    int i = 0;
                    Iterator<C9374a> it2 = this.f40094a.iterator();
                    while (true) {
                        c9374a2 = c9374a;
                        if (!it2.hasNext()) {
                            break;
                        }
                        C9374a c9374a4 = c9374a;
                        c9374a2 = it2.next();
                        C9374a c9374a5 = c9374a;
                        if (c9374a2.f40096a.size() <= 0) {
                            break;
                        } else if (i == 0 || c9374a2.f40096a.size() < i) {
                            C9374a c9374a6 = c9374a;
                            i = c9374a2.f40096a.size();
                            c9374a = c9374a2;
                        }
                    }
                }
                c9374a2.m873b(m901e);
                c9374a3 = c9374a2;
            }
            c9374a2.m872c(messageSnapshot);
        } catch (Throwable th) {
            c9374a3.m872c(messageSnapshot);
            throw th;
        }
    }
}
