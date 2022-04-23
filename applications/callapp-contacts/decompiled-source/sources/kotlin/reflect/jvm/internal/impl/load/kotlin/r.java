package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.b.c;
import kotlin.reflect.jvm.internal.impl.b.c.a;
import kotlin.reflect.jvm.internal.impl.b.c.a.e;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/r.class */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    public static final a f38094a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    final String f38095b;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/r$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static r a(String name, String desc) {
            p.d(name, "name");
            p.d(desc, "desc");
            return new r(p.a(name, (Object) desc), null);
        }

        public static r a(c nameResolver, a.b signature) {
            p.d(nameResolver, "nameResolver");
            p.d(signature, "signature");
            return a(nameResolver.a(signature.f37180b), nameResolver.a(signature.f37181c));
        }

        public static r a(e signature) {
            p.d(signature, "signature");
            if (signature instanceof e.b) {
                return a(signature.a(), signature.b());
            }
            if (signature instanceof e.a) {
                return b(signature.a(), signature.b());
            }
            throw new NoWhenBranchMatchedException();
        }

        public static r a(r signature, int i) {
            p.d(signature, "signature");
            return new r(signature.f38095b + '@' + i, null);
        }

        public static r b(String name, String desc) {
            p.d(name, "name");
            p.d(desc, "desc");
            return new r(name + '#' + desc, null);
        }
    }

    private r(String str) {
        this.f38095b = str;
    }

    public /* synthetic */ r(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof r) && p.a((Object) this.f38095b, (Object) ((r) obj).f38095b);
    }

    public final int hashCode() {
        return this.f38095b.hashCode();
    }

    public final String toString() {
        return "MemberSignature(signature=" + this.f38095b + ')';
    }
}
