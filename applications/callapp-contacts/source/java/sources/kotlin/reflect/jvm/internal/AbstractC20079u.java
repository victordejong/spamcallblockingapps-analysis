package kotlin.reflect.jvm.internal;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.TreeMap;
import java.util.regex.Matcher;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18511e;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import kotlin.p532h.C18414k;
import kotlin.p532h.C18418l;
import kotlin.reflect.AbstractC18553e;
import kotlin.reflect.KFunction;
import kotlin.reflect.KProperty;
import kotlin.reflect.full.IllegalPropertyDelegateAccessException;
import kotlin.reflect.jvm.internal.AbstractC20033k;
import kotlin.reflect.jvm.internal.C18622ad;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19016am;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19018ao;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19019ap;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19189x;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19190y;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.C19762c;
import kotlin.reflect.jvm.internal.p535a.AbstractC18584d;
import kotlin.reflect.jvm.internal.p535a.C18614h;
import org.apache.commons.lang3.StringUtils;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0006\b \u0018�� >*\u0006\b��\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0004=>?@B)\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bB\u0017\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eB3\b\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u0011J\n\u00104\u001a\u0004\u0018\u00010\u0017H\u0004J\u0013\u00105\u001a\u00020)2\b\u00106\u001a\u0004\u0018\u00010\nH\u0096\u0002J\u001e\u00107\u001a\u0004\u0018\u00010\n2\b\u00108\u001a\u0004\u0018\u00010\u00172\b\u00109\u001a\u0004\u0018\u00010\nH\u0004J\b\u0010:\u001a\u00020;H\u0016J\b\u0010<\u001a\u00020\u0007H\u0016R\u001c\u0010\u0012\u001a\u0010\u0012\f\u0012\n \u0014*\u0004\u0018\u00010\r0\r0\u0013X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0016X\u0082\u0004¢\u0006\u0002\n��R\u0013\u0010\t\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u001b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\u001dR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0018\u0010$\u001a\b\u0012\u0004\u0012\u00028��0%X¦\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'R\u0014\u0010(\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010*R\u0014\u0010+\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010*R\u0014\u0010,\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b,\u0010*R\u0014\u0010-\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b-\u0010*R\u0013\u0010.\u001a\u0004\u0018\u00010\u00178F¢\u0006\u0006\u001a\u0004\b/\u00100R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b1\u00102R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b3\u00102¨\u0006A"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KPropertyImpl;", "V", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "Lkotlin/reflect/KProperty;", "container", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "name", "", "signature", "boundReceiver", "", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;)V", "descriptorInitialValue", "rawBoundReceiver", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;Ljava/lang/Object;)V", "_descriptor", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "kotlin.jvm.PlatformType", "_javaField", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "Ljava/lang/reflect/Field;", "getBoundReceiver", "()Ljava/lang/Object;", "caller", "Lkotlin/reflect/jvm/internal/calls/Caller;", "getCaller", "()Lkotlin/reflect/jvm/internal/calls/Caller;", "getContainer", "()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "defaultCaller", "getDefaultCaller", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;", "getter", "Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;", "getGetter", "()Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;", "isBound", "", "()Z", "isConst", "isLateinit", "isSuspend", "javaField", "getJavaField", "()Ljava/lang/reflect/Field;", "getName", "()Ljava/lang/String;", "getSignature", "computeDelegateField", "equals", "other", "getDelegate", "field", "receiver", "hashCode", "", "toString", "Accessor", "Companion", "Getter", "Setter", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.u */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/u.class */
public abstract class AbstractC20079u<V> extends AbstractC18659f<V> implements KProperty<V> {

    /* renamed from: d */
    public static final C20081b f66461d = new C20081b(null);

    /* renamed from: h */
    private static final Object f66462h = new Object();

    /* renamed from: a */
    private final C18622ad.C18624b<Field> f66463a;

    /* renamed from: b */
    final AbstractC20033k f66464b;

    /* renamed from: c */
    final String f66465c;

