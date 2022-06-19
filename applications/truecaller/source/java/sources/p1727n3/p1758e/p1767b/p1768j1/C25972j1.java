package p1727n3.p1758e.p1767b.p1768j1;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.util.ArrayMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p1727n3.p1758e.p1767b.C26103y0;
import p1727n3.p1758e.p1767b.p1768j1.C25956g0;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.b.j1.j1 */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/j1.class */
public final class C25972j1 {

    /* renamed from: a */
    public final List<AbstractC25980k0> f72595a;

    /* renamed from: b */
    public final List<CameraDevice.StateCallback> f72596b;

    /* renamed from: c */
    public final List<CameraCaptureSession.StateCallback> f72597c;

    /* renamed from: d */
    public final List<AbstractC26002q> f72598d;

    /* renamed from: e */
    public final List<AbstractC25975c> f72599e;

    /* renamed from: f */
    public final C25956g0 f72600f;

    /* renamed from: n3.e.b.j1.j1$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/j1$a.class */
    public static class C25973a {

        /* renamed from: a */
        public final Set<AbstractC25980k0> f72601a = new HashSet();

        /* renamed from: b */
        public final C25956g0.C25957a f72602b = new C25956g0.C25957a();

        /* renamed from: c */
        public final List<CameraDevice.StateCallback> f72603c = new ArrayList();

        /* renamed from: d */
        public final List<CameraCaptureSession.StateCallback> f72604d = new ArrayList();

        /* renamed from: e */
        public final List<AbstractC25975c> f72605e = new ArrayList();

        /* renamed from: f */
        public final List<AbstractC26002q> f72606f = new ArrayList();
    }

    /* renamed from: n3.e.b.j1.j1$b */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/j1$b.class */
    public static class C25974b extends C25973a {
        /* renamed from: e */
        public static C25974b m2837e(r1<?> r1Var) {
            AbstractC25976d v = r1Var.v((AbstractC25976d) null);
            if (v != null) {
                C25974b c25974b = new C25974b();
                v.mo2836a(r1Var, c25974b);
                return c25974b;
            }
            StringBuilder m8728C = C22128a.m8728C("Implementation is missing option unpacker for ");
            m8728C.append(r1Var.k(r1Var.toString()));
            throw new IllegalStateException(m8728C.toString());
        }

        /* renamed from: a */
        public void m2841a(AbstractC26002q abstractC26002q) {
            this.f72602b.m2866b(abstractC26002q);
            this.f72606f.add(abstractC26002q);
        }

        /* renamed from: b */
        public void m2840b(CameraDevice.StateCallback stateCallback) {
            if (!this.f72603c.contains(stateCallback)) {
                this.f72603c.add(stateCallback);
                return;
            }
            throw new IllegalArgumentException("Duplicate device state callback.");
        }

        /* renamed from: c */
        public void m2839c(CameraCaptureSession.StateCallback stateCallback) {
            if (!this.f72604d.contains(stateCallback)) {
                this.f72604d.add(stateCallback);
                return;
            }
            throw new IllegalArgumentException("Duplicate session state callback.");
        }

        /* renamed from: d */
        public C25972j1 m2838d() {
            return new C25972j1(new ArrayList(this.f72601a), this.f72603c, this.f72604d, this.f72606f, this.f72605e, this.f72602b.m2864d());
        }
    }

    /* renamed from: n3.e.b.j1.j1$c */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/j1$c.class */
    public interface AbstractC25975c {
        /* renamed from: a */
        void mo2736a(C25972j1 c25972j1, EnumC25977e enumC25977e);
    }

    /* renamed from: n3.e.b.j1.j1$d */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/j1$d.class */
    public interface AbstractC25976d {
        /* renamed from: a */
        void mo2836a(r1<?> r1Var, C25974b c25974b);
    }

    /* renamed from: n3.e.b.j1.j1$e */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/j1$e.class */
    public enum EnumC25977e {
        SESSION_ERROR_SURFACE_NEEDS_RESET,
        SESSION_ERROR_UNKNOWN
    }

    /* renamed from: n3.e.b.j1.j1$f */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/j1$f.class */
    public static final class C25978f extends C25973a {

