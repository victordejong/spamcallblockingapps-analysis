package kotlinx.serialization;

import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.a.ac;
import kotlin.a.ai;
import kotlin.a.i;
import kotlin.a.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ag;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.c;
import kotlin.v;
import kotlinx.serialization.a.e;
import kotlinx.serialization.h;
import kotlinx.serialization.u;
@Metadata(bv = {1, 0, 3}, d1 = {"��H\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018��*\b\b��\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003BG\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0007\u0012\u0014\u0010\b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028��0\u00070\t\u0012\u0014\u0010\n\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028��0\u000b0\t¢\u0006\u0002\u0010\fJ \u0010\u0016\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u000b2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0005H\u0016J%\u0010\u0016\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u000b2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u001dR\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0007X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR*\u0010\u000f\u001a\u001e\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028��0\u0007\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028��0\u000b0\u0010X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0011\u001a\u00020\u0012X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0014R\"\u0010\u0015\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028��0\u000b0\u0010X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001e"}, d2 = {"Lkotlinx/serialization/SealedClassSerializer;", "T", "", "Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;", "serialName", "", "baseClass", "Lkotlin/reflect/KClass;", "subclasses", "", "subclassSerializers", "Lkotlinx/serialization/KSerializer;", "(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V", "getBaseClass", "()Lkotlin/reflect/KClass;", "class2Serializer", "", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "serialName2Serializer", "findPolymorphicSerializer", "decoder", "Lkotlinx/serialization/CompositeDecoder;", "klassName", "encoder", "Lkotlinx/serialization/Encoder;", "value", "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/k.class */
public final class k<T> extends kotlinx.serialization.b.b<T> {

    /* renamed from: a  reason: collision with root package name */
    final c<T> f38991a;

    /* renamed from: b  reason: collision with root package name */
    private final SerialDescriptor f38992b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<c<? extends T>, KSerializer<? extends T>> f38993c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, KSerializer<? extends T>> f38994d;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\u0010(\n��*\u0001��\b\n\u0018��2\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0001J\u0015\u0010\u0002\u001a\u00028\u00012\u0006\u0010\u0003\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006H\u0016¨\u0006\u0007¸\u0006��"}, d2 = {"kotlin/collections/CollectionsKt___CollectionsKt$groupingBy$1", "Lkotlin/collections/Grouping;", "keyOf", "element", "(Ljava/lang/Object;)Ljava/lang/Object;", "sourceIterator", "", "kotlin-stdlib"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/k$a.class */
    public static final class a implements ac<Map.Entry<? extends c<? extends T>, ? extends KSerializer<? extends T>>, String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Iterable f38995a;

        public a(Iterable iterable) {
            this.f38995a = iterable;
        }

        @Override // kotlin.a.ac
        public final String a(Map.Entry<? extends c<? extends T>, ? extends KSerializer<? extends T>> entry) {
            return ((KSerializer) entry.getValue()).getDescriptor().a();
        }

        @Override // kotlin.a.ac
        public final Iterator<Map.Entry<? extends c<? extends T>, ? extends KSerializer<? extends T>>> a() {
            return this.f38995a.iterator();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "T", "", "Lkotlinx/serialization/SerialDescriptorBuilder;", "invoke"}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/k$b.class */
    static final class b extends r implements Function1<l, v> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ KSerializer[] f38997b;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "T", "", "Lkotlinx/serialization/SerialDescriptorBuilder;", "invoke"}, k = 3, mv = {1, 1, 16})
        /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/k$b$a.class */
        static final class a extends r implements Function1<l, v> {
            a() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ v invoke(l lVar) {
                l receiver = lVar;
                p.c(receiver, "$receiver");
                for (KSerializer kSerializer : b.this.f38997b) {
                    SerialDescriptor descriptor = kSerializer.getDescriptor();
                    receiver.a(descriptor.a(), descriptor, z.f36608a, false);
                }
                return v.f38654a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(KSerializer[] kSerializerArr) {
            super(1);
            this.f38997b = kSerializerArr;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(l lVar) {
            l receiver = lVar;
            p.c(receiver, "$receiver");
            receiver.a("type", e.a(ag.f36785a).getDescriptor(), z.f36608a, false);
            receiver.a("value", m.a("kotlinx.serialization.Sealed<" + k.this.f38991a.an_() + '>', u.a.f39025b, new a()), z.f36608a, false);
            return v.f38654a;
        }
    }

    public k(String serialName, c<T> baseClass, c<? extends T>[] subclasses, KSerializer<? extends T>[] subclassSerializers) {
        p.c(serialName, "serialName");
        p.c(baseClass, "baseClass");
        p.c(subclasses, "subclasses");
        p.c(subclassSerializers, "subclassSerializers");
        this.f38991a = baseClass;
        this.f38992b = m.a(serialName, h.b.f38978a, new b(subclassSerializers));
        if (subclasses.length == subclassSerializers.length) {
            Map<c<? extends T>, KSerializer<? extends T>> a2 = ai.a(i.a((Object[]) subclasses, (Object[]) subclassSerializers));
            this.f38993c = a2;
            ac aVar = new a(a2.entrySet());
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator<T> a3 = aVar.a();
            while (a3.hasNext()) {
                T next = a3.next();
                Object a4 = aVar.a(next);
                Object obj = linkedHashMap.get(a4);
                if (obj == null) {
                    linkedHashMap.containsKey(a4);
                }
                Map.Entry entry = (Map.Entry) next;
                Map.Entry entry2 = (Map.Entry) obj;
                String str = (String) a4;
                if (entry2 == null) {
                    linkedHashMap.put(a4, entry);
                } else {
                    throw new IllegalStateException(("Multiple sealed subclasses of '" + this.f38991a + "' have the same serial name '" + str + "': '" + ((c) entry2.getKey()) + "', '" + ((c) entry.getKey()) + '\'').toString());
                }
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(ai.a(linkedHashMap.size()));
            for (Map.Entry entry3 : linkedHashMap.entrySet()) {
                linkedHashMap2.put(entry3.getKey(), (KSerializer) ((Map.Entry) entry3.getValue()).getValue());
            }
            this.f38994d = linkedHashMap2;
            return;
        }
        StringBuilder sb = new StringBuilder("Arrays of classes and serializers must have the same length, got arrays: ");
        String arrays = Arrays.toString(subclasses);
        p.a((Object) arrays, "java.util.Arrays.toString(this)");
        sb.append(arrays);
        sb.append(", ");
        String arrays2 = Arrays.toString(subclassSerializers);
        p.a((Object) arrays2, "java.util.Arrays.toString(this)");
        sb.append(arrays2);
        sb.append('\n');
        sb.append("Please ensure that @Serializable annotation is present on each sealed subclass");
        throw new IllegalArgumentException(sb.toString().toString());
    }

    @Override // kotlinx.serialization.b.b
    public final c<T> a() {
        return this.f38991a;
    }

    @Override // kotlinx.serialization.b.b
    public final KSerializer<? extends T> a(Encoder encoder, T value) {
        p.c(encoder, "encoder");
        p.c(value, "value");
        KSerializer<? extends T> kSerializer = this.f38993c.get(kotlin.jvm.internal.ac.b(value.getClass()));
        KSerializer<? extends T> kSerializer2 = kSerializer;
        if (kSerializer == null) {
            kSerializer2 = super.a(encoder, (Encoder) value);
        }
        return kSerializer2;
    }

    @Override // kotlinx.serialization.b.b
    public final KSerializer<? extends T> a(kotlinx.serialization.a decoder, String klassName) {
        p.c(decoder, "decoder");
        p.c(klassName, "klassName");
        KSerializer<? extends T> kSerializer = this.f38994d.get(klassName);
        KSerializer<? extends T> kSerializer2 = kSerializer;
        if (kSerializer == null) {
            kSerializer2 = super.a(decoder, klassName);
        }
        return kSerializer2;
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
    public final SerialDescriptor getDescriptor() {
        return this.f38992b;
    }
}
