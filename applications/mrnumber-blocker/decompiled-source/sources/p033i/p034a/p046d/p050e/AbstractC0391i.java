package p033i.p034a.p046d.p050e;

import java.util.Objects;
import p033i.p034a.p035a.p037g.C0305b;
import p033i.p034a.p035a.p037g.C0306c;
import p033i.p034a.p046d.p050e.p052b0.AbstractC0371c;
import p033i.p034a.p046d.p050e.p052b0.EnumC0372d;
import p033i.p034a.p046d.p050e.p052b0.EnumC0373e;
/* renamed from: i.a.d.e.i */
/* loaded from: classes2-dex2jar.jar:i/a/d/e/i.class */
abstract class AbstractC0391i {

    /* renamed from: a */
    private final AbstractC0371c f915a;

    /* renamed from: i.a.d.e.i$a */
    /* loaded from: classes2-dex2jar.jar:i/a/d/e/i$a.class */
    static abstract class AbstractC0392a<B extends AbstractC0392a<?>> {

        /* renamed from: a */
        private final String f916a;

        /* renamed from: b */
        private final EnumC0372d f917b;

        /* renamed from: c */
        private final EnumC0373e f918c;

        /* renamed from: d */
        private String f919d = "";

        /* renamed from: e */
        private String f920e = "1";

        AbstractC0392a(String str, EnumC0372d dVar, EnumC0373e eVar) {
            Objects.requireNonNull(str, "name");
            C0306c.m436a(C0305b.m437c(str), "Name should be a ASCII string with a length no greater than 255 characters.");
            this.f916a = str;
            this.f917b = dVar;
            this.f918c = eVar;
        }

        /* renamed from: e */
        final AbstractC0371c m260e() {
            return AbstractC0371c.m305a(this.f916a, this.f919d, this.f920e, this.f917b, this.f918c);
        }

        /* renamed from: f */
        abstract B m259f();

        /* renamed from: g */
        public final B m258g(String str) {
            Objects.requireNonNull(str, "description");
            this.f919d = str;
            return m259f();
        }

        /* renamed from: h */
        public final B m257h(String str) {
            Objects.requireNonNull(str, "unit");
            this.f920e = str;
            return m259f();
        }
    }

    AbstractC0391i(AbstractC0371c cVar) {
        this.f915a = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final AbstractC0371c m261b() {
        return this.f915a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbstractC0391i)) {
            return false;
        }
        return this.f915a.equals(((AbstractC0391i) obj).f915a);
    }

    public int hashCode() {
        return this.f915a.hashCode();
    }
}
