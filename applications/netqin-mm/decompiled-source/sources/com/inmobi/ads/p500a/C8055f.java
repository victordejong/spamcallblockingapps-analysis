package com.inmobi.ads.p500a;

import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.webkit.URLUtil;
import com.inmobi.ads.C8173bi;
import com.inmobi.ads.C8181bn;
import com.inmobi.ads.C8197c;
import com.inmobi.ads.p500a.C8049a;
import com.inmobi.commons.core.configs.AbstractC8346a;
import com.inmobi.commons.core.configs.C8348b;
import com.inmobi.commons.core.network.C8384d;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.utilities.C8407d;
import com.inmobi.commons.core.utilities.C8410g;
import com.inmobi.commons.p508a.C8326a;
import com.squareup.picasso.Callback;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.inmobi.ads.a.f */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/a/f.class */
public final class C8055f implements C8348b.AbstractC8351c {

    /* renamed from: f */
    public static final String f31526f = "f";

    /* renamed from: o */
    public static C8055f f31527o;

    /* renamed from: b */
    public C8197c.C8199b f31530b;

    /* renamed from: g */
    public C8197c.C8208k f31533g;

    /* renamed from: i */
    public HandlerC8062a f31535i;

    /* renamed from: j */
    public HandlerThread f31536j;

    /* renamed from: l */
    public ConcurrentHashMap<String, C8049a> f31538l;

    /* renamed from: n */
    public C8410g.AbstractC8413b f31540n;

    /* renamed from: p */
    public static final Object f31528p = new Object();

    /* renamed from: e */
    public static final Object f31525e = new Object();

    /* renamed from: k */
    public AtomicBoolean f31537k = new AtomicBoolean(false);

    /* renamed from: d */
    public AtomicBoolean f31532d = new AtomicBoolean(false);

    /* renamed from: q */
    public List<C8051b> f31541q = new ArrayList();

    /* renamed from: r */
    public final AbstractC8054e f31542r = new AbstractC8054e() { // from class: com.inmobi.ads.a.f.1
        @Override // com.inmobi.ads.p500a.AbstractC8054e
        /* renamed from: a */
        public final void mo6548a(C8049a aVar) {
            String unused = C8055f.f31526f;
            StringBuilder sb = new StringBuilder("Asset fetch failed for remote URL (");
            sb.append(aVar.f31492d);
            sb.append(")");
            C8055f.this.m6568c(aVar.f31492d);
            if (aVar.f31491c <= 0) {
                String unused2 = C8055f.f31526f;
                C8055f.this.m6590a(aVar, false);
                C8053d unused3 = C8055f.this.f31529a;
                C8053d.m6597c(aVar);
            } else {
                String unused4 = C8055f.f31526f;
                aVar.f31494f = System.currentTimeMillis();
                C8053d unused5 = C8055f.this.f31529a;
                C8053d.m6600b(aVar);
                if (!C8407d.m5650a()) {
                    C8055f.this.m6590a(aVar, false);
                }
            }
            try {
                C8055f.m6570c(C8055f.this);
            } catch (Exception e) {
                String unused6 = C8055f.f31526f;
                C8328a.m5878a().m5875a(new C8365a(e));
            }
        }

        @Override // com.inmobi.ads.p500a.AbstractC8054e
        /* renamed from: a */
        public final void mo6547a(C8384d dVar, String str, C8049a aVar) {
            String unused = C8055f.f31526f;
            StringBuilder sb = new StringBuilder("Asset fetch succeeded for URL ");
            sb.append(aVar.f31492d);
            sb.append(" Updating location on disk (file://");
            sb.append(str);
            sb.append(")");
            C8049a a = new C8049a.C8050a().m6609a(aVar.f31492d, str, dVar, C8055f.this.f31530b.f32009a, C8055f.this.f31530b.f32013e).m6612a();
            C8053d unused2 = C8055f.this.f31529a;
            C8053d.m6600b(a);
            a.f31499k = aVar.f31499k;
            a.f31489a = aVar.f31489a;
            C8055f.this.m6590a(a, true);
            try {
                C8055f.m6570c(C8055f.this);
            } catch (Exception e) {
                String unused3 = C8055f.f31526f;
                C8328a.m5878a().m5875a(new C8365a(e));
            }
        }
    };

