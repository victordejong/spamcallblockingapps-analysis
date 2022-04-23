package com.bytedance.sdk.openadsdk.k;

import android.util.Log;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.openadsdk.k.b;
import com.bytedance.sdk.openadsdk.k.c.d;
import com.bytedance.sdk.openadsdk.k.h;
import com.bytedance.sdk.openadsdk.k.i;
import com.bytedance.sdk.openadsdk.k.l;
import io.objectbox.model.PropertyFlags;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/g.class */
public class g extends com.bytedance.sdk.openadsdk.k.a {
    private final Socket m;
    private final c n;
    private final ExecutorService o;
    private volatile com.bytedance.sdk.openadsdk.k.b q;
    private volatile boolean r = true;
    private final d p = d.c();

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/g$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        com.bytedance.sdk.openadsdk.k.a.a f9759a;

        /* renamed from: b  reason: collision with root package name */
        com.bytedance.sdk.openadsdk.k.b.c f9760b;

        /* renamed from: c  reason: collision with root package name */
        ExecutorService f9761c;

        /* renamed from: d  reason: collision with root package name */
        Socket f9762d;
        c e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a a(com.bytedance.sdk.openadsdk.k.b.c cVar) {
            if (cVar != null) {
                this.f9760b = cVar;
                return this;
            }
            throw new IllegalArgumentException("db == null");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a a(c cVar) {
            this.e = cVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a a(Socket socket) {
            if (socket != null) {
                this.f9762d = socket;
                return this;
            }
            throw new IllegalArgumentException("socket == null");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a a(ExecutorService executorService) {
            if (executorService != null) {
                this.f9761c = executorService;
                return this;
            }
            throw new IllegalArgumentException("executor == null");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final g a() {
            if (this.f9760b != null && this.f9761c != null && this.f9762d != null) {
                return new g(this);
            }
            throw new IllegalArgumentException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/g$b.class */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final OutputStream f9764a;

        /* renamed from: b  reason: collision with root package name */
        private int f9765b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f9766c;

        b(OutputStream outputStream, int i) {
            this.f9764a = outputStream;
            this.f9765b = i;
        }

        void a(byte[] bArr, int i, int i2) throws d {
            if (!this.f9766c) {
                try {
                    this.f9764a.write(bArr, i, i2);
                    this.f9766c = true;
                } catch (IOException e) {
                    throw new d(e);
                }
            }
        }

        boolean a() {
            return this.f9766c;
        }

        int b() {
            return this.f9765b;
        }

        void b(byte[] bArr, int i, int i2) throws d {
            try {
                this.f9764a.write(bArr, i, i2);
                this.f9765b += i2;
            } catch (IOException e) {
                throw new d(e);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/g$c.class */
    public interface c {
        void a(g gVar);

        void b(g gVar);
    }

    g(a aVar) {
        super(aVar.f9759a, aVar.f9760b);
        this.o = aVar.f9761c;
        this.m = aVar.f9762d;
        this.n = aVar.e;
    }

    private void a(com.bytedance.sdk.openadsdk.k.b.a aVar, File file, b bVar, l.a aVar2) throws IOException, d, h.a, com.bytedance.sdk.openadsdk.k.c.a, com.bytedance.sdk.openadsdk.k.c.b, VAdError {
        Future<?> future;
        Throwable th;
        h hVar;
        com.bytedance.sdk.openadsdk.k.b bVar2;
        if (!bVar.a()) {
            byte[] a2 = a(aVar, bVar, aVar2);
            e();
            if (a2 != null) {
                bVar.a(a2, 0, a2.length);
            } else {
                return;
            }
        }
        h hVar2 = null;
        com.bytedance.sdk.openadsdk.k.b.a aVar3 = aVar;
        if (aVar == null) {
            com.bytedance.sdk.openadsdk.k.b.a a3 = this.f9664b.a(this.h, this.i.f9780c.f9781a);
            aVar3 = a3;
            if (a3 == null) {
                if (e.f9723c) {
                    Log.e("TAG_PROXY_ProxyTask", "failed to get video header info from db");
                }
                a((com.bytedance.sdk.openadsdk.k.b.a) null, bVar, aVar2);
                aVar3 = this.f9664b.a(this.h, this.i.f9780c.f9781a);
                if (aVar3 == null) {
                    throw new com.bytedance.sdk.openadsdk.k.c.c("failed to get header, rawKey: " + this.g + ", url: " + aVar2);
                }
            }
        }
        if (file.length() >= aVar3.f9687c || ((bVar2 = this.q) != null && !bVar2.b() && !bVar2.d())) {
            future = null;
        } else {
            com.bytedance.sdk.openadsdk.k.b a4 = new b.a().a(this.f9663a).a(this.f9664b).a(this.g).b(this.h).a(new l(aVar2.f9798a)).a(this.f).a(this.i).a(new b.AbstractC0176b() { // from class: com.bytedance.sdk.openadsdk.k.g.1
                @Override // com.bytedance.sdk.openadsdk.k.b.AbstractC0176b
                public void a(com.bytedance.sdk.openadsdk.k.b bVar3) {
                    g.this.f9665c.addAndGet(bVar3.f9665c.get());
                    g.this.f9666d.addAndGet(bVar3.f9666d.get());
                    synchronized (bVar3.m) {
                        bVar3.m.notifyAll();
                    }
                    if (bVar3.d()) {
                        g.this.p.a(g.this.g(), null);
                    }
                }
            }).a();
            this.q = a4;
            Future<?> submit = this.o.submit(a4);
            future = submit;
            if (e.f9723c) {
                Log.e("TAG_PROXY_ProxyTask", "fire download in process cache task");
                future = submit;
            }
        }
        byte[] bArr = new byte[PropertyFlags.UNSIGNED];
        try {
            hVar = new h(file, "r");
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            hVar.a(bVar.b());
            int min = this.i.f9780c.e > 0 ? Math.min(aVar3.f9687c, this.i.f9780c.e) : aVar3.f9687c;
            while (bVar.b() < min) {
                e();
                int a5 = hVar.a(bArr);
                if (a5 <= 0) {
                    com.bytedance.sdk.openadsdk.k.b bVar3 = this.q;
                    if (bVar3 != null) {
                        com.bytedance.sdk.openadsdk.k.c.b i = bVar3.i();
                        if (i == null) {
                            h.a h = bVar3.h();
                            if (h != null) {
                                throw h;
                            }
                        } else {
                            throw i;
                        }
                    }
                    if (bVar3 != null && !bVar3.b() && !bVar3.d()) {
                        e();
                        synchronized (bVar3.m) {
                            try {
                                bVar3.m.wait(1000L);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                    if (e.f9723c) {
                        Log.e("TAG_PROXY_ProxyTask", "download task has finished!!!");
                    }
                    throw new com.bytedance.sdk.openadsdk.k.c.c("illegal state download task has finished, rawKey: " + this.g + ", url: " + aVar2);
                }
                bVar.b(bArr, 0, a5);
                e();
            }
            if (e.f9723c) {
                StringBuilder sb = new StringBuilder("read cache file complete: ");
                sb.append(bVar.b());
                sb.append(", ");
                sb.append(min);
            }
            c();
            hVar.a();
            if (future != null) {
                try {
                    future.get();
                } catch (Throwable th3) {
                    th3.printStackTrace();
                }
            }
        } catch (Throwable th4) {
            th = th4;
            hVar2 = hVar;
            if (hVar2 != null) {
                hVar2.a();
            }
            if (future != null) {
                try {
                    future.get();
                } catch (Throwable th5) {
                    th5.printStackTrace();
                }
            }
            throw th;
        }
    }

    private void a(b bVar, l.a aVar) throws d, IOException, h.a, com.bytedance.sdk.openadsdk.k.c.a, com.bytedance.sdk.openadsdk.k.c.b, VAdError {
        if ("HEAD".equalsIgnoreCase(this.i.f9778a.f9787a)) {
            b(bVar, aVar);
        } else {
            c(bVar, aVar);
        }
    }

    private void a(boolean z, int i, int i2, int i3, int i4) {
    }

    private boolean a(b bVar) throws com.bytedance.sdk.openadsdk.k.c.a, VAdError {
        while (this.j.a()) {
            e();
            l.a b2 = this.j.b();
            try {
                a(bVar, b2);
                return true;
            } catch (com.bytedance.sdk.adnet.err.a e) {
                if (e.f9723c) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e));
                }
            } catch (com.bytedance.sdk.openadsdk.k.c.b e2) {
                if (!e.f9723c) {
                    return false;
                }
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e2));
                return false;
            } catch (com.bytedance.sdk.openadsdk.k.c.c e3) {
                b2.a();
                a(Boolean.valueOf(g()), this.g, e3);
            } catch (d e4) {
                if (!e.f9723c) {
                    return true;
                }
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e4));
                return true;
            } catch (h.a e5) {
                if (e.f9723c) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e5));
                }
                this.r = false;
                a(Boolean.valueOf(g()), this.g, e5);
            } catch (IOException e6) {
                if (e6 instanceof SocketTimeoutException) {
                    b2.b();
                }
                if (!b()) {
                    a(Boolean.valueOf(g()), this.g, e6);
                } else if (e.f9723c) {
                    if ("Canceled".equalsIgnoreCase(e6.getMessage())) {
                        Log.w("TAG_PROXY_ProxyTask", "okhttp call canceled");
                    } else {
                        Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e6));
                    }
                }
            } catch (Exception e7) {
                if (e.f9723c) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e7));
                }
            }
        }
        return false;
    }

    private byte[] a(com.bytedance.sdk.openadsdk.k.b.a aVar, b bVar, l.a aVar2) throws IOException, VAdError {
        if (aVar != null) {
            boolean z = e.f9723c;
            return com.bytedance.sdk.openadsdk.k.g.d.a(aVar, bVar.b()).getBytes(com.bytedance.sdk.openadsdk.k.g.d.f9773a);
        }
        com.bytedance.sdk.openadsdk.k.e.a a2 = a(aVar2, 0, -1, "HEAD");
        if (a2 == null) {
            return null;
        }
        try {
            String a3 = com.bytedance.sdk.openadsdk.k.g.d.a(a2, false, false);
            if (a3 == null) {
                com.bytedance.sdk.openadsdk.k.b.a a4 = com.bytedance.sdk.openadsdk.k.g.d.a(a2, this.f9664b, this.h, this.i.f9780c.f9781a);
                if (e.f9723c) {
                    Log.w("TAG_PROXY_ProxyTask", "get header from network");
                }
                return com.bytedance.sdk.openadsdk.k.g.d.a(a4, bVar.b()).getBytes(com.bytedance.sdk.openadsdk.k.g.d.f9773a);
            }
            throw new com.bytedance.sdk.openadsdk.k.c.c(a3 + ", rawKey: " + this.g + ", url: " + aVar2);
        } finally {
            com.bytedance.sdk.openadsdk.k.g.d.a(a2.d());
        }
    }

    private void b(b bVar, l.a aVar) throws IOException, d, VAdError {
        byte[] a2 = a(this.f9664b.a(this.h, this.i.f9780c.f9781a), bVar, aVar);
        if (a2 != null) {
            bVar.a(a2, 0, a2.length);
        }
    }

    private void c(b bVar, l.a aVar) throws h.a, d, IOException, com.bytedance.sdk.openadsdk.k.c.a, com.bytedance.sdk.openadsdk.k.c.b, VAdError {
        if (this.r) {
            File c2 = this.f9663a.c(this.h);
            long length = c2.length();
            com.bytedance.sdk.openadsdk.k.b.a a2 = this.f9664b.a(this.h, this.i.f9780c.f9781a);
            int b2 = bVar.b();
            long j = length - b2;
            int i = (int) j;
            int i2 = a2 == null ? -1 : a2.f9687c;
            if (length > bVar.b()) {
                if (e.f9723c) {
                    new StringBuilder("cache hit, remainSize: ").append(j);
                }
                a(true, i, i2, (int) length, b2);
                a(a2, c2, bVar, aVar);
                return;
            }
            a(false, i, i2, (int) length, b2);
        } else {
            a(false, 0, 0, 0, bVar.b());
        }
        d(bVar, aVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x03e5  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0349 A[EDGE_INSN: B:118:0x0349->B:90:0x0349 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x036d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d(com.bytedance.sdk.openadsdk.k.g.b r7, com.bytedance.sdk.openadsdk.k.l.a r8) throws com.bytedance.sdk.openadsdk.k.c.d, java.io.IOException, com.bytedance.sdk.openadsdk.k.c.a, com.bytedance.sdk.openadsdk.k.c.b, com.bytedance.sdk.adnet.err.VAdError {
        /*
            Method dump skipped, instructions count: 1026
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.k.g.d(com.bytedance.sdk.openadsdk.k.g$b, com.bytedance.sdk.openadsdk.k.l$a):void");
    }

    private b h() {
        try {
            this.i = i.a(this.m.getInputStream());
            OutputStream outputStream = this.m.getOutputStream();
            com.bytedance.sdk.openadsdk.k.a.a aVar = this.i.f9780c.f9781a == 1 ? e.f9721a : e.f9722b;
            if (aVar != null) {
                this.f9663a = aVar;
                this.g = this.i.f9780c.f9782b;
                this.h = this.i.f9780c.f9783c;
                this.j = new l(this.i.f9780c.g);
                this.f = this.i.f9779b;
                if (e.f9723c) {
                    new StringBuilder("request from MediaPlayer:    ").append(this.i.toString());
                }
                return new b(outputStream, this.i.f9780c.f9784d);
            } else if (!e.f9723c) {
                return null;
            } else {
                Log.e("TAG_PROXY_ProxyTask", "cache is null");
                return null;
            }
        } catch (i.d e) {
            com.bytedance.sdk.openadsdk.k.g.d.a(this.m);
            if (e.f9723c) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e));
            }
            a(this.f9663a == null ? null : Boolean.valueOf(g()), this.g, e);
            return null;
        } catch (IOException e2) {
            com.bytedance.sdk.openadsdk.k.g.d.a(this.m);
            if (e.f9723c) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e2));
            }
            a(this.f9663a == null ? null : Boolean.valueOf(g()), this.g, e2);
            return null;
        }
    }

    private void i() {
        com.bytedance.sdk.openadsdk.k.b bVar = this.q;
        this.q = null;
        if (bVar != null) {
            bVar.a();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.k.a
    public void a() {
        super.a();
        i();
    }

    @Override // java.lang.Runnable
    public void run() {
        com.bytedance.sdk.openadsdk.k.b.a a2;
        b h = h();
        if (h != null) {
            c cVar = this.n;
            if (cVar != null) {
                cVar.a(this);
            }
            this.f9663a.a(this.h);
            if (e.h != 0 && ((a2 = this.f9664b.a(this.h, this.i.f9780c.f9781a)) == null || this.f9663a.c(this.h).length() < a2.f9687c)) {
                this.p.a(g(), this.h);
            }
            try {
                a(h);
            } catch (VAdError e) {
                e.printStackTrace();
            } catch (com.bytedance.sdk.openadsdk.k.c.a e2) {
                if (e.f9723c) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e2));
                }
            } catch (Throwable th) {
                if (e.f9723c) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(th));
                }
            }
            this.f9663a.b(this.h);
            this.p.a(g(), null);
            a();
            com.bytedance.sdk.openadsdk.k.g.d.a(this.m);
            c cVar2 = this.n;
            if (cVar2 != null) {
                cVar2.b(this);
            }
        }
    }
}