    /* renamed from: e */
    private final C18622ad.C18623a<AbstractC19017an> f66466e;

    /* renamed from: f */
    private final String f66467f;

    /* renamed from: g */
    private final Object f66468g;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018��*\u0006\b\u0001\u0010\u0001 \u0001*\u0006\b\u0002\u0010\u0002 \u00012\b\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u00042\b\u0012\u0004\u0012\u0002H\u00020\u0005B\u0005¢\u0006\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\u0010X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0015R\u0014\u0010\u0019\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0015R\u0018\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00010\u001cX¦\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KPropertyImpl$Accessor;", "PropertyType", "ReturnType", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "Lkotlin/reflect/KProperty$Accessor;", "Lkotlin/reflect/KFunction;", "()V", "container", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "getContainer", "()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "defaultCaller", "Lkotlin/reflect/jvm/internal/calls/Caller;", "getDefaultCaller", "()Lkotlin/reflect/jvm/internal/calls/Caller;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyAccessorDescriptor;", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/PropertyAccessorDescriptor;", "isBound", "", "()Z", "isExternal", "isInfix", "isInline", "isOperator", "isSuspend", "property", "Lkotlin/reflect/jvm/internal/KPropertyImpl;", "getProperty", "()Lkotlin/reflect/jvm/internal/KPropertyImpl;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.u$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/u$a.class */
    public static abstract class AbstractC20080a<PropertyType, ReturnType> extends AbstractC18659f<ReturnType> implements KFunction<ReturnType> {
        /* renamed from: a */
        public abstract AbstractC20079u<PropertyType> mo1142a();