    /* renamed from: a */
    public C8053d f31529a = C8053d.m6605a();

    /* renamed from: c */
    public ExecutorService f31531c = Executors.newCachedThreadPool();

    /* renamed from: h */
    public ExecutorService f31534h = Executors.newFixedThreadPool(1);

    /* renamed from: m */
    public C8410g.AbstractC8413b f31539m = new C8410g.AbstractC8413b() { // from class: com.inmobi.ads.a.f.2
        @Override // com.inmobi.commons.core.utilities.C8410g.AbstractC8413b
        /* renamed from: a */
        public final void mo5511a(boolean z) {
            if (z) {
                C8055f.m6570c(C8055f.this);
            } else {
                C8055f.this.m6572c();
            }
        }
    };

    /* renamed from: com.inmobi.ads.a.f$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/a/f$a.class */
    public static final class HandlerC8062a extends Handler {

        /* renamed from: a */
        public WeakReference<C8055f> f31552a;

        /* renamed from: b */
        public final AbstractC8054e f31553b = new AbstractC8054e() { // from class: com.inmobi.ads.a.f.a.1
            @Override // com.inmobi.ads.p500a.AbstractC8054e
            /* renamed from: a */
            public final void mo6548a(C8049a aVar) {
                C8055f fVar = (C8055f) HandlerC8062a.this.f31552a.get();
                if (fVar != null) {
                    String unused = C8055f.f31526f;
                    StringBuilder sb = new StringBuilder("Asset fetch failed for remote URL (");
                    sb.append(aVar.f31492d);
                    sb.append(")");
                    fVar.m6568c(aVar.f31492d);
                    int i = aVar.f31491c;
                    if (i > 0) {
                        aVar.f31491c = i - 1;
                        aVar.f31494f = System.currentTimeMillis();
                        C8053d unused2 = fVar.f31529a;
                        C8053d.m6600b(aVar);
                        HandlerC8062a.this.m6551b();
                        return;
                    }
                    fVar.m6590a(aVar, false);
                    HandlerC8062a.this.m6554a(aVar);
                    return;
                }
                String unused3 = C8055f.f31526f;
            }

            @Override // com.inmobi.ads.p500a.AbstractC8054e
            /* renamed from: a */
            public final void mo6547a(C8384d dVar, String str, C8049a aVar) {
                C8055f fVar = (C8055f) HandlerC8062a.this.f31552a.get();
                if (fVar != null) {
                    String unused = C8055f.f31526f;
                    StringBuilder sb = new StringBuilder("Asset fetch succeeded for URL ");
                    sb.append(aVar.f31492d);
                    sb.append(" Updating location on disk (file://");
                    sb.append(str);
                    sb.append(")");
                    C8049a a = new C8049a.C8050a().m6609a(aVar.f31492d, str, dVar, fVar.f31530b.f32009a, fVar.f31530b.f32013e).m6612a();
                    C8053d unused2 = fVar.f31529a;
                    C8053d.m6600b(a);
                    a.f31499k = aVar.f31499k;
                    a.f31489a = aVar.f31489a;
                    fVar.m6590a(a, true);
                    HandlerC8062a.this.m6555a();
                    return;
                }
                String unused3 = C8055f.f31526f;
            }
        };

