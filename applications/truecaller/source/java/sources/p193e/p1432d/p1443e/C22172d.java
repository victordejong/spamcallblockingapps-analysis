package p193e.p1432d.p1443e;

import android.os.Process;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;
import p193e.p1432d.p1443e.AbstractC22169b;
import p193e.p1432d.p1443e.AbstractC22184o;
import p193e.p1432d.p1443e.C22175g;
import p193e.p1432d.p1443e.p1444x.C22205d;
/* renamed from: e.d.e.d */
/* loaded from: classes-dex2jar.jar:e/d/e/d.class */
public class C22172d extends Thread {

    /* renamed from: g */
    public static final boolean f61606g = C22198w.f61659a;

    /* renamed from: a */
    public final BlockingQueue<AbstractC22184o<?>> f61607a;

    /* renamed from: b */
    public final BlockingQueue<AbstractC22184o<?>> f61608b;

    /* renamed from: c */
    public final AbstractC22169b f61609c;

    /* renamed from: d */
    public final AbstractC22193r f61610d;

    /* renamed from: e */
    public volatile boolean f61611e = false;

    /* renamed from: f */
    public final C22173a f61612f = new C22173a(this);

    /* renamed from: e.d.e.d$a */
    /* loaded from: classes-dex2jar.jar:e/d/e/d$a.class */
    public static class C22173a implements AbstractC22184o.AbstractC22186b {

        /* renamed from: a */
        public final Map<String, List<AbstractC22184o<?>>> f61613a = new HashMap();

        /* renamed from: b */
        public final C22172d f61614b;

        public C22173a(C22172d c22172d) {
            this.f61614b = c22172d;
        }

        /* renamed from: a */
        public static boolean m8490a(C22173a c22173a, AbstractC22184o abstractC22184o) {
            boolean z;
            synchronized (c22173a) {
                String cacheKey = abstractC22184o.getCacheKey();
                z = true;
                if (c22173a.f61613a.containsKey(cacheKey)) {
                    List<AbstractC22184o<?>> list = c22173a.f61613a.get(cacheKey);
                    List<AbstractC22184o<?>> list2 = list;
                    if (list == null) {
                        list2 = new ArrayList<>();
                    }
                    abstractC22184o.addMarker("waiting-for-response");
                    list2.add(abstractC22184o);
                    c22173a.f61613a.put(cacheKey, list2);
                    if (C22198w.f61659a) {
                        C22198w.m8484a("Request for cacheKey=%s is in flight, putting on hold.", cacheKey);
                    }
                } else {
                    c22173a.f61613a.put(cacheKey, null);
                    abstractC22184o.setNetworkRequestCompleteListener(c22173a);
                    if (C22198w.f61659a) {
                        C22198w.m8484a("new request, sending to network %s", cacheKey);
                    }
                    z = false;
                }
            }
            return z;
        }

        /* renamed from: b */
        public void m8489b(AbstractC22184o<?> abstractC22184o) {
            synchronized (this) {
                String cacheKey = abstractC22184o.getCacheKey();
                List<AbstractC22184o<?>> remove = this.f61613a.remove(cacheKey);
                if (remove != null && !remove.isEmpty()) {
                    if (C22198w.f61659a) {
                        C22198w.m8483b("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), cacheKey);
                    }
                    AbstractC22184o<?> remove2 = remove.remove(0);
                    this.f61613a.put(cacheKey, remove);
                    remove2.setNetworkRequestCompleteListener(this);
                    try {
                        this.f61614b.f61608b.put(remove2);
                    } catch (InterruptedException e) {
                        C22198w.m8484a("Couldn't add request to queue. %s", e.toString());
                        Thread.currentThread().interrupt();
                        C22172d c22172d = this.f61614b;
                        c22172d.f61611e = true;
                        c22172d.interrupt();
                    }
                }
            }
        }
    }

    public C22172d(BlockingQueue<AbstractC22184o<?>> blockingQueue, BlockingQueue<AbstractC22184o<?>> blockingQueue2, AbstractC22169b abstractC22169b, AbstractC22193r abstractC22193r) {
        this.f61607a = blockingQueue;
        this.f61608b = blockingQueue2;
        this.f61609c = abstractC22169b;
        this.f61610d = abstractC22193r;
    }

