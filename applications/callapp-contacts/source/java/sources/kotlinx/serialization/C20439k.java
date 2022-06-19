package kotlinx.serialization;

import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18500ag;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.AbstractC18241ac;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18297z;
import kotlin.reflect.AbstractC18551c;
import kotlinx.serialization.AbstractC20419h;
import kotlinx.serialization.AbstractC20467u;
import kotlinx.serialization.p571a.C20333e;
import kotlinx.serialization.p572b.AbstractC20366b;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��H\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018��*\b\b��\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003BG\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0007\u0012\u0014\u0010\b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028��0\u00070\t\u0012\u0014\u0010\n\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028��0\u000b0\t¢\u0006\u0002\u0010\fJ \u0010\u0016\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u000b2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0005H\u0016J%\u0010\u0016\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u000b2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u001dR\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0007X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR*\u0010\u000f\u001a\u001e\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028��0\u0007\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028��0\u000b0\u0010X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0011\u001a\u00020\u0012X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0014R\"\u0010\u0015\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028��0\u000b0\u0010X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001e"}, m4298d2 = {"Lkotlinx/serialization/SealedClassSerializer;", "T", "", "Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;", "serialName", "", "baseClass", "Lkotlin/reflect/KClass;", "subclasses", "", "subclassSerializers", "Lkotlinx/serialization/KSerializer;", "(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V", "getBaseClass", "()Lkotlin/reflect/KClass;", "class2Serializer", "", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "serialName2Serializer", "findPolymorphicSerializer", "decoder", "Lkotlinx/serialization/CompositeDecoder;", "klassName", "encoder", "Lkotlinx/serialization/Encoder;", "value", "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.k */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/k.class */
public final class C20439k<T> extends AbstractC20366b<T> {

    /* renamed from: a */
    final AbstractC18551c<T> f66930a;

    /* renamed from: b */
    private final SerialDescriptor f66931b;

    /* renamed from: c */
    private final Map<AbstractC18551c<? extends T>, KSerializer<? extends T>> f66932c;

    /* renamed from: d */
    private final Map<String, KSerializer<? extends T>> f66933d;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\u0010(\n��*\u0001��\b\n\u0018��2\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0001J\u0015\u0010\u0002\u001a\u00028\u00012\u0006\u0010\u0003\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006H\u0016¨\u0006\u0007¸\u0006��"}, m4298d2 = {"kotlin/collections/CollectionsKt___CollectionsKt$groupingBy$1", "Lkotlin/collections/Grouping;", "keyOf", "element", "(Ljava/lang/Object;)Ljava/lang/Object;", "sourceIterator", "", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.k$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/k$a.class */
    public static final class C20440a implements AbstractC18241ac<Map.Entry<? extends AbstractC18551c<? extends T>, ? extends KSerializer<? extends T>>, String> {

        /* renamed from: a */
        final /* synthetic */ Iterable f66934a;

        public C20440a(Iterable iterable) {
            this.f66934a = iterable;
        }

        @Override // kotlin.p518a.AbstractC18241ac
        /* renamed from: a */
        public final String mo679a(Map.Entry<? extends AbstractC18551c<? extends T>, ? extends KSerializer<? extends T>> entry) {
            return entry.getValue().getDescriptor().mo665a();
        }

        @Override // kotlin.p518a.AbstractC18241ac
        /* renamed from: a */
        public final Iterator<Map.Entry<? extends AbstractC18551c<? extends T>, ? extends KSerializer<? extends T>>> mo680a() {
            return this.f66934a.iterator();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "T", "", "Lkotlinx/serialization/SerialDescriptorBuilder;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.k$b */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/k$b.class */
    public static final class C20441b extends AbstractC18526r implements Function1<C20443l, C20128v> {

        /* renamed from: b */
        final /* synthetic */ KSerializer[] f66936b;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "T", "", "Lkotlinx/serialization/SerialDescriptorBuilder;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
        /* renamed from: kotlinx.serialization.k$b$a */
        /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/k$b$a.class */
        static final class C20442a extends AbstractC18526r implements Function1<C20443l, C20128v> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C20442a() {
                super(1);
                C20441b.this = r4;
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ C20128v invoke(C20443l c20443l) {
                C20443l receiver = c20443l;
                C18524p.m3841c(receiver, "$receiver");
                for (KSerializer kSerializer : C20441b.this.f66936b) {
                    SerialDescriptor descriptor = kSerializer.getDescriptor();
                    receiver.m678a(descriptor.mo665a(), descriptor, C18297z.f63400a, false);
                }
                return C20128v.f66529a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20441b(KSerializer[] kSerializerArr) {
            super(1);
            C20439k.this = r4;
            this.f66936b = kSerializerArr;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(C20443l c20443l) {
            C20443l receiver = c20443l;
            C18524p.m3841c(receiver, "$receiver");
            receiver.m678a("type", C20333e.m738a(C18500ag.f63594a).getDescriptor(), C18297z.f63400a, false);
            receiver.m678a("value", C20444m.m674a("kotlinx.serialization.Sealed<" + C20439k.this.f66930a.an_() + '>', AbstractC20467u.C20468a.f66974b, new C20442a()), C18297z.f63400a, false);
            return C20128v.f66529a;
        }
    }

    public C20439k(String serialName, AbstractC18551c<T> baseClass, AbstractC18551c<? extends T>[] subclasses, KSerializer<? extends T>[] subclassSerializers) {
        C18524p.m3841c(serialName, "serialName");
        C18524p.m3841c(baseClass, "baseClass");
        C18524p.m3841c(subclasses, "subclasses");
        C18524p.m3841c(subclassSerializers, "subclassSerializers");
        this.f66930a = baseClass;
        this.f66931b = C20444m.m674a(serialName, AbstractC20419h.C20421b.f66916a, new C20441b(subclassSerializers));
        if (!(subclasses.length == subclassSerializers.length)) {
            StringBuilder sb = new StringBuilder("Arrays of classes and serializers must have the same length, got arrays: ");
            String arrays = Arrays.toString(subclasses);
            C18524p.m3849a((Object) arrays, "java.util.Arrays.toString(this)");
            sb.append(arrays);
            sb.append(", ");
            String arrays2 = Arrays.toString(subclassSerializers);
            C18524p.m3849a((Object) arrays2, "java.util.Arrays.toString(this)");
            sb.append(arrays2);
            sb.append('\n');
            sb.append("Please ensure that @Serializable annotation is present on each sealed subclass");
            throw new IllegalArgumentException(sb.toString().toString());
        }
        Map<AbstractC18551c<? extends T>, KSerializer<? extends T>> a = C18247ai.m4256a(C18273i.m4198a((Object[]) subclasses, (Object[]) subclassSerializers));
        this.f66932c = a;
        AbstractC18241ac c20440a = new C20440a(a.entrySet());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> mo680a = c20440a.mo680a();
        while (mo680a.hasNext()) {
            T next = mo680a.next();
            Object mo679a = c20440a.mo679a(next);
            Object obj = linkedHashMap.get(mo679a);
            if (obj == null) {
                linkedHashMap.containsKey(mo679a);
            }
            Map.Entry entry = (Map.Entry) next;
            Map.Entry entry2 = (Map.Entry) obj;
            String str = (String) mo679a;
            if (entry2 != null) {
                throw new IllegalStateException(("Multiple sealed subclasses of '" + this.f66930a + "' have the same serial name '" + str + "': '" + ((AbstractC18551c) entry2.getKey()) + "', '" + ((AbstractC18551c) entry.getKey()) + '\'').toString());
            }
            linkedHashMap.put(mo679a, entry);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(C18247ai.m4260a(linkedHashMap.size()));
        for (Map.Entry entry3 : linkedHashMap.entrySet()) {
            linkedHashMap2.put(entry3.getKey(), (KSerializer) ((Map.Entry) entry3.getValue()).getValue());
        }
        this.f66933d = linkedHashMap2;
    }

    @Override // kotlinx.serialization.p572b.AbstractC20366b
    /* renamed from: a */
    public final AbstractC18551c<T> mo683a() {
        return this.f66930a;
    }

    @Override // kotlinx.serialization.p572b.AbstractC20366b
    /* renamed from: a */
    public final KSerializer<? extends T> mo682a(Encoder encoder, T value) {
        C18524p.m3841c(encoder, "encoder");
        C18524p.m3841c(value, "value");
        KSerializer<? extends T> kSerializer = this.f66932c.get(C18496ac.m3882b(value.getClass()));
        KSerializer<? extends T> kSerializer2 = kSerializer;
        if (kSerializer == null) {
            kSerializer2 = super.mo682a(encoder, (Encoder) value);
        }
        return kSerializer2;
    }

    @Override // kotlinx.serialization.p572b.AbstractC20366b
    /* renamed from: a */
    public final KSerializer<? extends T> mo681a(AbstractC20327a decoder, String klassName) {
        C18524p.m3841c(decoder, "decoder");
        C18524p.m3841c(klassName, "klassName");
        KSerializer<? extends T> kSerializer = this.f66933d.get(klassName);
        KSerializer<? extends T> kSerializer2 = kSerializer;
        if (kSerializer == null) {
            kSerializer2 = super.mo681a(decoder, klassName);
        }
        return kSerializer2;
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public final SerialDescriptor getDescriptor() {
        return this.f66931b;
    }
}
