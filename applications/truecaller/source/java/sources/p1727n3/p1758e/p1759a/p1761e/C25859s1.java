package p1727n3.p1758e.p1759a.p1761e;

import android.hardware.camera2.CameraDevice;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
/* renamed from: n3.e.a.e.s1 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/s1.class */
public class C25859s1 {

    /* renamed from: a */
    public final Executor f72332a;

    /* renamed from: b */
    public final Object f72333b = new Object();

    /* renamed from: c */
    public final Set<AbstractC25721b2> f72334c = new LinkedHashSet();

    /* renamed from: d */
    public final Set<AbstractC25721b2> f72335d = new LinkedHashSet();

    /* renamed from: e */
    public final Set<AbstractC25721b2> f72336e = new LinkedHashSet();

    /* renamed from: f */
    public final CameraDevice.StateCallback f72337f = new C25860a();

    /* renamed from: n3.e.a.e.s1$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/s1$a.class */
    public class C25860a extends CameraDevice.StateCallback {
        public C25860a() {
            C25859s1.this = r4;
        }

        /* renamed from: a */
        public final void m2948a() {
            List<AbstractC25721b2> m2949b;
            synchronized (C25859s1.this.f72333b) {
                m2949b = C25859s1.this.m2949b();
                C25859s1.this.f72336e.clear();
                C25859s1.this.f72334c.clear();
                C25859s1.this.f72335d.clear();
            }
            Iterator it = ((ArrayList) m2949b).iterator();
            while (it.hasNext()) {
                ((AbstractC25721b2) it.next()).mo3017h();
            }
        }

        /* renamed from: b */
        public final void m2947b() {
            final LinkedHashSet linkedHashSet = new LinkedHashSet();
            synchronized (C25859s1.this.f72333b) {
                linkedHashSet.addAll(C25859s1.this.f72336e);
                linkedHashSet.addAll(C25859s1.this.f72334c);
            }
            C25859s1.this.f72332a.execute(new Runnable() { // from class: n3.e.a.e.a0
                @Override // java.lang.Runnable
                public final void run() {
                    for (AbstractC25721b2 abstractC25721b2 : linkedHashSet) {
                        abstractC25721b2.mo3023b().mo3005n(abstractC25721b2);
                    }
                }
            });
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onClosed(CameraDevice cameraDevice) {
            m2948a();
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            m2947b();
            m2948a();
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int i) {
            m2947b();
            m2948a();
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) {
        }
    }

    public C25859s1(Executor executor) {
        this.f72332a = executor;
    }

    /* renamed from: a */
    public final void m2950a(AbstractC25721b2 abstractC25721b2) {
        AbstractC25721b2 abstractC25721b22;
        Iterator it = ((ArrayList) m2949b()).iterator();
        while (it.hasNext() && (abstractC25721b22 = (AbstractC25721b2) it.next()) != abstractC25721b2) {
            abstractC25721b22.mo3017h();
        }
    }

    /* renamed from: b */
    public List<AbstractC25721b2> m2949b() {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        synchronized (this.f72333b) {
            arrayList = new ArrayList();
            synchronized (this.f72333b) {
                arrayList2 = new ArrayList(this.f72334c);
            }
            arrayList.addAll(arrayList2);
            synchronized (this.f72333b) {
                arrayList3 = new ArrayList(this.f72336e);
            }
            arrayList.addAll(arrayList3);
        }
        return arrayList;
    }
}
