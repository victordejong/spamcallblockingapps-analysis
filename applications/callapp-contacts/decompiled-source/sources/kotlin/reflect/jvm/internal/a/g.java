package kotlin.reflect.jvm.internal.a;

import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.f.c;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.aj;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0003\b��\u0018��*\f\b��\u0010\u0001 \u0001*\u0004\u0018\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u001cB#\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u001aH\u0016¢\u0006\u0002\u0010\u001bR\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\f\u001a\u00028��8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001d"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller;", "M", "Ljava/lang/reflect/Member;", "Lkotlin/reflect/jvm/internal/calls/Caller;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;", "caller", "isDefault", "", "(Lorg/jetbrains/kotlin/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/calls/Caller;Z)V", "data", "Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller$BoxUnboxData;", "member", "getMember", "()Ljava/lang/reflect/Member;", "parameterTypes", "", "Ljava/lang/reflect/Type;", "getParameterTypes", "()Ljava/util/List;", "returnType", "getReturnType", "()Ljava/lang/reflect/Type;", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "BoxUnboxData", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/g.class */
public final class g<M extends Member> implements d<M> {

    /* renamed from: a  reason: collision with root package name */
    private final a f36857a;

    /* renamed from: b  reason: collision with root package name */
    private final d<M> f36858b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f36859c;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\r\b\u0002\u0018��2\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\bJ\t\u0010\u0010\u001a\u00020\u0003H\u0086\u0002J\u0016\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005H\u0086\u0002¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006H\u0086\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u001b\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0013"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller$BoxUnboxData;", "", "argumentRange", "Lkotlin/ranges/IntRange;", "unbox", "", "Ljava/lang/reflect/Method;", "box", "(Lkotlin/ranges/IntRange;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V", "getArgumentRange", "()Lkotlin/ranges/IntRange;", "getBox", "()Ljava/lang/reflect/Method;", "getUnbox", "()[Ljava/lang/reflect/Method;", "[Ljava/lang/reflect/Method;", "component1", "component2", "component3", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/g$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final c f36860a;

        /* renamed from: b  reason: collision with root package name */
        final Method[] f36861b;

        /* renamed from: c  reason: collision with root package name */
        final Method f36862c;

        public a(c argumentRange, Method[] unbox, Method method) {
            p.d(argumentRange, "argumentRange");
            p.d(unbox, "unbox");
            this.f36860a = argumentRange;
            this.f36861b = unbox;
            this.f36862c = method;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0089, code lost:
        if ((r0 instanceof kotlin.reflect.jvm.internal.a.c) != false) goto L_0x00c3;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public g(kotlin.reflect.jvm.internal.impl.descriptors.b r7, kotlin.reflect.jvm.internal.a.d<? extends M> r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 779
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.a.g.<init>(kotlin.reflect.jvm.internal.impl.descriptors.b, kotlin.reflect.jvm.internal.a.d, boolean):void");
    }

    @Override // kotlin.reflect.jvm.internal.a.d
    public final Object a(Object[] args) {
        p.d(args, "args");
        a aVar = this.f36857a;
        c cVar = aVar.f36860a;
        Method[] methodArr = aVar.f36861b;
        Method method = aVar.f36862c;
        Object[] copyOf = Arrays.copyOf(args, args.length);
        p.b(copyOf, "java.util.Arrays.copyOf(this, size)");
        Objects.requireNonNull(copyOf, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        int i = cVar.f36664a;
        int i2 = cVar.f36665b;
        if (i <= i2) {
            while (true) {
                Method method2 = methodArr[i];
                Object obj = args[i];
                Object obj2 = obj;
                if (method2 != null) {
                    if (obj != null) {
                        obj2 = method2.invoke(obj, new Object[0]);
                    } else {
                        Class<?> returnType = method2.getReturnType();
                        p.b(returnType, "method.returnType");
                        obj2 = aj.a((Type) returnType);
                    }
                }
                copyOf[i] = obj2;
                if (i == i2) {
                    break;
                }
                i++;
            }
        }
        Object a2 = this.f36858b.a(copyOf);
        Object obj3 = a2;
        if (method != null) {
            obj3 = method.invoke(null, a2);
            if (obj3 == null) {
                obj3 = a2;
            }
        }
        return obj3;
    }

    @Override // kotlin.reflect.jvm.internal.a.d
    public final M a() {
        return this.f36858b.a();
    }

    @Override // kotlin.reflect.jvm.internal.a.d
    public final Type b() {
        return this.f36858b.b();
    }

    @Override // kotlin.reflect.jvm.internal.a.d
    public final List<Type> c() {
        return this.f36858b.c();
    }
}
