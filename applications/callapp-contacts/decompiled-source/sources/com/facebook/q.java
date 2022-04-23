package com.facebook;

import android.os.Handler;
import com.facebook.i;
import com.facebook.internal.b.b.a;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/q.class */
public final class q extends FilterOutputStream implements r {

    /* renamed from: a  reason: collision with root package name */
    private final Map<GraphRequest, s> f20105a;

    /* renamed from: b  reason: collision with root package name */
    private final i f20106b;

    /* renamed from: c  reason: collision with root package name */
    private final long f20107c = g.l();

    /* renamed from: d  reason: collision with root package name */
    private long f20108d;
    private long e;
    private long f;
    private s g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(OutputStream outputStream, i iVar, Map<GraphRequest, s> map, long j) {
        super(outputStream);
        this.f20106b = iVar;
        this.f20105a = map;
        this.f = j;
    }

    private void a() {
        if (this.f20108d > this.e) {
            for (i.a aVar : this.f20106b.e) {
                if (aVar instanceof i.b) {
                    Handler handler = this.f20106b.f19791a;
                    final i.b bVar = (i.b) aVar;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.facebook.q.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                if (!a.a(this)) {
                                    try {
                                        i unused = q.this.f20106b;
                                        long unused2 = q.this.f20108d;
                                        long unused3 = q.this.f;
                                    } catch (Throwable th) {
                                        a.a(th, this);
                                    }
                                }
                            }
                        });
                    }
                }
            }
            this.e = this.f20108d;
        }
    }

    private void a(long j) {
        s sVar = this.g;
        if (sVar != null) {
            sVar.f20156b += j;
            if (sVar.f20156b >= sVar.f20157c + sVar.f20155a || sVar.f20156b >= sVar.f20158d) {
                sVar.a();
            }
        }
        long j2 = this.f20108d + j;
        this.f20108d = j2;
        if (j2 >= this.e + this.f20107c || j2 >= this.f) {
            a();
        }
    }

    @Override // com.facebook.r
    public final void a(GraphRequest graphRequest) {
        this.g = graphRequest != null ? this.f20105a.get(graphRequest) : null;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        for (s sVar : this.f20105a.values()) {
            sVar.a();
        }
        a();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) throws IOException {
        this.out.write(i);
        a(1L);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        this.out.write(bArr);
        a(bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        this.out.write(bArr, i, i2);
        a(i2);
    }
}
