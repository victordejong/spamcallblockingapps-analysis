package kotlin.reflect.jvm.internal;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.TreeMap;
import java.util.regex.Matcher;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.h.k;
import kotlin.h.l;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KFunction;
import kotlin.reflect.KProperty;
import kotlin.reflect.e;
import kotlin.reflect.full.IllegalPropertyDelegateAccessException;
import kotlin.reflect.jvm.internal.a.h;
import kotlin.reflect.jvm.internal.ad;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.am;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.ao;
import kotlin.reflect.jvm.internal.impl.descriptors.ap;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.x;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.y;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.k;
import kotlin.v;
import org.apache.commons.lang3.StringUtils;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0006\b \u0018�� >*\u0006\b��\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0004=>?@B)\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bB\u0017\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eB3\b\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u0011J\n\u00104\u001a\u0004\u0018\u00010\u0017H\u0004J\u0013\u00105\u001a\u00020)2\b\u00106\u001a\u0004\u0018\u00010\nH\u0096\u0002J\u001e\u00107\u001a\u0004\u0018\u00010\n2\b\u00108\u001a\u0004\u0018\u00010\u00172\b\u00109\u001a\u0004\u0018\u00010\nH\u0004J\b\u0010:\u001a\u00020;H\u0016J\b\u0010<\u001a\u00020\u0007H\u0016R\u001c\u0010\u0012\u001a\u0010\u0012\f\u0012\n \u0014*\u0004\u0018\u00010\r0\r0\u0013X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0016X\u0082\u0004¢\u0006\u0002\n��R\u0013\u0010\t\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u001b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\u001dR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0018\u0010$\u001a\b\u0012\u0004\u0012\u00028��0%X¦\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'R\u0014\u0010(\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010*R\u0014\u0010+\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010*R\u0014\u0010,\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b,\u0010*R\u0014\u0010-\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b-\u0010*R\u0013\u0010.\u001a\u0004\u0018\u00010\u00178F¢\u0006\u0006\u001a\u0004\b/\u00100R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b1\u00102R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b3\u00102¨\u0006A"}, d2 = {"Lkotlin/reflect/jvm/internal/KPropertyImpl;", "V", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "Lkotlin/reflect/KProperty;", "container", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "name", "", "signature", "boundReceiver", "", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;)V", "descriptorInitialValue", "rawBoundReceiver", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;Ljava/lang/Object;)V", "_descriptor", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "kotlin.jvm.PlatformType", "_javaField", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "Ljava/lang/reflect/Field;", "getBoundReceiver", "()Ljava/lang/Object;", "caller", "Lkotlin/reflect/jvm/internal/calls/Caller;", "getCaller", "()Lkotlin/reflect/jvm/internal/calls/Caller;", "getContainer", "()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "defaultCaller", "getDefaultCaller", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;", "getter", "Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;", "getGetter", "()Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;", "isBound", "", "()Z", "isConst", "isLateinit", "isSuspend", "javaField", "getJavaField", "()Ljava/lang/reflect/Field;", "getName", "()Ljava/lang/String;", "getSignature", "computeDelegateField", "equals", "other", "getDelegate", "field", "receiver", "hashCode", "", "toString", "Accessor", "Companion", "Getter", "Setter", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/u.class */
public abstract class u<V> extends kotlin.reflect.jvm.internal.f<V> implements KProperty<V> {

    /* renamed from: d  reason: collision with root package name */
    public static final b f38592d = new b(null);
    private static final Object h = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final ad.b<Field> f38593a;

    /* renamed from: b  reason: collision with root package name */
    final k f38594b;

    /* renamed from: c  reason: collision with root package name */
    final String f38595c;
    private final ad.a<an> e;
    private final String f;
    private final Object g;

