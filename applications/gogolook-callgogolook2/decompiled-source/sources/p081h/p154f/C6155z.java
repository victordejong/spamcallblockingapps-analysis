package p081h.p154f;

import android.os.Handler;
import com.facebook.GraphRequest;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;
import p081h.p154f.C6145r;
/* renamed from: h.f.z */
/* loaded from: classes-dex2jar.jar:h/f/z.class */
public class C6155z extends FilterOutputStream implements AbstractC6105a0 {

    /* renamed from: a */
    public final Map<GraphRequest, C6112b0> f15307a;

    /* renamed from: b */
    public final C6145r f15308b;

    /* renamed from: c */
    public final long f15309c = C6135n.m23734q();

    /* renamed from: d */
    public long f15310d;

    /* renamed from: e */
    public long f15311e;

    /* renamed from: f */
    public long f15312f;

    /* renamed from: g */
    public C6112b0 f15313g;

    /* renamed from: h.f.z$a */
    /* loaded from: classes-dex2jar.jar:h/f/z$a.class */
    public class RunnableC6156a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C6145r.AbstractC6147b f15314a;

        public RunnableC6156a(C6145r.AbstractC6147b bVar) {
            this.f15314a = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f15314a.m23706a(C6155z.this.f15308b, C6155z.this.f15310d, C6155z.this.f15312f);
        }
    }

    public C6155z(OutputStream outputStream, C6145r rVar, Map<GraphRequest, C6112b0> map, long j) {
        super(outputStream);
        this.f15308b = rVar;
        this.f15307a = map;
        this.f15312f = j;
    }

    /* renamed from: a */
    public final void m23677a() {
        if (this.f15310d > this.f15311e) {
            for (C6145r.AbstractC6146a aVar : this.f15308b.m23711u()) {
                if (aVar instanceof C6145r.AbstractC6147b) {
                    Handler t = this.f15308b.m23712t();
                    C6145r.AbstractC6147b bVar = (C6145r.AbstractC6147b) aVar;
                    if (t == null) {
                        bVar.m23706a(this.f15308b, this.f15310d, this.f15312f);
                    } else {
                        t.post(new RunnableC6156a(bVar));
                    }
                }
            }
            this.f15311e = this.f15310d;
        }
    }

    @Override // p081h.p154f.AbstractC6105a0
    /* renamed from: a */
    public void mo23676a(GraphRequest graphRequest) {
        this.f15313g = graphRequest != null ? this.f15307a.get(graphRequest) : null;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        for (C6112b0 b0Var : this.f15307a.values()) {
            b0Var.m23820a();
        }
        m23677a();
    }

    /* renamed from: g */
    public final void m23672g(long j) {
        C6112b0 b0Var = this.f15313g;
        if (b0Var != null) {
            b0Var.m23819a(j);
        }
        this.f15310d += j;
        long j2 = this.f15310d;
        if (j2 >= this.f15311e + this.f15309c || j2 >= this.f15312f) {
            m23677a();
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        ((FilterOutputStream) this).out.write(i);
        m23672g(1L);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        ((FilterOutputStream) this).out.write(bArr);
        m23672g(bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i, i2);
        m23672g(i2);
    }
}
