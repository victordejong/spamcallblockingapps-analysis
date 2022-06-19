package com.facebook;

import android.os.Handler;
import com.facebook.C10193i;
import com.facebook.internal.p299b.p301b.C10249a;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;
/* renamed from: com.facebook.q */
/* loaded from: classes3-dex2jar.jar:com/facebook/q.class */
public final class C10403q extends FilterOutputStream implements AbstractC10405r {

    /* renamed from: a */
    private final Map<GraphRequest, C10433s> f34046a;

    /* renamed from: b */
    private final C10193i f34047b;

    /* renamed from: c */
    private final long f34048c = C10181g.m23287l();

    /* renamed from: d */
    private long f34049d;

    /* renamed from: e */
    private long f34050e;

    /* renamed from: f */
    private long f34051f;

    /* renamed from: g */
    private C10433s f34052g;

    public C10403q(OutputStream outputStream, C10193i c10193i, Map<GraphRequest, C10433s> map, long j) {
        super(outputStream);
        this.f34047b = c10193i;
        this.f34046a = map;
        this.f34051f = j;
    }

    /* renamed from: a */
    private void m22863a() {
        if (this.f34049d > this.f34050e) {
            for (C10193i.AbstractC10194a abstractC10194a : this.f34047b.f33631e) {
                if (abstractC10194a instanceof C10193i.AbstractC10195b) {
                    Handler handler = this.f34047b.f33627a;
                    final C10193i.AbstractC10195b abstractC10195b = (C10193i.AbstractC10195b) abstractC10194a;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.facebook.q.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                if (C10249a.m23108a(this)) {
                                    return;
                                }
                                try {
                                    C10193i unused = C10403q.this.f34047b;
                                    long unused2 = C10403q.this.f34049d;
                                    long unused3 = C10403q.this.f34051f;
                                } catch (Throwable th) {
                                    C10249a.m23106a(th, this);
                                }
                            }
                        });
                    }
                }
            }
            this.f34050e = this.f34049d;
        }
    }

    /* renamed from: a */
    private void m22862a(long j) {
        C10433s c10433s = this.f34052g;
        if (c10433s != null) {
            c10433s.f34127b += j;
            if (c10433s.f34127b >= c10433s.f34128c + c10433s.f34126a || c10433s.f34127b >= c10433s.f34129d) {
                c10433s.m22797a();
            }
        }
        long j2 = this.f34049d + j;
        this.f34049d = j2;
        if (j2 >= this.f34050e + this.f34048c || j2 >= this.f34051f) {
            m22863a();
        }
    }

    @Override // com.facebook.AbstractC10405r
    /* renamed from: a */
    public final void mo22858a(GraphRequest graphRequest) {
        this.f34052g = graphRequest != null ? this.f34046a.get(graphRequest) : null;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        for (C10433s c10433s : this.f34046a.values()) {
            c10433s.m22797a();
        }
        m22863a();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) throws IOException {
        this.out.write(i);
        m22862a(1L);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        this.out.write(bArr);
        m22862a(bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        this.out.write(bArr, i, i2);
        m22862a(i2);
    }
}