    @Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018��*\u0006\b\u0001\u0010\u0001 \u0001*\u0006\b\u0002\u0010\u0002 \u00012\b\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u00042\b\u0012\u0004\u0012\u0002H\u00020\u0005B\u0005¢\u0006\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\u0010X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0015R\u0014\u0010\u0019\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0015R\u0018\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00010\u001cX¦\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lkotlin/reflect/jvm/internal/KPropertyImpl$Accessor;", "PropertyType", "ReturnType", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "Lkotlin/reflect/KProperty$Accessor;", "Lkotlin/reflect/KFunction;", "()V", "container", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "getContainer", "()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "defaultCaller", "Lkotlin/reflect/jvm/internal/calls/Caller;", "getDefaultCaller", "()Lkotlin/reflect/jvm/internal/calls/Caller;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyAccessorDescriptor;", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/PropertyAccessorDescriptor;", "isBound", "", "()Z", "isExternal", "isInfix", "isInline", "isOperator", "isSuspend", "property", "Lkotlin/reflect/jvm/internal/KPropertyImpl;", "getProperty", "()Lkotlin/reflect/jvm/internal/KPropertyImpl;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/u$a.class */
    public static abstract class a<PropertyType, ReturnType> extends kotlin.reflect.jvm.internal.f<ReturnType> implements KFunction<ReturnType> {
        public abstract u<PropertyType> a();

