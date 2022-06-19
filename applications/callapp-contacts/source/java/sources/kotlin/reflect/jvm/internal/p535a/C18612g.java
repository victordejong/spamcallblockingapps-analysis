package kotlin.reflect.jvm.internal.p535a;

import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p530f.C18361c;
import kotlin.reflect.jvm.internal.C18635aj;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��B\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0003\b��\u0018��*\f\b��\u0010\u0001 \u0001*\u0004\u0018\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u001cB#\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u001aH\u0016¢\u0006\u0002\u0010\u001bR\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\f\u001a\u00028��8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001d"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller;", "M", "Ljava/lang/reflect/Member;", "Lkotlin/reflect/jvm/internal/calls/Caller;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;", "caller", "isDefault", "", "(Lorg/jetbrains/kotlin/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/calls/Caller;Z)V", "data", "Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller$BoxUnboxData;", "member", "getMember", "()Ljava/lang/reflect/Member;", "parameterTypes", "", "Ljava/lang/reflect/Type;", "getParameterTypes", "()Ljava/util/List;", "returnType", "getReturnType", "()Ljava/lang/reflect/Type;", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "BoxUnboxData", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.a.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/g.class */
public final class C18612g<M extends Member> implements AbstractC18584d<M> {

    /* renamed from: a */
    private final C18613a f63679a;

    /* renamed from: b */
    private final AbstractC18584d<M> f63680b;

    /* renamed from: c */
    private final boolean f63681c;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\r\b\u0002\u0018��2\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\bJ\t\u0010\u0010\u001a\u00020\u0003H\u0086\u0002J\u0016\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005H\u0086\u0002¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006H\u0086\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u001b\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0013"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller$BoxUnboxData;", "", "argumentRange", "Lkotlin/ranges/IntRange;", "unbox", "", "Ljava/lang/reflect/Method;", "box", "(Lkotlin/ranges/IntRange;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V", "getArgumentRange", "()Lkotlin/ranges/IntRange;", "getBox", "()Ljava/lang/reflect/Method;", "getUnbox", "()[Ljava/lang/reflect/Method;", "[Ljava/lang/reflect/Method;", "component1", "component2", "component3", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.a.g$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/g$a.class */
    public static final class C18613a {

        /* renamed from: a */
        final C18361c f63682a;

        /* renamed from: b */
        final Method[] f63683b;

        /* renamed from: c */
        final Method f63684c;

        public C18613a(C18361c argumentRange, Method[] unbox, Method method) {
            C18524p.m3840d(argumentRange, "argumentRange");
            C18524p.m3840d(unbox, "unbox");
            this.f63682a = argumentRange;
            this.f63683b = unbox;
            this.f63684c = method;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0089, code lost:
        if ((r0 instanceof kotlin.reflect.jvm.internal.p535a.AbstractC18583c) != false) goto L23;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C18612g(kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b r7, kotlin.reflect.jvm.internal.p535a.AbstractC18584d<? extends M> r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 779
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.p535a.C18612g.<init>(kotlin.reflect.jvm.internal.impl.descriptors.b, kotlin.reflect.jvm.internal.a.d, boolean):void");
    }

    @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
    /* renamed from: a */
    public final Object mo3802a(Object[] args) {
        C18524p.m3840d(args, "args");
        C18613a c18613a = this.f63679a;
        C18361c c18361c = c18613a.f63682a;
        Method[] methodArr = c18613a.f63683b;
        Method method = c18613a.f63684c;
        Object[] copyOf = Arrays.copyOf(args, args.length);
        C18524p.m3843b(copyOf, "java.util.Arrays.copyOf(this, size)");
        Objects.requireNonNull(copyOf, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        int i = c18361c.f63459a;
        int i2 = c18361c.f63460b;
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
                        C18524p.m3843b(returnType, "method.returnType");
                        obj2 = C18635aj.m3763a((Type) returnType);
                    }
                }
                copyOf[i] = obj2;
                if (i == i2) {
                    break;
                }
                i++;
            }
        }
        Object mo3802a = this.f63680b.mo3802a(copyOf);
        Object obj3 = mo3802a;
        if (method != null) {
            obj3 = method.invoke(null, mo3802a);
            if (obj3 == null) {
                obj3 = mo3802a;
            }
        }
        return obj3;
    }

    @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
    /* renamed from: a */
    public final M mo3803a() {
        return this.f63680b.mo3803a();
    }

    @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
    /* renamed from: b */
    public final Type mo3801b() {
        return this.f63680b.mo3801b();
    }

    @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
    /* renamed from: c */
    public final List<Type> mo3800c() {
        return this.f63680b.mo3800c();
    }
}
