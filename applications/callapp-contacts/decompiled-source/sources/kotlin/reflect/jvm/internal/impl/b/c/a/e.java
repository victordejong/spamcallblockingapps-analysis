package kotlin.reflect.jvm.internal.impl.b.c.a;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a/e.class */
public abstract class e {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a/e$a.class */
    public static final class a extends e {

        /* renamed from: a  reason: collision with root package name */
        public final String f37216a;

        /* renamed from: b  reason: collision with root package name */
        public final String f37217b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String name, String desc) {
            super(null);
            p.d(name, "name");
            p.d(desc, "desc");
            this.f37216a = name;
            this.f37217b = desc;
        }

        @Override // kotlin.reflect.jvm.internal.impl.b.c.a.e
        public final String a() {
            return this.f37216a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.b.c.a.e
        public final String b() {
            return this.f37217b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.b.c.a.e
        public final String c() {
            return this.f37216a + ':' + this.f37217b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return p.a((Object) this.f37216a, (Object) aVar.f37216a) && p.a((Object) this.f37217b, (Object) aVar.f37217b);
        }

        public final int hashCode() {
            return (this.f37216a.hashCode() * 31) + this.f37217b.hashCode();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a/e$b.class */
    public static final class b extends e {

        /* renamed from: a  reason: collision with root package name */
        public final String f37218a;

        /* renamed from: b  reason: collision with root package name */
        public final String f37219b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String name, String desc) {
            super(null);
            p.d(name, "name");
            p.d(desc, "desc");
            this.f37218a = name;
            this.f37219b = desc;
        }

        @Override // kotlin.reflect.jvm.internal.impl.b.c.a.e
        public final String a() {
            return this.f37218a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.b.c.a.e
        public final String b() {
            return this.f37219b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.b.c.a.e
        public final String c() {
            return p.a(this.f37218a, (Object) this.f37219b);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return p.a((Object) this.f37218a, (Object) bVar.f37218a) && p.a((Object) this.f37219b, (Object) bVar.f37219b);
        }

        public final int hashCode() {
            return (this.f37218a.hashCode() * 31) + this.f37219b.hashCode();
        }
    }

    private e() {
    }

    public /* synthetic */ e(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract String a();

    public abstract String b();

    public abstract String c();

    public final String toString() {
        return c();
    }
}