        /* renamed from: g */
        public boolean f72610g = true;

        /* renamed from: h */
        public boolean f72611h = false;

        /* renamed from: a */
        public void m2835a(C25972j1 c25972j1) {
            Map<String, Integer> map;
            C25956g0 c25956g0 = c25972j1.f72600f;
            int i = c25956g0.f72574c;
            if (i != -1) {
                if (!this.f72611h) {
                    this.f72602b.f72580c = i;
                    this.f72611h = true;
                } else if (this.f72602b.f72580c != i) {
                    StringBuilder m8728C = C22128a.m8728C("Invalid configuration due to template type: ");
                    m8728C.append(this.f72602b.f72580c);
                    m8728C.append(" != ");
                    m8728C.append(c25956g0.f72574c);
                    C26103y0.m2724a("ValidatingBuilder", m8728C.toString(), null);
                    this.f72610g = false;
                }
            }
            C25996o1 c25996o1 = c25972j1.f72600f.f72577f;
            Map<String, Integer> map2 = this.f72602b.f72583f.f72648a;
            if (map2 != null && (map = c25996o1.f72648a) != null) {
                map2.putAll(map);
            }
            this.f72603c.addAll(c25972j1.f72596b);
            this.f72604d.addAll(c25972j1.f72597c);
            this.f72602b.m2867a(c25972j1.f72600f.f72575d);
            this.f72606f.addAll(c25972j1.f72598d);
            this.f72605e.addAll(c25972j1.f72599e);
            this.f72601a.addAll(c25972j1.m2842b());
            this.f72602b.f72578a.addAll(c25956g0.m2868a());
            if (!this.f72601a.containsAll(this.f72602b.f72578a)) {
                C26103y0.m2724a("ValidatingBuilder", "Invalid configuration due to capture request surfaces are not a subset of surfaces", null);
                this.f72610g = false;
            }
            this.f72602b.m2865c(c25956g0.f72573b);
        }

        /* renamed from: b */
        public C25972j1 m2834b() {
            if (this.f72610g) {
                return new C25972j1(new ArrayList(this.f72601a), this.f72603c, this.f72604d, this.f72606f, this.f72605e, this.f72602b.m2864d());
            }
            throw new IllegalArgumentException("Unsupported session configuration combination");
        }
    }

    public C25972j1(List<AbstractC25980k0> list, List<CameraDevice.StateCallback> list2, List<CameraCaptureSession.StateCallback> list3, List<AbstractC26002q> list4, List<AbstractC25975c> list5, C25956g0 c25956g0) {
        this.f72595a = list;
        this.f72596b = Collections.unmodifiableList(list2);
        this.f72597c = Collections.unmodifiableList(list3);
        this.f72598d = Collections.unmodifiableList(list4);
        this.f72599e = Collections.unmodifiableList(list5);
        this.f72600f = c25956g0;
    }

    /* renamed from: a */
    public static C25972j1 m2843a() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(0);
        ArrayList arrayList3 = new ArrayList(0);
        ArrayList arrayList4 = new ArrayList(0);
        ArrayList arrayList5 = new ArrayList(0);
        HashSet hashSet = new HashSet();
        a1 x = a1.x();
        ArrayList arrayList6 = new ArrayList();
        C25940b1 c25940b1 = new C25940b1(new ArrayMap());
        ArrayList arrayList7 = new ArrayList(hashSet);
        C25949d1 m2869w = C25949d1.m2869w(x);
        C25996o1 c25996o1 = C25996o1.f72647b;
        ArrayMap arrayMap = new ArrayMap();
        for (String str : c25940b1.f72648a.keySet()) {
            arrayMap.put(str, c25940b1.m2817a(str));
        }
        return new C25972j1(arrayList, arrayList2, arrayList3, arrayList4, arrayList5, new C25956g0(arrayList7, m2869w, -1, arrayList6, false, new C25996o1(arrayMap)));
    }

    /* renamed from: b */
    public List<AbstractC25980k0> m2842b() {
        return Collections.unmodifiableList(this.f72595a);
    }
}
