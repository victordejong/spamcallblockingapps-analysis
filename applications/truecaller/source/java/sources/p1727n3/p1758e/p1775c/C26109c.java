package p1727n3.p1758e.p1775c;

import android.content.Context;
import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.camera.lifecycle.LifecycleCamera;
import androidx.camera.lifecycle.LifecycleCameraRepository;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import n3.e.b.j1.t1.c.c;
import n3.e.b.q0;
import p1727n3.p1758e.p1767b.AbstractC25921g1;
import p1727n3.p1758e.p1767b.AbstractC25926h0;
import p1727n3.p1758e.p1767b.AbstractC26062k0;
import p1727n3.p1758e.p1767b.C26077m0;
import p1727n3.p1758e.p1767b.C26083p0;
import p1727n3.p1758e.p1767b.C26103y0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25938b0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26010s1;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26051x;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.C26033f;
import p1727n3.p1758e.p1767b.p1772k1.C26064c;
import p1727n3.p1758e.p1767b.q0$b;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.C26994c0;
/* renamed from: n3.e.c.c */
/* loaded from: classes-dex2jar.jar:n3/e/c/c.class */
public final class C26109c {

    /* renamed from: c */
    public static final C26109c f72831c = new C26109c();

    /* renamed from: a */
    public final LifecycleCameraRepository f72832a = new LifecycleCameraRepository();

    /* renamed from: b */
    public C26083p0 f72833b;

    /* renamed from: b */
    public static ListenableFuture<C26109c> m2709b(Context context) {
        ListenableFuture<C26083p0> listenableFuture;
        Objects.requireNonNull(context);
        Object obj = C26083p0.f72764m;
        MediaSessionCompat.m43196u(context, "Context must not be null.");
        synchronized (C26083p0.f72764m) {
            boolean z = true;
            boolean z2 = C26083p0.f72766o != null;
            ListenableFuture<C26083p0> m2733c = C26083p0.m2733c();
            ListenableFuture<C26083p0> listenableFuture2 = m2733c;
            if (m2733c.isDone()) {
                try {
                    m2733c.get();
                    listenableFuture2 = m2733c;
                } catch (InterruptedException e) {
                    throw new RuntimeException("Unexpected thread interrupt. Should not be possible since future is already complete.", e);
                } catch (ExecutionException e2) {
                    C26083p0.m2730f();
                    listenableFuture2 = null;
                }
            }
            listenableFuture = listenableFuture2;
            if (listenableFuture2 == null) {
                if (!z2) {
                    q0$b m2734b = C26083p0.m2734b(context);
                    if (m2734b == null) {
                        throw new IllegalStateException("CameraX is not configured properly. The most likely cause is you did not include a default implementation in your build such as 'camera-camera2'.");
                    }
                    if (C26083p0.f72766o != null) {
                        z = false;
                    }
                    MediaSessionCompat.m43187x(z, "CameraX has already been configured. To use a different configuration, shutdown() must be called.");
                    C26083p0.f72766o = m2734b;
                    Integer num = (Integer) m2734b.getCameraXConfig().mo2850b(q0.w, null);
                    if (num != null) {
                        C26103y0.f72812a = num.intValue();
                    }
                }
                C26083p0.m2732d(context);
                listenableFuture = C26083p0.m2733c();
            }
        }
        C26107a c26107a = C26107a.f72828a;
        Executor m43268U = MediaSessionCompat.m43268U();
        c cVar = new c(new C26033f(c26107a), listenableFuture);
        listenableFuture.addListener(cVar, m43268U);
        return cVar;
    }

