package kotlin.reflect.jvm.internal;

import java.lang.reflect.Field;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.e;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.l;
import kotlin.reflect.jvm.internal.ad;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.u;
import kotlin.reflect.n;
import kotlin.reflect.o;
@Metadata(bv = {1, 0, 3}, d1 = {"��H\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010��\n\u0002\b\u0003\b\u0010\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0006\b\u0002\u0010\u0003 \u00012\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00042\b\u0012\u0004\u0012\u0002H\u00030\u0005:\u0001 B\u001f\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0002\u0010\u000bB\u0017\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u001d\u0010\u0019\u001a\u00028\u00022\u0006\u0010\u001a\u001a\u00028��2\u0006\u0010\u001b\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u001cJ\u001f\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001a\u001a\u00028��2\u0006\u0010\u001b\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u001cJ\u001e\u0010\u001f\u001a\u00028\u00022\u0006\u0010\u001a\u001a\u00028��2\u0006\u0010\u001b\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0002\u0010\u001cR@\u0010\u000f\u001a4\u00120\u0012.\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002 \u0012*\u0016\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0018\u00010\u00110\u00110\u0010X\u0088\u0004¢\u0006\u0002\n��R\u0016\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0014X\u0082\u0004¢\u0006\u0002\n��R&\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006!"}, d2 = {"Lkotlin/reflect/jvm/internal/KProperty2Impl;", "D", "E", "V", "Lkotlin/reflect/KProperty2;", "Lkotlin/reflect/jvm/internal/KPropertyImpl;", "container", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "name", "", "signature", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;)V", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;)V", "_getter", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "Lkotlin/reflect/jvm/internal/KProperty2Impl$Getter;", "kotlin.jvm.PlatformType", "delegateField", "Lkotlin/Lazy;", "Ljava/lang/reflect/Field;", "getter", "getGetter", "()Lkotlin/reflect/jvm/internal/KProperty2Impl$Getter;", "get", "receiver1", "receiver2", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "getDelegate", "", "invoke", "Getter", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/t.class */
public class t<D, E, V> extends u<V> implements n<D, E, V> {

    /* renamed from: a  reason: collision with root package name */
    private final ad.b<a<D, E, V>> f38588a;
    private final Lazy<Field> e = h.a(l.PUBLICATION, new c());

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\u0018��*\u0004\b\u0003\u0010\u0001*\u0004\b\u0004\u0010\u0002*\u0006\b\u0005\u0010\u0003 \u00012\b\u0012\u0004\u0012\u0002H\u00030\u00042\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0005B\u001f\u0012\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00050\u0007¢\u0006\u0002\u0010\bJ\u001e\u0010\u000b\u001a\u00028\u00052\u0006\u0010\f\u001a\u00028\u00032\u0006\u0010\r\u001a\u00028\u0004H\u0096\u0002¢\u0006\u0002\u0010\u000eR&\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00050\u0007X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lkotlin/reflect/jvm/internal/KProperty2Impl$Getter;", "D", "E", "V", "Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;", "Lkotlin/reflect/KProperty2$Getter;", "property", "Lkotlin/reflect/jvm/internal/KProperty2Impl;", "(Lkotlin/reflect/jvm/internal/KProperty2Impl;)V", "getProperty", "()Lkotlin/reflect/jvm/internal/KProperty2Impl;", "invoke", "receiver1", "receiver2", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/t$a.class */
    public static final class a<D, E, V> extends u.c<V> implements o<D, E, V> {

        /* renamed from: b  reason: collision with root package name */
        private final t<D, E, V> f38589b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(t<D, E, ? extends V> property) {
            p.d(property, "property");
            this.f38589b = property;
        }

        @Override // kotlin.reflect.jvm.internal.u.a
        public final /* bridge */ /* synthetic */ u a() {
            return this.f38589b;
        }

        @Override // kotlin.jvm.functions.Function2
        public final V invoke(D d2, E e) {
            return this.f38589b.a((t<D, E, V>) d2, (D) e);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010��\u001a.\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0004 \u0005*\u0016\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0004\u0018\u00010\u00010\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0006\b\u0002\u0010\u0004 \u0001H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/KProperty2Impl$Getter;", "D", "E", "V", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/t$b.class */
    static final class b extends r implements Function0<a<D, E, ? extends V>> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Object invoke() {
            return new a(t.this);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0006\b\u0002\u0010\u0004 \u0001H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Ljava/lang/reflect/Field;", "D", "E", "V", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/t$c.class */
    static final class c extends r implements Function0<Field> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Field invoke() {
            return t.this.k();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(k container, String name, String signature) {
        super(container, name, signature, e.NO_RECEIVER);
        p.d(container, "container");
        p.d(name, "name");
        p.d(signature, "signature");
        ad.b<a<D, E, V>> a2 = ad.a(new b());
        p.b(a2, "ReflectProperties.lazy { Getter(this) }");
        this.f38588a = a2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(k container, an descriptor) {
        super(container, descriptor);
        p.d(container, "container");
        p.d(descriptor, "descriptor");
        ad.b<a<D, E, V>> a2 = ad.a(new b());
        p.b(a2, "ReflectProperties.lazy { Getter(this) }");
        this.f38588a = a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public a<D, E, V> h() {
        a<D, E, V> invoke = this.f38588a.invoke();
        p.b(invoke, "_getter()");
        return invoke;
    }

    public final V a(D d2, E e) {
        return h().call(d2, e);
    }

    @Override // kotlin.jvm.functions.Function2
    public V invoke(D d2, E e) {
        return a((t<D, E, V>) d2, (D) e);
    }
}
