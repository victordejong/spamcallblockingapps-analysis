package p1727n3.p1758e.p1759a.p1761e;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.ArrayMap;
import android.view.Surface;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import n3.e.a.d.a;
import n3.e.a.f.i;
import n3.e.b.j1.a1;
import p1727n3.p1758e.p1759a.p1760d.AbstractC25708b;
import p1727n3.p1758e.p1759a.p1760d.C25709c;
import p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2;
import p1727n3.p1758e.p1759a.p1761e.C25743g2;
import p1727n3.p1758e.p1759a.p1761e.C25852r1;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25806b;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25810g;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.p1765q.C25831e;
import p1727n3.p1758e.p1767b.C26103y0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25980k0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26002q;
import p1727n3.p1758e.p1767b.p1768j1.C25940b1;
import p1727n3.p1758e.p1767b.p1768j1.C25949d1;
import p1727n3.p1758e.p1767b.p1768j1.C25956g0;
import p1727n3.p1758e.p1767b.p1768j1.C25972j1;
import p1727n3.p1758e.p1767b.p1768j1.C25996o1;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26029b;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26039h;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.C26031e;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.C26034g;
import p1727n3.p1790h.p1791a.C26247b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.a.e.r1 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/r1.class */
public final class C25852r1 {

    /* renamed from: e */
    public C25737f2 f72303e;

    /* renamed from: f */
    public AbstractC25721b2 f72304f;

    /* renamed from: g */
    public volatile C25972j1 f72305g;

    /* renamed from: l */
    public EnumC25855c f72310l;

    /* renamed from: m */
    public ListenableFuture<Void> f72311m;

    /* renamed from: n */
    public C26247b<Void> f72312n;

    /* renamed from: a */
    public final Object f72299a = new Object();

    /* renamed from: b */
    public final List<C25956g0> f72300b = new ArrayList();

    /* renamed from: c */
    public final CameraCaptureSession.CaptureCallback f72301c = new C25853a(this);

    /* renamed from: h */
    public volatile AbstractC25968j0 f72306h = C25949d1.f72559r;

    /* renamed from: i */
    public C25709c f72307i = C25709c.m3038d();

    /* renamed from: j */
    public Map<AbstractC25980k0, Surface> f72308j = new HashMap();

    /* renamed from: k */
    public List<AbstractC25980k0> f72309k = Collections.emptyList();

    /* renamed from: o */
    public final C25831e f72313o = new C25831e();

    /* renamed from: d */
    public final C25856d f72302d = new C25856d();

    /* renamed from: n3.e.a.e.r1$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/r1$a.class */
    public class C25853a extends CameraCaptureSession.CaptureCallback {
        public C25853a(C25852r1 c25852r1) {
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        }
    }

    /* renamed from: n3.e.a.e.r1$b */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/r1$b.class */
    public class C25854b implements AbstractC26030d<Void> {
        public C25854b() {
            C25852r1.this = r4;
        }

        @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
        /* renamed from: a */
        public void mo2689a(Throwable th) {
            C25852r1.this.f72303e.m3011a();
            synchronized (C25852r1.this.f72299a) {
                int ordinal = C25852r1.this.f72310l.ordinal();
                if ((ordinal == 3 || ordinal == 5 || ordinal == 6) && !(th instanceof CancellationException)) {
                    C26103y0.m2720e("CaptureSession", "Opening session with fail " + C25852r1.this.f72310l, th);
                    C25852r1.this.m2963b();
                }
            }
        }

        @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
        public void onSuccess(Void r3) {
        }
    }

    /* renamed from: n3.e.a.e.r1$c */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/r1$c.class */
    public enum EnumC25855c {
        UNINITIALIZED,
        INITIALIZED,
        GET_SURFACE,
        OPENING,
        OPENED,
        CLOSED,
        RELEASING,
        RELEASED
    }

