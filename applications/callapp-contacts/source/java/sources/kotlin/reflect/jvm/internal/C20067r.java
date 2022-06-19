package kotlin.reflect.jvm.internal;

import kotlin.C18399h;
import kotlin.EnumC18536l;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.AbstractC20105l;
import kotlin.reflect.jvm.internal.AbstractC20079u;
import kotlin.reflect.jvm.internal.C18622ad;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��B\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0010\u0018��*\u0006\b��\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u001cB\u0017\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bB)\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eJ\r\u0010\u0018\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u0019J\n\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0016J\u000e\u0010\u001b\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\u0019R(\u0010\u000f\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00028�� \u0012*\n\u0012\u0004\u0012\u00028��\u0018\u00010\u00110\u00110\u0010X\u0088\u0004¢\u0006\u0002\n��R\u0016\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0014X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028��0\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KProperty0Impl;", "V", "Lkotlin/reflect/KProperty0;", "Lkotlin/reflect/jvm/internal/KPropertyImpl;", "container", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;)V", "name", "", "signature", "boundReceiver", "", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "_getter", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;", "kotlin.jvm.PlatformType", "delegateFieldValue", "Lkotlin/Lazy;", "getter", "getGetter", "()Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;", "get", "()Ljava/lang/Object;", "getDelegate", "invoke", "Getter", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.r */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/r.class */
public class C20067r<V> extends AbstractC20079u<V> implements AbstractC20105l<V> {

    /* renamed from: a */
    private final C18622ad.C18624b<C20068a<V>> f66446a;

    /* renamed from: e */
    private final Lazy<Object> f66447e = C18399h.m3896a(EnumC18536l.PUBLICATION, new C20070c());

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��*\u0006\b\u0001\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\t\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0002\u0010\nR\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\u000b"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;", "R", "Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;", "Lkotlin/reflect/KProperty0$Getter;", "property", "Lkotlin/reflect/jvm/internal/KProperty0Impl;", "(Lkotlin/reflect/jvm/internal/KProperty0Impl;)V", "getProperty", "()Lkotlin/reflect/jvm/internal/KProperty0Impl;", "invoke", "()Ljava/lang/Object;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.r$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/r$a.class */
    public static final class C20068a<R> extends AbstractC20079u.AbstractC20082c<R> implements AbstractC20105l.AbstractC20106a<R> {

        /* renamed from: b */
        private final C20067r<R> f66448b;

        /* JADX WARN: Multi-variable type inference failed */
        public C20068a(C20067r<? extends R> property) {
            C18524p.m3840d(property, "property");
            this.f66448b = property;
        }

        @Override // kotlin.reflect.jvm.internal.AbstractC20079u.AbstractC20080a
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ AbstractC20079u mo1142a() {
            return this.f66448b;
        }

        @Override // kotlin.jvm.functions.Function0
        public final R invoke() {
            return this.f66448b.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u0016\u0012\u0004\u0012\u0002H\u0002 \u0003*\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u00010\u0001\"\u0006\b��\u0010\u0002 \u0001H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;", "V", "kotlin.jvm.PlatformType", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.r$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/r$b.class */
    public static final class C20069b extends AbstractC18526r implements Function0<C20068a<? extends V>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20069b() {
            super(0);
            C20067r.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Object invoke() {
            return new C20068a(C20067r.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0010��\n\u0002\b\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0006\b��\u0010\u0002 \u0001H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "", "V", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.r$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/r$c.class */
    public static final class C20070c extends AbstractC18526r implements Function0<Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20070c() {
            super(0);
            C20067r.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            C20067r c20067r = C20067r.this;
            return c20067r.m1148a(c20067r.m1144k(), C20067r.this.m1146i());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20067r(AbstractC20033k container, String name, String signature, Object obj) {
        super(container, name, signature, obj);
        C18524p.m3840d(container, "container");
        C18524p.m3840d(name, "name");
        C18524p.m3840d(signature, "signature");
        C18622ad.C18624b<C20068a<V>> m3796a = C18622ad.m3796a(new C20069b());
        C18524p.m3843b(m3796a, "ReflectProperties.lazy { Getter(this) }");
        this.f66446a = m3796a;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20067r(AbstractC20033k container, AbstractC19017an descriptor) {
        super(container, descriptor);
        C18524p.m3840d(container, "container");
        C18524p.m3840d(descriptor, "descriptor");
        C18622ad.C18624b<C20068a<V>> m3796a = C18622ad.m3796a(new C20069b());
        C18524p.m3843b(m3796a, "ReflectProperties.lazy { Getter(this) }");
        this.f66446a = m3796a;
    }

    /* renamed from: a */
    public C20068a<V> mo1147h() {
        C20068a<V> invoke = this.f66446a.invoke();
        C18524p.m3843b(invoke, "_getter()");
        return invoke;
    }

    @Override // kotlin.reflect.AbstractC20105l
    public V get() {
        return mo1147h().call(new Object[0]);
    }

    @Override // kotlin.reflect.AbstractC20105l
    public Object getDelegate() {
        return this.f66447e.mo1102a();
    }

    @Override // kotlin.jvm.functions.Function0
    public V invoke() {
        return get();
    }
}
