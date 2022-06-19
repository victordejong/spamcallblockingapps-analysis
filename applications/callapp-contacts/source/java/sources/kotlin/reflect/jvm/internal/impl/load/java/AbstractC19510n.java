package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Arrays;
import java.util.Set;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19411t;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.n */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/n.class */
public interface AbstractC19510n {

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.n$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/n$a.class */
    public static final class C19511a {

        /* renamed from: a */
        public final C18960a f65496a;

        /* renamed from: b */
        private final byte[] f65497b;

        /* renamed from: c */
        private final AbstractC19398g f65498c;

        public C19511a(C18960a classId, byte[] bArr, AbstractC19398g abstractC19398g) {
            C18524p.m3840d(classId, "classId");
            this.f65496a = classId;
            this.f65497b = bArr;
            this.f65498c = abstractC19398g;
        }

        public /* synthetic */ C19511a(C18960a c18960a, byte[] bArr, AbstractC19398g abstractC19398g, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(c18960a, (i & 2) != 0 ? null : bArr, (i & 4) != 0 ? null : abstractC19398g);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C19511a)) {
                return false;
            }
            C19511a c19511a = (C19511a) obj;
            return C18524p.m3850a(this.f65496a, c19511a.f65496a) && C18524p.m3850a(this.f65497b, c19511a.f65497b) && C18524p.m3850a(this.f65498c, c19511a.f65498c);
        }

        public final int hashCode() {
            int hashCode = this.f65496a.hashCode();
            byte[] bArr = this.f65497b;
            int i = 0;
            int hashCode2 = bArr == null ? 0 : Arrays.hashCode(bArr);
            AbstractC19398g abstractC19398g = this.f65498c;
            if (abstractC19398g != null) {
                i = abstractC19398g.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }

        public final String toString() {
            return "Request(classId=" + this.f65496a + ", previouslyFoundClassFileContent=" + Arrays.toString(this.f65497b) + ", outerClass=" + this.f65498c + ')';
        }
    }

    /* renamed from: a */
    AbstractC19398g mo2062a(C19511a c19511a);

    /* renamed from: a */
    AbstractC19411t mo2063a(C18961b c18961b);

    /* renamed from: b */
    Set<String> mo2061b(C18961b c18961b);
}
