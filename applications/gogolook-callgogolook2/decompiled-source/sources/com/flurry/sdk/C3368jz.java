package com.flurry.sdk;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.jz */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jz.class */
public class C3368jz extends AbstractC3451le {

    /* renamed from: e */
    public static final String f5762e = C3368jz.class.getSimpleName();

    /* renamed from: g */
    public String f5766g;

    /* renamed from: h */
    public EnumC3371a f5767h;

    /* renamed from: l */
    public AbstractC3373c f5771l;

    /* renamed from: m */
    public boolean f5772m;

    /* renamed from: p */
    public Exception f5775p;

    /* renamed from: r */
    public boolean f5777r;

    /* renamed from: t */
    public boolean f5779t;

    /* renamed from: v */
    public HttpURLConnection f5780v;

    /* renamed from: w */
    public boolean f5781w;

    /* renamed from: x */
    public boolean f5782x;

    /* renamed from: a */
    public final C3338jg<String, String> f5763a = new C3338jg<>();

    /* renamed from: f */
    public final C3338jg<String, String> f5765f = new C3338jg<>();

    /* renamed from: b */
    public final Object f5764b = new Object();

    /* renamed from: i */
    public int f5768i = 10000;

    /* renamed from: j */
    public int f5769j = 15000;

    /* renamed from: k */
    public boolean f5770k = true;

    /* renamed from: n */
    public long f5773n = -1;

    /* renamed from: o */
    public long f5774o = -1;

    /* renamed from: q */
    public int f5776q = -1;

    /* renamed from: s */
    public int f5778s = 25000;

    /* renamed from: y */
    public C3366jy f5783y = new C3366jy(this);

