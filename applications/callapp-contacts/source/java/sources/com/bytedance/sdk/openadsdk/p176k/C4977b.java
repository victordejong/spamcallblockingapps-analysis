package com.bytedance.sdk.openadsdk.p176k;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.adnet.err.C4239a;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.openadsdk.p176k.C5032h;
import com.bytedance.sdk.openadsdk.p176k.C5034i;
import com.bytedance.sdk.openadsdk.p176k.C5041l;
import com.bytedance.sdk.openadsdk.p176k.p177a.AbstractC4963a;
import com.bytedance.sdk.openadsdk.p176k.p178b.C4982c;
import com.bytedance.sdk.openadsdk.p176k.p179c.C4987a;
import com.bytedance.sdk.openadsdk.p176k.p179c.C4988b;
import com.bytedance.sdk.openadsdk.p176k.p179c.C4989c;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.k.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/b.class */
public class C4977b extends AbstractC4961a {

    /* renamed from: m */
    final Object f18076m = this;

    /* renamed from: n */
    final Object f18077n;

    /* renamed from: o */
    private final int f18078o;

    /* renamed from: p */
    private final AbstractC4979b f18079p;

    /* renamed from: q */
    private volatile C5032h.C5033a f18080q;

    /* renamed from: r */
    private volatile C4988b f18081r;

    /* renamed from: com.bytedance.sdk.openadsdk.k.b$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/b$a.class */
    public static final class C4978a {

        /* renamed from: a */
        String f18082a;

        /* renamed from: b */
        String f18083b;

        /* renamed from: c */
        C5041l f18084c;

        /* renamed from: d */
        AbstractC4963a f18085d;

        /* renamed from: e */
        C4982c f18086e;

        /* renamed from: f */
        List<C5034i.C5036b> f18087f;

        /* renamed from: g */
        int f18088g;

        /* renamed from: h */
        C5034i f18089h;

        /* renamed from: i */
        AbstractC4979b f18090i;

        /* renamed from: j */
        Object f18091j;

        /* renamed from: a */
        public final C4978a m33380a(int i) {
            this.f18088g = i;
            return this;
        }

        /* renamed from: a */
        public final C4978a m33379a(AbstractC4963a abstractC4963a) {
            if (abstractC4963a != null) {
                this.f18085d = abstractC4963a;
                return this;
            }
            throw new IllegalArgumentException("cache == null");
        }

        /* renamed from: a */
        public final C4978a m33378a(AbstractC4979b abstractC4979b) {
            this.f18090i = abstractC4979b;
            return this;
        }

        /* renamed from: a */
        public final C4978a m33377a(C4982c c4982c) {
            if (c4982c != null) {
                this.f18086e = c4982c;
                return this;
            }
            throw new IllegalArgumentException("db == null");
        }

        /* renamed from: a */
        public final C4978a m33376a(C5034i c5034i) {
            this.f18089h = c5034i;
            return this;
        }

        /* renamed from: a */
        public final C4978a m33375a(C5041l c5041l) {
            if (c5041l != null) {
                this.f18084c = c5041l;
                return this;
            }
            throw new IllegalArgumentException("urls is empty");
        }

        /* renamed from: a */
        public final C4978a m33374a(Object obj) {
            this.f18091j = obj;
            return this;
        }

        /* renamed from: a */
        public final C4978a m33373a(String str) {
            if (!TextUtils.isEmpty(str)) {
                this.f18082a = str;
                return this;
            }
            throw new IllegalArgumentException("rawKey == null");
        }

        /* renamed from: a */
        public final C4978a m33372a(List<C5034i.C5036b> list) {
            this.f18087f = list;
            return this;
        }

        /* renamed from: a */
        public final C4977b m33381a() {
            if (this.f18085d == null || this.f18086e == null || TextUtils.isEmpty(this.f18082a) || TextUtils.isEmpty(this.f18083b) || this.f18084c == null) {
                throw new IllegalArgumentException();
            }
            return new C4977b(this);
        }

