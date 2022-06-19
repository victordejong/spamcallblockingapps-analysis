package com.bytedance.sdk.p127a.p129b.p130a.p131a;

import com.bytedance.sdk.p127a.p128a.AbstractC3971d;
import com.bytedance.sdk.p127a.p129b.p130a.p136f.AbstractC4080a;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
/* renamed from: com.bytedance.sdk.a.b.a.a.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/a/d.class */
public final class C4001d implements Closeable, Flushable {

    /* renamed from: a */
    static final Pattern f14499a = Pattern.compile("[a-z0-9_-]{1,120}");

    /* renamed from: j */
    static final /* synthetic */ boolean f14500j = true;

    /* renamed from: b */
    final AbstractC4080a f14501b;

    /* renamed from: c */
    final int f14502c;

    /* renamed from: d */
    AbstractC3971d f14503d;

    /* renamed from: e */
    final LinkedHashMap<String, C4003b> f14504e;

    /* renamed from: f */
    int f14505f;

    /* renamed from: g */
    boolean f14506g;

    /* renamed from: h */
    boolean f14507h;

    /* renamed from: i */
    boolean f14508i;

    /* renamed from: k */
    private long f14509k;

    /* renamed from: l */
    private long f14510l;

    /* renamed from: m */
    private long f14511m;

    /* renamed from: n */
    private final Executor f14512n;

    /* renamed from: o */
    private final Runnable f14513o;

    /* renamed from: com.bytedance.sdk.a.b.a.a.d$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/a/d$a.class */
    public final class C4002a {

        /* renamed from: a */
        final C4003b f14514a;

        /* renamed from: b */
        final boolean[] f14515b;

        /* renamed from: c */
        final /* synthetic */ C4001d f14516c;

        /* renamed from: d */
        private boolean f14517d;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x003c -> B:8:0x002d). Please submit an issue!!! */
        /* renamed from: a */
        final void m36978a() {
            if (this.f14514a.f14523f == this) {
                for (int i = 0; i < this.f14516c.f14502c; i++) {
                    try {
                        this.f14516c.f14501b.mo36672a(this.f14514a.f14521d[i]);
                    } catch (IOException e) {
                    }
                }
                this.f14514a.f14523f = null;
            }
        }

        /* renamed from: b */
        public final void m36977b() throws IOException {
            synchronized (this.f14516c) {
                if (this.f14517d) {
                    throw new IllegalStateException();
                }
                if (this.f14514a.f14523f == this) {
                    this.f14516c.m36983a(this, false);
                }
                this.f14517d = true;
            }
        }
    }

    /* renamed from: com.bytedance.sdk.a.b.a.a.d$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/a/d$b.class */
    public final class C4003b {

        /* renamed from: a */
        final String f14518a;

        /* renamed from: b */
        final long[] f14519b;

        /* renamed from: c */
        final File[] f14520c;

        /* renamed from: d */
        final File[] f14521d;

        /* renamed from: e */
        boolean f14522e;

        /* renamed from: f */
        C4002a f14523f;

        /* renamed from: g */
        long f14524g;

        /* renamed from: a */
        final void m36976a(AbstractC3971d abstractC3971d) throws IOException {
            for (long j : this.f14519b) {
                abstractC3971d.mo37072i(32).mo37070l(j);
            }
        }
    }

    /* renamed from: d */
    private void m36979d() {
        synchronized (this) {
            if (m36981b()) {
                throw new IllegalStateException("cache is closed");
            }
        }
    }

    /* renamed from: a */
    final void m36983a(C4002a c4002a, boolean z) throws IOException {
        synchronized (this) {
            C4003b c4003b = c4002a.f14514a;
            if (c4003b.f14523f == c4002a) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!c4003b.f14522e) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= this.f14502c) {
                                break;
                            } else if (!c4002a.f14515b[i2]) {
                                c4002a.m36977b();
                                throw new IllegalStateException("Newly created entry didn't create value for index ".concat(String.valueOf(i2)));
                            } else if (!this.f14501b.mo36670b(c4003b.f14521d[i2])) {
                                c4002a.m36977b();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < this.f14502c) {
                    File file = c4003b.f14521d[i];
                    if (!z) {
                        this.f14501b.mo36672a(file);
                    } else if (this.f14501b.mo36670b(file)) {
                        File file2 = c4003b.f14520c[i];
                        this.f14501b.mo36671a(file, file2);
                        long j = c4003b.f14519b[i];
                        long mo36669c = this.f14501b.mo36669c(file2);
                        c4003b.f14519b[i] = mo36669c;
                        this.f14510l = (this.f14510l - j) + mo36669c;
                    }
                    i++;
                }
                this.f14505f++;
                c4003b.f14523f = null;
                if (c4003b.f14522e || z) {
                    c4003b.f14522e = true;
                    this.f14503d.mo37077b("CLEAN").mo37072i(32);
                    this.f14503d.mo37077b(c4003b.f14518a);
                    c4003b.m36976a(this.f14503d);
                    this.f14503d.mo37072i(10);
                    if (z) {
                        long j2 = this.f14511m;
                        this.f14511m = 1 + j2;
                        c4003b.f14524g = j2;
                    }
                } else {
                    this.f14504e.remove(c4003b.f14518a);
                    this.f14503d.mo37077b("REMOVE").mo37072i(32);
                    this.f14503d.mo37077b(c4003b.f14518a);
                    this.f14503d.mo37072i(10);
                }
                this.f14503d.flush();
                if (this.f14510l > this.f14509k || m36984a()) {
                    this.f14512n.execute(this.f14513o);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    final boolean m36984a() {
        int i = this.f14505f;
        return i >= 2000 && i >= this.f14504e.size();
    }

    /* renamed from: a */
    final boolean m36982a(C4003b c4003b) throws IOException {
        if (c4003b.f14523f != null) {
            c4003b.f14523f.m36978a();
        }
        for (int i = 0; i < this.f14502c; i++) {
            this.f14501b.mo36672a(c4003b.f14520c[i]);
            this.f14510l -= c4003b.f14519b[i];
            c4003b.f14519b[i] = 0;
        }
        this.f14505f++;
        this.f14503d.mo37077b("REMOVE").mo37072i(32).mo37077b(c4003b.f14518a).mo37072i(10);
        this.f14504e.remove(c4003b.f14518a);
        if (m36984a()) {
            this.f14512n.execute(this.f14513o);
            return true;
        }
        return true;
    }

    /* renamed from: b */
    public final boolean m36981b() {
        boolean z;
        synchronized (this) {
            z = this.f14507h;
        }
        return z;
    }

    /* renamed from: c */
    final void m36980c() throws IOException {
        while (this.f14510l > this.f14509k) {
            m36982a(this.f14504e.values().iterator().next());
        }
        this.f14508i = false;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        C4003b[] c4003bArr;
        synchronized (this) {
            if (this.f14506g && !this.f14507h) {
                for (C4003b c4003b : (C4003b[]) this.f14504e.values().toArray(new C4003b[this.f14504e.size()])) {
                    if (c4003b.f14523f != null) {
                        c4003b.f14523f.m36977b();
                    }
                }
                m36980c();
                this.f14503d.close();
                this.f14503d = null;
                this.f14507h = true;
                return;
            }
            this.f14507h = true;
        }
    }

    @Override // java.io.Flushable
    public final void flush() throws IOException {
        synchronized (this) {
            if (!this.f14506g) {
                return;
            }
            m36979d();
            m36980c();
            this.f14503d.flush();
        }
    }
}
