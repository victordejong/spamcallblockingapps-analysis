package com.applovin.impl.sdk.network;

import android.os.Process;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.C1493h;
import com.applovin.impl.sdk.utils.Utils;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
import p007a6.C0033h;
import p152l0.AbstractC3426a;
/* renamed from: com.applovin.impl.sdk.network.e */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/e.class */
public class C1451e {

    /* renamed from: a */
    private final PriorityBlockingQueue<C1455b> f5462a = new PriorityBlockingQueue<>();

    /* renamed from: b */
    private final C1408l f5463b;

    /* renamed from: com.applovin.impl.sdk.network.e$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/e$a.class */
    public static class C1453a extends Thread {

        /* renamed from: a */
        private final BlockingQueue<C1455b> f5464a;

        /* renamed from: b */
        private final C1408l f5465b;

        private C1453a(BlockingQueue<C1455b> blockingQueue, int i, C1408l c1408l) {
            super(C0033h.m8886k("AL-Network-", i));
            if (blockingQueue != null) {
                if (c1408l == null) {
                    throw new IllegalArgumentException("No sdk specified");
                }
                this.f5464a = blockingQueue;
                this.f5465b = c1408l;
                return;
            }
            throw new IllegalArgumentException("No request queue specified");
        }

        /* renamed from: a */
        private void m5301a() throws InterruptedException {
            m5300a(this.f5464a.take());
        }

