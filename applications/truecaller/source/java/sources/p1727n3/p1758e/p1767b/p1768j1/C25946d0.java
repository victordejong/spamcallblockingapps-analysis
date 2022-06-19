package p1727n3.p1758e.p1767b.p1768j1;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import p1727n3.p1758e.p1767b.AbstractC25926h0;
import p1727n3.p1758e.p1767b.C26103y0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25938b0;
/* renamed from: n3.e.b.j1.d0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/d0.class */
public final class C25946d0 {

    /* renamed from: c */
    public final int f72553c;

    /* renamed from: e */
    public int f72555e;

    /* renamed from: a */
    public final StringBuilder f72551a = new StringBuilder();

    /* renamed from: b */
    public final Object f72552b = new Object();

    /* renamed from: d */
    public final Map<AbstractC25926h0, C25947a> f72554d = new HashMap();

    /* renamed from: n3.e.b.j1.d0$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/d0$a.class */
    public static class C25947a {

        /* renamed from: a */
        public AbstractC25938b0.EnumC25939a f72556a = null;

        /* renamed from: b */
        public final Executor f72557b;

        /* renamed from: c */
        public final AbstractC25948b f72558c;

        public C25947a(AbstractC25938b0.EnumC25939a enumC25939a, Executor executor, AbstractC25948b abstractC25948b) {
            this.f72557b = executor;
            this.f72558c = abstractC25948b;
        }
    }

    /* renamed from: n3.e.b.j1.d0$b */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/d0$b.class */
    public interface AbstractC25948b {
    }

    public C25946d0(int i) {
        this.f72553c = i;
        synchronized ("mLock") {
            try {
                this.f72555e = i;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static boolean m2871a(AbstractC25938b0.EnumC25939a enumC25939a) {
        return enumC25939a != null && enumC25939a.f72542a;
    }

    /* renamed from: b */
    public final void m2870b() {
        if (C26103y0.m2722c("CameraStateRegistry")) {
            this.f72551a.setLength(0);
            this.f72551a.append("Recalculating open cameras:\n");
            this.f72551a.append(String.format(Locale.US, "%-45s%-22s\n", "Camera", "State"));
            this.f72551a.append("-------------------------------------------------------------------\n");
        }
        int i = 0;
        for (Map.Entry<AbstractC25926h0, C25947a> entry : this.f72554d.entrySet()) {
            if (C26103y0.m2722c("CameraStateRegistry")) {
                this.f72551a.append(String.format(Locale.US, "%-45s%-22s\n", entry.getKey().toString(), entry.getValue().f72556a != null ? entry.getValue().f72556a.toString() : "UNKNOWN"));
            }
            if (m2871a(entry.getValue().f72556a)) {
                i++;
            }
        }
        if (C26103y0.m2722c("CameraStateRegistry")) {
            this.f72551a.append("-------------------------------------------------------------------\n");
            this.f72551a.append(String.format(Locale.US, "Open count: %d (Max allowed: %d)", Integer.valueOf(i), Integer.valueOf(this.f72553c)));
            C26103y0.m2724a("CameraStateRegistry", this.f72551a.toString(), null);
        }
        this.f72555e = Math.max(this.f72553c - i, 0);
    }
}
