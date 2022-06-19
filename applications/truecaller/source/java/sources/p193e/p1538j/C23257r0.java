package p193e.p1538j;

import android.os.Handler;
import com.facebook.GraphRequest;
import com.mopub.mobileads.VastIconXmlManager;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010%\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0004\u0018��2\u00020\u00012\u00020\u0002B\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\t0\u0016J\u0012\u0010\u0017\u001a\u00020\u00122\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J \u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000bH\u0016J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u000bH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\t0\u0010X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001e"}, d2 = {"Lcom/facebook/ProgressNoopOutputStream;", "Ljava/io/OutputStream;", "Lcom/facebook/RequestOutputStream;", "callbackHandler", "Landroid/os/Handler;", "(Landroid/os/Handler;)V", "currentRequest", "Lcom/facebook/GraphRequest;", "currentRequestProgress", "Lcom/facebook/RequestProgress;", "<set-?>", "", "maxProgress", "getMaxProgress", "()I", "progressMap", "", "addProgress", "", "size", "", "getProgressMap", "", "setCurrentRequest", "write", "buffer", "", VastIconXmlManager.OFFSET, "length", "oneByte", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.j.r0 */
/* loaded from: classes2-dex2jar.jar:e/j/r0.class */
public final class C23257r0 extends OutputStream implements AbstractC23261t0 {

    /* renamed from: a */
    public final Handler f64364a;

    /* renamed from: b */
    public final Map<GraphRequest, C23264u0> f64365b = new HashMap();

    /* renamed from: c */
    public GraphRequest f64366c;

    /* renamed from: d */
    public C23264u0 f64367d;

    /* renamed from: e */
    public int f64368e;

    public C23257r0(Handler handler) {
        this.f64364a = handler;
    }

    @Override // p193e.p1538j.AbstractC23261t0
    /* renamed from: b */
    public void mo7319b(GraphRequest graphRequest) {
        this.f64366c = graphRequest;
        this.f64367d = graphRequest != null ? this.f64365b.get(graphRequest) : null;
    }

    /* renamed from: d */
    public final void m7322d(long j) {
        GraphRequest graphRequest = this.f64366c;
        if (graphRequest == null) {
            return;
        }
        if (this.f64367d == null) {
            C23264u0 c23264u0 = new C23264u0(this.f64364a, graphRequest);
            this.f64367d = c23264u0;
            this.f64365b.put(graphRequest, c23264u0);
        }
        C23264u0 c23264u02 = this.f64367d;
        if (c23264u02 != null) {
            c23264u02.f64387f += j;
        }
        this.f64368e += (int) j;
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        m7322d(1L);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        l.e(bArr, "buffer");
        m7322d(bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        l.e(bArr, "buffer");
        m7322d(i2);
    }
}
