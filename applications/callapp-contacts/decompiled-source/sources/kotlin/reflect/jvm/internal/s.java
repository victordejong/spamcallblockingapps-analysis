package kotlin.reflect.jvm.internal;

import java.lang.reflect.Field;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.l;
import kotlin.reflect.jvm.internal.ad;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.u;
import kotlin.reflect.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��H\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0010\u0018��*\u0004\b��\u0010\u0001*\u0006\b\u0001\u0010\u0002 \u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00020\u0004:\u0001\u001fB)\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fB\u0017\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJ\u0015\u0010\u001a\u001a\u00028\u00012\u0006\u0010\u001b\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u001cJ\u0017\u0010\u001d\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001b\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u001cJ\u0016\u0010\u001e\u001a\u00028\u00012\u0006\u0010\u001b\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\u001cR4\u0010\u0010\u001a(\u0012$\u0012\"\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001 \u0013*\u0010\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00120\u00120\u0011X\u0088\u0004¢\u0006\u0002\n��R\u0016\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015X\u0082\u0004¢\u0006\u0002\n��R \u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u0006 "}, d2 = {"Lkotlin/reflect/jvm/internal/KProperty1Impl;", "T", "V", "Lkotlin/reflect/KProperty1;", "Lkotlin/reflect/jvm/internal/KPropertyImpl;", "container", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "name", "", "signature", "boundReceiver", "", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;)V", "_getter", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;", "kotlin.jvm.PlatformType", "delegateField", "Lkotlin/Lazy;", "Ljava/lang/reflect/Field;", "getter", "getGetter", "()Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;", "get", "receiver", "(Ljava/lang/Object;)Ljava/lang/Object;", "getDelegate", "invoke", "Getter", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/s.class */
public class s<T, V> extends u<V> implements m<T, V> {

    /* renamed from: a  reason: collision with root package name */
    private final ad.b<a<T, V>> f38584a;
    private final Lazy<Field> e = h.a(l.PUBLICATION, new c());

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��*\u0004\b\u0002\u0010\u0001*\u0006\b\u0003\u0010\u0002 \u00012\b\u0012\u0004\u0012\u0002H\u00020\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004B\u0019\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006¢\u0006\u0002\u0010\u0007J\u0016\u0010\n\u001a\u00028\u00032\u0006\u0010\u000b\u001a\u00028\u0002H\u0096\u0002¢\u0006\u0002\u0010\fR \u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;", "T", "V", "Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;", "Lkotlin/reflect/KProperty1$Getter;", "property", "Lkotlin/reflect/jvm/internal/KProperty1Impl;", "(Lkotlin/reflect/jvm/internal/KProperty1Impl;)V", "getProperty", "()Lkotlin/reflect/jvm/internal/KProperty1Impl;", "invoke", "receiver", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/s$a.class */
    public static final class a<T, V> extends u.c<V> implements m.a<T, V> {

        /* renamed from: b  reason: collision with root package name */
        private final s<T, V> f38585b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(s<T, ? extends V> property) {
            p.d(property, "property");
            this.f38585b = property;
        }

        @Override // kotlin.reflect.jvm.internal.u.a
        public final /* bridge */ /* synthetic */ u a() {
            return this.f38585b;
        }

        @Override // kotlin.jvm.functions.Function1
        public final V invoke(T t) {
            return this.f38585b.a((s<T, V>) t);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010��\u001a\"\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0003 \u0004*\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0003\u0018\u00010\u00010\u0001\"\u0004\b��\u0010\u0002\"\u0006\b\u0001\u0010\u0003 \u0001H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;", "T", "V", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/s$b.class */
    static final class b extends r implements Function0<a<T, ? extends V>> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Object invoke() {
            return new a(s.this);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\u0006\b\u0001\u0010\u0003 \u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Ljava/lang/reflect/Field;", "T", "V", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/s$c.class */
    static final class c extends r implements Function0<Field> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Field invoke() {
            return s.this.k();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(k container, String name, String signature, Object obj) {
        super(container, name, signature, obj);
        p.d(container, "container");
        p.d(name, "name");
        p.d(signature, "signature");
        ad.b<a<T, V>> a2 = ad.a(new b());
        p.b(a2, "ReflectProperties.lazy { Getter(this) }");
        this.f38584a = a2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(k container, an descriptor) {
        super(container, descriptor);
        p.d(container, "container");
        p.d(descriptor, "descriptor");
        ad.b<a<T, V>> a2 = ad.a(new b());
        p.b(a2, "ReflectProperties.lazy { Getter(this) }");
        this.f38584a = a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public a<T, V> h() {
        a<T, V> invoke = this.f38584a.invoke();
        p.b(invoke, "_getter()");
        return invoke;
    }

    @Override // kotlin.reflect.m
    public final V a(T t) {
        return h().call(t);
    }

    @Override // kotlin.jvm.functions.Function1
    public V invoke(T t) {
        return a((s<T, V>) t);
    }
}
