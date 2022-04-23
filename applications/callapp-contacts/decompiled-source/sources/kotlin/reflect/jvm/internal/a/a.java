package kotlin.reflect.jvm.internal.a;

import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.a.ai;
import kotlin.a.n;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.reflect.c;
import kotlin.reflect.jvm.internal.a.d;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0004\b��\u0018��2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0002 !B?\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0006¢\u0006\u0002\u0010\u000eJ\u001b\u0010\u001c\u001a\u0004\u0018\u00010\u00102\n\u0010\u001d\u001a\u0006\u0012\u0002\b\u00030\u001eH\u0016¢\u0006\u0002\u0010\u001fR\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0018\u0010\u0011\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0012\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u0006X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006\""}, d2 = {"Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller;", "Lkotlin/reflect/jvm/internal/calls/Caller;", "", "jClass", "Ljava/lang/Class;", "parameterNames", "", "", "callMode", "Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;", "origin", "Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;", "methods", "Ljava/lang/reflect/Method;", "(Ljava/lang/Class;Ljava/util/List;Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;Ljava/util/List;)V", "defaultValues", "", "erasedParameterTypes", "member", "getMember", "()Ljava/lang/Void;", "parameterTypes", "Ljava/lang/reflect/Type;", "getParameterTypes", "()Ljava/util/List;", "returnType", "getReturnType", "()Ljava/lang/reflect/Type;", "call", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "CallMode", "Origin", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/a.class */
public final class a implements d {

    /* renamed from: a  reason: collision with root package name */
    private final List<Type> f36830a;

    /* renamed from: b  reason: collision with root package name */
    private final List<Class<?>> f36831b;

    /* renamed from: c  reason: collision with root package name */
    private final List<Object> f36832c;

    /* renamed from: d  reason: collision with root package name */
    private final Class<?> f36833d;
    private final List<String> e;
    private final EnumC0614a f;
    private final List<Method> g;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;", "", "(Ljava/lang/String;I)V", "CALL_BY_NAME", "POSITIONAL_CALL", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/a$a.class */
    public enum EnumC0614a {
        CALL_BY_NAME,
        POSITIONAL_CALL
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;", "", "(Ljava/lang/String;I)V", "JAVA", "KOTLIN", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/a$b.class */
    public enum b {
        JAVA,
        KOTLIN
    }

    public a(Class<?> jClass, List<String> parameterNames, EnumC0614a callMode, b origin, List<Method> methods) {
        p.d(jClass, "jClass");
        p.d(parameterNames, "parameterNames");
        p.d(callMode, "callMode");
        p.d(origin, "origin");
        p.d(methods, "methods");
        this.f36833d = jClass;
        this.e = parameterNames;
        this.f = callMode;
        this.g = methods;
        List<Method> list = methods;
        ArrayList arrayList = new ArrayList(n.a((Iterable) list, 10));
        for (Method method : list) {
            arrayList.add(method.getGenericReturnType());
        }
        this.f36830a = arrayList;
        List<Method> list2 = this.g;
        ArrayList arrayList2 = new ArrayList(n.a((Iterable) list2, 10));
        for (Method method2 : list2) {
            Class<?> it2 = method2.getReturnType();
            p.b(it2, "it");
            Class<?> d2 = kotlin.reflect.jvm.internal.impl.descriptors.d.b.b.d(it2);
            if (d2 != null) {
                it2 = d2;
            }
            arrayList2.add(it2);
        }
        this.f36831b = arrayList2;
        List<Method> list3 = this.g;
        ArrayList arrayList3 = new ArrayList(n.a((Iterable) list3, 10));
        for (Method method3 : list3) {
            arrayList3.add(method3.getDefaultValue());
        }
        this.f36832c = arrayList3;
        if (this.f == EnumC0614a.POSITIONAL_CALL && origin == b.JAVA && (!n.c(this.e, "value").isEmpty())) {
            throw new UnsupportedOperationException("Positional call of a Java annotation constructor is allowed only if there are no parameters or one parameter named \"value\". This restriction exists because Java annotations (in contrast to Kotlin)do not impose any order on their arguments. Use KCallable#callBy instead.");
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ a(java.lang.Class r8, java.util.List r9, kotlin.reflect.jvm.internal.a.a.EnumC0614a r10, kotlin.reflect.jvm.internal.a.a.b r11, java.util.List r12, int r13, kotlin.jvm.internal.DefaultConstructorMarker r14) {
        /*
            r7 = this;
            r0 = r13
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0058
            r0 = r9
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            r14 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r14
            r3 = 10
            int r2 = kotlin.a.n.a(r2, r3)
            r1.<init>(r2)
            java.util.Collection r0 = (java.util.Collection) r0
            r12 = r0
            r0 = r14
            java.util.Iterator r0 = r0.iterator()
            r14 = r0
        L_0x002a:
            r0 = r14
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0051
            r0 = r12
            r1 = r8
            r2 = r14
            java.lang.Object r2 = r2.next()
            java.lang.String r2 = (java.lang.String) r2
            r3 = 0
            java.lang.Class[] r3 = new java.lang.Class[r3]
            java.lang.reflect.Method r1 = r1.getDeclaredMethod(r2, r3)
            boolean r0 = r0.add(r1)
            goto L_0x002a
        L_0x0051:
            r0 = r12
            java.util.List r0 = (java.util.List) r0
            r12 = r0
        L_0x0058:
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.a.a.<init>(java.lang.Class, java.util.List, kotlin.reflect.jvm.internal.a.a$a, kotlin.reflect.jvm.internal.a.a$b, java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    @Override // kotlin.reflect.jvm.internal.a.d
    public final Object a(Object[] args) {
        String str;
        p.d(args, "args");
        p.d(args, "args");
        d.a.a(this, args);
        ArrayList arrayList = new ArrayList(args.length);
        int length = args.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            Object obj = args[i];
            Object a2 = (obj == null && this.f == EnumC0614a.CALL_BY_NAME) ? this.f36832c.get(i2) : kotlin.reflect.jvm.internal.a.b.a(obj, this.f36831b.get(i2));
            if (a2 == null) {
                String str2 = this.e.get(i2);
                Class<?> cls = this.f36831b.get(i2);
                c b2 = p.a(cls, Class.class) ? ac.b(c.class) : (!cls.isArray() || !p.a(cls.getComponentType(), Class.class)) ? kotlin.jvm.a.a(cls) : ac.b(c[].class);
                if (p.a((Object) b2.c(), (Object) ac.b(Object[].class).c())) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(b2.c());
                    sb.append('<');
                    Class<?> componentType = kotlin.jvm.a.a(b2).getComponentType();
                    p.b(componentType, "kotlinClass.java.componentType");
                    sb.append(kotlin.jvm.a.a(componentType).c());
                    sb.append('>');
                    str = sb.toString();
                } else {
                    str = b2.c();
                }
                throw new IllegalArgumentException("Argument #" + i2 + ' ' + str2 + " is not of the required type " + str);
            }
            arrayList.add(a2);
            i++;
            i2++;
        }
        return kotlin.reflect.jvm.internal.a.b.a(this.f36833d, ai.a(n.d((Iterable) this.e, (Iterable) arrayList)), this.g);
    }

    @Override // kotlin.reflect.jvm.internal.a.d
    public final /* bridge */ /* synthetic */ Member a() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.a.d
    public final Type b() {
        return this.f36833d;
    }

    @Override // kotlin.reflect.jvm.internal.a.d
    public final List<Type> c() {
        return this.f36830a;
    }
}
