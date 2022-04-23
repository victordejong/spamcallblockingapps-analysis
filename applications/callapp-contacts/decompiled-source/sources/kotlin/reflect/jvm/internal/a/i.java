package kotlin.reflect.jvm.internal.a;

import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.a.d;
import kotlin.reflect.jvm.internal.a.e;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b0\u0018��2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0002\u0016\u0017B\u001d\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J%\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\u0014H\u0004¢\u0006\u0002\u0010\u0015R\u0013\u0010\b\u001a\u0004\u0018\u00010\u00028F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0003\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n��\u0082\u0001\u0002\u0018\u0019¨\u0006\u001a"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass;", "Lkotlin/reflect/jvm/internal/calls/Caller;", "Ljava/lang/reflect/Method;", "unboxMethod", "parameterTypes", "", "Ljava/lang/reflect/Type;", "(Ljava/lang/reflect/Method;Ljava/util/List;)V", "member", "getMember", "()Ljava/lang/reflect/Method;", "getParameterTypes", "()Ljava/util/List;", "returnType", "getReturnType", "()Ljava/lang/reflect/Type;", "callMethod", "", "instance", "args", "", "(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;", "Bound", "Unbound", "Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass$Unbound;", "Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass$Bound;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/i.class */
public abstract class i implements d<Method> {

    /* renamed from: a  reason: collision with root package name */
    private final Type f36863a;

    /* renamed from: b  reason: collision with root package name */
    private final Method f36864b;

    /* renamed from: c  reason: collision with root package name */
    private final List<Type> f36865c;

    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u001b\u0010\b\u001a\u0004\u0018\u00010\u00062\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\nH\u0016¢\u0006\u0002\u0010\u000bR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass$Bound;", "Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass;", "Lkotlin/reflect/jvm/internal/calls/BoundCaller;", "unboxMethod", "Ljava/lang/reflect/Method;", "boundReceiver", "", "(Ljava/lang/reflect/Method;Ljava/lang/Object;)V", "call", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/i$a.class */
    public static final class a extends i implements c {

        /* renamed from: a  reason: collision with root package name */
        private final Object f36866a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Method unboxMethod, Object obj) {
            super(unboxMethod, z.f36608a, null);
            p.d(unboxMethod, "unboxMethod");
            this.f36866a = obj;
        }

        @Override // kotlin.reflect.jvm.internal.a.d
        public final Object a(Object[] args) {
            p.d(args, "args");
            b(args);
            return a(this.f36866a, args);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bH\u0016¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass$Unbound;", "Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass;", "unboxMethod", "Ljava/lang/reflect/Method;", "(Ljava/lang/reflect/Method;)V", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/i$b.class */
    public static final class b extends i {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Method unboxMethod) {
            super(unboxMethod, n.a(unboxMethod.getDeclaringClass()), null);
            p.d(unboxMethod, "unboxMethod");
        }

        @Override // kotlin.reflect.jvm.internal.a.d
        public final Object a(Object[] args) {
            Object[] objArr;
            p.d(args, "args");
            b(args);
            Object obj = args[0];
            e.d dVar = e.f36845a;
            if (args.length <= 1) {
                objArr = new Object[0];
            } else {
                objArr = kotlin.a.i.a(args, 1, args.length);
                Objects.requireNonNull(objArr, "null cannot be cast to non-null type kotlin.Array<T>");
            }
            return a(obj, objArr);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private i(Method method, List<? extends Type> list) {
        this.f36864b = method;
        this.f36865c = list;
        Class<?> returnType = method.getReturnType();
        p.b(returnType, "unboxMethod.returnType");
        this.f36863a = returnType;
    }

    public /* synthetic */ i(Method method, List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(method, list);
    }

    protected final Object a(Object obj, Object[] args) {
        p.d(args, "args");
        return this.f36864b.invoke(obj, Arrays.copyOf(args, args.length));
    }

    @Override // kotlin.reflect.jvm.internal.a.d
    public final /* bridge */ /* synthetic */ Method a() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.a.d
    public final Type b() {
        return this.f36863a;
    }

    public final void b(Object[] args) {
        p.d(args, "args");
        d.a.a(this, args);
    }

    @Override // kotlin.reflect.jvm.internal.a.d
    public final List<Type> c() {
        return this.f36865c;
    }
}
