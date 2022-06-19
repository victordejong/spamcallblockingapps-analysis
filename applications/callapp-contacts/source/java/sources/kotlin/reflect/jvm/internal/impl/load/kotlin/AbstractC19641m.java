package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19960r;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.m */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/m.class */
public interface AbstractC19641m extends AbstractC19960r {

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.m$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/m$a.class */
    public static abstract class AbstractC19642a {

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.m$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/m$a$a.class */
        public static final class C19643a extends AbstractC19642a {

            /* renamed from: a */
            public final byte[] f65756a;
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.m$a$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/m$a$b.class */
        public static final class C19644b extends AbstractC19642a {

            /* renamed from: a */
            final AbstractC19646o f65757a;

            /* renamed from: b */
            private final byte[] f65758b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C19644b(AbstractC19646o kotlinJvmBinaryClass, byte[] bArr) {
                super(null);
                C18524p.m3840d(kotlinJvmBinaryClass, "kotlinJvmBinaryClass");
                this.f65757a = kotlinJvmBinaryClass;
                this.f65758b = bArr;
            }

            public /* synthetic */ C19644b(AbstractC19646o abstractC19646o, byte[] bArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this(abstractC19646o, (i & 2) != 0 ? null : bArr);
            }
        }

        private AbstractC19642a() {
        }

        public /* synthetic */ AbstractC19642a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final AbstractC19646o m1881a() {
            C19644b c19644b = this instanceof C19644b ? (C19644b) this : null;
            if (c19644b == null) {
                return null;
            }
            return c19644b.f65757a;
        }
    }

    /* renamed from: a */
    AbstractC19642a mo1883a(C18960a c18960a);

    /* renamed from: a */
    AbstractC19642a mo1882a(AbstractC19398g abstractC19398g);
}
