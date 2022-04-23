package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.load.java.d.g;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.r;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/m.class */
public interface m extends r {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/m$a.class */
    public static abstract class a {

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.m$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/m$a$a.class */
        public static final class C0700a extends a {

            /* renamed from: a  reason: collision with root package name */
            public final byte[] f38087a;
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/m$a$b.class */
        public static final class b extends a {

            /* renamed from: a  reason: collision with root package name */
            final o f38088a;

            /* renamed from: b  reason: collision with root package name */
            private final byte[] f38089b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(o kotlinJvmBinaryClass, byte[] bArr) {
                super(null);
                p.d(kotlinJvmBinaryClass, "kotlinJvmBinaryClass");
                this.f38088a = kotlinJvmBinaryClass;
                this.f38089b = bArr;
            }

            public /* synthetic */ b(o oVar, byte[] bArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this(oVar, (i & 2) != 0 ? null : bArr);
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final o a() {
            b bVar = this instanceof b ? (b) this : null;
            if (bVar == null) {
                return null;
            }
            return bVar.f38088a;
        }
    }

    a a(kotlin.reflect.jvm.internal.impl.c.a aVar);

    a a(g gVar);
}