        @Override // kotlin.reflect.jvm.internal.AbstractC18659f
        /* renamed from: d */
        public final AbstractC18584d<?> mo1141d() {
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.AbstractC18659f
        /* renamed from: e */
        public final AbstractC20033k mo1140e() {
            return mo1142a().f66464b;
        }

        @Override // kotlin.reflect.jvm.internal.AbstractC18659f
        /* renamed from: f */
        public final boolean mo1139f() {
            return mo1142a().mo1139f();
        }

        /* renamed from: h */
        public abstract AbstractC19016am mo1135h();

        @Override // kotlin.reflect.KFunction
        public boolean isExternal() {
            return mo1135h().isExternal();
        }

        @Override // kotlin.reflect.KFunction
        public boolean isInfix() {
            return mo1135h().isInfix();
        }

        @Override // kotlin.reflect.KFunction
        public boolean isInline() {
            return mo1135h().isInline();
        }

        @Override // kotlin.reflect.KFunction
        public boolean isOperator() {
            return mo1135h().isOperator();
        }

        @Override // kotlin.reflect.KCallable
        public boolean isSuspend() {
            return mo1135h().isSuspend();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0005\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0001¢\u0006\b\n��\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KPropertyImpl$Companion;", "", "()V", "EXTENSION_PROPERTY_DELEGATE", "getEXTENSION_PROPERTY_DELEGATE", "()Ljava/lang/Object;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.u$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/u$b.class */
    public static final class C20081b {
        private C20081b() {
        }

        public /* synthetic */ C20081b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\b&\u0018��*\u0006\b\u0001\u0010\u0001 \u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004R\u001f\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00068VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u001b\u0010\u000b\u001a\u00020\f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;", "V", "Lkotlin/reflect/jvm/internal/KPropertyImpl$Accessor;", "Lkotlin/reflect/KProperty$Getter;", "()V", "caller", "Lkotlin/reflect/jvm/internal/calls/Caller;", "getCaller", "()Lkotlin/reflect/jvm/internal/calls/Caller;", "caller$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyGetterDescriptor;", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/PropertyGetterDescriptor;", "descriptor$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "name", "", "getName", "()Ljava/lang/String;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.u$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/u$c.class */
    public static abstract class AbstractC20082c<V> extends AbstractC20080a<V, V> implements KProperty.AbstractC18548a<V> {

        /* renamed from: a */
        static final /* synthetic */ KProperty[] f66469a = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(AbstractC20082c.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertyGetterDescriptor;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(AbstractC20082c.class), "caller", "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"))};

        /* renamed from: b */
        private final C18622ad.C18623a f66470b = C18622ad.m3795b(new C20084b());

        /* renamed from: c */
        private final C18622ad.C18624b f66471c = C18622ad.m3796a(new C20083a());

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u0012\u0012\u0002\b\u0003 \u0002*\b\u0012\u0002\b\u0003\u0018\u00010\u00010\u0001\"\u0006\b��\u0010\u0003 \u0001\"\u0006\b\u0001\u0010\u0003 \u0001H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/calls/Caller;", "kotlin.jvm.PlatformType", "V", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.u$c$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/u$c$a.class */
        public static final class C20083a extends AbstractC18526r implements Function0<AbstractC18584d<?>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C20083a() {
                super(0);
                AbstractC20082c.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ AbstractC18584d<?> invoke() {
                return C20090v.m1130a(AbstractC20082c.this, true);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\u0006\b��\u0010\u0003 \u0001\"\u0006\b\u0001\u0010\u0003 \u0001H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyGetterDescriptor;", "kotlin.jvm.PlatformType", "V", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.u$c$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/u$c$b.class */
        public static final class C20084b extends AbstractC18526r implements Function0<AbstractC19018ao> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C20084b() {
                super(0);
                AbstractC20082c.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ AbstractC19018ao invoke() {
                AbstractC19018ao mo2635a = AbstractC20082c.this.mo1142a().mo1137b().mo2635a();
                C19189x c19189x = mo2635a;
                if (mo2635a == null) {
                    AbstractC19017an mo1137b = AbstractC20082c.this.mo1142a().mo1137b();
                    AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
                    c19189x = C19762c.m1521a(mo1137b, AbstractC18983g.C18984a.m2705a());
                }
                return c19189x;
            }
        }

        /* renamed from: i */
        public AbstractC19018ao mo1135h() {
            return (AbstractC19018ao) this.f66470b.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.AbstractC18659f
        /* renamed from: c */
        public final AbstractC18584d<?> mo1136c() {
            return (AbstractC18584d) this.f66471c.invoke();
        }

        @Override // kotlin.reflect.KCallable
        public String getName() {
            return "<get-" + mo1142a().getName() + '>';
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\b&\u0018��*\u0004\b\u0001\u0010\u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0004B\u0005¢\u0006\u0002\u0010\u0005R\u001f\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00078VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u001b\u0010\f\u001a\u00020\r8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KPropertyImpl$Setter;", "V", "Lkotlin/reflect/jvm/internal/KPropertyImpl$Accessor;", "", "Lkotlin/reflect/KMutableProperty$Setter;", "()V", "caller", "Lkotlin/reflect/jvm/internal/calls/Caller;", "getCaller", "()Lkotlin/reflect/jvm/internal/calls/Caller;", "caller$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/PropertySetterDescriptor;", "descriptor$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "name", "", "getName", "()Ljava/lang/String;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.u$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/u$d.class */
    public static abstract class AbstractC20085d<V> extends AbstractC20080a<V, C20128v> implements AbstractC18553e.AbstractC18554a<V> {

        /* renamed from: a */
        static final /* synthetic */ KProperty[] f66474a = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(AbstractC20085d.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertySetterDescriptor;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(AbstractC20085d.class), "caller", "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"))};

        /* renamed from: b */
        private final C18622ad.C18623a f66475b = C18622ad.m3795b(new C20087b());

        /* renamed from: c */
        private final C18622ad.C18624b f66476c = C18622ad.m3796a(new C20086a());

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u0012\u0012\u0002\b\u0003 \u0002*\b\u0012\u0002\b\u0003\u0018\u00010\u00010\u0001\"\u0004\b��\u0010\u0003\"\u0006\b\u0001\u0010\u0003 \u0001H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/calls/Caller;", "kotlin.jvm.PlatformType", "V", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.u$d$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/u$d$a.class */
        public static final class C20086a extends AbstractC18526r implements Function0<AbstractC18584d<?>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C20086a() {
                super(0);
                AbstractC20085d.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ AbstractC18584d<?> invoke() {
                return C20090v.m1130a(AbstractC20085d.this, false);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\u0004\b��\u0010\u0003\"\u0006\b\u0001\u0010\u0003 \u0001H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;", "kotlin.jvm.PlatformType", "V", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.u$d$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/u$d$b.class */
        public static final class C20087b extends AbstractC18526r implements Function0<AbstractC19019ap> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C20087b() {
                super(0);
                AbstractC20085d.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ AbstractC19019ap invoke() {
                AbstractC19019ap mo2623b = AbstractC20085d.this.mo1142a().mo1137b().mo2623b();
                C19190y c19190y = mo2623b;
                if (mo2623b == null) {
                    AbstractC19017an mo1137b = AbstractC20085d.this.mo1142a().mo1137b();
                    AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
                    AbstractC18983g m2705a = AbstractC18983g.C18984a.m2705a();
                    AbstractC18983g.C18984a c18984a2 = AbstractC18983g.f64717a;
                    c19190y = C19762c.m1520a(mo1137b, m2705a, AbstractC18983g.C18984a.m2705a());
                }
                return c19190y;
            }
        }

        /* renamed from: i */
        public AbstractC19019ap mo1135h() {
            return (AbstractC19019ap) this.f66475b.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.AbstractC18659f
        /* renamed from: c */
        public final AbstractC18584d<?> mo1136c() {
            return (AbstractC18584d) this.f66476c.invoke();
        }

        @Override // kotlin.reflect.KCallable
        public String getName() {
            return "<set-" + mo1142a().getName() + '>';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\u0006\b��\u0010\u0003 \u0001H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "kotlin.jvm.PlatformType", "V", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.u$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/u$e.class */
    public static final class C20088e extends AbstractC18526r implements Function0<AbstractC19017an> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20088e() {
            super(0);
            AbstractC20079u.this = r4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v123, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r0v130, types: [java.util.List] */
        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ AbstractC19017an invoke() {
            AbstractC20033k abstractC20033k = AbstractC20079u.this.f66464b;
            String name = AbstractC20079u.this.getName();
            String signature = AbstractC20079u.this.f66465c;
            C18524p.m3840d(name, "name");
            C18524p.m3840d(signature, "signature");
            C18418l c18418l = AbstractC20033k.f66391c;
            String input = signature;
            C18524p.m3840d(input, "input");
            Matcher matcher = c18418l.f63546a.matcher(input);
            C18524p.m3843b(matcher, "nativePattern.matcher(input)");
            C18414k c18414k = !matcher.matches() ? null : new C18414k(matcher, input);
            boolean z = true;
            if (c18414k != null) {
                String str = c18414k.mo3989c().f63537a.mo3990b().get(1);
                AbstractC19017an mo1162a = abstractC20033k.mo1162a(Integer.parseInt(str));
                if (mo1162a != null) {
                    return mo1162a;
                }
                throw new C18620ab("Local property #" + str + " not found in " + abstractC20033k.mo1163a());
            }
            C18966e m2719a = C18966e.m2719a(name);
            C18524p.m3843b(m2719a, "Name.identifier(name)");
            Collection<AbstractC19017an> mo1161a = abstractC20033k.mo1161a(m2719a);
            ArrayList arrayList = new ArrayList();
            for (Object obj : mo1161a) {
                if (C18524p.m3850a((Object) C18632ah.f63702b.m3774a((AbstractC19017an) obj).mo3731a(), (Object) signature)) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = arrayList;
            if (arrayList2.isEmpty()) {
                throw new C18620ab("Property '" + name + "' (JVM signature: " + signature + ") not resolved in " + abstractC20033k);
            } else if (arrayList2.size() == 1) {
                return (AbstractC19017an) C18282n.m4115i((List<? extends Object>) arrayList2);
            } else {
                ArrayList arrayList3 = arrayList2;
                LinkedHashMap toSortedMap = new LinkedHashMap();
                for (Object obj2 : arrayList3) {
                    AbstractC19213s visibility = ((AbstractC19017an) obj2).getVisibility();
                    ?? r0 = toSortedMap.get(visibility);
                    V v = r0;
                    if (r0 == 0) {
                        v = new ArrayList();
                        toSortedMap.put(visibility, v);
                    }
                    ((List) v).add(obj2);
                }
                AbstractC20033k.C20040f comparator = AbstractC20033k.C20040f.f66399a;
                C18524p.m3840d(toSortedMap, "$this$toSortedMap");
                C18524p.m3840d(comparator, "comparator");
                TreeMap treeMap = new TreeMap(comparator);
                treeMap.putAll(toSortedMap);
                Collection<V> values = treeMap.values();
                C18524p.m3843b(values, "properties\n             …                }).values");
                List mostVisibleProperties = (List) C18282n.m4133c(values);
                if (mostVisibleProperties.size() == 1) {
                    C18524p.m3843b(mostVisibleProperties, "mostVisibleProperties");
                    return (AbstractC19017an) C18282n.m4123e((List<? extends Object>) mostVisibleProperties);
                }
                C18966e m2719a2 = C18966e.m2719a(name);
                C18524p.m3843b(m2719a2, "Name.identifier(name)");
                String a = C18282n.m4148a(abstractC20033k.mo1161a(m2719a2), StringUtils.f67179LF, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, AbstractC20033k.C20039e.f66398a, 30);
                StringBuilder sb = new StringBuilder("Property '");
                sb.append(name);
                sb.append("' (JVM signature: ");
                sb.append(signature);
                sb.append(") not resolved in ");
                sb.append(abstractC20033k);
                sb.append(':');
                if (a.length() != 0) {
                    z = false;
                }
                sb.append(z ? " no members found" : StringUtils.f67179LF.concat(String.valueOf(a)));
                throw new C18620ab(sb.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0006\b��\u0010\u0002 \u0001H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "Ljava/lang/reflect/Field;", "V", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.u$f */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/u$f.class */
    public static final class C20089f extends AbstractC18526r implements Function0<Field> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20089f() {
            super(0);
            AbstractC20079u.this = r4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:42:0x0112, code lost:
            if (((!(r0 instanceof kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an) || (r0 = r0.mo2620e()) == null || !r0.getAnnotations().mo1338b(kotlin.reflect.jvm.internal.impl.load.java.C19521t.f65509b)) ? r0.getAnnotations().mo1338b(kotlin.reflect.jvm.internal.impl.load.java.C19521t.f65509b) : true) != false) goto L27;
         */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00b3  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.reflect.Field invoke() {
            /*
                Method dump skipped, instructions count: 421
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.AbstractC20079u.C20089f.invoke():java.lang.reflect.Field");
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AbstractC20079u(AbstractC20033k container, String name, String signature, Object obj) {
        this(container, name, signature, null, obj);
        C18524p.m3840d(container, "container");
        C18524p.m3840d(name, "name");
        C18524p.m3840d(signature, "signature");
    }

    private AbstractC20079u(AbstractC20033k abstractC20033k, String str, String str2, AbstractC19017an abstractC19017an, Object obj) {
        this.f66464b = abstractC20033k;
        this.f66467f = str;
        this.f66465c = str2;
        this.f66468g = obj;
        C18622ad.C18624b<Field> m3796a = C18622ad.m3796a(new C20089f());
        C18524p.m3843b(m3796a, "ReflectProperties.lazy {…y -> null\n        }\n    }");
        this.f66463a = m3796a;
        C18622ad.C18623a<AbstractC19017an> m3797a = C18622ad.m3797a(abstractC19017an, new C20088e());
        C18524p.m3843b(m3797a, "ReflectProperties.lazySo…or(name, signature)\n    }");
        this.f66466e = m3797a;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractC20079u(kotlin.reflect.jvm.internal.AbstractC20033k r8, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an r9) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = "container"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r9
            java.lang.String r1 = "descriptor"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r9
            kotlin.reflect.jvm.internal.impl.c.e r0 = r0.getName()
            java.lang.String r0 = r0.m2721a()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "descriptor.name.asString()"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            r0 = r7
            r1 = r8
            r2 = r10
            kotlin.reflect.jvm.internal.ah r3 = kotlin.reflect.jvm.internal.C18632ah.f63702b
            r4 = r9
            kotlin.reflect.jvm.internal.e r3 = r3.m3774a(r4)
            java.lang.String r3 = r3.mo3731a()
            r4 = r9
            java.lang.Object r5 = kotlin.jvm.internal.AbstractC18511e.NO_RECEIVER
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.AbstractC20079u.<init>(kotlin.reflect.jvm.internal.k, kotlin.reflect.jvm.internal.impl.descriptors.an):void");
    }

    /* renamed from: a */
    public final Object m1148a(Field field, Object obj) {
        try {
            if (obj == f66462h && mo1137b().getExtensionReceiverParameter() == null) {
                throw new RuntimeException("'" + this + "' is not an extension property and thus getExtensionDelegate() is not going to work, use getDelegate() instead");
            }
            return field != null ? field.get(obj) : null;
        } catch (IllegalAccessException e) {
            throw new IllegalPropertyDelegateAccessException(e);
        }
    }

    @Override // kotlin.reflect.jvm.internal.AbstractC18659f
    /* renamed from: c */
    public final AbstractC18584d<?> mo1136c() {
        return mo1147h().mo1136c();
    }

    @Override // kotlin.reflect.jvm.internal.AbstractC18659f
    /* renamed from: d */
    public final AbstractC18584d<?> mo1141d() {
        mo1147h();
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.AbstractC18659f
    /* renamed from: e */
    public final AbstractC20033k mo1140e() {
        return this.f66464b;
    }

    public boolean equals(Object obj) {
        AbstractC20079u<?> m3755b = C18635aj.m3755b(obj);
        return m3755b != null && C18524p.m3850a(this.f66464b, m3755b.f66464b) && C18524p.m3850a((Object) getName(), (Object) m3755b.getName()) && C18524p.m3850a((Object) this.f66465c, (Object) m3755b.f66465c) && C18524p.m3850a(this.f66468g, m3755b.f66468g);
    }

    @Override // kotlin.reflect.jvm.internal.AbstractC18659f
    /* renamed from: f */
    public final boolean mo1139f() {
        return !C18524p.m3850a(this.f66468g, AbstractC18511e.NO_RECEIVER);
    }

    @Override // kotlin.reflect.KCallable
    public String getName() {
        return this.f66467f;
    }

    /* renamed from: h */
    public abstract AbstractC20082c<V> mo1147h();

    public int hashCode() {
        return (((this.f66464b.hashCode() * 31) + getName().hashCode()) * 31) + this.f66465c.hashCode();
    }

    /* renamed from: i */
    public final Object m1146i() {
        return C18614h.m3812a(this.f66468g, mo1137b());
    }

    @Override // kotlin.reflect.KProperty
    public boolean isConst() {
        return mo1137b().ar_();
    }

    @Override // kotlin.reflect.KProperty
    public boolean isLateinit() {
        return mo1137b().mo2604l();
    }

    @Override // kotlin.reflect.KCallable
    public boolean isSuspend() {
        return false;
    }

    /* renamed from: j */
    public final Field m1145j() {
        return this.f66463a.invoke();
    }

    /* renamed from: k */
    public final Field m1144k() {
        if (mo1137b().as_()) {
            return m1145j();
        }
        return null;
    }

    /* renamed from: l */
    public final AbstractC19017an mo1137b() {
        AbstractC19017an invoke = this.f66466e.invoke();
        C18524p.m3843b(invoke, "_descriptor()");
        return invoke;
    }

    public String toString() {
        C18628af c18628af = C18628af.f63696a;
        return C18628af.m3780a(mo1137b());
    }
}