    /* renamed from: a */
    public AbstractC25926h0 m2710a(AbstractC26992b0 abstractC26992b0, C26077m0 c26077m0, AbstractC25921g1... abstractC25921g1Arr) {
        LifecycleCamera lifecycleCamera;
        Collection<LifecycleCamera> unmodifiableCollection;
        boolean contains;
        MediaSessionCompat.m43199t();
        LinkedHashSet linkedHashSet = new LinkedHashSet(c26077m0.f72754a);
        boolean z = false;
        for (AbstractC25921g1 abstractC25921g1 : abstractC25921g1Arr) {
            C26077m0 t = abstractC25921g1.f72505f.t((C26077m0) null);
            if (t != null) {
                Iterator<AbstractC26062k0> it = t.f72754a.iterator();
                while (it.hasNext()) {
                    linkedHashSet.add(it.next());
                }
            }
        }
        LinkedHashSet<AbstractC25938b0> m2740a = new C26077m0(linkedHashSet).m2740a(this.f72833b.f72769a.m2873a());
        C26064c.C26066b c26066b = new C26064c.C26066b(m2740a);
        LifecycleCameraRepository lifecycleCameraRepository = this.f72832a;
        synchronized (lifecycleCameraRepository.f502a) {
            lifecycleCamera = lifecycleCameraRepository.f503b.get(new C26108b(abstractC26992b0, c26066b));
        }
        LifecycleCameraRepository lifecycleCameraRepository2 = this.f72832a;
        synchronized (lifecycleCameraRepository2.f502a) {
            unmodifiableCollection = Collections.unmodifiableCollection(lifecycleCameraRepository2.f503b.values());
        }
        for (AbstractC25921g1 abstractC25921g12 : abstractC25921g1Arr) {
            for (LifecycleCamera lifecycleCamera2 : unmodifiableCollection) {
                synchronized (lifecycleCamera2.f498a) {
                    contains = ((ArrayList) lifecycleCamera2.f500c.m2755l()).contains(abstractC25921g12);
                }
                if (contains && lifecycleCamera2 != lifecycleCamera) {
                    throw new IllegalStateException(String.format("Use case %s already bound to a different lifecycle.", abstractC25921g12));
                }
            }
        }
        LifecycleCamera lifecycleCamera3 = lifecycleCamera;
        if (lifecycleCamera == null) {
            LifecycleCameraRepository lifecycleCameraRepository3 = this.f72832a;
            C26083p0 c26083p0 = this.f72833b;
            AbstractC26051x abstractC26051x = c26083p0.f72776h;
            if (abstractC26051x == null) {
                throw new IllegalStateException("CameraX not initialized yet.");
            }
            AbstractC26010s1 abstractC26010s1 = c26083p0.f72777i;
            if (abstractC26010s1 == null) {
                throw new IllegalStateException("CameraX not initialized yet.");
            }
            C26064c c26064c = new C26064c(m2740a, abstractC26051x, abstractC26010s1);
            synchronized (lifecycleCameraRepository3.f502a) {
                if (lifecycleCameraRepository3.f503b.get(new C26108b(abstractC26992b0, c26064c.f72738e)) == null) {
                    z = true;
                }
                MediaSessionCompat.m43214o(z, "LifecycleCamera already exists for the given LifecycleOwner and set of cameras");
                if (((C26994c0) abstractC26992b0.getLifecycle()).f75501c == AbstractC27028u.EnumC27030b.DESTROYED) {
                    throw new IllegalArgumentException("Trying to create LifecycleCamera with destroyed lifecycle.");
                }
                lifecycleCamera3 = new LifecycleCamera(abstractC26992b0, c26064c);
                if (((ArrayList) c26064c.m2755l()).isEmpty()) {
                    lifecycleCamera3.m43066j();
                }
                lifecycleCameraRepository3.m43061d(lifecycleCamera3);
            }
        }
        if (abstractC25921g1Arr.length != 0) {
            this.f72832a.m43064a(lifecycleCamera3, null, Arrays.asList(abstractC25921g1Arr));
        }
        return lifecycleCamera3;
    }

    /* renamed from: c */
    public void m2708c() {
        MediaSessionCompat.m43199t();
        LifecycleCameraRepository lifecycleCameraRepository = this.f72832a;
        synchronized (lifecycleCameraRepository.f502a) {
            for (LifecycleCameraRepository.AbstractC0098a abstractC0098a : lifecycleCameraRepository.f503b.keySet()) {
                LifecycleCamera lifecycleCamera = lifecycleCameraRepository.f503b.get(abstractC0098a);
                synchronized (lifecycleCamera.f498a) {
                    C26064c c26064c = lifecycleCamera.f500c;
                    c26064c.m2754m(c26064c.m2755l());
                }
                lifecycleCameraRepository.m43059f(lifecycleCamera.m43068c());
            }
        }
    }
}
