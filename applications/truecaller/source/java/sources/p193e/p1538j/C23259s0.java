package p193e.p1538j;

import android.os.Handler;
import com.amazon.device.ads.MraidCloseCommand;
import com.facebook.GraphRequest;
import com.facebook.internal.C1172r0;
import com.mopub.mobileads.VastIconXmlManager;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;
import kotlin.Metadata;
import p193e.p1538j.C23240k0;
import s1.z.c.l;
@Metadata(d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u0012\n��\n\u0002\u0010\b\n\u0002\b\u0003\u0018��2\u00020\u00012\u00020\u0002B1\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\fH\u0002J\b\u0010\u0019\u001a\u00020\u0017H\u0016J\b\u0010\u001a\u001a\u00020\u0017H\u0002J\u0012\u0010\u001b\u001a\u00020\u00172\b\u0010\u001c\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J \u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!H\u0016J\u0010\u0010\u001d\u001a\u00020\u00172\u0006\u0010#\u001a\u00020!H\u0016R\u001e\u0010\u000f\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0011R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��¨\u0006$"}, d2 = {"Lcom/facebook/ProgressOutputStream;", "Ljava/io/FilterOutputStream;", "Lcom/facebook/RequestOutputStream;", "out", "Ljava/io/OutputStream;", "requests", "Lcom/facebook/GraphRequestBatch;", "progressMap", "", "Lcom/facebook/GraphRequest;", "Lcom/facebook/RequestProgress;", "maxProgress", "", "(Ljava/io/OutputStream;Lcom/facebook/GraphRequestBatch;Ljava/util/Map;J)V", "<set-?>", "batchProgress", "getBatchProgress", "()J", "currentRequestProgress", "lastReportedProgress", "getMaxProgress", "threshold", "addProgress", "", "size", MraidCloseCommand.NAME, "reportBatchProgress", "setCurrentRequest", "request", "write", "buffer", "", VastIconXmlManager.OFFSET, "", "length", "oneByte", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.j.s0 */
/* loaded from: classes2-dex2jar.jar:e/j/s0.class */
public final class C23259s0 extends FilterOutputStream implements AbstractC23261t0 {

    /* renamed from: a */
    public final C23240k0 f64372a;

    /* renamed from: b */
    public final Map<GraphRequest, C23264u0> f64373b;

    /* renamed from: c */
    public final long f64374c;

    /* renamed from: d */
    public final long f64375d = C23228f0.f64298h.get();

    /* renamed from: e */
    public long f64376e;

    /* renamed from: f */
    public long f64377f;

    /* renamed from: g */
    public C23264u0 f64378g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C23259s0(OutputStream outputStream, C23240k0 c23240k0, Map<GraphRequest, C23264u0> map, long j) {
        super(outputStream);
        l.e(outputStream, "out");
        l.e(c23240k0, "requests");
        l.e(map, "progressMap");
        this.f64372a = c23240k0;
        this.f64373b = map;
        this.f64374c = j;
        C23228f0 c23228f0 = C23228f0.f64291a;
        C1172r0 c1172r0 = C1172r0.f3203a;
        C1172r0.m41649f();
    }

    @Override // p193e.p1538j.AbstractC23261t0
    /* renamed from: b */
    public void mo7319b(GraphRequest graphRequest) {
        this.f64378g = graphRequest != null ? this.f64373b.get(graphRequest) : null;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        for (C23264u0 c23264u0 : this.f64373b.values()) {
            c23264u0.m7317a();
        }
        m7320j();
    }

    /* renamed from: d */
    public final void m7321d(long j) {
        C23264u0 c23264u0 = this.f64378g;
        if (c23264u0 != null) {
            long j2 = c23264u0.f64385d + j;
            c23264u0.f64385d = j2;
            if (j2 >= c23264u0.f64386e + c23264u0.f64384c || j2 >= c23264u0.f64387f) {
                c23264u0.m7317a();
            }
        }
        long j3 = this.f64376e + j;
        this.f64376e = j3;
        if (j3 >= this.f64377f + this.f64375d || j3 >= this.f64374c) {
            m7320j();
        }
    }

    /* renamed from: j */
    public final void m7320j() {
        if (this.f64376e > this.f64377f) {
            for (final C23240k0.AbstractC23241a abstractC23241a : this.f64372a.f64328d) {
                if (abstractC23241a instanceof C23240k0.AbstractC23242b) {
                    Handler handler = this.f64372a.f64325a;
                    if ((handler == null ? null : Boolean.valueOf(handler.post(new Runnable() { // from class: e.j.r
                        @Override // java.lang.Runnable
                        public final void run() {
                            C23240k0.AbstractC23241a abstractC23241a2 = C23240k0.AbstractC23241a.this;
                            C23259s0 c23259s0 = this;
                            l.e(abstractC23241a2, "$callback");
                            l.e(c23259s0, "this$0");
                            ((C23240k0.AbstractC23242b) abstractC23241a2).m7332b(c23259s0.f64372a, c23259s0.f64376e, c23259s0.f64374c);
                        }
                    }))) == null) {
                        ((C23240k0.AbstractC23242b) abstractC23241a).m7332b(this.f64372a, this.f64376e, this.f64374c);
                    }
                }
            }
            this.f64377f = this.f64376e;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        ((FilterOutputStream) this).out.write(i);
        m7321d(1L);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        l.e(bArr, "buffer");
        ((FilterOutputStream) this).out.write(bArr);
        m7321d(bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        l.e(bArr, "buffer");
        ((FilterOutputStream) this).out.write(bArr, i, i2);
        m7321d(i2);
    }
}
