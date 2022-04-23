package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.p;
import kotlin.n;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.b.g;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/i.class */
public interface i {

    /* renamed from: a  reason: collision with root package name */
    public static final a f38438a = a.f38439a;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/i$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f38439a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static final i f38440b = new C0720a();

        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.i$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/i$a$a.class */
        public static final class C0720a implements i {
            C0720a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.i
            public final n a(a.h proto, w ownerFunction, g typeTable, aa typeDeserializer) {
                p.d(proto, "proto");
                p.d(ownerFunction, "ownerFunction");
                p.d(typeTable, "typeTable");
                p.d(typeDeserializer, "typeDeserializer");
                return null;
            }
        }

        private a() {
        }

        public static i a() {
            return f38440b;
        }
    }

    n<a.AbstractC0668a<?>, Object> a(a.h hVar, w wVar, g gVar, aa aaVar);
}