        /* renamed from: a */
        private void m5300a(final C1455b c1455b) {
            InputStream inputStream;
            Throwable th;
            HttpURLConnection httpURLConnection;
            InputStream inputStream2;
            String str;
            String str2;
            String str3;
            int i = 0;
            try {
                httpURLConnection = m5299b(c1455b);
                i = 0;
                try {
                    if (c1455b.f5473e != null && c1455b.f5473e.length > 0) {
                        httpURLConnection.setDoOutput(true);
                        httpURLConnection.setFixedLengthStreamingMode(c1455b.f5473e.length);
                        OutputStream outputStream = httpURLConnection.getOutputStream();
                        outputStream.write(c1455b.f5473e);
                        outputStream.close();
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode > 0) {
                        i = responseCode;
                        inputStream = httpURLConnection.getInputStream();
                        try {
                            str3 = C1493h.m5061a(inputStream, this.f5465b);
                        } catch (Throwable th2) {
                            th = th2;
                            i = responseCode;
                            try {
                                if (this.f5465b.m5542A().m5122a()) {
                                    this.f5465b.m5542A().m5118a("NetworkCommunicationThread", "Failed to make HTTP request", th);
                                }
                                if (httpURLConnection != null) {
                                    try {
                                        inputStream2 = httpURLConnection.getErrorStream();
                                        try {
                                            str = C1493h.m5061a(inputStream2, this.f5465b);
                                        } catch (Throwable th3) {
                                            str = null;
                                            Utils.close(inputStream, this.f5465b);
                                            Utils.close(inputStream2, this.f5465b);
                                            Utils.disconnect(httpURLConnection, this.f5465b);
                                            str2 = null;
                                            final C1457c m5270a = C1457c.m5271d().m5269a(i).m5267a(str2).m5264b(str).m5266a(th).m5270a();
                                            c1455b.f5476h.execute(new Runnable() { // from class: com.applovin.impl.sdk.network.e.a.1
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                    c1455b.f5475g.accept(m5270a);
                                                }
                                            });
                                        }
                                    } catch (Throwable th4) {
                                        inputStream2 = null;
                                    }
                                } else {
                                    inputStream2 = null;
                                    str = null;
                                }
                                Utils.close(inputStream, this.f5465b);
                                Utils.close(inputStream2, this.f5465b);
                                Utils.disconnect(httpURLConnection, this.f5465b);
                                str2 = null;
                                final C1457c m5270a2 = C1457c.m5271d().m5269a(i).m5267a(str2).m5264b(str).m5266a(th).m5270a();
                                c1455b.f5476h.execute(new Runnable() { // from class: com.applovin.impl.sdk.network.e.a.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        c1455b.f5475g.accept(m5270a2);
                                    }
                                });
                            } catch (Throwable th5) {
                                Utils.close(inputStream, this.f5465b);
                                Utils.close(null, this.f5465b);
                                Utils.disconnect(httpURLConnection, this.f5465b);
                                throw th5;
                            }
                        }
                    } else {
                        inputStream = null;
                        str3 = null;
                    }
                    Utils.close(inputStream, this.f5465b);
                    Utils.close(null, this.f5465b);
                    Utils.disconnect(httpURLConnection, this.f5465b);
                    str = null;
                    str2 = str3;
                    i = responseCode;
                    th = null;
                } catch (Throwable th6) {
                    th = th6;
                    inputStream = null;
                }
            } catch (Throwable th7) {
                th = th7;
                httpURLConnection = null;
                inputStream = null;
            }
            final C1457c m5270a22 = C1457c.m5271d().m5269a(i).m5267a(str2).m5264b(str).m5266a(th).m5270a();
            c1455b.f5476h.execute(new Runnable() { // from class: com.applovin.impl.sdk.network.e.a.1
                @Override // java.lang.Runnable
                public void run() {
                    c1455b.f5475g.accept(m5270a22);
                }
            });
        }

        /* renamed from: b */
        private HttpURLConnection m5299b(C1455b c1455b) throws IOException {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(c1455b.f5470b).openConnection();
            httpURLConnection.setRequestMethod(c1455b.f5471c);
            httpURLConnection.setConnectTimeout(c1455b.f5474f);
            httpURLConnection.setReadTimeout(c1455b.f5474f);
            httpURLConnection.setDefaultUseCaches(false);
            httpURLConnection.setAllowUserInteraction(false);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setInstanceFollowRedirects(true);
            httpURLConnection.setDoInput(true);
            if (!c1455b.f5472d.isEmpty()) {
                for (Map.Entry entry : c1455b.f5472d.entrySet()) {
                    httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
            }
            return httpURLConnection;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            while (true) {
                try {
                    m5301a();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    /* renamed from: com.applovin.impl.sdk.network.e$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/e$b.class */
    public static class C1455b implements Comparable<C1455b> {

        /* renamed from: a */
        private static final AtomicInteger f5469a = new AtomicInteger();

        /* renamed from: b */
        private final String f5470b;

        /* renamed from: c */
        private final String f5471c;

        /* renamed from: d */
        private final Map<String, String> f5472d;

        /* renamed from: e */
        private final byte[] f5473e;

        /* renamed from: f */
        private final int f5474f;

        /* renamed from: g */
        private final AbstractC3426a<C1457c> f5475g;

        /* renamed from: h */
        private final Executor f5476h;

        /* renamed from: i */
        private final int f5477i;

        /* renamed from: com.applovin.impl.sdk.network.e$b$a */
        /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/e$b$a.class */
        public static class C1456a {

            /* renamed from: a */
            private String f5478a;

            /* renamed from: b */
            private String f5479b;

            /* renamed from: c */
            private Map<String, String> f5480c = new HashMap();

            /* renamed from: d */
            private byte[] f5481d;

            /* renamed from: e */
            private int f5482e;

            /* renamed from: f */
            private AbstractC3426a<C1457c> f5483f;

            /* renamed from: g */
            private Executor f5484g;

            /* renamed from: a */
            public C1456a m5289a(int i) {
                this.f5482e = i;
                return this;
            }

            /* renamed from: a */
            public C1456a m5287a(String str) {
                this.f5478a = str;
                return this;
            }

            /* renamed from: a */
            public C1456a m5286a(String str, String str2) {
                this.f5480c.put(str, str2);
                return this;
            }

            /* renamed from: a */
            public C1456a m5285a(Map<String, String> map) {
                if (map == null) {
                    map = new HashMap();
                }
                this.f5480c = map;
                return this;
            }

            /* renamed from: a */
            public C1456a m5284a(Executor executor) {
                this.f5484g = executor;
                return this;
            }

            /* renamed from: a */
            public C1456a m5283a(AbstractC3426a<C1457c> abstractC3426a) {
                this.f5483f = abstractC3426a;
                return this;
            }

            /* renamed from: a */
            public C1456a m5282a(byte[] bArr) {
                this.f5481d = bArr;
                return this;
            }

            /* renamed from: a */
            public C1455b m5290a() {
                return new C1455b(this);
            }

            /* renamed from: b */
            public C1456a m5280b(String str) {
                this.f5479b = str;
                return this;
            }
        }

        private C1455b(C1456a c1456a) {
            this.f5470b = c1456a.f5478a;
            this.f5471c = c1456a.f5479b;
            this.f5472d = c1456a.f5480c != null ? c1456a.f5480c : Collections.emptyMap();
            this.f5473e = c1456a.f5481d;
            this.f5474f = c1456a.f5482e;
            this.f5475g = c1456a.f5483f;
            this.f5476h = c1456a.f5484g;
            this.f5477i = f5469a.incrementAndGet();
        }

        /* renamed from: a */
        public int compareTo(C1455b c1455b) {
            return this.f5477i - c1455b.f5477i;
        }
    }

    /* renamed from: com.applovin.impl.sdk.network.e$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/e$c.class */
    public static class C1457c {

        /* renamed from: a */
        private final int f5485a;

        /* renamed from: b */
        private final String f5486b;

        /* renamed from: c */
        private final String f5487c;

        /* renamed from: d */
        private final Throwable f5488d;

        /* renamed from: com.applovin.impl.sdk.network.e$c$a */
        /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/e$c$a.class */
        public static class C1458a {

            /* renamed from: a */
            private int f5489a;

            /* renamed from: b */
            private String f5490b;

            /* renamed from: c */
            private String f5491c;

            /* renamed from: d */
            private Throwable f5492d;

            /* renamed from: a */
            public C1458a m5269a(int i) {
                this.f5489a = i;
                return this;
            }

            /* renamed from: a */
            public C1458a m5267a(String str) {
                this.f5490b = str;
                return this;
            }

            /* renamed from: a */
            public C1458a m5266a(Throwable th) {
                this.f5492d = th;
                return this;
            }

            /* renamed from: a */
            public C1457c m5270a() {
                return new C1457c(this);
            }

            /* renamed from: b */
            public C1458a m5264b(String str) {
                this.f5491c = str;
                return this;
            }
        }

        private C1457c(C1458a c1458a) {
            this.f5485a = c1458a.f5489a;
            this.f5486b = c1458a.f5490b;
            this.f5487c = c1458a.f5491c;
            this.f5488d = c1458a.f5492d;
        }

        /* renamed from: d */
        public static C1458a m5271d() {
            return new C1458a();
        }

        /* renamed from: a */
        public int m5274a() throws Throwable {
            Throwable th = this.f5488d;
            if (th == null) {
                return this.f5485a;
            }
            throw th;
        }

        /* renamed from: b */
        public String m5273b() throws Throwable {
            Throwable th = this.f5488d;
            if (th == null) {
                return this.f5486b;
            }
            throw th;
        }

        /* renamed from: c */
        public String m5272c() {
            return this.f5487c;
        }
    }

    public C1451e(C1408l c1408l) {
        this.f5463b = c1408l;
    }

    /* renamed from: a */
    public void m5303a() {
        for (int i = 0; i < ((Integer) this.f5463b.m5511a(C1314b.f4760ap)).intValue(); i++) {
            new C1453a(this.f5462a, i, this.f5463b).start();
        }
    }

    /* renamed from: a */
    public void m5302a(C1455b c1455b) {
        if (c1455b != null) {
            this.f5462a.add(c1455b);
            return;
        }
        throw new IllegalArgumentException("No request specified");
    }
}
