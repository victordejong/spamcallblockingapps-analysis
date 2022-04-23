package com.liulishuo.filedownloader.message;

import com.liulishuo.filedownloader.message.C2764b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import p092e.p096e.p097a.p102h0.C3054b;
/* renamed from: com.liulishuo.filedownloader.message.d */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/d.class */
public class C2768d {

    /* renamed from: a */
    private final List<C2769a> f11497a = new ArrayList();

    /* renamed from: b */
    private final C2764b.AbstractC2766b f11498b;

    /* renamed from: com.liulishuo.filedownloader.message.d$a */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/d$a.class */
    public class C2769a {

        /* renamed from: a */
        private final List<Integer> f11499a = new ArrayList();

        /* renamed from: b */
        private final Executor f11500b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.liulishuo.filedownloader.message.d$a$a */
        /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/d$a$a.class */
        public class RunnableC2770a implements Runnable {

            /* renamed from: b */
            final /* synthetic */ MessageSnapshot f11502b;

            RunnableC2770a(MessageSnapshot messageSnapshot) {
                this.f11502b = messageSnapshot;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2768d.this.f11498b.mo244r1(this.f11502b);
                C2769a.this.f11499a.remove(Integer.valueOf(this.f11502b.m1856e()));
            }
        }

        public C2769a(int i) {
            this.f11500b = C3054b.m429a(1, "Flow-" + i);
        }

        /* renamed from: b */
        public void m1828b(int i) {
            this.f11499a.add(Integer.valueOf(i));
        }

        /* renamed from: c */
        public void m1827c(MessageSnapshot messageSnapshot) {
            this.f11500b.execute(new RunnableC2770a(messageSnapshot));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2768d(int i, C2764b.AbstractC2766b bVar) {
        this.f11498b = bVar;
        for (int i2 = 0; i2 < i; i2++) {
            this.f11497a.add(new C2769a(i2));
        }
    }

    /* renamed from: b */
    public void m1830b(MessageSnapshot messageSnapshot) {
        C2769a aVar;
        C2769a aVar2 = null;
        C2769a aVar3 = null;
        try {
            synchronized (this.f11497a) {
                int e = messageSnapshot.m1856e();
                Iterator<C2769a> it = this.f11497a.iterator();
                do {
                    if (!it.hasNext()) {
                        break;
                    }
                    aVar2 = it.next();
                } while (!aVar2.f11499a.contains(Integer.valueOf(e)));
                aVar = aVar2;
                if (aVar2 == null) {
                    int i = 0;
                    Iterator<C2769a> it2 = this.f11497a.iterator();
                    while (true) {
                        aVar = aVar2;
                        if (!it2.hasNext()) {
                            break;
                        }
                        aVar = it2.next();
                        if (aVar.f11499a.size() <= 0) {
                            break;
                        } else if (i == 0 || aVar.f11499a.size() < i) {
                            i = aVar.f11499a.size();
                            aVar2 = aVar;
                        }
                    }
                }
                aVar.m1828b(e);
                aVar3 = aVar;
            }
            aVar.m1827c(messageSnapshot);
        } catch (Throwable th) {
            aVar3.m1827c(messageSnapshot);
            throw th;
        }
    }
}