    /* renamed from: com.flurry.sdk.jz$2 */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jz$2.class */
    public static final /* synthetic */ class C33702 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f5785a = new int[EnumC3371a.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            try {
                f5785a[EnumC3371a.kPost.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5785a[EnumC3371a.kPut.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5785a[EnumC3371a.kDelete.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f5785a[EnumC3371a.kHead.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f5785a[EnumC3371a.kGet.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.flurry.sdk.jz$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jz$a.class */
    public enum EnumC3371a {
        kUnknown,
        kGet,
        kPost,
        kPut,
        kDelete,
        kHead;

        @Override // java.lang.Enum
        public final String toString() {
            int i = C33702.f5785a[ordinal()];
            if (i == 1) {
                return "POST";
            }
            if (i == 2) {
                return "PUT";
            }
            if (i == 3) {
                return "DELETE";
            }
            if (i == 4) {
                return "HEAD";
            }
            if (i != 5) {
                return null;
            }
            return "GET";
        }
    }

    /* renamed from: com.flurry.sdk.jz$b */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jz$b.class */
    public static class C3372b implements AbstractC3373c {
        @Override // com.flurry.sdk.C3368jz.AbstractC3373c
        /* renamed from: a */
        public final void mo32570a(OutputStream outputStream) throws Exception {
        }
    }

    /* renamed from: com.flurry.sdk.jz$c */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jz$c.class */
    public interface AbstractC3373c {
        /* renamed from: a */
        void mo32572a(C3368jz jzVar);

        /* renamed from: a */
        void mo32571a(C3368jz jzVar, InputStream inputStream) throws Exception;

        /* renamed from: a */
        void mo32570a(OutputStream outputStream) throws Exception;
    }

    /* renamed from: a */
    public final List<String> m32582a(String str) {
        return this.f5765f.m32655a((C3338jg<String, String>) str);
    }

    @Override // com.flurry.sdk.AbstractRunnableC3447lc
    /* renamed from: a */
    public void mo32300a() {
        try {
            try {
                if (this.f5766g != null) {
                    if (!C3310ir.m32715a().f5616b) {
                        String str = f5762e;
                        C3356jq.m32615a(3, str, "Network not available, aborting http request: " + this.f5766g);
                    } else {
                        if (this.f5767h == null || EnumC3371a.kUnknown.equals(this.f5767h)) {
                            this.f5767h = EnumC3371a.kGet;
                        }
                        m32574i();
                        String str2 = f5762e;
                        C3356jq.m32615a(4, str2, "HTTP status: " + this.f5776q + " for url: " + this.f5766g);
                    }
                }
            } catch (Exception e) {
                String str3 = f5762e;
                C3356jq.m32615a(4, str3, "HTTP status: " + this.f5776q + " for url: " + this.f5766g);
                String str4 = f5762e;
                StringBuilder sb = new StringBuilder("Exception during http request: ");
                sb.append(this.f5766g);
                C3356jq.m32614a(3, str4, sb.toString(), e);
                if (this.f5780v != null) {
                    this.f5780v.getReadTimeout();
                    this.f5780v.getConnectTimeout();
                }
                this.f5775p = e;
            }
        } finally {
            this.f5783y.m32587a();
            m32577e();
        }
    }

    /* renamed from: a */
    public final void m32581a(String str, String str2) {
        this.f5763a.m32654a((C3338jg<String, String>) str, str2);
    }

    /* renamed from: b */
    public final boolean m32580b() {
        return !m32579c() && m32578d();
    }

    /* renamed from: c */
    public final boolean m32579c() {
        return this.f5775p != null;
    }

    /* renamed from: d */
    public final boolean m32578d() {
        int i = this.f5776q;
        return i >= 200 && i < 400 && !this.f5779t;
    }

    /* renamed from: e */
    public final void m32577e() {
        if (this.f5771l != null && !m32575g()) {
            this.f5771l.mo32572a(this);
        }
    }

    /* renamed from: f */
    public final void m32576f() {
        String str = f5762e;
        C3356jq.m32615a(3, str, "Cancelling http request: " + this.f5766g);
        synchronized (this.f5764b) {
            this.f5782x = true;
        }
        if (!this.f5781w) {
            this.f5781w = true;
            if (this.f5780v != null) {
                new Thread() { // from class: com.flurry.sdk.jz.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public final void run() {
                        try {
                            if (C3368jz.this.f5780v != null) {
                                C3368jz.this.f5780v.disconnect();
                            }
                        } catch (Throwable th) {
                        }
                    }
                }.start();
            }
        }
    }

    /* renamed from: g */
    public final boolean m32575g() {
        boolean z;
        synchronized (this.f5764b) {
            z = this.f5782x;
        }
        return z;
    }

    @Override // com.flurry.sdk.AbstractC3451le
    /* renamed from: h */
    public final void mo32440h() {
        m32576f();
    }

    /* renamed from: i */
    public final void m32574i() throws Exception {
        OutputStream outputStream;
        BufferedOutputStream bufferedOutputStream;
        Throwable th;
        InputStream inputStream;
        BufferedInputStream bufferedInputStream;
        Throwable th2;
        if (!this.f5782x) {
            this.f5766g = C3445la.m32462a(this.f5766g);
            try {
                this.f5780v = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(this.f5766g).openConnection()));
                this.f5780v.setConnectTimeout(this.f5768i);
                this.f5780v.setReadTimeout(this.f5769j);
                this.f5780v.setRequestMethod(this.f5767h.toString());
                this.f5780v.setInstanceFollowRedirects(this.f5770k);
                this.f5780v.setDoOutput(EnumC3371a.kPost.equals(this.f5767h));
                this.f5780v.setDoInput(true);
                for (Map.Entry<String, String> entry : this.f5763a.m32652b()) {
                    this.f5780v.addRequestProperty(entry.getKey(), entry.getValue());
                }
                if (!EnumC3371a.kGet.equals(this.f5767h) && !EnumC3371a.kPost.equals(this.f5767h)) {
                    this.f5780v.setRequestProperty("Accept-Encoding", "");
                }
                if (!this.f5782x) {
                    if (EnumC3371a.kPost.equals(this.f5767h)) {
                        try {
                            outputStream = this.f5780v.getOutputStream();
                            try {
                                bufferedOutputStream = new BufferedOutputStream(outputStream);
                            } catch (Throwable th3) {
                                th = th3;
                                bufferedOutputStream = null;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            bufferedOutputStream = null;
                            outputStream = null;
                        }
                        try {
                            if (this.f5771l != null && !m32575g()) {
                                this.f5771l.mo32570a(bufferedOutputStream);
                            }
                            C3445la.m32465a(bufferedOutputStream);
                            C3445la.m32465a(outputStream);
                        } catch (Throwable th5) {
                            th = th5;
                            C3445la.m32465a(bufferedOutputStream);
                            C3445la.m32465a(outputStream);
                            throw th;
                        }
                    }
                    if (this.f5772m) {
                        this.f5773n = System.currentTimeMillis();
                    }
                    if (this.f5777r) {
                        this.f5783y.m32586a(this.f5778s);
                    }
                    this.f5776q = this.f5780v.getResponseCode();
                    if (this.f5772m && this.f5773n != -1) {
                        this.f5774o = System.currentTimeMillis() - this.f5773n;
                    }
                    this.f5783y.m32587a();
                    for (Map.Entry<String, List<String>> entry2 : this.f5780v.getHeaderFields().entrySet()) {
                        for (String str : entry2.getValue()) {
                            this.f5765f.m32654a((C3338jg<String, String>) entry2.getKey(), str);
                        }
                    }
                    if (!(EnumC3371a.kGet.equals(this.f5767h) || EnumC3371a.kPost.equals(this.f5767h))) {
                        return;
                    }
                    if (!this.f5782x) {
                        try {
                            inputStream = this.f5780v.getInputStream();
                            try {
                                bufferedInputStream = new BufferedInputStream(inputStream);
                                try {
                                    if (this.f5771l != null && !m32575g()) {
                                        this.f5771l.mo32571a(this, bufferedInputStream);
                                    }
                                    C3445la.m32465a((Closeable) bufferedInputStream);
                                    C3445la.m32465a((Closeable) inputStream);
                                } catch (Throwable th6) {
                                    th2 = th6;
                                    C3445la.m32465a((Closeable) bufferedInputStream);
                                    C3445la.m32465a((Closeable) inputStream);
                                    throw th2;
                                }
                            } catch (Throwable th7) {
                                th2 = th7;
                                bufferedInputStream = null;
                            }
                        } catch (Throwable th8) {
                            th2 = th8;
                            bufferedInputStream = null;
                            inputStream = null;
                        }
                    }
                }
            } finally {
                m32573j();
            }
        }
    }

    /* renamed from: j */
    public final void m32573j() {
        if (!this.f5781w) {
            this.f5781w = true;
            HttpURLConnection httpURLConnection = this.f5780v;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
        }
    }
}
