package p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.SessionConfiguration;
import android.os.Build;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25803a;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25806b;
/* renamed from: n3.e.a.e.k2.o.g */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/o/g.class */
public final class C25810g {

    /* renamed from: a */
    public final AbstractC25813c f72252a;

    /* renamed from: n3.e.a.e.k2.o.g$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/o/g$a.class */
    public static final class C25811a implements AbstractC25813c {

        /* renamed from: a */
        public final SessionConfiguration f72253a;

        /* renamed from: b */
        public final List<C25806b> f72254b;

        public C25811a(int i, List<C25806b> list, Executor executor, CameraCaptureSession.StateCallback stateCallback) {
            C25806b c25806b;
            SessionConfiguration sessionConfiguration = new SessionConfiguration(i, C25810g.m2976f(list), executor, stateCallback);
            this.f72253a = sessionConfiguration;
            List<OutputConfiguration> outputConfigurations = sessionConfiguration.getOutputConfigurations();
            ArrayList arrayList = new ArrayList(outputConfigurations.size());
            for (OutputConfiguration outputConfiguration : outputConfigurations) {
                if (outputConfiguration == null) {
                    c25806b = null;
                } else {
                    int i2 = Build.VERSION.SDK_INT;
                    C25806b.AbstractC25807a eVar = i2 >= 28 ? new e(outputConfiguration) : i2 >= 26 ? new d(new Object(outputConfiguration) { // from class: n3.e.a.e.k2.o.d$a

                        /* renamed from: a */
                        public final OutputConfiguration f72246a;

                        {
                            this.f72246a = outputConfiguration;
                        }

                        public boolean equals(Object obj) {
                            if (!(obj instanceof d$a)) {
                                return false;
                            }
                            boolean z = false;
                            if (Objects.equals(this.f72246a, ((d$a) obj).f72246a)) {
                                z = false;
                                if (Objects.equals(null, null)) {
                                    z = true;
                                }
                            }
                            return z;
                        }

                        public int hashCode() {
                            int hashCode = this.f72246a.hashCode() ^ 31;
                            return ((hashCode << 5) - hashCode) ^ 0;
                        }
                    }) : i2 >= 24 ? new c(new Object(outputConfiguration) { // from class: n3.e.a.e.k2.o.c$a

                        /* renamed from: a */
                        public final OutputConfiguration f72245a;

                        {
                            this.f72245a = outputConfiguration;
                        }

                        public boolean equals(Object obj) {
                            if (!(obj instanceof c$a)) {
                                return false;
                            }
                            boolean z = false;
                            if (Objects.equals(this.f72245a, ((c$a) obj).f72245a)) {
                                z = false;
                                if (Objects.equals(null, null)) {
                                    z = true;
                                }
                            }
                            return z;
                        }

                        public int hashCode() {
                            int hashCode = this.f72245a.hashCode() ^ 31;
                            int i3 = ((hashCode << 5) - hashCode) ^ 0;
                            return ((i3 << 5) - i3) ^ 0;
                        }
                    }) : null;
                    c25806b = eVar == null ? null : new C25806b(eVar);
                }
                arrayList.add(c25806b);
            }
            this.f72254b = Collections.unmodifiableList(arrayList);
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25810g.AbstractC25813c
        /* renamed from: a */
        public C25803a mo2975a() {
            InputConfiguration inputConfiguration = this.f72253a.getInputConfiguration();
            return inputConfiguration == null ? null : new C25803a(new C25803a.C25804a(inputConfiguration));
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25810g.AbstractC25813c
        /* renamed from: b */
        public CameraCaptureSession.StateCallback mo2974b() {
            return this.f72253a.getStateCallback();
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25810g.AbstractC25813c
        /* renamed from: c */
        public List<C25806b> mo2973c() {
            return this.f72254b;
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25810g.AbstractC25813c
        /* renamed from: d */
        public Object mo2972d() {
            return this.f72253a;
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25810g.AbstractC25813c
        /* renamed from: e */
        public Executor mo2971e() {
            return this.f72253a.getExecutor();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C25811a)) {
                return false;
            }
            return Objects.equals(this.f72253a, ((C25811a) obj).f72253a);
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25810g.AbstractC25813c
        /* renamed from: f */
        public int mo2970f() {
            return this.f72253a.getSessionType();
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25810g.AbstractC25813c
        /* renamed from: g */
        public void mo2969g(CaptureRequest captureRequest) {
            this.f72253a.setSessionParameters(captureRequest);
        }

        public int hashCode() {
            return this.f72253a.hashCode();
        }
    }

    /* renamed from: n3.e.a.e.k2.o.g$b */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/o/g$b.class */
    public static final class C25812b implements AbstractC25813c {

        /* renamed from: a */
        public final List<C25806b> f72255a;

        /* renamed from: b */
        public final CameraCaptureSession.StateCallback f72256b;

        /* renamed from: c */
        public final Executor f72257c;

        /* renamed from: d */
        public int f72258d;

        public C25812b(int i, List<C25806b> list, Executor executor, CameraCaptureSession.StateCallback stateCallback) {
            this.f72258d = i;
            this.f72255a = Collections.unmodifiableList(new ArrayList(list));
            this.f72256b = stateCallback;
            this.f72257c = executor;
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25810g.AbstractC25813c
        /* renamed from: a */
        public C25803a mo2975a() {
            return null;
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25810g.AbstractC25813c
        /* renamed from: b */
        public CameraCaptureSession.StateCallback mo2974b() {
            return this.f72256b;
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25810g.AbstractC25813c
        /* renamed from: c */
        public List<C25806b> mo2973c() {
            return this.f72255a;
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25810g.AbstractC25813c
        /* renamed from: d */
        public Object mo2972d() {
            return null;
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25810g.AbstractC25813c
        /* renamed from: e */
        public Executor mo2971e() {
            return this.f72257c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C25812b)) {
                return false;
            }
            C25812b c25812b = (C25812b) obj;
            Objects.requireNonNull(c25812b);
            if (!Objects.equals(null, null) || this.f72258d != c25812b.f72258d || this.f72255a.size() != c25812b.f72255a.size()) {
                return false;
            }
            for (int i = 0; i < this.f72255a.size(); i++) {
                if (!this.f72255a.get(i).equals(c25812b.f72255a.get(i))) {
                    return false;
                }
            }
            return true;
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25810g.AbstractC25813c
        /* renamed from: f */
        public int mo2970f() {
            return this.f72258d;
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25810g.AbstractC25813c
        /* renamed from: g */
        public void mo2969g(CaptureRequest captureRequest) {
        }

        public int hashCode() {
            int hashCode = this.f72255a.hashCode() ^ 31;
            int i = ((hashCode << 5) - hashCode) ^ 0;
            return this.f72258d ^ ((i << 5) - i);
        }
    }

    /* renamed from: n3.e.a.e.k2.o.g$c */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/o/g$c.class */
    public interface AbstractC25813c {
        /* renamed from: a */
        C25803a mo2975a();

        /* renamed from: b */
        CameraCaptureSession.StateCallback mo2974b();

        /* renamed from: c */
        List<C25806b> mo2973c();

        /* renamed from: d */
        Object mo2972d();

        /* renamed from: e */
        Executor mo2971e();

        /* renamed from: f */
        int mo2970f();

        /* renamed from: g */
        void mo2969g(CaptureRequest captureRequest);
    }

    public C25810g(int i, List<C25806b> list, Executor executor, CameraCaptureSession.StateCallback stateCallback) {
        if (Build.VERSION.SDK_INT < 28) {
            this.f72252a = new C25812b(i, list, executor, stateCallback);
        } else {
            this.f72252a = new C25811a(i, list, executor, stateCallback);
        }
    }

    /* renamed from: f */
    public static List<OutputConfiguration> m2976f(List<C25806b> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (C25806b c25806b : list) {
            arrayList.add((OutputConfiguration) c25806b.f72244a.mo2982b());
        }
        return arrayList;
    }

    /* renamed from: a */
    public Executor m2981a() {
        return this.f72252a.mo2971e();
    }

    /* renamed from: b */
    public C25803a m2980b() {
        return this.f72252a.mo2975a();
    }

    /* renamed from: c */
    public List<C25806b> m2979c() {
        return this.f72252a.mo2973c();
    }

    /* renamed from: d */
    public int m2978d() {
        return this.f72252a.mo2970f();
    }

    /* renamed from: e */
    public CameraCaptureSession.StateCallback m2977e() {
        return this.f72252a.mo2974b();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C25810g)) {
            return false;
        }
        return this.f72252a.equals(((C25810g) obj).f72252a);
    }

    public int hashCode() {
        return this.f72252a.hashCode();
    }
}
