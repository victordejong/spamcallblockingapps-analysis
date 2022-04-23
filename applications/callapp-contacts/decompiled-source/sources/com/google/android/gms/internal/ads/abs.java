package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.l;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/abs.class */
public final class abs implements ecb {

    /* renamed from: a  reason: collision with root package name */
    volatile zzti f23069a;
    private final ecp<ecb> g;
    private final Context h;
    private final ecb i;
    private final abu j;
    private final String k;
    private final int l;
    private InputStream n;
    private boolean o;
    private Uri p;

    /* renamed from: b  reason: collision with root package name */
    boolean f23070b = false;

    /* renamed from: c  reason: collision with root package name */
    boolean f23071c = false;

    /* renamed from: d  reason: collision with root package name */
    boolean f23072d = false;
    boolean e = false;
    long f = 0;
    private final AtomicLong r = new AtomicLong(-1);
    private dbt<Long> q = null;
    private final boolean m = ((Boolean) ekb.e().a(aq.bl)).booleanValue();

    public abs(Context context, ecb ecbVar, String str, int i, ecp<ecb> ecpVar, abu abuVar) {
        this.h = context;
        this.i = ecbVar;
        this.g = ecpVar;
        this.j = abuVar;
        this.k = str;
        this.l = i;
    }

    private final void d() {
        ecp<ecb> ecpVar = this.g;
        if (ecpVar != null) {
            ecpVar.a(this);
        }
    }

    private final boolean e() {
        if (!this.m) {
            return false;
        }
        if (((Boolean) ekb.e().a(aq.cr)).booleanValue() && !this.f23072d) {
            return true;
        }
        return ((Boolean) ekb.e().a(aq.cs)).booleanValue() && !this.e;
    }

    @Override // com.google.android.gms.internal.ads.ecb
    public final int a(byte[] bArr, int i, int i2) throws IOException {
        ecp<ecb> ecpVar;
        if (this.o) {
            InputStream inputStream = this.n;
            int read = inputStream != null ? inputStream.read(bArr, i, i2) : this.i.a(bArr, i, i2);
            if ((!this.m || this.n != null) && (ecpVar = this.g) != null) {
                ecpVar.c(read);
            }
            return read;
        }
        throw new IOException("Attempt to read closed CacheDataSource.");
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x0356  */
    @Override // com.google.android.gms.internal.ads.ecb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(com.google.android.gms.internal.ads.ecf r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 918
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.abs.a(com.google.android.gms.internal.ads.ecf):long");
    }

    @Override // com.google.android.gms.internal.ads.ecb
    public final Uri a() {
        return this.p;
    }

    public final long b() {
        if (this.f23069a == null) {
            return -1L;
        }
        if (this.r.get() != -1) {
            return this.r.get();
        }
        synchronized (this) {
            if (this.q == null) {
                this.q = zd.f28573a.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.abv

                    /* renamed from: a  reason: collision with root package name */
                    private final abs f23075a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f23075a = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return Long.valueOf(zzr.zzlb().b(this.f23075a.f23069a));
                    }
                });
            }
        }
        if (!this.q.isDone()) {
            return -1L;
        }
        try {
            this.r.compareAndSet(-1L, this.q.get().longValue());
            return this.r.get();
        } catch (InterruptedException | ExecutionException e) {
            return -1L;
        }
    }

    @Override // com.google.android.gms.internal.ads.ecb
    public final void c() throws IOException {
        if (this.o) {
            this.o = false;
            this.p = null;
            InputStream inputStream = this.n;
            if (inputStream != null) {
                l.a((Closeable) inputStream);
                this.n = null;
                return;
            }
            this.i.c();
            return;
        }
        throw new IOException("Attempt to close an already closed CacheDataSource.");
    }
}
