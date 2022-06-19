package com.danikula.videocache;

import java.io.OutputStream;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.slf4j.AbstractC9605b;
import org.slf4j.C9606c;
/* renamed from: com.danikula.videocache.j */
/* loaded from: classes-dex2jar.jar:com/danikula/videocache/j.class */
public class C4434j {

    /* renamed from: a */
    private static final AbstractC9605b f13550a = C9606c.m352i("Pinger");

    /* renamed from: b */
    private final ExecutorService f13551b = Executors.newSingleThreadExecutor();

    /* renamed from: c */
    private final String f13552c;

    /* renamed from: d */
    private final int f13553d;

    /* renamed from: com.danikula.videocache.j$b */
    /* loaded from: classes-dex2jar.jar:com/danikula/videocache/j$b.class */
    public class CallableC4436b implements Callable<Boolean> {
        private CallableC4436b() {
            C4434j.this = r4;
        }

        /* renamed from: a */
        public Boolean call() {
            return Boolean.valueOf(C4434j.this.m22482f());
        }
    }

    public C4434j(String str, int i) {
        this.f13552c = (String) C4437k.m22476d(str);
        this.f13553d = i;
    }

    /* renamed from: b */
    private List<Proxy> m22486b() {
        try {
            return ProxySelector.getDefault().select(new URI(m22485c()));
        } catch (URISyntaxException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: c */
    private String m22485c() {
        return String.format(Locale.US, "http://%s:%d/%s", this.f13552c, Integer.valueOf(this.f13553d), "ping");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: f */
    public boolean m22482f() {
        C4432h c4432h = new C4432h(m22485c());
        try {
            try {
                byte[] bytes = "ping ok".getBytes();
                c4432h.mo22452a(0L);
                byte[] bArr = new byte[bytes.length];
                c4432h.read(bArr);
                boolean equals = Arrays.equals(bytes, bArr);
                AbstractC9605b abstractC9605b = f13550a;
                abstractC9605b.info("Ping response: `" + new String(bArr) + "`, pinged? " + equals);
                c4432h.close();
                return equals;
            } catch (ProxyCacheException e) {
                f13550a.error("Error reading ping response", e);
                c4432h.close();
                return false;
            }
        } catch (Throwable th) {
            c4432h.close();
            throw th;
        }
    }

    /* renamed from: d */
    public boolean m22484d(String str) {
        return "ping".equals(str);
    }

    /* renamed from: e */
    public boolean m22483e(int i, int i2) {
        Throwable e;
        C4437k.m22478b(i >= 1);
        C4437k.m22478b(i2 > 0);
        int i3 = 0;
        while (i3 < i) {
            try {
            } catch (InterruptedException e2) {
                e = e2;
                f13550a.error("Error pinging server due to unexpected error", e);
            } catch (ExecutionException e3) {
                e = e3;
                f13550a.error("Error pinging server due to unexpected error", e);
            } catch (TimeoutException e4) {
                f13550a.warn("Error pinging server (attempt: " + i3 + ", timeout: " + i2 + "). ");
            }
            if (((Boolean) this.f13551b.submit(new CallableC4436b()).get(i2, TimeUnit.MILLISECONDS)).booleanValue()) {
                return true;
            }
            i3++;
            i2 *= 2;
        }
        String format = String.format(Locale.US, "Error pinging server (attempts: %d, max timeout: %d). If you see this message, please, report at https://github.com/danikula/AndroidVideoCache/issues/134. Default proxies are: %s", Integer.valueOf(i3), Integer.valueOf(i2 / 2), m22486b());
        f13550a.error(format, new ProxyCacheException(format));
        return false;
    }

    /* renamed from: g */
    public void m22481g(Socket socket) {
        OutputStream outputStream = socket.getOutputStream();
        outputStream.write("HTTP/1.1 200 OK\n\n".getBytes());
        outputStream.write("ping ok".getBytes());
    }
}
