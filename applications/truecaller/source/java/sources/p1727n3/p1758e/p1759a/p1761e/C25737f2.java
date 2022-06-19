package p1727n3.p1758e.p1759a.p1761e;

import android.hardware.camera2.CameraDevice;
import android.os.Build;
import android.os.Handler;
import android.view.Surface;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25810g;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25980k0;
/* renamed from: n3.e.a.e.f2 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/f2.class */
public final class C25737f2 {

    /* renamed from: a */
    public final AbstractC25739b f72101a;

    /* renamed from: n3.e.a.e.f2$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/f2$a.class */
    public static class C25738a {

        /* renamed from: a */
        public final Executor f72102a;

        /* renamed from: b */
        public final ScheduledExecutorService f72103b;

        /* renamed from: c */
        public final Handler f72104c;

        /* renamed from: d */
        public final C25859s1 f72105d;

        /* renamed from: e */
        public final int f72106e;

        /* renamed from: f */
        public final Set<String> f72107f;

        public C25738a(Executor executor, ScheduledExecutorService scheduledExecutorService, Handler handler, C25859s1 c25859s1, int i) {
            HashSet hashSet = new HashSet();
            this.f72107f = hashSet;
            this.f72102a = executor;
            this.f72103b = scheduledExecutorService;
            this.f72104c = handler;
            this.f72105d = c25859s1;
            this.f72106e = i;
            int i2 = Build.VERSION.SDK_INT;
            if (i == 2 || i2 <= 23) {
                hashSet.add("deferrableSurface_close");
            }
            if (i == 2) {
                hashSet.add("wait_for_request");
            }
        }

        /* renamed from: a */
        public C25737f2 m3010a() {
            return this.f72107f.isEmpty() ? new C25737f2(new C25725c2(this.f72105d, this.f72102a, this.f72103b, this.f72104c)) : new C25737f2(new e2(this.f72107f, this.f72105d, this.f72102a, this.f72103b, this.f72104c));
        }
    }

    /* renamed from: n3.e.a.e.f2$b */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/f2$b.class */
    public interface AbstractC25739b {
        /* renamed from: a */
        ListenableFuture<Void> mo3009a(CameraDevice cameraDevice, C25810g c25810g, List<AbstractC25980k0> list);

        /* renamed from: j */
        ListenableFuture<List<Surface>> mo3008j(List<AbstractC25980k0> list, long j);

        boolean stop();
    }

    public C25737f2(AbstractC25739b abstractC25739b) {
        this.f72101a = abstractC25739b;
    }

    /* renamed from: a */
    public boolean m3011a() {
        return this.f72101a.stop();
    }
}