    /* renamed from: a */
    public final void m8491a() throws InterruptedException {
        ArrayList arrayList;
        AbstractC22169b.C22170a c22170a;
        AbstractC22184o<?> take = this.f61607a.take();
        take.addMarker("cache-queue-take");
        if (take.isCanceled()) {
            take.finish("cache-discard-canceled");
            return;
        }
        AbstractC22169b abstractC22169b = this.f61609c;
        String cacheKey = take.getCacheKey();
        C22205d c22205d = (C22205d) abstractC22169b;
        synchronized (c22205d) {
            C22205d.C22206a c22206a = c22205d.f61675a.get(cacheKey);
            arrayList = null;
            if (c22206a != null) {
                File m8472a = c22205d.m8472a(cacheKey);
                try {
                    C22205d.C22207b c22207b = new C22205d.C22207b(new BufferedInputStream(new FileInputStream(m8472a)), m8472a.length());
                    try {
                        C22205d.C22206a m8458a = C22205d.C22206a.m8458a(c22207b);
                        if (!TextUtils.equals(cacheKey, m8458a.f61680b)) {
                            C22198w.m8484a("%s: key=%s, found=%s", m8472a.getAbsolutePath(), cacheKey, m8458a.f61680b);
                            C22205d.C22206a remove = c22205d.f61675a.remove(cacheKey);
                            if (remove != null) {
                                c22205d.f61676b -= remove.f61679a;
                            }
                        } else {
                            c22170a = c22206a.m8457b(C22205d.m8462k(c22207b, c22207b.f61687a - c22207b.f61688b));
                        }
                    } finally {
                        c22207b.close();
                    }
                } catch (IOException e) {
                    C22198w.m8484a("%s: %s", m8472a.getAbsolutePath(), e.toString());
                    c22205d.m8463j(cacheKey);
                }
            }
            c22170a = null;
        }
        if (c22170a == null) {
            take.addMarker("cache-miss");
            if (C22173a.m8490a(this.f61612f, take)) {
                return;
            }
            this.f61608b.put(take);
            return;
        }
        if (c22170a.f61600e < System.currentTimeMillis()) {
            take.addMarker("cache-hit-expired");
            take.setCacheEntry(c22170a);
            if (C22173a.m8490a(this.f61612f, take)) {
                return;
            }
            this.f61608b.put(take);
            return;
        }
        take.addMarker("cache-hit");
        byte[] bArr = c22170a.f61596a;
        Map<String, String> map = c22170a.f61602g;
        if (map != null) {
            if (!map.isEmpty()) {
                ArrayList arrayList2 = new ArrayList(map.size());
                Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
                while (true) {
                    arrayList = arrayList2;
                    if (!it.hasNext()) {
                        break;
                    }
                    Map.Entry<String, String> next = it.next();
                    arrayList2.add(new C22178h(next.getKey(), next.getValue()));
                }
            } else {
                arrayList = Collections.emptyList();
            }
        }
        C22190q<?> parseNetworkResponse = take.parseNetworkResponse(new C22182l(200, bArr, map, arrayList, false, 0L));
        take.addMarker("cache-hit-parsed");
        boolean z = false;
        if (c22170a.f61601f < System.currentTimeMillis()) {
            z = true;
        }
        if (!z) {
            ((C22175g) this.f61610d).m8488a(take, parseNetworkResponse);
            return;
        }
        take.addMarker("cache-hit-refresh-needed");
        take.setCacheEntry(c22170a);
        parseNetworkResponse.f61657d = true;
        if (C22173a.m8490a(this.f61612f, take)) {
            ((C22175g) this.f61610d).m8488a(take, parseNetworkResponse);
            return;
        }
        AbstractC22193r abstractC22193r = this.f61610d;
        RunnableC22171c runnableC22171c = new RunnableC22171c(this, take);
        C22175g c22175g = (C22175g) abstractC22193r;
        Objects.requireNonNull(c22175g);
        take.markDelivered();
        take.addMarker("post-response");
        c22175g.f61619a.execute(new C22175g.RunnableC22177b(take, parseNetworkResponse, runnableC22171c));
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        long length;
        C22205d.C22207b c22207b;
        if (f61606g) {
            C22198w.m8483b("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        C22205d c22205d = (C22205d) this.f61609c;
        synchronized (c22205d) {
            if (c22205d.f61677c.exists()) {
                File[] listFiles = c22205d.f61677c.listFiles();
                if (listFiles != null) {
                    for (File file : listFiles) {
                        try {
                            length = file.length();
                            c22207b = new C22205d.C22207b(new BufferedInputStream(new FileInputStream(file)), length);
                        } catch (IOException e) {
                            file.delete();
                        }
                        try {
                            C22205d.C22206a m8458a = C22205d.C22206a.m8458a(c22207b);
                            m8458a.f61679a = length;
                            c22205d.m8468e(m8458a.f61680b, m8458a);
                            c22207b.close();
                        } catch (Throwable th) {
                            c22207b.close();
                            throw th;
                        }
                    }
                }
            } else if (!c22205d.f61677c.mkdirs()) {
                C22198w.m8484a("Unable to create cache dir %s", c22205d.f61677c.getAbsolutePath());
            }
        }
        while (true) {
            try {
                m8491a();
            } catch (InterruptedException e2) {
                if (this.f61611e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                C22198w.m8484a("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
