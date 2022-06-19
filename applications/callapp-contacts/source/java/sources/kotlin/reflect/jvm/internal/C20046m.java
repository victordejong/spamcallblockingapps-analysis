package kotlin.reflect.jvm.internal;

import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.AbstractC18555f;
import kotlin.reflect.jvm.internal.AbstractC20079u;
import kotlin.reflect.jvm.internal.C18622ad;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��B\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\b��\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u001aB\u0017\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bB)\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eJ\u0015\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u0019R(\u0010\u000f\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00028�� \u0012*\n\u0012\u0004\u0012\u00028��\u0018\u00010\u00110\u00110\u0010X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028��0\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001b"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KMutableProperty0Impl;", "V", "Lkotlin/reflect/jvm/internal/KProperty0Impl;", "Lkotlin/reflect/KMutableProperty0;", "container", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;)V", "name", "", "signature", "boundReceiver", "", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "_setter", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "Lkotlin/reflect/jvm/internal/KMutableProperty0Impl$Setter;", "kotlin.jvm.PlatformType", "setter", "getSetter", "()Lkotlin/reflect/jvm/internal/KMutableProperty0Impl$Setter;", "set", "", "value", "(Ljava/lang/Object;)V", "Setter", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.m */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/m.class */
public final class C20046m<V> extends C20067r<V> implements AbstractC18555f<V> {

    /* renamed from: a */
    private final C18622ad.C18624b<C20047a<V>> f66412a;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018��*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0002\u0010\fR\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\r"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KMutableProperty0Impl$Setter;", "R", "Lkotlin/reflect/jvm/internal/KPropertyImpl$Setter;", "Lkotlin/reflect/KMutableProperty0$Setter;", "property", "Lkotlin/reflect/jvm/internal/KMutableProperty0Impl;", "(Lkotlin/reflect/jvm/internal/KMutableProperty0Impl;)V", "getProperty", "()Lkotlin/reflect/jvm/internal/KMutableProperty0Impl;", "invoke", "", "value", "(Ljava/lang/Object;)V", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.m$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/m$a.class */
    public static final class C20047a<R> extends AbstractC20079u.AbstractC20085d<R> implements AbstractC18555f.AbstractC18556a<R> {

        /* renamed from: b */
        private final C20046m<R> f66413b;

        public C20047a(C20046m<R> property) {
            C18524p.m3840d(property, "property");
            this.f66413b = property;
        }

        @Override // kotlin.reflect.jvm.internal.AbstractC20079u.AbstractC20080a
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ AbstractC20079u mo1142a() {
            return this.f66413b;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(Object obj) {
            this.f66413b.getSetter().call(obj);
            return C20128v.f66529a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u0016\u0012\u0004\u0012\u0002H\u0002 \u0003*\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u00010\u0001\"\u0004\b��\u0010\u0002H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/KMutableProperty0Impl$Setter;", "V", "kotlin.jvm.PlatformType", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.m$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/m$b.class */
    public static final class C20048b extends AbstractC18526r implements Function0<C20047a<V>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20048b() {
            super(0);
            C20046m.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Object invoke() {
            return new C20047a(C20046m.this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20046m(AbstractC20033k container, String name, String signature, Object obj) {
        super(container, name, signature, obj);
        C18524p.m3840d(container, "container");
        C18524p.m3840d(name, "name");
        C18524p.m3840d(signature, "signature");
        C18622ad.C18624b<C20047a<V>> m3796a = C18622ad.m3796a(new C20048b());
        C18524p.m3843b(m3796a, "ReflectProperties.lazy { Setter(this) }");
        this.f66412a = m3796a;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20046m(AbstractC20033k container, AbstractC19017an descriptor) {
        super(container, descriptor);
        C18524p.m3840d(container, "container");
        C18524p.m3840d(descriptor, "descriptor");
        C18622ad.C18624b<C20047a<V>> m3796a = C18622ad.m3796a(new C20048b());
        C18524p.m3843b(m3796a, "ReflectProperties.lazy { Setter(this) }");
        this.f66412a = m3796a;
    }

    /* renamed from: a */
    public final C20047a<V> getSetter() {
        C20047a<V> invoke = this.f66412a.invoke();
        C18524p.m3843b(invoke, "_setter()");
        return invoke;
    }
}
