package p081h.p154f;

import android.os.Handler;
import com.facebook.GraphRequest;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
/* renamed from: h.f.y */
/* loaded from: classes-dex2jar.jar:h/f/y.class */
public class C6154y extends OutputStream implements AbstractC6105a0 {

    /* renamed from: a */
    public final Map<GraphRequest, C6112b0> f15302a = new HashMap();

    /* renamed from: b */
    public final Handler f15303b;

    /* renamed from: c */
    public GraphRequest f15304c;

    /* renamed from: d */
    public C6112b0 f15305d;

    /* renamed from: e */
    public int f15306e;

    public C6154y(Handler handler) {
        this.f15303b = handler;
    }

    /* renamed from: a */
    public int m23680a() {
        return this.f15306e;
    }

    @Override // p081h.p154f.AbstractC6105a0
    /* renamed from: a */
    public void mo23676a(GraphRequest graphRequest) {
        this.f15304c = graphRequest;
        this.f15305d = graphRequest != null ? this.f15302a.get(graphRequest) : null;
    }

    /* renamed from: b */
    public Map<GraphRequest, C6112b0> m23679b() {
        return this.f15302a;
    }

    /* renamed from: g */
    public void m23678g(long j) {
        if (this.f15305d == null) {
            this.f15305d = new C6112b0(this.f15303b, this.f15304c);
            this.f15302a.put(this.f15304c, this.f15305d);
        }
        this.f15305d.m23818b(j);
        this.f15306e = (int) (this.f15306e + j);
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        m23678g(1L);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        m23678g(bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        m23678g(i2);
    }
}
