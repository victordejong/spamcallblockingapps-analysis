package kotlin.reflect.jvm.internal;

import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.ad;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.u;
import kotlin.reflect.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0010\u0018��*\u0006\b��\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u001cB\u0017\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bB)\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eJ\r\u0010\u0018\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u0019J\n\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0016J\u000e\u0010\u001b\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\u0019R(\u0010\u000f\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00028�� \u0012*\n\u0012\u0004\u0012\u00028��\u0018\u00010\u00110\u00110\u0010X\u0088\u0004¢\u0006\u0002\n��R\u0016\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0014X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028��0\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, d2 = {"Lkotlin/reflect/jvm/internal/KProperty0Impl;", "V", "Lkotlin/reflect/KProperty0;", "Lkotlin/reflect/jvm/internal/KPropertyImpl;", "container", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;)V", "name", "", "signature", "boundReceiver", "", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "_getter", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;", "kotlin.jvm.PlatformType", "delegateFieldValue", "Lkotlin/Lazy;", "getter", "getGetter", "()Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;", "get", "()Ljava/lang/Object;", "getDelegate", "invoke", "Getter", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/r.class */
public class r<V> extends u<V> implements l<V> {

    /* renamed from: a  reason: collision with root package name */
    private final ad.b<a<V>> f38580a;
    private final Lazy<Object> e = h.a(kotlin.l.PUBLICATION, new c());

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��*\u0006\b\u0001\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\t\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0002\u0010\nR\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;", "R", "Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;", "Lkotlin/reflect/KProperty0$Getter;", "property", "Lkotlin/reflect/jvm/internal/KProperty0Impl;", "(Lkotlin/reflect/jvm/internal/KProperty0Impl;)V", "getProperty", "()Lkotlin/reflect/jvm/internal/KProperty0Impl;", "invoke", "()Ljava/lang/Object;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/r$a.class */
    public static final class a<R> extends u.c<R> implements l.a<R> {

        /* renamed from: b  reason: collision with root package name */
        private final r<R> f38581b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(r<? extends R> property) {
            p.d(property, "property");
            this.f38581b = property;
        }

        @Override // kotlin.reflect.jvm.internal.u.a
        public final /* bridge */ /* synthetic */ u a() {
            return this.f38581b;
        }

        @Override // kotlin.jvm.functions.Function0
        public final R invoke() {
            return this.f38581b.get();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u0016\u0012\u0004\u0012\u0002H\u0002 \u0003*\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u00010\u0001\"\u0006\b��\u0010\u0002 \u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;", "V", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/r$b.class */
    static final class b extends kotlin.jvm.internal.r implements Function0<a<? extends V>> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Object invoke() {
            return new a(r.this);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010��\n\u0002\b\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0006\b��\u0010\u0002 \u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "V", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/r$c.class */
    static final class c extends kotlin.jvm.internal.r implements Function0<Object> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            r rVar = r.this;
            return rVar.a(rVar.k(), r.this.i());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(k container, String name, String signature, Object obj) {
        super(container, name, signature, obj);
        p.d(container, "container");
        p.d(name, "name");
        p.d(signature, "signature");
        ad.b<a<V>> a2 = ad.a(new b());
        p.b(a2, "ReflectProperties.lazy { Getter(this) }");
        this.f38580a = a2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(k container, an descriptor) {
        super(container, descriptor);
        p.d(container, "container");
        p.d(descriptor, "descriptor");
        ad.b<a<V>> a2 = ad.a(new b());
        p.b(a2, "ReflectProperties.lazy { Getter(this) }");
        this.f38580a = a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public a<V> h() {
        a<V> invoke = this.f38580a.invoke();
        p.b(invoke, "_getter()");
        return invoke;
    }

    @Override // kotlin.reflect.l
    public V get() {
        return h().call(new Object[0]);
    }

    @Override // kotlin.reflect.l
    public Object getDelegate() {
        return this.e.a();
    }

    @Override // kotlin.jvm.functions.Function0
    public V invoke() {
        return get();
    }
}
