package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.C12108l;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/abs.class */
public final class abs implements ecb {

    /* renamed from: a */
    volatile zzti f39838a;

    /* renamed from: g */
    private final ecp<ecb> f39844g;

    /* renamed from: h */
    private final Context f39845h;

    /* renamed from: i */
    private final ecb f39846i;

    /* renamed from: j */
    private final abu f39847j;

    /* renamed from: k */
    private final String f39848k;

    /* renamed from: l */
    private final int f39849l;

    /* renamed from: n */
    private InputStream f39851n;

    /* renamed from: o */
    private boolean f39852o;

    /* renamed from: p */
    private Uri f39853p;

    /* renamed from: b */
    boolean f39839b = false;

    /* renamed from: c */
    boolean f39840c = false;

    /* renamed from: d */
    boolean f39841d = false;

    /* renamed from: e */
    boolean f39842e = false;

    /* renamed from: f */
    long f39843f = 0;

    /* renamed from: r */
    private final AtomicLong f39855r = new AtomicLong(-1);

    /* renamed from: q */
    private dbt<Long> f39854q = null;

    /* renamed from: m */
    private final boolean f39850m = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42728bl)).booleanValue();

    public abs(Context context, ecb ecbVar, String str, int i, ecp<ecb> ecpVar, abu abuVar) {
        this.f39845h = context;
        this.f39846i = ecbVar;
        this.f39844g = ecpVar;
        this.f39847j = abuVar;
        this.f39848k = str;
        this.f39849l = i;
    }

    /* renamed from: d */
    private final void m18902d() {
        ecp<ecb> ecpVar = this.f39844g;
        if (ecpVar != null) {
            ecpVar.mo15258a(this);
        }
    }

    /* renamed from: e */
    private final boolean m18901e() {
        if (!this.f39850m) {
            return false;
        }
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42787cr)).booleanValue() && !this.f39841d) {
            return true;
        }
        return ((Boolean) ekb.m14831e().m18571a(C12187aq.f42788cs)).booleanValue() && !this.f39842e;
    }

    @Override // com.google.android.gms.internal.ads.ecb
    /* renamed from: a */
    public final int mo15278a(byte[] bArr, int i, int i2) throws IOException {
        ecp<ecb> ecpVar;
        if (this.f39852o) {
            InputStream inputStream = this.f39851n;
            int read = inputStream != null ? inputStream.read(bArr, i, i2) : this.f39846i.mo15278a(bArr, i, i2);
            if ((!this.f39850m || this.f39851n != null) && (ecpVar = this.f39844g) != null) {
                ecpVar.mo15257c(read);
            }
            return read;
        }
        throw new IOException("Attempt to read closed CacheDataSource.");
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x0356  */
    @Override // com.google.android.gms.internal.ads.ecb
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo15281a(com.google.android.gms.internal.ads.ecf r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 918
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.abs.mo15281a(com.google.android.gms.internal.ads.ecf):long");
    }

    @Override // com.google.android.gms.internal.ads.ecb
    /* renamed from: a */
    public final Uri mo15282a() {
        return this.f39853p;
    }

    /* renamed from: b */
    public final long m18903b() {
        if (this.f39838a == null) {
            return -1L;
        }
        if (this.f39855r.get() != -1) {
            return this.f39855r.get();
        }
        synchronized (this) {
            if (this.f39854q == null) {
                this.f39854q = C13091zd.f50118a.mo16890a(new Callable(this) { // from class: com.google.android.gms.internal.ads.abv

                    /* renamed from: a */
                    private final abs f39858a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f39858a = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return Long.valueOf(zzr.zzlb().m15061b(this.f39858a.f39838a));
                    }
                });
            }
        }
        if (!this.f39854q.isDone()) {
            return -1L;
        }
        try {
            this.f39855r.compareAndSet(-1L, this.f39854q.get().longValue());
            return this.f39855r.get();
        } catch (InterruptedException | ExecutionException e) {
            return -1L;
        }
    }

    @Override // com.google.android.gms.internal.ads.ecb
    /* renamed from: c */
    public final void mo15276c() throws IOException {
        if (this.f39852o) {
            this.f39852o = false;
            this.f39853p = null;
            InputStream inputStream = this.f39851n;
            if (inputStream == null) {
                this.f39846i.mo15276c();
                return;
            }
            C12108l.m19025a((Closeable) inputStream);
            this.f39851n = null;
            return;
        }
        throw new IOException("Attempt to close an already closed CacheDataSource.");
    }
}
