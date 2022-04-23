package com.bytedance.sdk.openadsdk.k;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.openadsdk.k.b.c;
import com.bytedance.sdk.openadsdk.k.h;
import com.bytedance.sdk.openadsdk.k.i;
import com.bytedance.sdk.openadsdk.k.l;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/b.class */
public class b extends com.bytedance.sdk.openadsdk.k.a {
    final Object m = this;
    final Object n;
    private final int o;
    private final AbstractC0176b p;
    private volatile h.a q;
    private volatile com.bytedance.sdk.openadsdk.k.c.b r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        String f9689a;

        /* renamed from: b  reason: collision with root package name */
        String f9690b;

        /* renamed from: c  reason: collision with root package name */
        l f9691c;

        /* renamed from: d  reason: collision with root package name */
        com.bytedance.sdk.openadsdk.k.a.a f9692d;
        c e;
        List<i.b> f;
        int g;
        i h;
        AbstractC0176b i;
        Object j;

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a a(int i) {
            this.g = i;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a a(com.bytedance.sdk.openadsdk.k.a.a aVar) {
            if (aVar != null) {
                this.f9692d = aVar;
                return this;
            }
            throw new IllegalArgumentException("cache == null");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a a(AbstractC0176b bVar) {
            this.i = bVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a a(c cVar) {
            if (cVar != null) {
                this.e = cVar;
                return this;
            }
            throw new IllegalArgumentException("db == null");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a a(i iVar) {
            this.h = iVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a a(l lVar) {
            if (lVar != null) {
                this.f9691c = lVar;
                return this;
            }
            throw new IllegalArgumentException("urls is empty");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a a(Object obj) {
            this.j = obj;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a a(String str) {
            if (!TextUtils.isEmpty(str)) {
                this.f9689a = str;
                return this;
            }
            throw new IllegalArgumentException("rawKey == null");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a a(List<i.b> list) {
            this.f = list;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final b a() {
            if (this.f9692d != null && this.e != null && !TextUtils.isEmpty(this.f9689a) && !TextUtils.isEmpty(this.f9690b) && this.f9691c != null) {
                return new b(this);
            }
            throw new IllegalArgumentException();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a b(String str) {
            if (!TextUtils.isEmpty(str)) {
                this.f9690b = str;
                return this;
            }
            throw new IllegalArgumentException("key == null");
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.k.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/b$b.class */
    public interface AbstractC0176b {
        void a(b bVar);
    }

    b(a aVar) {
        super(aVar.f9692d, aVar.e);
        this.o = aVar.g;
        this.p = aVar.i;
        this.g = aVar.f9689a;
        this.h = aVar.f9690b;
        this.f = aVar.f;
        this.j = aVar.f9691c;
        this.i = aVar.h;
        this.n = aVar.j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:117:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x026f, code lost:
        if (com.bytedance.sdk.openadsdk.k.e.f9723c == false) goto L_0x029d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0272, code lost:
        android.util.Log.w("TAG_PROXY_DownloadTask", "download, more data received, currentCacheFileSize: " + r12 + ", max: " + r6.o);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x029f, code lost:
        com.bytedance.sdk.openadsdk.k.g.d.a(r0.d());
        r7.a();
        a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x02b0, code lost:
        if (com.bytedance.sdk.openadsdk.k.e.f9723c == false) goto L_?;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x02b3, code lost:
        android.util.Log.w("TAG_PROXY_DownloadTask", "cancel call");
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x02bc, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.bytedance.sdk.openadsdk.k.l.a r7) throws java.io.IOException, com.bytedance.sdk.openadsdk.k.h.a, com.bytedance.sdk.openadsdk.k.c.a, com.bytedance.sdk.openadsdk.k.c.b, com.bytedance.sdk.adnet.err.VAdError {
        /*
            Method dump skipped, instructions count: 866
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.k.b.a(com.bytedance.sdk.openadsdk.k.l$a):void");
    }

    private boolean j() throws com.bytedance.sdk.openadsdk.k.c.a, VAdError {
        while (this.j.a()) {
            e();
            l.a b2 = this.j.b();
            try {
                a(b2);
                return true;
            } catch (com.bytedance.sdk.openadsdk.k.c.b e) {
                this.r = e;
                if (!e.f9723c) {
                    return false;
                }
                Log.e("TAG_PROXY_DownloadTask", Log.getStackTraceString(e));
                return false;
            } catch (com.bytedance.sdk.openadsdk.k.c.c e2) {
                b2.a();
                a(Boolean.valueOf(g()), this.g, e2);
            } catch (h.a e3) {
                this.q = e3;
                a(Boolean.valueOf(g()), this.g, e3);
                return false;
            } catch (IOException e4) {
                if (e4 instanceof SocketTimeoutException) {
                    b2.b();
                }
                if (!b()) {
                    a(Boolean.valueOf(g()), this.g, e4);
                } else if (e.f9723c) {
                    if ("Canceled".equalsIgnoreCase(e4.getMessage())) {
                        Log.w("TAG_PROXY_DownloadTask", "okhttp call canceled");
                    } else {
                        Log.e("TAG_PROXY_DownloadTask", Log.getStackTraceString(e4));
                    }
                }
            } catch (Throwable th) {
                if (!e.f9723c) {
                    return false;
                }
                Log.e("TAG_PROXY_DownloadTask", Log.getStackTraceString(th));
                return false;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h.a h() {
        return this.q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.bytedance.sdk.openadsdk.k.c.b i() {
        return this.r;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f9663a.a(this.h);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        try {
            j();
        } catch (com.bytedance.sdk.adnet.err.a e) {
            e.printStackTrace();
        } catch (VAdError e2) {
            e2.printStackTrace();
        } catch (com.bytedance.sdk.openadsdk.k.c.a e3) {
            if (e.f9723c) {
                Log.w("TAG_PROXY_DownloadTask", Log.getStackTraceString(e3));
            }
        } catch (Throwable th) {
            if (e.f9723c) {
                Log.e("TAG_PROXY_DownloadTask", Log.getStackTraceString(th));
            }
        }
        this.f9666d.set(SystemClock.elapsedRealtime() - elapsedRealtime);
        this.f9663a.b(this.h);
        AbstractC0176b bVar = this.p;
        if (bVar != null) {
            bVar.a(this);
        }
    }
}
