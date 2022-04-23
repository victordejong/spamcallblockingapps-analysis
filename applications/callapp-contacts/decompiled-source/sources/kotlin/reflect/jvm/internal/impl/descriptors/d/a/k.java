package kotlin.reflect.jvm.internal.impl.descriptors.d.a;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.au;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.n;
import kotlin.reflect.jvm.internal.impl.load.java.c.b;
import kotlin.reflect.jvm.internal.impl.load.java.d.l;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/k.class */
public final class k implements b {

    /* renamed from: a  reason: collision with root package name */
    public static final k f37446a = new k();

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/k$a.class */
    public static final class a implements kotlin.reflect.jvm.internal.impl.load.java.c.a {

        /* renamed from: b  reason: collision with root package name */
        public final n f37447b;

        public a(n javaElement) {
            p.d(javaElement, "javaElement");
            this.f37447b = javaElement;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.at
        public final au a() {
            au NO_SOURCE_FILE = au.f37402a;
            p.b(NO_SOURCE_FILE, "NO_SOURCE_FILE");
            return NO_SOURCE_FILE;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.c.a
        public final /* bridge */ /* synthetic */ l b() {
            return this.f37447b;
        }

        public final String toString() {
            return getClass().getName() + ": " + this.f37447b;
        }
    }

    private k() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.c.b
    public final kotlin.reflect.jvm.internal.impl.load.java.c.a a(l javaElement) {
        p.d(javaElement, "javaElement");
        return new a((n) javaElement);
    }
}
