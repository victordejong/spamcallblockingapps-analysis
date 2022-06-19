package p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o;

import android.hardware.camera2.params.InputConfiguration;
import java.util.Objects;
/* renamed from: n3.e.a.e.k2.o.a */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/o/a.class */
public final class C25803a {

    /* renamed from: a */
    public final AbstractC25805b f72242a;

    /* renamed from: n3.e.a.e.k2.o.a$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/o/a$a.class */
    public static final class C25804a implements AbstractC25805b {

        /* renamed from: a */
        public final InputConfiguration f72243a;

        public C25804a(Object obj) {
            this.f72243a = (InputConfiguration) obj;
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25803a.AbstractC25805b
        /* renamed from: a */
        public Object mo2984a() {
            return this.f72243a;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof AbstractC25805b)) {
                return false;
            }
            return Objects.equals(this.f72243a, ((AbstractC25805b) obj).mo2984a());
        }

        public int hashCode() {
            return this.f72243a.hashCode();
        }

        public String toString() {
            return this.f72243a.toString();
        }
    }

    /* renamed from: n3.e.a.e.k2.o.a$b */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/o/a$b.class */
    public interface AbstractC25805b {
        /* renamed from: a */
        Object mo2984a();
    }

    public C25803a(AbstractC25805b abstractC25805b) {
        this.f72242a = abstractC25805b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C25803a)) {
            return false;
        }
        return this.f72242a.equals(((C25803a) obj).f72242a);
    }

    public int hashCode() {
        return this.f72242a.hashCode();
    }

    public String toString() {
        return this.f72242a.toString();
    }
}
