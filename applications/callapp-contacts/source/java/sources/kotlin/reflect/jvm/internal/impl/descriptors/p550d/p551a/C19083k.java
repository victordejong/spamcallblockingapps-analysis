package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19028au;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19112n;
import kotlin.reflect.jvm.internal.impl.load.java.p560c.AbstractC19385a;
import kotlin.reflect.jvm.internal.impl.load.java.p560c.AbstractC19386b;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19403l;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.a.k */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/k.class */
public final class C19083k implements AbstractC19386b {

    /* renamed from: a */
    public static final C19083k f64804a = new C19083k();

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.a.k$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/k$a.class */
    public static final class C19084a implements AbstractC19385a {

        /* renamed from: b */
        public final AbstractC19112n f64805b;

        public C19084a(AbstractC19112n javaElement) {
            C18524p.m3840d(javaElement, "javaElement");
            this.f64805b = javaElement;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at
        /* renamed from: a */
        public final AbstractC19028au mo1859a() {
            AbstractC19028au NO_SOURCE_FILE = AbstractC19028au.f64760a;
            C18524p.m3843b(NO_SOURCE_FILE, "NO_SOURCE_FILE");
            return NO_SOURCE_FILE;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.p560c.AbstractC19385a
        /* renamed from: b */
        public final /* bridge */ /* synthetic */ AbstractC19403l mo2237b() {
            return this.f64805b;
        }

        public final String toString() {
            return getClass().getName() + ": " + this.f64805b;
        }
    }

    private C19083k() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p560c.AbstractC19386b
    /* renamed from: a */
    public final AbstractC19385a mo2236a(AbstractC19403l javaElement) {
        C18524p.m3840d(javaElement, "javaElement");
        return new C19084a((AbstractC19112n) javaElement);
    }
}
