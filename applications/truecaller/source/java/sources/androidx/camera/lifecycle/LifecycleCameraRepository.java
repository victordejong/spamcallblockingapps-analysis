package androidx.camera.lifecycle;

import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p1727n3.p1758e.p1767b.AbstractC25921g1;
import p1727n3.p1758e.p1767b.C25927h1;
import p1727n3.p1758e.p1767b.p1772k1.C26064c;
import p1727n3.p1758e.p1775c.C26108b;
import p1727n3.p1868v.AbstractC26985a0;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC27013m0;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.C26994c0;
/* loaded from: classes-dex2jar.jar:androidx/camera/lifecycle/LifecycleCameraRepository.class */
public final class LifecycleCameraRepository {

    /* renamed from: a */
    public final Object f502a = new Object();

    /* renamed from: b */
    public final Map<AbstractC0098a, LifecycleCamera> f503b = new HashMap();

    /* renamed from: c */
    public final Map<LifecycleCameraRepositoryObserver, Set<AbstractC0098a>> f504c = new HashMap();

    /* renamed from: d */
    public final ArrayDeque<AbstractC26992b0> f505d = new ArrayDeque<>();

    /* loaded from: classes-dex2jar.jar:androidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver.class */
    public static class LifecycleCameraRepositoryObserver implements AbstractC26985a0 {

        /* renamed from: a */
        public final LifecycleCameraRepository f506a;

        /* renamed from: b */
        public final AbstractC26992b0 f507b;

        public LifecycleCameraRepositoryObserver(AbstractC26992b0 abstractC26992b0, LifecycleCameraRepository lifecycleCameraRepository) {
            this.f507b = abstractC26992b0;
            this.f506a = lifecycleCameraRepository;
        }

        @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_DESTROY)
        public void onDestroy(AbstractC26992b0 abstractC26992b0) {
            LifecycleCameraRepository lifecycleCameraRepository = this.f506a;
            synchronized (lifecycleCameraRepository.f502a) {
                LifecycleCameraRepositoryObserver m43063b = lifecycleCameraRepository.m43063b(abstractC26992b0);
                if (m43063b == null) {
                    return;
                }
                lifecycleCameraRepository.m43059f(abstractC26992b0);
                for (AbstractC0098a abstractC0098a : lifecycleCameraRepository.f504c.get(m43063b)) {
                    lifecycleCameraRepository.f503b.remove(abstractC0098a);
                }
                lifecycleCameraRepository.f504c.remove(m43063b);
                C26994c0 c26994c0 = (C26994c0) m43063b.f507b.getLifecycle();
                c26994c0.m1020d("removeObserver");
                c26994c0.f75500b.mo3103e(m43063b);
            }
        }

