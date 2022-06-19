package p1727n3.p1758e.p1759a.p1761e;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.concurrent.Executor;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25785e;
import p1727n3.p1790h.p1791a.C26247b;
import p1727n3.p1868v.C27010k0;
/* renamed from: n3.e.a.e.h2 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/h2.class */
public final class C25748h2 {

    /* renamed from: a */
    public final z0 f72122a;

    /* renamed from: b */
    public final C27010k0<Integer> f72123b;

    /* renamed from: c */
    public final boolean f72124c;

    /* renamed from: d */
    public final Executor f72125d;

    /* renamed from: e */
    public boolean f72126e;

    /* renamed from: f */
    public C26247b<Void> f72127f;

    /* renamed from: g */
    public boolean f72128g;

    /* renamed from: h */
    public final z0$c f72129h;

    /* renamed from: n3.e.a.e.h2$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/h2$a.class */
    public class C25749a implements z0$c {
        public C25749a() {
            C25748h2.this = r4;
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.z0$c
        /* renamed from: a */
        public boolean mo2925a(TotalCaptureResult totalCaptureResult) {
            if (C25748h2.this.f72127f != null) {
                Integer num = (Integer) totalCaptureResult.getRequest().get(CaptureRequest.FLASH_MODE);
                boolean z = num != null && num.intValue() == 2;
                C25748h2 c25748h2 = C25748h2.this;
                if (z != c25748h2.f72128g) {
                    return false;
                }
                c25748h2.f72127f.m2258a(null);
                C25748h2.this.f72127f = null;
                return false;
            }
            return false;
        }
    }

    public C25748h2(z0 z0Var, C25785e c25785e, Executor executor) {
        C25749a c25749a = new C25749a();
        this.f72129h = c25749a;
        this.f72122a = z0Var;
        this.f72125d = executor;
        Boolean bool = (Boolean) c25785e.m2995a(CameraCharacteristics.FLASH_INFO_AVAILABLE);
        this.f72124c = bool != null && bool.booleanValue();
        this.f72123b = new C27010k0<>(0);
        z0Var.a.f72399a.add(c25749a);
    }

    /* renamed from: a */
    public final <T> void m3003a(C27010k0<T> c27010k0, T t) {
        if (MediaSessionCompat.m43288L0()) {
            c27010k0.mo1000l(t);
        } else {
            c27010k0.mo1001j(t);
        }
    }
}
