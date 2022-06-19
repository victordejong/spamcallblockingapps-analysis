package p1727n3.p1758e.p1759a.p1761e;

import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.Size;
import android.view.Surface;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Arrays;
import java.util.Collections;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25785e;
import p1727n3.p1758e.p1767b.C26103y0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25980k0;
import p1727n3.p1758e.p1767b.p1768j1.C25972j1;
import p1727n3.p1758e.p1767b.p1768j1.C26009s0;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.C26034g;
/* renamed from: n3.e.a.e.z1 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/z1.class */
public class C25879z1 {

    /* renamed from: a */
    public AbstractC25980k0 f72401a;

    /* renamed from: b */
    public final C25972j1 f72402b;

    /* renamed from: n3.e.a.e.z1$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/z1$a.class */
    public class C25880a implements AbstractC26030d<Void> {

        /* renamed from: a */
        public final /* synthetic */ Surface f72403a;

        /* renamed from: b */
        public final /* synthetic */ SurfaceTexture f72404b;

        public C25880a(C25879z1 c25879z1, Surface surface, SurfaceTexture surfaceTexture) {
            this.f72403a = surface;
            this.f72404b = surfaceTexture;
        }

        @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
        /* renamed from: a */
        public void mo2689a(Throwable th) {
            throw new IllegalStateException("Future should never fail. Did it get completed by GC?", th);
        }

        @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
        public void onSuccess(Void r3) {
            this.f72403a.release();
            this.f72404b.release();
        }
    }

    public C25879z1(C25785e c25785e) {
        Size size;
        b bVar = new b();
        SurfaceTexture surfaceTexture = new SurfaceTexture(0);
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) c25785e.m2995a(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
        if (streamConfigurationMap == null) {
            C26103y0.m2723b("MeteringRepeating", "Can not retrieve SCALER_STREAM_CONFIGURATION_MAP.", null);
            size = new Size(0, 0);
        } else {
            Size[] outputSizes = streamConfigurationMap.getOutputSizes(34);
            if (outputSizes == null) {
                C26103y0.m2723b("MeteringRepeating", "Can not get output size list.", null);
                size = new Size(0, 0);
            } else {
                size = (Size) Collections.min(Arrays.asList(outputSizes), C25751i0.f72132a);
            }
        }
        C26103y0.m2724a("MeteringRepeating", "MerteringSession SurfaceTexture size: " + size, null);
        surfaceTexture.setDefaultBufferSize(size.getWidth(), size.getHeight());
        Surface surface = new Surface(surfaceTexture);
        C25972j1.C25974b m2837e = C25972j1.C25974b.m2837e(bVar);
        m2837e.f72602b.f72580c = 1;
        C26009s0 c26009s0 = new C26009s0(surface);
        this.f72401a = c26009s0;
        ListenableFuture<Void> m2830d = c26009s0.m2830d();
        C25880a c25880a = new C25880a(this, surface, surfaceTexture);
        m2830d.addListener(new C26034g.RunnableC26038d(m2830d, c25880a), MediaSessionCompat.m43268U());
        AbstractC25980k0 abstractC25980k0 = this.f72401a;
        m2837e.f72601a.add(abstractC25980k0);
        m2837e.f72602b.f72578a.add(abstractC25980k0);
        this.f72402b = m2837e.m2838d();
    }
}
