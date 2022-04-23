package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Arrays;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.load.java.d.g;
import kotlin.reflect.jvm.internal.impl.load.java.d.t;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/n.class */
public interface n {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/n$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final kotlin.reflect.jvm.internal.impl.c.a f37896a;

        /* renamed from: b  reason: collision with root package name */
        private final byte[] f37897b;

        /* renamed from: c  reason: collision with root package name */
        private final g f37898c;

        public a(kotlin.reflect.jvm.internal.impl.c.a classId, byte[] bArr, g gVar) {
            p.d(classId, "classId");
            this.f37896a = classId;
            this.f37897b = bArr;
            this.f37898c = gVar;
        }

        public /* synthetic */ a(kotlin.reflect.jvm.internal.impl.c.a aVar, byte[] bArr, g gVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(aVar, (i & 2) != 0 ? null : bArr, (i & 4) != 0 ? null : gVar);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return p.a(this.f37896a, aVar.f37896a) && p.a(this.f37897b, aVar.f37897b) && p.a(this.f37898c, aVar.f37898c);
        }

        public final int hashCode() {
            int hashCode = this.f37896a.hashCode();
            byte[] bArr = this.f37897b;
            int i = 0;
            int hashCode2 = bArr == null ? 0 : Arrays.hashCode(bArr);
            g gVar = this.f37898c;
            if (gVar != null) {
                i = gVar.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }

        public final String toString() {
            return "Request(classId=" + this.f37896a + ", previouslyFoundClassFileContent=" + Arrays.toString(this.f37897b) + ", outerClass=" + this.f37898c + ')';
        }
    }

    g a(a aVar);

    t a(b bVar);

    Set<String> b(b bVar);
}
