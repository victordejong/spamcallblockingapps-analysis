package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.AbstractC18851e;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.r */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/r.class */
public final class C19654r {

    /* renamed from: a */
    public static final C19655a f65764a = new C19655a(null);

    /* renamed from: b */
    final String f65765b;

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.r$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/r$a.class */
    public static final class C19655a {
        private C19655a() {
        }

        public /* synthetic */ C19655a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static C19654r m1858a(String name, String desc) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(desc, "desc");
            return new C19654r(C18524p.m3847a(name, (Object) desc), null);
        }

        /* renamed from: a */
        public static C19654r m1857a(AbstractC18813c nameResolver, C18827a.C18832b signature) {
            C18524p.m3840d(nameResolver, "nameResolver");
            C18524p.m3840d(signature, "signature");
            return m1858a(nameResolver.mo2927a(signature.f64355b), nameResolver.mo2927a(signature.f64356c));
        }

        /* renamed from: a */
        public static C19654r m1856a(AbstractC18851e signature) {
            C18524p.m3840d(signature, "signature");
            if (signature instanceof AbstractC18851e.C18853b) {
                return m1858a(signature.mo2931a(), signature.mo2930b());
            }
            if (!(signature instanceof AbstractC18851e.C18852a)) {
                throw new NoWhenBranchMatchedException();
            }
            return m1854b(signature.mo2931a(), signature.mo2930b());
        }

        /* renamed from: a */
        public static C19654r m1855a(C19654r signature, int i) {
            C18524p.m3840d(signature, "signature");
            return new C19654r(signature.f65765b + '@' + i, null);
        }

        /* renamed from: b */
        public static C19654r m1854b(String name, String desc) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(desc, "desc");
            return new C19654r(name + '#' + desc, null);
        }
    }

    private C19654r(String str) {
        this.f65765b = str;
    }

    public /* synthetic */ C19654r(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C19654r) && C18524p.m3850a((Object) this.f65765b, (Object) ((C19654r) obj).f65765b);
    }

    public final int hashCode() {
        return this.f65765b.hashCode();
    }

    public final String toString() {
        return "MemberSignature(signature=" + this.f65765b + ')';
    }
}
