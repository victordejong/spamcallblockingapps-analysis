package com.squareup.okhttp;

import com.squareup.okhttp.p089u.C2970g;
import com.squareup.okhttp.p089u.C2975i;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.ListIterator;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.squareup.okhttp.g */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/g.class */
public final class C2862g {

    /* renamed from: a */
    private final int f12105a;

    /* renamed from: b */
    private final long f12106b;

    /* renamed from: c */
    private final LinkedList<C2861f> f12107c = new LinkedList<>();

    /* renamed from: d */
    private Executor f12108d = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), C2975i.m644p("OkHttp ConnectionPool", true));

    /* renamed from: e */
    private final Runnable f12109e = new RunnableC2863a();

    /* renamed from: com.squareup.okhttp.g$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/g$a.class */
    class RunnableC2863a implements Runnable {
        RunnableC2863a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C2862g.this.m1264f();
        }
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.String, com.squareup.okhttp.g] */
    /* JADX WARN: Unknown variable types count: 1 */
    static {
        /*
            java.lang.String r0 = "http.keepAlive"
            java.lang.String r0 = java.lang.System.getProperty(r0)
            r6 = r0
            java.lang.String r0 = "http.keepAliveDuration"
            java.lang.String r0 = java.lang.System.getProperty(r0)
            r7 = r0
            java.lang.String r0 = "http.maxConnections"
            java.lang.String r0 = java.lang.System.getProperty(r0)
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x001e
            r0 = r7
            long r0 = java.lang.Long.parseLong(r0)
            r9 = r0
            goto L_0x0022
        L_0x001e:
            r0 = 300000(0x493e0, double:1.482197E-318)
            r9 = r0
        L_0x0022:
            r0 = r6
            if (r0 == 0) goto L_0x003a
            r0 = r6
            boolean r0 = java.lang.Boolean.parseBoolean(r0)
            if (r0 != 0) goto L_0x003a
            com.squareup.okhttp.g r0 = new com.squareup.okhttp.g
            r1 = r0
            r2 = 0
            r3 = r9
            r1.<init>(r2, r3)
            goto L_0x0054
        L_0x003a:
            com.squareup.okhttp.g r0 = new com.squareup.okhttp.g
            r7 = r0
            r0 = r8
            if (r0 == 0) goto L_0x004e
            r0 = r7
            r1 = r8
            int r1 = java.lang.Integer.parseInt(r1)
            r2 = r9
            r0.<init>(r1, r2)
            goto L_0x0054
        L_0x004e:
            r0 = r7
            r1 = 5
            r2 = r9
            r0.<init>(r1, r2)
        L_0x0054:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.C2862g.m16042clinit():void");
    }

    public C2862g(int i, long j) {
        this.f12105a = i;
        this.f12106b = j * 1000 * 1000;
    }

    /* renamed from: b */
    private void m1268b(C2861f fVar) {
        boolean isEmpty = this.f12107c.isEmpty();
        this.f12107c.addFirst(fVar);
        if (isEmpty) {
            this.f12108d.execute(this.f12109e);
        } else {
            notifyAll();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void m1264f() {
        do {
        } while (m1266d());
    }

    /* renamed from: c */
    public C2861f m1267c(C2852a aVar) {
        C2861f fVar;
        synchronized (this) {
            fVar = null;
            LinkedList<C2861f> linkedList = this.f12107c;
            ListIterator<C2861f> listIterator = linkedList.listIterator(linkedList.size());
            while (listIterator.hasPrevious()) {
                fVar = listIterator.previous();
                if (fVar.m1283l().m711a().equals(aVar) && fVar.m1280o() && System.nanoTime() - fVar.m1285j() < this.f12106b) {
                    listIterator.remove();
                    if (fVar.m1278q()) {
                        break;
                    }
                    try {
                        C2970g.m673f().mo669j(fVar.m1282m());
                        break;
                    } catch (SocketException e) {
                        C2975i.m656d(fVar.m1282m());
                        C2970g f = C2970g.m673f();
                        f.m671i("Unable to tagSocket(): " + e);
                    }
                }
            }
            if (fVar != null && fVar.m1278q()) {
                this.f12107c.addFirst(fVar);
            }
        }
        return fVar;
    }

    /* renamed from: d */
    boolean m1266d() {
        synchronized (this) {
            try {
                if (this.f12107c.isEmpty()) {
                    return false;
                }
                ArrayList arrayList = new ArrayList();
                long nanoTime = System.nanoTime();
                long j = this.f12106b;
                LinkedList<C2861f> linkedList = this.f12107c;
                ListIterator<C2861f> listIterator = linkedList.listIterator(linkedList.size());
                int i = 0;
                while (listIterator.hasPrevious()) {
                    C2861f previous = listIterator.previous();
                    long j2 = (previous.m1285j() + this.f12106b) - nanoTime;
                    if (j2 > 0 && previous.m1280o()) {
                        if (previous.m1277r()) {
                            i++;
                            j = Math.min(j, j2);
                        }
                    }
                    listIterator.remove();
                    arrayList.add(previous);
                }
                LinkedList<C2861f> linkedList2 = this.f12107c;
                ListIterator<C2861f> listIterator2 = linkedList2.listIterator(linkedList2.size());
                while (listIterator2.hasPrevious() && i > this.f12105a) {
                    C2861f previous2 = listIterator2.previous();
                    if (previous2.m1277r()) {
                        arrayList.add(previous2);
                        listIterator2.remove();
                        i--;
                    }
                }
                if (arrayList.isEmpty()) {
                    try {
                        long j3 = j / 1000000;
                        Long.signum(j3);
                        wait(j3, (int) (j - (1000000 * j3)));
                        return true;
                    } catch (InterruptedException e) {
                    }
                }
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    C2975i.m656d(((C2861f) arrayList.get(i2)).m1282m());
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m1265e(C2861f fVar) {
        if (!fVar.m1278q() && fVar.m1294a()) {
            if (fVar.m1280o()) {
                try {
                    C2970g.m673f().mo668k(fVar.m1282m());
                    synchronized (this) {
                        m1268b(fVar);
                        fVar.m1281n();
                        fVar.m1273v();
                    }
                    return;
                } catch (SocketException e) {
                    C2970g f = C2970g.m673f();
                    f.m671i("Unable to untagSocket(): " + e);
                }
            }
            C2975i.m656d(fVar.m1282m());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public void m1263g(C2861f fVar) {
        if (!fVar.m1278q()) {
            throw new IllegalArgumentException();
        } else if (fVar.m1280o()) {
            synchronized (this) {
                m1268b(fVar);
            }
        }
    }
}