        @Override // kotlin.reflect.jvm.internal.f
        public final kotlin.reflect.jvm.internal.a.d<?> d() {
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.f
        public final k e() {
            return a().f38594b;
        }

        @Override // kotlin.reflect.jvm.internal.f
        public final boolean f() {
            return a().f();
        }

        public abstract am h();

        @Override // kotlin.reflect.KFunction
        public boolean isExternal() {
            return h().isExternal();
        }

        @Override // kotlin.reflect.KFunction
        public boolean isInfix() {
            return h().isInfix();
        }

        @Override // kotlin.reflect.KFunction
        public boolean isInline() {
            return h().isInline();
        }

        @Override // kotlin.reflect.KFunction
        public boolean isOperator() {
            return h().isOperator();
        }

        @Override // kotlin.reflect.KCallable
        public boolean isSuspend() {
            return h().isSuspend();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0005\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0001¢\u0006\b\n��\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/reflect/jvm/internal/KPropertyImpl$Companion;", "", "()V", "EXTENSION_PROPERTY_DELEGATE", "getEXTENSION_PROPERTY_DELEGATE", "()Ljava/lang/Object;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/u$b.class */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\b&\u0018��*\u0006\b\u0001\u0010\u0001 \u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004R\u001f\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00068VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u001b\u0010\u000b\u001a\u00020\f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;", "V", "Lkotlin/reflect/jvm/internal/KPropertyImpl$Accessor;", "Lkotlin/reflect/KProperty$Getter;", "()V", "caller", "Lkotlin/reflect/jvm/internal/calls/Caller;", "getCaller", "()Lkotlin/reflect/jvm/internal/calls/Caller;", "caller$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyGetterDescriptor;", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/PropertyGetterDescriptor;", "descriptor$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "name", "", "getName", "()Ljava/lang/String;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/u$c.class */
    public static abstract class c<V> extends a<V, V> implements KProperty.a<V> {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ KProperty[] f38596a = {ac.a(new aa(ac.b(c.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertyGetterDescriptor;")), ac.a(new aa(ac.b(c.class), "caller", "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"))};

        /* renamed from: b  reason: collision with root package name */
        private final ad.a f38597b = ad.b(new b());

        /* renamed from: c  reason: collision with root package name */
        private final ad.b f38598c = ad.a(new a());

        @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u0012\u0012\u0002\b\u0003 \u0002*\b\u0012\u0002\b\u0003\u0018\u00010\u00010\u0001\"\u0006\b��\u0010\u0003 \u0001\"\u0006\b\u0001\u0010\u0003 \u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/calls/Caller;", "kotlin.jvm.PlatformType", "V", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/u$c$a.class */
        static final class a extends r implements Function0<kotlin.reflect.jvm.internal.a.d<?>> {
            a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ kotlin.reflect.jvm.internal.a.d<?> invoke() {
                return v.a(c.this, true);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\u0006\b��\u0010\u0003 \u0001\"\u0006\b\u0001\u0010\u0003 \u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyGetterDescriptor;", "kotlin.jvm.PlatformType", "V", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/u$c$b.class */
        static final class b extends r implements Function0<ao> {
            b() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ ao invoke() {
                ao a2 = c.this.a().b().a();
                x xVar = a2;
                if (a2 == null) {
                    an l = c.this.a().b();
                    g.a aVar = g.f37361a;
                    xVar = kotlin.reflect.jvm.internal.impl.resolve.c.a(l, g.a.a());
                }
                return xVar;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: i */
        public ao h() {
            return (ao) this.f38597b.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.f
        public final kotlin.reflect.jvm.internal.a.d<?> c() {
            return (kotlin.reflect.jvm.internal.a.d) this.f38598c.invoke();
        }

        @Override // kotlin.reflect.KCallable
        public String getName() {
            return "<get-" + a().getName() + '>';
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\b&\u0018��*\u0004\b\u0001\u0010\u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0004B\u0005¢\u0006\u0002\u0010\u0005R\u001f\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00078VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u001b\u0010\f\u001a\u00020\r8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lkotlin/reflect/jvm/internal/KPropertyImpl$Setter;", "V", "Lkotlin/reflect/jvm/internal/KPropertyImpl$Accessor;", "", "Lkotlin/reflect/KMutableProperty$Setter;", "()V", "caller", "Lkotlin/reflect/jvm/internal/calls/Caller;", "getCaller", "()Lkotlin/reflect/jvm/internal/calls/Caller;", "caller$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/PropertySetterDescriptor;", "descriptor$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "name", "", "getName", "()Ljava/lang/String;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/u$d.class */
    public static abstract class d<V> extends a<V, v> implements e.a<V> {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ KProperty[] f38601a = {ac.a(new aa(ac.b(d.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertySetterDescriptor;")), ac.a(new aa(ac.b(d.class), "caller", "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"))};

        /* renamed from: b  reason: collision with root package name */
        private final ad.a f38602b = ad.b(new b());

        /* renamed from: c  reason: collision with root package name */
        private final ad.b f38603c = ad.a(new a());

        @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u0012\u0012\u0002\b\u0003 \u0002*\b\u0012\u0002\b\u0003\u0018\u00010\u00010\u0001\"\u0004\b��\u0010\u0003\"\u0006\b\u0001\u0010\u0003 \u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/calls/Caller;", "kotlin.jvm.PlatformType", "V", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/u$d$a.class */
        static final class a extends r implements Function0<kotlin.reflect.jvm.internal.a.d<?>> {
            a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ kotlin.reflect.jvm.internal.a.d<?> invoke() {
                return v.a(d.this, false);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\u0004\b��\u0010\u0003\"\u0006\b\u0001\u0010\u0003 \u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;", "kotlin.jvm.PlatformType", "V", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/u$d$b.class */
        static final class b extends r implements Function0<ap> {
            b() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ ap invoke() {
                ap b2 = d.this.a().b().b();
                y yVar = b2;
                if (b2 == null) {
                    an l = d.this.a().b();
                    g.a aVar = g.f37361a;
                    g a2 = g.a.a();
                    g.a aVar2 = g.f37361a;
                    yVar = kotlin.reflect.jvm.internal.impl.resolve.c.a(l, a2, g.a.a());
                }
                return yVar;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: i */
        public ap h() {
            return (ap) this.f38602b.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.f
        public final kotlin.reflect.jvm.internal.a.d<?> c() {
            return (kotlin.reflect.jvm.internal.a.d) this.f38603c.invoke();
        }

        @Override // kotlin.reflect.KCallable
        public String getName() {
            return "<set-" + a().getName() + '>';
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\u0006\b��\u0010\u0003 \u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "kotlin.jvm.PlatformType", "V", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/u$e.class */
    static final class e extends r implements Function0<an> {
        e() {
            super(0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ an invoke() {
            k kVar = u.this.f38594b;
            String name = u.this.getName();
            String signature = u.this.f38595c;
            p.d(name, "name");
            p.d(signature, "signature");
            l lVar = k.f38536c;
            String input = signature;
            p.d(input, "input");
            Matcher matcher = lVar.f36742a.matcher(input);
            p.b(matcher, "nativePattern.matcher(input)");
            k kVar2 = !matcher.matches() ? null : new k(matcher, input);
            boolean z = true;
            if (kVar2 != null) {
                String str = kVar2.c().f36733a.b().get(1);
                an a2 = kVar.a(Integer.parseInt(str));
                if (a2 != null) {
                    return a2;
                }
                throw new ab("Local property #" + str + " not found in " + kVar.a());
            }
            kotlin.reflect.jvm.internal.impl.c.e a3 = kotlin.reflect.jvm.internal.impl.c.e.a(name);
            p.b(a3, "Name.identifier(name)");
            Collection<an> a4 = kVar.a(a3);
            ArrayList arrayList = new ArrayList();
            for (Object obj : a4) {
                if (p.a((Object) ah.f36880b.a((an) obj).a(), (Object) signature)) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = arrayList;
            if (arrayList2.isEmpty()) {
                throw new ab("Property '" + name + "' (JVM signature: " + signature + ") not resolved in " + kVar);
            } else if (arrayList2.size() == 1) {
                return (an) n.i((List<? extends Object>) arrayList2);
            } else {
                ArrayList arrayList3 = arrayList2;
                LinkedHashMap toSortedMap = new LinkedHashMap();
                for (Object obj2 : arrayList3) {
                    s visibility = ((an) obj2).getVisibility();
                    Object obj3 = toSortedMap.get(visibility);
                    ArrayList arrayList4 = obj3;
                    if (obj3 == null) {
                        arrayList4 = new ArrayList();
                        toSortedMap.put(visibility, arrayList4);
                    }
                    ((List) arrayList4).add(obj2);
                }
                k.f comparator = k.f.f38542a;
                p.d(toSortedMap, "$this$toSortedMap");
                p.d(comparator, "comparator");
                TreeMap treeMap = new TreeMap(comparator);
                treeMap.putAll(toSortedMap);
                Collection<V> values = treeMap.values();
                p.b(values, "properties\n             …                }).values");
                List mostVisibleProperties = (List) n.c(values);
                if (mostVisibleProperties.size() == 1) {
                    p.b(mostVisibleProperties, "mostVisibleProperties");
                    return (an) n.e((List<? extends Object>) mostVisibleProperties);
                }
                kotlin.reflect.jvm.internal.impl.c.e a5 = kotlin.reflect.jvm.internal.impl.c.e.a(name);
                p.b(a5, "Name.identifier(name)");
                String a6 = n.a(kVar.a(a5), StringUtils.LF, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, k.e.f38541a, 30);
                StringBuilder sb = new StringBuilder("Property '");
                sb.append(name);
                sb.append("' (JVM signature: ");
                sb.append(signature);
                sb.append(") not resolved in ");
                sb.append(kVar);
                sb.append(':');
                if (a6.length() != 0) {
                    z = false;
                }
                sb.append(z ? " no members found" : StringUtils.LF.concat(String.valueOf(a6)));
                throw new ab(sb.toString());
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0006\b��\u0010\u0002 \u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Ljava/lang/reflect/Field;", "V", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/u$f.class */
    static final class f extends r implements Function0<Field> {
        f() {
            super(0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0112, code lost:
            if (((!(r0 instanceof kotlin.reflect.jvm.internal.impl.descriptors.an) || (r0 = r0.e()) == null || !r0.getAnnotations().b(kotlin.reflect.jvm.internal.impl.load.java.t.f37909b)) ? r0.getAnnotations().b(kotlin.reflect.jvm.internal.impl.load.java.t.f37909b) : true) != false) goto L_0x00ad;
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.u.f.invoke():java.lang.reflect.Field");
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public u(k container, String name, String signature, Object obj) {
        this(container, name, signature, null, obj);
        p.d(container, "container");
        p.d(name, "name");
        p.d(signature, "signature");
    }

    private u(k kVar, String str, String str2, an anVar, Object obj) {
        this.f38594b = kVar;
        this.f = str;
        this.f38595c = str2;
        this.g = obj;
        ad.b<Field> a2 = ad.a(new f());
        p.b(a2, "ReflectProperties.lazy {…y -> null\n        }\n    }");
        this.f38593a = a2;
        ad.a<an> a3 = ad.a(anVar, new e());
        p.b(a3, "ReflectProperties.lazySo…or(name, signature)\n    }");
        this.e = a3;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public u(kotlin.reflect.jvm.internal.k r8, kotlin.reflect.jvm.internal.impl.descriptors.an r9) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = "container"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r9
            java.lang.String r1 = "descriptor"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r9
            kotlin.reflect.jvm.internal.impl.c.e r0 = r0.getName()
            java.lang.String r0 = r0.a()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "descriptor.name.asString()"
            kotlin.jvm.internal.p.b(r0, r1)
            r0 = r7
            r1 = r8
            r2 = r10
            kotlin.reflect.jvm.internal.ah r3 = kotlin.reflect.jvm.internal.ah.f36880b
            r4 = r9
            kotlin.reflect.jvm.internal.e r3 = r3.a(r4)
            java.lang.String r3 = r3.a()
            r4 = r9
            java.lang.Object r5 = kotlin.jvm.internal.e.NO_RECEIVER
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.u.<init>(kotlin.reflect.jvm.internal.k, kotlin.reflect.jvm.internal.impl.descriptors.an):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Object a(Field field, Object obj) {
        try {
            if (obj == h && b().getExtensionReceiverParameter() == null) {
                throw new RuntimeException("'" + this + "' is not an extension property and thus getExtensionDelegate() is not going to work, use getDelegate() instead");
            }
            return field != null ? field.get(obj) : null;
        } catch (IllegalAccessException e2) {
            throw new IllegalPropertyDelegateAccessException(e2);
        }
    }

    @Override // kotlin.reflect.jvm.internal.f
    public final kotlin.reflect.jvm.internal.a.d<?> c() {
        return h().c();
    }

    @Override // kotlin.reflect.jvm.internal.f
    public final kotlin.reflect.jvm.internal.a.d<?> d() {
        h();
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.f
    public final k e() {
        return this.f38594b;
    }

    public boolean equals(Object obj) {
        u<?> b2 = aj.b(obj);
        return b2 != null && p.a(this.f38594b, b2.f38594b) && p.a((Object) getName(), (Object) b2.getName()) && p.a((Object) this.f38595c, (Object) b2.f38595c) && p.a(this.g, b2.g);
    }

    @Override // kotlin.reflect.jvm.internal.f
    public final boolean f() {
        return !p.a(this.g, kotlin.jvm.internal.e.NO_RECEIVER);
    }

    @Override // kotlin.reflect.KCallable
    public String getName() {
        return this.f;
    }

    public abstract c<V> h();

    public int hashCode() {
        return (((this.f38594b.hashCode() * 31) + getName().hashCode()) * 31) + this.f38595c.hashCode();
    }

    public final Object i() {
        return h.a(this.g, b());
    }

    @Override // kotlin.reflect.KProperty
    public boolean isConst() {
        return b().ar_();
    }

    @Override // kotlin.reflect.KProperty
    public boolean isLateinit() {
        return b().l();
    }

    @Override // kotlin.reflect.KCallable
    public boolean isSuspend() {
        return false;
    }

    public final Field j() {
        return this.f38593a.invoke();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Field k() {
        if (b().as_()) {
            return j();
        }
        return null;
    }

    /* renamed from: l */
    public final an b() {
        an invoke = this.e.invoke();
        p.b(invoke, "_descriptor()");
        return invoke;
    }

    public String toString() {
        af afVar = af.f36874a;
        return af.a(b());
    }
}