        public HandlerC8062a(Looper looper, C8055f fVar) {
            super(looper);
            this.f31552a = new WeakReference<>(fVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public void m6555a() {
            try {
                sendEmptyMessage(3);
            } catch (Exception e) {
                String unused = C8055f.f31526f;
                new StringBuilder("Encountered unexpected error in Asset fetch handler").append(e.getMessage());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public void m6554a(C8049a aVar) {
            try {
                Message obtain = Message.obtain();
                obtain.what = 4;
                obtain.obj = aVar;
                sendMessage(obtain);
            } catch (Exception e) {
                String unused = C8055f.f31526f;
                new StringBuilder("Encountered unexpected error in Asset fetch handler").append(e.getMessage());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public void m6551b() {
            try {
                sendEmptyMessage(1);
            } catch (Exception e) {
                String unused = C8055f.f31526f;
                new StringBuilder("Encountered unexpected error in Asset fetch handler").append(e.getMessage());
            }
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            C8049a aVar;
            try {
                C8055f fVar = this.f31552a.get();
                int i = message.what;
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i == 4) {
                                if (fVar != null) {
                                    C8049a aVar2 = (C8049a) message.obj;
                                    C8053d unused = fVar.f31529a;
                                    C8053d.m6597c(aVar2);
                                }
                                m6551b();
                            } else {
                                return;
                            }
                        }
                        m6551b();
                    } else if (fVar != null) {
                        String str = (String) message.obj;
                        C8053d unused2 = fVar.f31529a;
                        C8049a b = C8053d.m6599b(str);
                        if (b == null) {
                            m6551b();
                        } else if (!b.m6623a()) {
                            int i2 = fVar.f31530b.f32009a;
                            int i3 = b.f31491c;
                            if (b.f31491c == 0) {
                                b.f31500l = 11;
                                fVar.m6590a(b, false);
                                m6554a(b);
                            } else if (!C8407d.m5650a()) {
                                fVar.m6590a(b, false);
                                fVar.m6572c();
                            } else if (fVar.m6591a(b, this.f31553b)) {
                                String unused3 = C8055f.f31526f;
                                new StringBuilder("Cache miss in handler; attempting to cache asset: ").append(b.f31492d);
                                String unused4 = C8055f.f31526f;
                                StringBuilder sb = new StringBuilder("Download attempt # ");
                                sb.append((i2 - i3) + 1);
                                sb.append(" in handler  to cache asset (");
                                sb.append(b.f31492d);
                                sb.append(")");
                            } else {
                                String unused5 = C8055f.f31526f;
                                new StringBuilder("Cache miss in handler; but already attempting: ").append(b.f31492d);
                                m6551b();
                            }
                        } else {
                            String unused6 = C8055f.f31526f;
                            m6555a();
                            fVar.m6590a(b, true);
                        }
                    }
                } else if (fVar != null) {
                    C8197c.C8199b bVar = fVar.f31530b;
                    C8197c.C8199b bVar2 = bVar;
                    if (bVar == null) {
                        C8197c cVar = new C8197c();
                        C8348b.m5847a().m5844a(cVar, (C8348b.AbstractC8351c) null);
                        bVar2 = cVar.f31995n;
                    }
                    C8053d unused7 = fVar.f31529a;
                    List<C8049a> e = C8053d.m6594e();
                    if (e.size() <= 0) {
                        String unused8 = C8055f.f31526f;
                        fVar.m6572c();
                        return;
                    }
                    String unused9 = C8055f.f31526f;
                    C8049a aVar3 = e.get(0);
                    Iterator<C8049a> it = e.iterator();
                    do {
                        aVar = aVar3;
                        if (!it.hasNext()) {
                            break;
                        }
                        aVar = it.next();
                    } while (C8055f.m6575b(fVar, aVar3));
                    Message obtain = Message.obtain();
                    obtain.what = 2;
                    long currentTimeMillis = System.currentTimeMillis() - aVar.f31494f;
                    try {
                        if (currentTimeMillis < bVar2.f32010b * 1000) {
                            sendMessageDelayed(obtain, (bVar2.f32010b * 1000) - currentTimeMillis);
                        } else if (C8055f.m6575b(fVar, aVar)) {
                            sendMessageDelayed(obtain, bVar2.f32010b * 1000);
                        } else {
                            String unused10 = C8055f.f31526f;
                            Message obtain2 = Message.obtain();
                            obtain2.what = 2;
                            obtain2.obj = aVar.f31492d;
                            sendMessage(obtain2);
                        }
                    } catch (Exception e2) {
                        String unused11 = C8055f.f31526f;
                        new StringBuilder("Encountered unexpected error in Asset fetch handler").append(e2.getMessage());
                    }
                }
            } catch (Exception e3) {
                String unused12 = C8055f.f31526f;
                C8328a.m5878a().m5875a(new C8365a(e3));
            }
        }
    }

    /* renamed from: com.inmobi.ads.a.f$b */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/a/f$b.class */
    public final class C8064b implements InvocationHandler {

        /* renamed from: b */
        public CountDownLatch f31556b;

        /* renamed from: c */
        public String f31557c;

        public C8064b(CountDownLatch countDownLatch, String str) {
            this.f31556b = countDownLatch;
            this.f31557c = str;
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) {
            String unused = C8055f.f31526f;
            new StringBuilder("Method invoked in PicassoInvocationHandler -").append(method);
            if (method == null) {
                return null;
            }
            if ("onSuccess".equalsIgnoreCase(method.getName())) {
                C8055f.this.m6581a(this.f31557c);
                this.f31556b.countDown();
                return null;
            } else if (!"onError".equalsIgnoreCase(method.getName())) {
                return null;
            } else {
                C8055f.this.m6573b(this.f31557c);
                this.f31556b.countDown();
                return null;
            }
        }
    }

    public C8055f() {
        C8197c cVar = new C8197c();
        C8348b.m5847a().m5844a(cVar, this);
        this.f31530b = cVar.f31995n;
        this.f31533g = cVar.f31994m;
        HandlerThread handlerThread = new HandlerThread("assetFetcher");
        this.f31536j = handlerThread;
        handlerThread.start();
        this.f31535i = new HandlerC8062a(this.f31536j.getLooper(), this);
        if (Build.VERSION.SDK_INT >= 23) {
            this.f31540n = new C8410g.AbstractC8413b() { // from class: com.inmobi.ads.a.f.3
                @Override // com.inmobi.commons.core.utilities.C8410g.AbstractC8413b
                /* renamed from: a */
                public final void mo5511a(boolean z) {
                    if (z) {
                        C8055f.this.m6572c();
                    } else {
                        C8055f.m6570c(C8055f.this);
                    }
                }
            };
        }
        this.f31538l = new ConcurrentHashMap<>(2, 0.9f, 2);
    }

    /* renamed from: a */
    public static C8055f m6593a() {
        C8055f fVar = f31527o;
        C8055f fVar2 = fVar;
        if (fVar == null) {
            synchronized (f31528p) {
                C8055f fVar3 = f31527o;
                fVar2 = fVar3;
                if (fVar3 == null) {
                    fVar2 = new C8055f();
                    f31527o = fVar2;
                }
            }
        }
        return fVar2;
    }

    /* renamed from: a */
    public static void m6592a(C8049a aVar) {
        C8053d.m6597c(aVar);
        File file = new File(aVar.f31493e);
        if (file.exists()) {
            file.delete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6590a(C8049a aVar, boolean z) {
        synchronized (this) {
            m6578b(aVar);
            m6568c(aVar.f31492d);
            if (z) {
                m6581a(aVar.f31492d);
                m6564e();
                return;
            }
            m6573b(aVar.f31492d);
            m6562f();
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m6582a(C8055f fVar, List list) {
        CountDownLatch countDownLatch = new CountDownLatch(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            try {
                C8173bi.m6266a(C8326a.m5891b()).load(str).fetch((Callback) C8173bi.m6265a(new C8064b(countDownLatch, str)));
            } catch (Exception e) {
                countDownLatch.countDown();
            }
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException e2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6581a(String str) {
        boolean z;
        synchronized (this) {
            for (int i = 0; i < this.f31541q.size(); i++) {
                C8051b bVar = this.f31541q.get(i);
                Set<C8181bn> set = bVar.f31510b;
                Set<String> set2 = bVar.f31511c;
                Iterator<C8181bn> it = set.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().f31917b.equals(str)) {
                            z = true;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                if (z && !set2.contains(str)) {
                    bVar.f31511c.add(str);
                    bVar.f31512d++;
                }
            }
        }
    }

    /* renamed from: a */
    private void m6580a(List<C8051b> list) {
        synchronized (this) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                this.f31541q.remove(list.get(i));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean m6591a(C8049a aVar, AbstractC8054e eVar) {
        boolean z;
        if (this.f31538l.putIfAbsent(aVar.f31492d, aVar) != null) {
            return false;
        }
        C8052c cVar = new C8052c(eVar);
        C8197c.C8208k kVar = this.f31533g;
        long j = kVar.f32054c;
        ArrayList<String> arrayList = kVar.f32056e;
        StringBuilder sb = new StringBuilder("Fetching asset (");
        sb.append(aVar.f31492d);
        sb.append(")");
        if (!C8407d.m5650a()) {
            aVar.f31500l = 8;
            cVar.f31520a.mo6548a(aVar);
            return true;
        } else if (aVar.f31492d.equals("") || !URLUtil.isValidUrl(aVar.f31492d)) {
            aVar.f31500l = 3;
            cVar.f31520a.mo6548a(aVar);
            return true;
        } else {
            String[] strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
            try {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(aVar.f31492d).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setConnectTimeout(60000);
                httpURLConnection.setReadTimeout(60000);
                if (httpURLConnection.getResponseCode() < 400) {
                    String contentType = httpURLConnection.getContentType();
                    int length = strArr.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            z = false;
                            break;
                        }
                        String str = strArr[i];
                        if (contentType != null && str.toLowerCase(Locale.ENGLISH).equals(contentType.toLowerCase(Locale.ENGLISH))) {
                            z = true;
                            break;
                        }
                        i++;
                    }
                    if (!z) {
                        aVar.f31500l = 6;
                        aVar.f31491c = 0;
                        cVar.f31520a.mo6548a(aVar);
                        return true;
                    }
                }
                long contentLength = httpURLConnection.getContentLength();
                if (contentLength >= 0) {
                    StringBuilder sb2 = new StringBuilder("ContentSize: ");
                    sb2.append(contentLength);
                    sb2.append(" max size: ");
                    sb2.append(j);
                    if (contentLength > j) {
                        aVar.f31500l = 7;
                        aVar.f31491c = 0;
                        cVar.f31520a.mo6548a(aVar);
                        return true;
                    }
                }
                httpURLConnection.connect();
                File a = C8326a.m5893a(aVar.f31492d);
                if (a.exists()) {
                    a.delete();
                }
                InputStream inputStream = httpURLConnection.getInputStream();
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(a));
                byte[] bArr = new byte[1024];
                long j2 = 0;
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read > 0) {
                        j2 += read;
                        if (j2 > j) {
                            aVar.f31500l = 7;
                            aVar.f31491c = 0;
                            try {
                                if (a.exists()) {
                                    a.delete();
                                }
                                httpURLConnection.disconnect();
                                C8407d.m5649a(bufferedOutputStream);
                            } catch (Exception e) {
                                C8328a.m5878a().m5875a(new C8365a(e));
                            }
                            C8052c.m6607a(elapsedRealtime, j2, SystemClock.elapsedRealtime());
                            cVar.f31520a.mo6548a(aVar);
                            return true;
                        }
                        bufferedOutputStream.write(bArr, 0, read);
                    } else {
                        bufferedOutputStream.flush();
                        httpURLConnection.disconnect();
                        C8407d.m5649a(bufferedOutputStream);
                        long elapsedRealtime2 = SystemClock.elapsedRealtime();
                        C8052c.m6607a(elapsedRealtime, j2, elapsedRealtime2);
                        C8384d dVar = new C8384d();
                        dVar.f32626d = httpURLConnection.getHeaderFields();
                        aVar.f31499k = C8052c.m6606a(aVar, a, elapsedRealtime, elapsedRealtime2);
                        aVar.f31489a = elapsedRealtime2 - elapsedRealtime;
                        cVar.f31520a.mo6547a(dVar, a.getAbsolutePath(), aVar);
                        return true;
                    }
                }
            } catch (FileNotFoundException e2) {
                aVar.f31500l = 4;
                cVar.f31520a.mo6548a(aVar);
                return true;
            } catch (MalformedURLException e3) {
                aVar.f31500l = 3;
                cVar.f31520a.mo6548a(aVar);
                return true;
            } catch (ProtocolException e4) {
                aVar.f31500l = 8;
                cVar.f31520a.mo6548a(aVar);
                return true;
            } catch (SocketTimeoutException e5) {
                aVar.f31500l = 4;
                cVar.f31520a.mo6548a(aVar);
                return true;
            } catch (IOException e6) {
                aVar.f31500l = 8;
                cVar.f31520a.mo6548a(aVar);
                return true;
            } catch (Exception e7) {
                aVar.f31500l = 0;
                cVar.f31520a.mo6548a(aVar);
                return true;
            }
        }
    }

    /* renamed from: b */
    private void m6578b(C8049a aVar) {
        boolean z;
        synchronized (this) {
            for (int i = 0; i < this.f31541q.size(); i++) {
                C8051b bVar = this.f31541q.get(i);
                Iterator<C8181bn> it = bVar.f31510b.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().f31917b.equals(aVar.f31492d)) {
                            z = true;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                if (z && !bVar.f31509a.contains(aVar)) {
                    bVar.f31509a.add(aVar);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m6577b(C8051b bVar) {
        synchronized (this) {
            if (!this.f31541q.contains(bVar)) {
                this.f31541q.add(bVar);
            }
        }
    }

    /* renamed from: b */
    public static /* synthetic */ void m6574b(C8055f fVar, final String str) {
        C8049a a = C8053d.m6602a(str);
        if (a == null || !a.m6623a()) {
            C8049a.C8050a aVar = new C8049a.C8050a();
            C8197c.C8199b bVar = fVar.f31530b;
            C8049a a2 = aVar.m6610a(str, bVar.f32009a, bVar.f32013e).m6612a();
            if (C8053d.m6602a(str) == null) {
                fVar.f31529a.m6603a(a2);
            }
            fVar.f31534h.execute(new Runnable() { // from class: com.inmobi.ads.a.f.6
                @Override // java.lang.Runnable
                public final void run() {
                    C8053d unused = C8055f.this.f31529a;
                    C8049a a3 = C8053d.m6602a(str);
                    if (a3 == null) {
                        return;
                    }
                    if (a3.m6623a()) {
                        C8055f.this.m6571c(a3);
                        return;
                    }
                    C8055f fVar2 = C8055f.this;
                    if (fVar2.m6591a(a3, fVar2.f31542r)) {
                        String unused2 = C8055f.f31526f;
                        new StringBuilder("Cache miss; attempting to cache asset: ").append(str);
                        return;
                    }
                    String unused3 = C8055f.f31526f;
                    new StringBuilder("Cache miss; but already attempting: ").append(str);
                }
            });
            return;
        }
        StringBuilder sb = new StringBuilder("Cache hit; file exists location on disk (");
        sb.append(a.f31493e);
        sb.append(")");
        fVar.m6571c(a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m6573b(String str) {
        boolean z;
        synchronized (this) {
            for (int i = 0; i < this.f31541q.size(); i++) {
                C8051b bVar = this.f31541q.get(i);
                Iterator<C8181bn> it = bVar.f31510b.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().f31917b.equals(str)) {
                            z = true;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    bVar.f31513e++;
                }
            }
        }
    }

    /* renamed from: b */
    public static /* synthetic */ boolean m6575b(C8055f fVar, C8049a aVar) {
        return fVar.f31538l.containsKey(aVar.f31492d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m6571c(C8049a aVar) {
        File file = new File(aVar.f31493e);
        long min = Math.min(System.currentTimeMillis() + (aVar.f31496h - aVar.f31494f), System.currentTimeMillis() + (this.f31530b.f32013e * 1000));
        C8049a.C8050a aVar2 = new C8049a.C8050a();
        String str = aVar.f31492d;
        String str2 = aVar.f31493e;
        int i = this.f31530b.f32009a;
        long j = aVar.f31497i;
        aVar2.f31503c = str;
        aVar2.f31504d = str2;
        aVar2.f31502b = i;
        aVar2.f31507g = min;
        aVar2.f31508h = j;
        C8049a a = aVar2.m6612a();
        a.f31494f = System.currentTimeMillis();
        C8053d.m6600b(a);
        long j2 = aVar.f31494f;
        a.f31499k = C8052c.m6606a(aVar, file, j2, j2);
        a.f31498j = true;
        m6590a(a, true);
    }

    /* renamed from: c */
    public static /* synthetic */ void m6570c(C8055f fVar) {
        if (!fVar.f31532d.get()) {
            fVar.m6579b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m6568c(String str) {
        this.f31538l.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m6564e() {
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < this.f31541q.size(); i++) {
                C8051b bVar = this.f31541q.get(i);
                if (bVar.f31512d == bVar.f31510b.size()) {
                    try {
                        AbstractC8065g a = bVar.m6608a();
                        if (a != null) {
                            a.mo5552b(bVar);
                        }
                        arrayList.add(bVar);
                    } catch (Exception e) {
                        new StringBuilder("Encountered unexpected error in onAssetFetchSucceeded handler: ").append(e.getMessage());
                        C8328a.m5878a().m5875a(new C8365a(e));
                    }
                }
            }
            m6580a(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void m6562f() {
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < this.f31541q.size(); i++) {
                C8051b bVar = this.f31541q.get(i);
                if (bVar.f31513e > 0) {
                    try {
                        AbstractC8065g a = bVar.m6608a();
                        if (a != null) {
                            a.mo5553a(bVar);
                        }
                        arrayList.add(bVar);
                    } catch (Exception e) {
                        new StringBuilder("Encountered unexpected error in onAssetFetchFailed handler: ").append(e.getMessage());
                        C8328a.m5878a().m5875a(new C8365a(e));
                    }
                }
            }
            m6580a(arrayList);
        }
    }

    /* renamed from: g */
    private void m6560g() {
        C8410g.m5639a();
        C8410g.AbstractC8413b bVar = this.f31539m;
        if (Build.VERSION.SDK_INT < 28) {
            C8410g.m5637a(bVar, "android.net.conn.CONNECTIVITY_CHANGE");
        } else {
            C8410g.m5637a(bVar, "SYSTEM_CONNECTIVITY_CHANGE");
        }
        if (Build.VERSION.SDK_INT >= 23) {
            C8410g.m5639a();
            C8410g.m5637a(this.f31540n, "android.os.action.DEVICE_IDLE_MODE_CHANGED");
        }
    }

    /* renamed from: h */
    private void m6558h() {
        C8410g.m5639a().m5638a(this.f31539m);
        if (Build.VERSION.SDK_INT >= 23) {
            C8410g.m5639a().m5636a("android.os.action.DEVICE_IDLE_MODE_CHANGED", this.f31540n);
        }
    }

    /* renamed from: a */
    public final void m6589a(final C8051b bVar) {
        this.f31531c.execute(new Runnable() { // from class: com.inmobi.ads.a.f.5
            @Override // java.lang.Runnable
            public final void run() {
                C8055f.this.m6577b(bVar);
                String unused = C8055f.f31526f;
                StringBuilder sb = new StringBuilder("Attempting to cache ");
                sb.append(bVar.f31510b.size());
                sb.append("remote URLs ");
                ArrayList arrayList = new ArrayList();
                ArrayList<String> arrayList2 = new ArrayList();
                for (C8181bn bnVar : bVar.f31510b) {
                    if (bnVar.f31917b.trim().length() <= 0 || bnVar.f31916a != 2) {
                        arrayList2.add(bnVar.f31917b);
                    } else {
                        arrayList.add(bnVar.f31917b);
                    }
                }
                C8055f.m6582a(C8055f.this, arrayList);
                C8055f.this.m6564e();
                C8055f.this.m6562f();
                for (String str : arrayList2) {
                    C8055f.m6574b(C8055f.this, str);
                }
            }
        });
    }

    @Override // com.inmobi.commons.core.configs.C8348b.AbstractC8351c
    /* renamed from: a */
    public final void mo5529a(AbstractC8346a aVar) {
        C8197c cVar = (C8197c) aVar;
        this.f31530b = cVar.f31995n;
        this.f31533g = cVar.f31994m;
    }

    /* renamed from: b */
    public final void m6579b() {
        this.f31532d.set(false);
        if (!C8407d.m5650a()) {
            m6560g();
            m6558h();
            return;
        }
        synchronized (f31525e) {
            if (this.f31537k.compareAndSet(false, true)) {
                if (this.f31536j == null) {
                    HandlerThread handlerThread = new HandlerThread("assetFetcher");
                    this.f31536j = handlerThread;
                    handlerThread.start();
                }
                if (this.f31535i == null) {
                    this.f31535i = new HandlerC8062a(this.f31536j.getLooper(), this);
                }
                if (C8053d.m6594e().isEmpty()) {
                    m6572c();
                } else {
                    m6560g();
                    m6558h();
                    this.f31535i.sendEmptyMessage(1);
                }
            }
        }
    }

    /* renamed from: c */
    public final void m6572c() {
        synchronized (f31525e) {
            this.f31537k.set(false);
            this.f31538l.clear();
            if (this.f31536j != null) {
                this.f31536j.getLooper().quit();
                this.f31536j.interrupt();
                this.f31536j = null;
                this.f31535i = null;
            }
        }
    }
}
