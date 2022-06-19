package kotlin.reflect.jvm.internal.p535a;

import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.p535a.AbstractC18584d;
import kotlin.reflect.jvm.internal.p535a.AbstractC18586e;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b0\u0018��2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0002\u0016\u0017B\u001d\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J%\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\u0014H\u0004¢\u0006\u0002\u0010\u0015R\u0013\u0010\b\u001a\u0004\u0018\u00010\u00028F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0003\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n��\u0082\u0001\u0002\u0018\u0019¨\u0006\u001a"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass;", "Lkotlin/reflect/jvm/internal/calls/Caller;", "Ljava/lang/reflect/Method;", "unboxMethod", "parameterTypes", "", "Ljava/lang/reflect/Type;", "(Ljava/lang/reflect/Method;Ljava/util/List;)V", "member", "getMember", "()Ljava/lang/reflect/Method;", "getParameterTypes", "()Ljava/util/List;", "returnType", "getReturnType", "()Ljava/lang/reflect/Type;", "callMethod", "", "instance", "args", "", "(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;", "Bound", "Unbound", "Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass$Unbound;", "Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass$Bound;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.a.i */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/i.class */
public abstract class AbstractC18615i implements AbstractC18584d<Method> {

    /* renamed from: a */
    private final Type f63685a;

    /* renamed from: b */
    private final Method f63686b;

    /* renamed from: c */
    private final List<Type> f63687c;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u001b\u0010\b\u001a\u0004\u0018\u00010\u00062\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\nH\u0016¢\u0006\u0002\u0010\u000bR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass$Bound;", "Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass;", "Lkotlin/reflect/jvm/internal/calls/BoundCaller;", "unboxMethod", "Ljava/lang/reflect/Method;", "boundReceiver", "", "(Ljava/lang/reflect/Method;Ljava/lang/Object;)V", "call", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.a.i$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/i$a.class */
    public static final class C18616a extends AbstractC18615i implements AbstractC18583c {

        /* renamed from: a */
        private final Object f63688a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18616a(Method unboxMethod, Object obj) {
            super(unboxMethod, C18297z.f63400a, null);
            C18524p.m3840d(unboxMethod, "unboxMethod");
            this.f63688a = obj;
        }

        @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
        /* renamed from: a */
        public final Object mo3802a(Object[] args) {
            C18524p.m3840d(args, "args");
            m3804b(args);
            return m3805a(this.f63688a, args);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bH\u0016¢\u0006\u0002\u0010\t¨\u0006\n"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass$Unbound;", "Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass;", "unboxMethod", "Ljava/lang/reflect/Method;", "(Ljava/lang/reflect/Method;)V", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.a.i$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/i$b.class */
    public static final class C18617b extends AbstractC18615i {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18617b(Method unboxMethod) {
            super(unboxMethod, C18282n.m4176a(unboxMethod.getDeclaringClass()), null);
            C18524p.m3840d(unboxMethod, "unboxMethod");
        }

        @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
        /* renamed from: a */
        public final Object mo3802a(Object[] args) {
            Object[] objArr;
            C18524p.m3840d(args, "args");
            m3804b(args);
            Object obj = args[0];
            AbstractC18586e.C18590d c18590d = AbstractC18586e.f63666a;
            if (args.length <= 1) {
                objArr = new Object[0];
            } else {
                objArr = C18273i.m4220a(args, 1, args.length);
                Objects.requireNonNull(objArr, "null cannot be cast to non-null type kotlin.Array<T>");
            }
            return m3805a(obj, objArr);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private AbstractC18615i(Method method, List<? extends Type> list) {
        this.f63686b = method;
        this.f63687c = list;
        Class<?> returnType = method.getReturnType();
        C18524p.m3843b(returnType, "unboxMethod.returnType");
        this.f63685a = returnType;
    }

    public /* synthetic */ AbstractC18615i(Method method, List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(method, list);
    }

    /* renamed from: a */
    protected final Object m3805a(Object obj, Object[] args) {
        C18524p.m3840d(args, "args");
        return this.f63686b.invoke(obj, Arrays.copyOf(args, args.length));
    }

    @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Method mo3803a() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
    /* renamed from: b */
    public final Type mo3801b() {
        return this.f63685a;
    }

    /* renamed from: b */
    public final void m3804b(Object[] args) {
        C18524p.m3840d(args, "args");
        AbstractC18584d.C18585a.m3819a(this, args);
    }

    @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
    /* renamed from: c */
    public final List<Type> mo3800c() {
        return this.f63687c;
    }
}
