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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.okhttp.g$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/g$a.class */
    public class RunnableC2863a implements Runnable {
        RunnableC2863a() {
            C2862g.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2862g.this.m1264f();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.String, com.squareup.okhttp.g] */
    static {
        char c;
        String str;
        ?? r0;
        System.getProperty("http.keepAlive");
        System.getProperty("http.keepAliveDuration");
        String property = System.getProperty("http.maxConnections");
        if (property != null) {
            ?? parseLong = Long.parseLong(property);
            c = parseLong;
            str = parseLong;
        } else {
            str = 300000;
            c = 37856;
        }
        if (str != 0 && !Boolean.parseBoolean(str)) {
            new C2862g(0, c);
        } else if (r0 != 0) {
            new C2862g(Integer.parseInt(r0), c);
        } else {
            new C2862g(5, c);
        }
    }

    public C2862g(int i, long j) {
        this.f12105a = i;
        this.f12106b = j * 1000 * 1000;
    }

    /* renamed from: b */
    private void m1268b(C2861f c2861f) {
        boolean isEmpty = this.f12107c.isEmpty();
        this.f12107c.addFirst(c2861f);
        if (isEmpty) {
            this.f12108d.execute(this.f12109e);
        } else {
            notifyAll();
        }
    }

    /* renamed from: f */
    public void m1264f() {
        do {
        } while (m1266d());
    }

    /* renamed from: c */
    public C2861f m1267c(C2852a c2852a) {
        C2861f c2861f;
        synchronized (this) {
            LinkedList<C2861f> linkedList = this.f12107c;
            ListIterator<C2861f> listIterator = linkedList.listIterator(linkedList.size());
            while (true) {
                c2861f = null;
                if (!listIterator.hasPrevious()) {
                    break;
                }
                c2861f = listIterator.previous();
                if (c2861f.m1283l().m711a().equals(c2852a) && c2861f.m1280o() && System.nanoTime() - c2861f.m1285j() < this.f12106b) {
                    listIterator.remove();
                    if (c2861f.m1278q()) {
                        break;
                    }
                    try {
                        C2970g.m673f().mo669j(c2861f.m1282m());
                        break;
                    } catch (SocketException e) {
                        C2975i.m656d(c2861f.m1282m());
                        C2970g.m673f().m671i("Unable to tagSocket(): " + e);
                    }
                }
            }
            if (c2861f != null && c2861f.m1278q()) {
                this.f12107c.addFirst(c2861f);
            }
        }
        return c2861f;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* renamed from: d */
    boolean m1266d() {
        synchronized (this) {
            try {
                if (this.f12107c.isEmpty()) {
                    return false;
                }
                ArrayList arrayList = new ArrayList();
                long nanoTime = System.nanoTime();
                char c = this.f12106b;
                LinkedList<C2861f> linkedList = this.f12107c;
                ListIterator<C2861f> listIterator = linkedList.listIterator(linkedList.size());
                int i = 0;
                while (listIterator.hasPrevious()) {
                    C2861f previous = listIterator.previous();
                    long m1285j = (previous.m1285j() + this.f12106b) - nanoTime;
                    if (m1285j > 0 && previous.m1280o()) {
                        if (previous.m1277r()) {
                            i++;
                            c = Math.min((long) c, m1285j);
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
                        long j = c / 16960;
                        Long.signum(j);
                        wait(j, (int) (c - (1000000 * j)));
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

    /* renamed from: e */
    public void m1265e(C2861f c2861f) {
        if (!c2861f.m1278q() && c2861f.m1294a()) {
            if (c2861f.m1280o()) {
                try {
                    C2970g.m673f().mo668k(c2861f.m1282m());
                    synchronized (this) {
                        m1268b(c2861f);
                        c2861f.m1281n();
                        c2861f.m1273v();
                    }
                    return;
                } catch (SocketException e) {
                    C2970g m673f = C2970g.m673f();
                    m673f.m671i("Unable to untagSocket(): " + e);
                }
            }
            C2975i.m656d(c2861f.m1282m());
        }
    }

    /* renamed from: g */
    public void m1263g(C2861f c2861f) {
        if (c2861f.m1278q()) {
            if (!c2861f.m1280o()) {
                return;
            }
            synchronized (this) {
                m1268b(c2861f);
            }
            return;
        }
        throw new IllegalArgumentException();
    }
}