        @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_START)
        public void onStart(AbstractC26992b0 abstractC26992b0) {
            this.f506a.m43060e(abstractC26992b0);
        }

        @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_STOP)
        public void onStop(AbstractC26992b0 abstractC26992b0) {
            this.f506a.m43059f(abstractC26992b0);
        }
    }

    /* renamed from: androidx.camera.lifecycle.LifecycleCameraRepository$a */
    /* loaded from: classes-dex2jar.jar:androidx/camera/lifecycle/LifecycleCameraRepository$a.class */
    public static abstract class AbstractC0098a {
        /* renamed from: a */
        public abstract C26064c.C26066b mo2712a();

        /* renamed from: b */
        public abstract AbstractC26992b0 mo2711b();
    }

    /* renamed from: a */
    public void m43064a(LifecycleCamera lifecycleCamera, C25927h1 c25927h1, Collection<AbstractC25921g1> collection) {
        synchronized (this.f502a) {
            boolean z = true;
            MediaSessionCompat.m43217n(!collection.isEmpty());
            AbstractC26992b0 m43068c = lifecycleCamera.m43068c();
            for (AbstractC0098a abstractC0098a : this.f504c.get(m43063b(m43068c))) {
                LifecycleCamera lifecycleCamera2 = this.f503b.get(abstractC0098a);
                Objects.requireNonNull(lifecycleCamera2);
                if (!lifecycleCamera2.equals(lifecycleCamera) && !lifecycleCamera2.m43067f().isEmpty()) {
                    throw new IllegalArgumentException("Multiple LifecycleCameras with use cases are registered to the same LifecycleOwner.");
                }
            }
            try {
                C26064c c26064c = lifecycleCamera.f500c;
                synchronized (c26064c.f72742i) {
                    c26064c.f72740g = c25927h1;
                }
                synchronized (lifecycleCamera.f498a) {
                    lifecycleCamera.f500c.m2759c(collection);
                }
                if (((C26994c0) m43068c.getLifecycle()).f75501c.compareTo(AbstractC27028u.EnumC27030b.STARTED) < 0) {
                    z = false;
                }
                if (z) {
                    m43060e(m43068c);
                }
            } catch (C26064c.C26065a e) {
                throw new IllegalArgumentException(e.getMessage());
            }
        }
    }

    /* renamed from: b */
    public final LifecycleCameraRepositoryObserver m43063b(AbstractC26992b0 abstractC26992b0) {
        LifecycleCameraRepositoryObserver next;
        synchronized (this.f502a) {
            Iterator<LifecycleCameraRepositoryObserver> it = this.f504c.keySet().iterator();
            do {
                if (!it.hasNext()) {
                    return null;
                }
                next = it.next();
            } while (!abstractC26992b0.equals(next.f507b));
            return next;
        }
    }

    /* renamed from: c */
    public final boolean m43062c(AbstractC26992b0 abstractC26992b0) {
        LifecycleCamera lifecycleCamera;
        synchronized (this.f502a) {
            LifecycleCameraRepositoryObserver m43063b = m43063b(abstractC26992b0);
            if (m43063b == null) {
                return false;
            }
            Iterator<AbstractC0098a> it = this.f504c.get(m43063b).iterator();
            do {
                if (!it.hasNext()) {
                    return false;
                }
                lifecycleCamera = this.f503b.get(it.next());
                Objects.requireNonNull(lifecycleCamera);
            } while (lifecycleCamera.m43067f().isEmpty());
            return true;
        }
    }

    /* renamed from: d */
    public final void m43061d(LifecycleCamera lifecycleCamera) {
        synchronized (this.f502a) {
            AbstractC26992b0 m43068c = lifecycleCamera.m43068c();
            C26108b c26108b = new C26108b(m43068c, lifecycleCamera.f500c.f72738e);
            LifecycleCameraRepositoryObserver m43063b = m43063b(m43068c);
            HashSet hashSet = m43063b != null ? this.f504c.get(m43063b) : new HashSet();
            hashSet.add(c26108b);
            this.f503b.put(c26108b, lifecycleCamera);
            if (m43063b == null) {
                LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserver = new LifecycleCameraRepositoryObserver(m43068c, this);
                this.f504c.put(lifecycleCameraRepositoryObserver, hashSet);
                m43068c.getLifecycle().mo988a(lifecycleCameraRepositoryObserver);
            }
        }
    }

    /* renamed from: e */
    public void m43060e(AbstractC26992b0 abstractC26992b0) {
        synchronized (this.f502a) {
            if (!m43062c(abstractC26992b0)) {
                return;
            }
            if (this.f505d.isEmpty()) {
                this.f505d.push(abstractC26992b0);
            } else {
                AbstractC26992b0 peek = this.f505d.peek();
                if (!abstractC26992b0.equals(peek)) {
                    m43058g(peek);
                    this.f505d.remove(abstractC26992b0);
                    this.f505d.push(abstractC26992b0);
                }
            }
            m43057h(abstractC26992b0);
        }
    }

    /* renamed from: f */
    public void m43059f(AbstractC26992b0 abstractC26992b0) {
        synchronized (this.f502a) {
            this.f505d.remove(abstractC26992b0);
            m43058g(abstractC26992b0);
            if (!this.f505d.isEmpty()) {
                m43057h(this.f505d.peek());
            }
        }
    }

    /* renamed from: g */
    public final void m43058g(AbstractC26992b0 abstractC26992b0) {
        synchronized (this.f502a) {
            for (AbstractC0098a abstractC0098a : this.f504c.get(m43063b(abstractC26992b0))) {
                LifecycleCamera lifecycleCamera = this.f503b.get(abstractC0098a);
                Objects.requireNonNull(lifecycleCamera);
                lifecycleCamera.m43066j();
            }
        }
    }

    /* renamed from: h */
    public final void m43057h(AbstractC26992b0 abstractC26992b0) {
        synchronized (this.f502a) {
            for (AbstractC0098a abstractC0098a : this.f504c.get(m43063b(abstractC26992b0))) {
                LifecycleCamera lifecycleCamera = this.f503b.get(abstractC0098a);
                Objects.requireNonNull(lifecycleCamera);
                if (!lifecycleCamera.m43067f().isEmpty()) {
                    lifecycleCamera.m43065k();
                }
            }
        }
    }
}