    /* renamed from: n3.e.a.e.r1$d */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/r1$d.class */
    public final class C25856d extends AbstractC25721b2.AbstractC25722a {
        public C25856d() {
            C25852r1.this = r4;
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
        /* renamed from: o */
        public void mo2954o(AbstractC25721b2 abstractC25721b2) {
            synchronized (C25852r1.this.f72299a) {
                switch (C25852r1.this.f72310l.ordinal()) {
                    case 0:
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                        throw new IllegalStateException("onConfigureFailed() should not be possible in state: " + C25852r1.this.f72310l);
                    case 3:
                    case 5:
                    case 6:
                        C25852r1.this.m2963b();
                        break;
                }
                C26103y0.m2723b("CaptureSession", "CameraCaptureSession.onConfigureFailed() " + C25852r1.this.f72310l, null);
            }
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
        /* renamed from: p */
        public void mo2953p(AbstractC25721b2 abstractC25721b2) {
            synchronized (C25852r1.this.f72299a) {
                switch (C25852r1.this.f72310l.ordinal()) {
                    case 0:
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                        throw new IllegalStateException("onConfigured() should not be possible in state: " + C25852r1.this.f72310l);
                    case 3:
                        C25852r1 c25852r1 = C25852r1.this;
                        c25852r1.f72310l = EnumC25855c.OPENED;
                        c25852r1.f72304f = abstractC25721b2;
                        if (c25852r1.f72305g != null) {
                            C25709c.C25710a m3039c = C25852r1.this.f72307i.m3039c();
                            ArrayList arrayList = new ArrayList();
                            for (AbstractC25708b abstractC25708b : m3039c.f71999a) {
                                Objects.requireNonNull(abstractC25708b);
                            }
                            if (!arrayList.isEmpty()) {
                                C25852r1 c25852r12 = C25852r1.this;
                                c25852r12.m2962c(c25852r12.m2955j(arrayList));
                            }
                        }
                        C26103y0.m2724a("CaptureSession", "Attempting to send capture request onConfigured", null);
                        C25852r1.this.m2959f();
                        C25852r1.this.m2960e();
                        break;
                    case 5:
                        C25852r1.this.f72304f = abstractC25721b2;
                        break;
                    case 6:
                        abstractC25721b2.close();
                        break;
                }
                C26103y0.m2724a("CaptureSession", "CameraCaptureSession.onConfigured() mState=" + C25852r1.this.f72310l, null);
            }
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
        /* renamed from: q */
        public void mo2952q(AbstractC25721b2 abstractC25721b2) {
            synchronized (C25852r1.this.f72299a) {
                if (C25852r1.this.f72310l.ordinal() == 0) {
                    throw new IllegalStateException("onReady() should not be possible in state: " + C25852r1.this.f72310l);
                }
                C26103y0.m2724a("CaptureSession", "CameraCaptureSession.onReady() " + C25852r1.this.f72310l, null);
            }
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
        /* renamed from: r */
        public void mo2951r(AbstractC25721b2 abstractC25721b2) {
            synchronized (C25852r1.this.f72299a) {
                if (C25852r1.this.f72310l == EnumC25855c.UNINITIALIZED) {
                    throw new IllegalStateException("onSessionFinished() should not be possible in state: " + C25852r1.this.f72310l);
                }
                C26103y0.m2724a("CaptureSession", "onSessionFinished()", null);
                C25852r1.this.m2963b();
            }
        }
    }

    public C25852r1() {
        this.f72310l = EnumC25855c.UNINITIALIZED;
        this.f72310l = EnumC25855c.INITIALIZED;
    }

    /* renamed from: g */
    public static AbstractC25968j0 m2958g(List<C25956g0> list) {
        a1 x = a1.x();
        for (C25956g0 c25956g0 : list) {
            AbstractC25968j0 abstractC25968j0 = c25956g0.f72573b;
            for (AbstractC25968j0.AbstractC25969a<?> abstractC25969a : abstractC25968j0.mo2848d()) {
                Object mo2850b = abstractC25968j0.mo2850b(abstractC25969a, null);
                if (x.mo2849c(abstractC25969a)) {
                    Object mo2850b2 = x.mo2850b(abstractC25969a, null);
                    if (!Objects.equals(mo2850b2, mo2850b)) {
                        StringBuilder m8728C = C22128a.m8728C("Detect conflicting option ");
                        m8728C.append(abstractC25969a.mo2823a());
                        m8728C.append(" : ");
                        m8728C.append(mo2850b);
                        m8728C.append(" != ");
                        m8728C.append(mo2850b2);
                        C26103y0.m2724a("CaptureSession", m8728C.toString(), null);
                    }
                } else {
                    x.z(abstractC25969a, AbstractC25968j0.EnumC25971c.OPTIONAL, mo2850b);
                }
            }
        }
        return x;
    }

    /* renamed from: a */
    public final CameraCaptureSession.CaptureCallback m2964a(List<AbstractC26002q> list, CameraCaptureSession.CaptureCallback... captureCallbackArr) {
        Object obj;
        ArrayList arrayList = new ArrayList(list.size() + captureCallbackArr.length);
        for (AbstractC26002q abstractC26002q : list) {
            if (abstractC26002q == null) {
                obj = null;
            } else {
                ArrayList arrayList2 = new ArrayList();
                C25849q1.m2965a(abstractC26002q, arrayList2);
                obj = arrayList2.size() == 1 ? (CameraCaptureSession.CaptureCallback) arrayList2.get(0) : new C25729d1(arrayList2);
            }
            arrayList.add(obj);
        }
        Collections.addAll(arrayList, captureCallbackArr);
        return new C25729d1(arrayList);
    }

    /* renamed from: b */
    public void m2963b() {
        EnumC25855c enumC25855c = this.f72310l;
        EnumC25855c enumC25855c2 = EnumC25855c.RELEASED;
        if (enumC25855c == enumC25855c2) {
            C26103y0.m2724a("CaptureSession", "Skipping finishClose due to being state RELEASED.", null);
            return;
        }
        this.f72310l = enumC25855c2;
        this.f72304f = null;
        C26247b<Void> c26247b = this.f72312n;
        if (c26247b == null) {
            return;
        }
        c26247b.m2258a(null);
        this.f72312n = null;
    }

    /* renamed from: c */
    public void m2962c(List<C25956g0> list) {
        int intValue;
        boolean z;
        if (list.isEmpty()) {
            return;
        }
        try {
            C25758j1 c25758j1 = new C25758j1();
            ArrayList arrayList = new ArrayList();
            C26103y0.m2724a("CaptureSession", "Issuing capture request.", null);
            boolean z2 = false;
            for (C25956g0 c25956g0 : list) {
                if (c25956g0.m2868a().isEmpty()) {
                    C26103y0.m2724a("CaptureSession", "Skipping issuing empty capture request.", null);
                } else {
                    Iterator<AbstractC25980k0> it = c25956g0.m2868a().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = true;
                            break;
                        }
                        AbstractC25980k0 next = it.next();
                        if (!this.f72308j.containsKey(next)) {
                            C26103y0.m2724a("CaptureSession", "Skipping capture request with invalid surface: " + next, null);
                            z = false;
                            break;
                        }
                    }
                    if (z) {
                        if (c25956g0.f72574c == 2) {
                            z2 = true;
                        }
                        C25956g0.C25957a c25957a = new C25956g0.C25957a(c25956g0);
                        if (this.f72305g != null) {
                            c25957a.m2865c(this.f72305g.f72600f.f72573b);
                        }
                        c25957a.m2865c(this.f72306h);
                        c25957a.m2865c(c25956g0.f72573b);
                        CaptureRequest m43232i = MediaSessionCompat.m43232i(c25957a.m2864d(), this.f72304f.mo3021d(), this.f72308j);
                        if (m43232i == null) {
                            C26103y0.m2724a("CaptureSession", "Skipping issuing request without surface.", null);
                            return;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        for (AbstractC26002q abstractC26002q : c25956g0.f72575d) {
                            C25849q1.m2965a(abstractC26002q, arrayList2);
                        }
                        List<CameraCaptureSession.CaptureCallback> list2 = c25758j1.f72145a.get(m43232i);
                        if (list2 != null) {
                            ArrayList arrayList3 = new ArrayList(list2.size() + arrayList2.size());
                            arrayList3.addAll(arrayList2);
                            arrayList3.addAll(list2);
                            c25758j1.f72145a.put(m43232i, arrayList3);
                        } else {
                            c25758j1.f72145a.put(m43232i, arrayList2);
                        }
                        arrayList.add(m43232i);
                    } else {
                        continue;
                    }
                }
            }
            if (arrayList.isEmpty()) {
                C26103y0.m2724a("CaptureSession", "Skipping issuing burst request due to no valid request elements", null);
                return;
            }
            boolean z3 = false;
            if (this.f72313o.f72269a) {
                if (!z2) {
                    z3 = false;
                } else {
                    Iterator it2 = arrayList.iterator();
                    do {
                        z3 = false;
                        if (!it2.hasNext()) {
                            break;
                        }
                        intValue = ((Integer) ((CaptureRequest) it2.next()).get(CaptureRequest.CONTROL_AE_MODE)).intValue();
                        if (intValue == 2) {
                            break;
                        }
                    } while (intValue != 3);
                    z3 = true;
                }
            }
            if (z3) {
                this.f72304f.mo3018g();
                c25758j1.f72146b = new C25878z(this);
            }
            this.f72304f.mo3020e(arrayList, c25758j1);
        } catch (CameraAccessException e) {
            StringBuilder m8728C = C22128a.m8728C("Unable to access camera: ");
            m8728C.append(e.getMessage());
            C26103y0.m2723b("CaptureSession", m8728C.toString(), null);
            Thread.dumpStack();
        }
    }

    /* renamed from: d */
    public void m2961d(List<C25956g0> list) {
        synchronized (this.f72299a) {
            switch (this.f72310l.ordinal()) {
                case 0:
                    throw new IllegalStateException("issueCaptureRequests() should not be possible in state: " + this.f72310l);
                case 1:
                case 2:
                case 3:
                    this.f72300b.addAll(list);
                    break;
                case 4:
                    this.f72300b.addAll(list);
                    m2960e();
                    break;
                case 5:
                case 6:
                case 7:
                    throw new IllegalStateException("Cannot issue capture request on a closed/released session.");
            }
        }
    }

    /* renamed from: e */
    public void m2960e() {
        if (this.f72300b.isEmpty()) {
            return;
        }
        try {
            m2962c(this.f72300b);
        } finally {
            this.f72300b.clear();
        }
    }

    /* renamed from: f */
    public void m2959f() {
        if (this.f72305g == null) {
            C26103y0.m2724a("CaptureSession", "Skipping issueRepeatingCaptureRequests for no configuration case.", null);
            return;
        }
        C25956g0 c25956g0 = this.f72305g.f72600f;
        if (c25956g0.m2868a().isEmpty()) {
            C26103y0.m2724a("CaptureSession", "Skipping issueRepeatingCaptureRequests for no surface.", null);
            try {
                this.f72304f.mo3018g();
                return;
            } catch (CameraAccessException e) {
                StringBuilder m8728C = C22128a.m8728C("Unable to access camera: ");
                m8728C.append(e.getMessage());
                C26103y0.m2723b("CaptureSession", m8728C.toString(), null);
                Thread.dumpStack();
                return;
            }
        }
        try {
            C26103y0.m2724a("CaptureSession", "Issuing request for session.", null);
            C25956g0.C25957a c25957a = new C25956g0.C25957a(c25956g0);
            C25709c.C25710a m3039c = this.f72307i.m3039c();
            ArrayList arrayList = new ArrayList();
            for (AbstractC25708b abstractC25708b : m3039c.f71999a) {
                Objects.requireNonNull(abstractC25708b);
            }
            this.f72306h = m2958g(arrayList);
            c25957a.m2865c(this.f72306h);
            CaptureRequest m43232i = MediaSessionCompat.m43232i(c25957a.m2864d(), this.f72304f.mo3021d(), this.f72308j);
            if (m43232i == null) {
                C26103y0.m2724a("CaptureSession", "Skipping issuing empty request for session.", null);
            } else {
                this.f72304f.mo3016i(m43232i, m2964a(c25956g0.f72575d, this.f72301c));
            }
        } catch (CameraAccessException e2) {
            StringBuilder m8728C2 = C22128a.m8728C("Unable to access camera: ");
            m8728C2.append(e2.getMessage());
            C26103y0.m2723b("CaptureSession", m8728C2.toString(), null);
            Thread.dumpStack();
        }
    }

    /* renamed from: h */
    public ListenableFuture<Void> m2957h(final C25972j1 c25972j1, final CameraDevice cameraDevice, C25737f2 c25737f2) {
        synchronized (this.f72299a) {
            if (this.f72310l.ordinal() != 1) {
                C26103y0.m2723b("CaptureSession", "Open not allowed in state: " + this.f72310l, null);
                return new AbstractC26039h.a(new IllegalStateException("open() should not allow the state: " + this.f72310l));
            }
            this.f72310l = EnumC25855c.GET_SURFACE;
            ArrayList arrayList = new ArrayList(c25972j1.m2842b());
            this.f72309k = arrayList;
            this.f72303e = c25737f2;
            C26031e m2784c = C26031e.m2786a(c25737f2.f72101a.mo3008j(arrayList, 5000L)).m2784c(new AbstractC26029b() { // from class: n3.e.a.e.y
                @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26029b
                public final ListenableFuture apply(Object obj) {
                    AbstractC26039h.a aVar;
                    C25852r1 c25852r1 = C25852r1.this;
                    C25972j1 c25972j12 = c25972j1;
                    CameraDevice cameraDevice2 = cameraDevice;
                    List list = (List) obj;
                    synchronized (c25852r1.f72299a) {
                        int ordinal = c25852r1.f72310l.ordinal();
                        if (ordinal != 0 && ordinal != 1) {
                            if (ordinal == 2) {
                                c25852r1.f72308j.clear();
                                for (int i = 0; i < list.size(); i++) {
                                    c25852r1.f72308j.put(c25852r1.f72309k.get(i), (Surface) list.get(i));
                                }
                                ArrayList arrayList2 = new ArrayList(new HashSet(list));
                                c25852r1.f72310l = C25852r1.EnumC25855c.OPENING;
                                CaptureRequest captureRequest = null;
                                C26103y0.m2724a("CaptureSession", "Opening capture session.", null);
                                C25743g2 c25743g2 = new C25743g2(Arrays.asList(c25852r1.f72302d, new C25743g2.C25744a(c25972j12.f72597c)));
                                C25709c c25709c = (C25709c) ((i) new a(c25972j12.f72600f.f72573b)).q.mo2850b(a.v, C25709c.m3038d());
                                c25852r1.f72307i = c25709c;
                                C25709c.C25710a m3039c = c25709c.m3039c();
                                ArrayList arrayList3 = new ArrayList();
                                for (AbstractC25708b abstractC25708b : m3039c.f71999a) {
                                    Objects.requireNonNull(abstractC25708b);
                                }
                                C25956g0.C25957a c25957a = new C25956g0.C25957a(c25972j12.f72600f);
                                Iterator it = arrayList3.iterator();
                                while (it.hasNext()) {
                                    c25957a.m2865c(((C25956g0) it.next()).f72573b);
                                }
                                ArrayList arrayList4 = new ArrayList();
                                Iterator it2 = arrayList2.iterator();
                                while (it2.hasNext()) {
                                    arrayList4.add(new C25806b((Surface) it2.next()));
                                }
                                C25725c2 c25725c2 = (C25725c2) c25852r1.f72303e.f72101a;
                                c25725c2.f72072f = c25743g2;
                                C25810g c25810g = new C25810g(0, arrayList4, c25725c2.f72070d, new C25730d2(c25725c2));
                                try {
                                    C25956g0 m2864d = c25957a.m2864d();
                                    if (cameraDevice2 != null) {
                                        CaptureRequest.Builder createCaptureRequest = cameraDevice2.createCaptureRequest(m2864d.f72574c);
                                        MediaSessionCompat.m43244e(createCaptureRequest, m2864d.f72573b);
                                        captureRequest = createCaptureRequest.build();
                                    }
                                    if (captureRequest != null) {
                                        c25810g.f72252a.mo2969g(captureRequest);
                                    }
                                    aVar = c25852r1.f72303e.f72101a.mo3009a(cameraDevice2, c25810g, c25852r1.f72309k);
                                } catch (CameraAccessException e) {
                                    aVar = new AbstractC26039h.a(e);
                                }
                            } else if (ordinal != 4) {
                                aVar = new AbstractC26039h.a(new CancellationException("openCaptureSession() not execute in state: " + c25852r1.f72310l));
                            }
                        }
                        aVar = new AbstractC26039h.a(new IllegalStateException("openCaptureSession() should not be possible in state: " + c25852r1.f72310l));
                    }
                    return aVar;
                }
            }, ((C25725c2) this.f72303e.f72101a).f72070d);
            C25854b c25854b = new C25854b();
            Executor executor = ((C25725c2) this.f72303e.f72101a).f72070d;
            m2784c.f72694a.addListener(new C26034g.RunnableC26038d(m2784c, c25854b), executor);
            return C26034g.m2780d(m2784c);
        }
    }

    /* renamed from: i */
    public void m2956i(C25972j1 c25972j1) {
        synchronized (this.f72299a) {
            switch (this.f72310l.ordinal()) {
                case 0:
                    throw new IllegalStateException("setSessionConfig() should not be possible in state: " + this.f72310l);
                case 1:
                case 2:
                case 3:
                    this.f72305g = c25972j1;
                    break;
                case 4:
                    this.f72305g = c25972j1;
                    if (this.f72308j.keySet().containsAll(c25972j1.m2842b())) {
                        C26103y0.m2724a("CaptureSession", "Attempting to submit CaptureRequest after setting", null);
                        m2959f();
                        break;
                    } else {
                        C26103y0.m2723b("CaptureSession", "Does not have the proper configured lists", null);
                        return;
                    }
                case 5:
                case 6:
                case 7:
                    throw new IllegalStateException("Session configuration cannot be set on a closed/released session.");
            }
        }
    }

    /* renamed from: j */
    public List<C25956g0> m2955j(List<C25956g0> list) {
        ArrayList arrayList = new ArrayList();
        for (C25956g0 c25956g0 : list) {
            HashSet hashSet = new HashSet();
            a1.x();
            ArrayList arrayList2 = new ArrayList();
            new ArrayMap();
            hashSet.addAll(c25956g0.f72572a);
            a1 y = a1.y(c25956g0.f72573b);
            arrayList2.addAll(c25956g0.f72575d);
            boolean z = c25956g0.f72576e;
            C25996o1 c25996o1 = c25956g0.f72577f;
            ArrayMap arrayMap = new ArrayMap();
            for (String str : c25996o1.f72648a.keySet()) {
                arrayMap.put(str, c25996o1.m2817a(str));
            }
            C25940b1 c25940b1 = new C25940b1(arrayMap);
            for (AbstractC25980k0 abstractC25980k0 : this.f72305g.f72600f.m2868a()) {
                hashSet.add(abstractC25980k0);
            }
            ArrayList arrayList3 = new ArrayList(hashSet);
            C25949d1 m2869w = C25949d1.m2869w(y);
            C25996o1 c25996o12 = C25996o1.f72647b;
            ArrayMap arrayMap2 = new ArrayMap();
            for (String str2 : c25940b1.f72648a.keySet()) {
                arrayMap2.put(str2, c25940b1.m2817a(str2));
            }
            arrayList.add(new C25956g0(arrayList3, m2869w, 1, arrayList2, z, new C25996o1(arrayMap2)));
        }
        return arrayList;
    }
}