        /* renamed from: b */
        public final C4978a m33371b(String str) {
            if (!TextUtils.isEmpty(str)) {
                this.f18083b = str;
                return this;
            }
            throw new IllegalArgumentException("key == null");
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.k.b$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/b$b.class */
    public interface AbstractC4979b {
        /* renamed from: a */
        void mo33260a(C4977b c4977b);
    }

    C4977b(C4978a c4978a) {
        super(c4978a.f18085d, c4978a.f18086e);
        this.f18078o = c4978a.f18088g;
        this.f18079p = c4978a.f18090i;
        this.f18042g = c4978a.f18082a;
        this.f18043h = c4978a.f18083b;
        this.f18041f = c4978a.f18087f;
        this.f18045j = c4978a.f18084c;
        this.f18044i = c4978a.f18089h;
        this.f18077n = c4978a.f18091j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:117:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x026f, code lost:
        if (com.bytedance.sdk.openadsdk.p176k.C5001e.f18140c == false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0272, code lost:
        android.util.Log.w("TAG_PROXY_DownloadTask", "download, more data received, currentCacheFileSize: " + r12 + ", max: " + r6.f18078o);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x029f, code lost:
        com.bytedance.sdk.openadsdk.p176k.p183g.C5030d.m33227a(r0.mo33318d());
        r7.m33210a();
        mo33272a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x02b0, code lost:
        if (com.bytedance.sdk.openadsdk.p176k.C5001e.f18140c == false) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x02b3, code lost:
        android.util.Log.w("TAG_PROXY_DownloadTask", "cancel call");
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x02bc, code lost:
        return;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m33385a(com.bytedance.sdk.openadsdk.p176k.C5041l.C5042a r7) throws java.io.IOException, com.bytedance.sdk.openadsdk.p176k.C5032h.C5033a, com.bytedance.sdk.openadsdk.p176k.p179c.C4987a, com.bytedance.sdk.openadsdk.p176k.p179c.C4988b, com.bytedance.sdk.adnet.err.VAdError {
        /*
            Method dump skipped, instructions count: 866
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.p176k.C4977b.m33385a(com.bytedance.sdk.openadsdk.k.l$a):void");
    }

    /* renamed from: j */
    private boolean m33382j() throws C4987a, VAdError {
        while (this.f18045j.m33199a()) {
            m33410e();
            C5041l.C5042a m33198b = this.f18045j.m33198b();
            try {
                m33385a(m33198b);
                return true;
            } catch (C4988b e) {
                this.f18081r = e;
                if (!C5001e.f18140c) {
                    return false;
                }
                Log.e("TAG_PROXY_DownloadTask", Log.getStackTraceString(e));
                return false;
            } catch (C4989c e2) {
                m33198b.m33195a();
                m33414a(Boolean.valueOf(m33408g()), this.f18042g, e2);
            } catch (C5032h.C5033a e3) {
                this.f18080q = e3;
                m33414a(Boolean.valueOf(m33408g()), this.f18042g, e3);
                return false;
            } catch (IOException e4) {
                if (e4 instanceof SocketTimeoutException) {
                    m33198b.m33194b();
                }
                if (!m33413b()) {
                    m33414a(Boolean.valueOf(m33408g()), this.f18042g, e4);
                } else if (C5001e.f18140c) {
                    if ("Canceled".equalsIgnoreCase(e4.getMessage())) {
                        Log.w("TAG_PROXY_DownloadTask", "okhttp call canceled");
                    } else {
                        Log.e("TAG_PROXY_DownloadTask", Log.getStackTraceString(e4));
                    }
                }
            } catch (Throwable th) {
                if (!C5001e.f18140c) {
                    return false;
                }
                Log.e("TAG_PROXY_DownloadTask", Log.getStackTraceString(th));
                return false;
            }
        }
        return false;
    }

    /* renamed from: h */
    public C5032h.C5033a m33384h() {
        return this.f18080q;
    }

    /* renamed from: i */
    public C4988b m33383i() {
        return this.f18081r;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f18036a.mo33398a(this.f18043h);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        try {
            m33382j();
        } catch (C4239a e) {
            e.printStackTrace();
        } catch (VAdError e2) {
            e2.printStackTrace();
        } catch (C4987a e3) {
            if (C5001e.f18140c) {
                Log.w("TAG_PROXY_DownloadTask", Log.getStackTraceString(e3));
            }
        } catch (Throwable th) {
            if (C5001e.f18140c) {
                Log.e("TAG_PROXY_DownloadTask", Log.getStackTraceString(th));
            }
        }
        this.f18039d.set(SystemClock.elapsedRealtime() - elapsedRealtime);
        this.f18036a.mo33394b(this.f18043h);
        AbstractC4979b abstractC4979b = this.f18079p;
        if (abstractC4979b != null) {
            abstractC4979b.mo33260a(this);
        }
    }
}
