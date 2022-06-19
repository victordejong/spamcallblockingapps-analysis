package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.C18538n;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18818g;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.i */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/i.class */
public interface AbstractC19945i {

    /* renamed from: a */
    public static final C19946a f66246a = C19946a.f66247a;

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.i$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/i$a.class */
    public static final class C19946a {

        /* renamed from: a */
        static final /* synthetic */ C19946a f66247a = new C19946a();

        /* renamed from: b */
        private static final AbstractC19945i f66248b = new C19947a();

        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.i$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/i$a$a.class */
        public static final class C19947a implements AbstractC19945i {
            C19947a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19945i
            /* renamed from: a */
            public final C18538n mo1262a(C18702a.C18741h proto, AbstractC19219w ownerFunction, C18818g typeTable, C19868aa typeDeserializer) {
                C18524p.m3840d(proto, "proto");
                C18524p.m3840d(ownerFunction, "ownerFunction");
                C18524p.m3840d(typeTable, "typeTable");
                C18524p.m3840d(typeDeserializer, "typeDeserializer");
                return null;
            }
        }

        private C19946a() {
        }

        /* renamed from: a */
        public static AbstractC19945i m1263a() {
            return f66248b;
        }
    }

    /* renamed from: a */
    C18538n<AbstractC18973a.AbstractC18974a<?>, Object> mo1262a(C18702a.C18741h c18741h, AbstractC19219w abstractC19219w, C18818g c18818g, C19868aa c19868aa);
}
