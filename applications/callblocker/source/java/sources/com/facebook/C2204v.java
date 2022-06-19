package com.facebook;

import android.os.Handler;
import com.facebook.C2191m;
import java.io.FilterOutputStream;
import java.io.OutputStream;
import java.util.Map;
/* renamed from: com.facebook.v */
/* loaded from: classes-dex2jar.jar:com/facebook/v.class */
public class C2204v extends FilterOutputStream implements AbstractC2206w {

    /* renamed from: a */
    private final Map<C2102k, C2207x> f6452a;

    /* renamed from: b */
    private final C2191m f6453b;

    /* renamed from: c */
    private final long f6454c = C2095j.m15357k();

    /* renamed from: d */
    private long f6455d;

    /* renamed from: e */
    private long f6456e;

    /* renamed from: f */
    private long f6457f;

    /* renamed from: g */
    private C2207x f6458g;

    public C2204v(OutputStream outputStream, C2191m c2191m, Map<C2102k, C2207x> map, long j) {
        super(outputStream);
        this.f6453b = c2191m;
        this.f6452a = map;
        this.f6457f = j;
    }

    /* renamed from: a */
    private void m14949a() {
        if (this.f6455d > this.f6456e) {
            for (C2191m.AbstractC2192a abstractC2192a : this.f6453b.m14995e()) {
                if (abstractC2192a instanceof C2191m.AbstractC2193b) {
                    Handler m14997c = this.f6453b.m14997c();
                    final C2191m.AbstractC2193b abstractC2193b = (C2191m.AbstractC2193b) abstractC2192a;
                    if (m14997c == null) {
                        abstractC2193b.m14988a(this.f6453b, this.f6455d, this.f6457f);
                    } else {
                        m14997c.post(new Runnable() { // from class: com.facebook.v.1
                            @Override // java.lang.Runnable
                            public void run() {
                                abstractC2193b.m14988a(C2204v.this.f6453b, C2204v.this.f6455d, C2204v.this.f6457f);
                            }
                        });
                    }
                }
            }
            this.f6456e = this.f6455d;
        }
    }

    /* renamed from: a */
    private void m14948a(long j) {
        if (this.f6458g != null) {
            this.f6458g.m14942a(j);
        }
        this.f6455d += j;
        if (this.f6455d >= this.f6456e + this.f6454c || this.f6455d >= this.f6457f) {
            m14949a();
        }
    }

    @Override // com.facebook.AbstractC2206w
    /* renamed from: a */
    public void mo14944a(C2102k c2102k) {
        this.f6458g = c2102k != null ? this.f6452a.get(c2102k) : null;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        for (C2207x c2207x : this.f6452a.values()) {
            c2207x.m14943a();
        }
        m14949a();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) {
        this.out.write(i);
        m14948a(1L);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) {
        this.out.write(bArr);
        m14948a(bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.out.write(bArr, i, i2);
        m14948a(i2);
    }
}
