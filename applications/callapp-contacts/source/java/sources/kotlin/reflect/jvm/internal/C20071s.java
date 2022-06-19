package kotlin.reflect.jvm.internal;

import java.lang.reflect.Field;
import kotlin.C18399h;
import kotlin.EnumC18536l;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.AbstractC20107m;
import kotlin.reflect.jvm.internal.AbstractC20079u;
import kotlin.reflect.jvm.internal.C18622ad;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��H\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0010\u0018��*\u0004\b��\u0010\u0001*\u0006\b\u0001\u0010\u0002 \u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00020\u0004:\u0001\u001fB)\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fB\u0017\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJ\u0015\u0010\u001a\u001a\u00028\u00012\u0006\u0010\u001b\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u001cJ\u0017\u0010\u001d\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001b\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u001cJ\u0016\u0010\u001e\u001a\u00028\u00012\u0006\u0010\u001b\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\u001cR4\u0010\u0010\u001a(\u0012$\u0012\"\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001 \u0013*\u0010\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00120\u00120\u0011X\u0088\u0004¢\u0006\u0002\n��R\u0016\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015X\u0082\u0004¢\u0006\u0002\n��R \u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u0006 "}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KProperty1Impl;", "T", "V", "Lkotlin/reflect/KProperty1;", "Lkotlin/reflect/jvm/internal/KPropertyImpl;", "container", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "name", "", "signature", "boundReceiver", "", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;)V", "_getter", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;", "kotlin.jvm.PlatformType", "delegateField", "Lkotlin/Lazy;", "Ljava/lang/reflect/Field;", "getter", "getGetter", "()Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;", "get", "receiver", "(Ljava/lang/Object;)Ljava/lang/Object;", "getDelegate", "invoke", "Getter", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.s */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/s.class */
public class C20071s<T, V> extends AbstractC20079u<V> implements AbstractC20107m<T, V> {

    /* renamed from: a */
    private final C18622ad.C18624b<C20072a<T, V>> f66451a;

    /* renamed from: e */
    private final Lazy<Field> f66452e = C18399h.m3896a(EnumC18536l.PUBLICATION, new C20074c());

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��*\u0004\b\u0002\u0010\u0001*\u0006\b\u0003\u0010\u0002 \u00012\b\u0012\u0004\u0012\u0002H\u00020\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004B\u0019\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006¢\u0006\u0002\u0010\u0007J\u0016\u0010\n\u001a\u00028\u00032\u0006\u0010\u000b\u001a\u00028\u0002H\u0096\u0002¢\u0006\u0002\u0010\fR \u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\t¨\u0006\r"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;", "T", "V", "Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;", "Lkotlin/reflect/KProperty1$Getter;", "property", "Lkotlin/reflect/jvm/internal/KProperty1Impl;", "(Lkotlin/reflect/jvm/internal/KProperty1Impl;)V", "getProperty", "()Lkotlin/reflect/jvm/internal/KProperty1Impl;", "invoke", "receiver", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.s$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/s$a.class */
    public static final class C20072a<T, V> extends AbstractC20079u.AbstractC20082c<V> implements AbstractC20107m.AbstractC20108a<T, V> {

        /* renamed from: b */
        private final C20071s<T, V> f66453b;

        /* JADX WARN: Multi-variable type inference failed */
        public C20072a(C20071s<T, ? extends V> property) {
            C18524p.m3840d(property, "property");
            this.f66453b = property;
        }

        @Override // kotlin.reflect.jvm.internal.AbstractC20079u.AbstractC20080a
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ AbstractC20079u mo1142a() {
            return this.f66453b;
        }

        @Override // kotlin.jvm.functions.Function1
        public final V invoke(T t) {
            return this.f66453b.mo1114a((C20071s<T, V>) t);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010��\u001a\"\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0003 \u0004*\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0003\u0018\u00010\u00010\u0001\"\u0004\b��\u0010\u0002\"\u0006\b\u0001\u0010\u0003 \u0001H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;", "T", "V", "kotlin.jvm.PlatformType", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.s$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/s$b.class */
    public static final class C20073b extends AbstractC18526r implements Function0<C20072a<T, ? extends V>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20073b() {
            super(0);
            C20071s.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Object invoke() {
            return new C20072a(C20071s.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\u0006\b\u0001\u0010\u0003 \u0001H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "Ljava/lang/reflect/Field;", "T", "V", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.s$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/s$c.class */
    public static final class C20074c extends AbstractC18526r implements Function0<Field> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20074c() {
            super(0);
            C20071s.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Field invoke() {
            return C20071s.this.m1144k();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20071s(AbstractC20033k container, String name, String signature, Object obj) {
        super(container, name, signature, obj);
        C18524p.m3840d(container, "container");
        C18524p.m3840d(name, "name");
        C18524p.m3840d(signature, "signature");
        C18622ad.C18624b<C20072a<T, V>> m3796a = C18622ad.m3796a(new C20073b());
        C18524p.m3843b(m3796a, "ReflectProperties.lazy { Getter(this) }");
        this.f66451a = m3796a;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20071s(AbstractC20033k container, AbstractC19017an descriptor) {
        super(container, descriptor);
        C18524p.m3840d(container, "container");
        C18524p.m3840d(descriptor, "descriptor");
        C18622ad.C18624b<C20072a<T, V>> m3796a = C18622ad.m3796a(new C20073b());
        C18524p.m3843b(m3796a, "ReflectProperties.lazy { Getter(this) }");
        this.f66451a = m3796a;
    }

    /* renamed from: m */
    public C20072a<T, V> mo1147h() {
        C20072a<T, V> invoke = this.f66451a.invoke();
        C18524p.m3843b(invoke, "_getter()");
        return invoke;
    }

    @Override // kotlin.reflect.AbstractC20107m
    /* renamed from: a */
    public final V mo1114a(T t) {
        return mo1147h().call(t);
    }

    @Override // kotlin.jvm.functions.Function1
    public V invoke(T t) {
        return mo1114a((C20071s<T, V>) t);
    }
}
