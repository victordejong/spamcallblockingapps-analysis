package kotlin.reflect.jvm.internal.p535a;

import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.C18458a;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.reflect.AbstractC18551c;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.C19088b;
import kotlin.reflect.jvm.internal.p535a.AbstractC18584d;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0004\b��\u0018��2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0002 !B?\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0006¢\u0006\u0002\u0010\u000eJ\u001b\u0010\u001c\u001a\u0004\u0018\u00010\u00102\n\u0010\u001d\u001a\u0006\u0012\u0002\b\u00030\u001eH\u0016¢\u0006\u0002\u0010\u001fR\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0018\u0010\u0011\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0012\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u0006X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006\""}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller;", "Lkotlin/reflect/jvm/internal/calls/Caller;", "", "jClass", "Ljava/lang/Class;", "parameterNames", "", "", "callMode", "Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;", "origin", "Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;", "methods", "Ljava/lang/reflect/Method;", "(Ljava/lang/Class;Ljava/util/List;Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;Ljava/util/List;)V", "defaultValues", "", "erasedParameterTypes", "member", "getMember", "()Ljava/lang/Void;", "parameterTypes", "Ljava/lang/reflect/Type;", "getParameterTypes", "()Ljava/util/List;", "returnType", "getReturnType", "()Ljava/lang/reflect/Type;", "call", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "CallMode", "Origin", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.a.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/a.class */
public final class C18574a implements AbstractC18584d {

    /* renamed from: a */
    private final List<Type> f63645a;

    /* renamed from: b */
    private final List<Class<?>> f63646b;

    /* renamed from: c */
    private final List<Object> f63647c;

    /* renamed from: d */
    private final Class<?> f63648d;

    /* renamed from: e */
    private final List<String> f63649e;

    /* renamed from: f */
    private final EnumC18575a f63650f;

    /* renamed from: g */
    private final List<Method> f63651g;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;", "", "(Ljava/lang/String;I)V", "CALL_BY_NAME", "POSITIONAL_CALL", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.a.a$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/a$a.class */
    public enum EnumC18575a {
        CALL_BY_NAME,
        POSITIONAL_CALL
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;", "", "(Ljava/lang/String;I)V", "JAVA", "KOTLIN", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.a.a$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/a$b.class */
    public enum EnumC18576b {
        JAVA,
        KOTLIN
    }

    public C18574a(Class<?> jClass, List<String> parameterNames, EnumC18575a callMode, EnumC18576b origin, List<Method> methods) {
        C18524p.m3840d(jClass, "jClass");
        C18524p.m3840d(parameterNames, "parameterNames");
        C18524p.m3840d(callMode, "callMode");
        C18524p.m3840d(origin, "origin");
        C18524p.m3840d(methods, "methods");
        this.f63648d = jClass;
        this.f63649e = parameterNames;
        this.f63650f = callMode;
        this.f63651g = methods;
        List<Method> list = methods;
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list, 10));
        for (Method method : list) {
            arrayList.add(method.getGenericReturnType());
        }
        this.f63645a = arrayList;
        List<Method> list2 = this.f63651g;
        ArrayList arrayList2 = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
        for (Method method2 : list2) {
            Class<?> it2 = method2.getReturnType();
            C18524p.m3843b(it2, "it");
            Class<?> m2655d = C19088b.m2655d(it2);
            if (m2655d != null) {
                it2 = m2655d;
            }
            arrayList2.add(it2);
        }
        this.f63646b = arrayList2;
        List<Method> list3 = this.f63651g;
        ArrayList arrayList3 = new ArrayList(C18282n.m4163a((Iterable) list3, 10));
        for (Method method3 : list3) {
            arrayList3.add(method3.getDefaultValue());
        }
        this.f63647c = arrayList3;
        if (this.f63650f == EnumC18575a.POSITIONAL_CALL && origin == EnumC18576b.JAVA && (!C18282n.m4131c(this.f63649e, "value").isEmpty())) {
            throw new UnsupportedOperationException("Positional call of a Java annotation constructor is allowed only if there are no parameters or one parameter named \"value\". This restriction exists because Java annotations (in contrast to Kotlin)do not impose any order on their arguments. Use KCallable#callBy instead.");
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ C18574a(java.lang.Class r8, java.util.List r9, kotlin.reflect.jvm.internal.p535a.C18574a.EnumC18575a r10, kotlin.reflect.jvm.internal.p535a.C18574a.EnumC18576b r11, java.util.List r12, int r13, kotlin.jvm.internal.DefaultConstructorMarker r14) {
        /*
            r7 = this;
            r0 = r13
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L58
            r0 = r9
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            r14 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r14
            r3 = 10
            int r2 = kotlin.p518a.C18282n.m4163a(r2, r3)
            r1.<init>(r2)
            java.util.Collection r0 = (java.util.Collection) r0
            r12 = r0
            r0 = r14
            java.util.Iterator r0 = r0.iterator()
            r14 = r0
        L2a:
            r0 = r14
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L51
            r0 = r12
            r1 = r8
            r2 = r14
            java.lang.Object r2 = r2.next()
            java.lang.String r2 = (java.lang.String) r2
            r3 = 0
            java.lang.Class[] r3 = new java.lang.Class[r3]
            java.lang.reflect.Method r1 = r1.getDeclaredMethod(r2, r3)
            boolean r0 = r0.add(r1)
            goto L2a
        L51:
            r0 = r12
            java.util.List r0 = (java.util.List) r0
            r12 = r0
        L58:
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.p535a.C18574a.<init>(java.lang.Class, java.util.List, kotlin.reflect.jvm.internal.a.a$a, kotlin.reflect.jvm.internal.a.a$b, java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
    /* renamed from: a */
    public final Object mo3802a(Object[] args) {
        String str;
        C18524p.m3840d(args, "args");
        C18524p.m3840d(args, "args");
        AbstractC18584d.C18585a.m3819a(this, args);
        ArrayList arrayList = new ArrayList(args.length);
        int length = args.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            Object obj = args[i];
            Object m3821a = (obj == null && this.f63650f == EnumC18575a.CALL_BY_NAME) ? this.f63647c.get(i2) : C18577b.m3821a(obj, this.f63646b.get(i2));
            if (m3821a == null) {
                String str2 = this.f63649e.get(i2);
                Class<?> cls = this.f63646b.get(i2);
                AbstractC18551c m3882b = C18524p.m3850a(cls, Class.class) ? C18496ac.m3882b(AbstractC18551c.class) : (!cls.isArray() || !C18524p.m3850a(cls.getComponentType(), Class.class)) ? C18458a.m3895a(cls) : C18496ac.m3882b(AbstractC18551c[].class);
                if (C18524p.m3850a((Object) m3882b.mo3722c(), (Object) C18496ac.m3882b(Object[].class).mo3722c())) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(m3882b.mo3722c());
                    sb.append('<');
                    Class<?> componentType = C18458a.m3893a(m3882b).getComponentType();
                    C18524p.m3843b(componentType, "kotlinClass.java.componentType");
                    sb.append(C18458a.m3895a(componentType).mo3722c());
                    sb.append('>');
                    str = sb.toString();
                } else {
                    str = m3882b.mo3722c();
                }
                throw new IllegalArgumentException("Argument #" + i2 + ' ' + str2 + " is not of the required type " + str);
            }
            arrayList.add(m3821a);
            i++;
            i2++;
        }
        return C18577b.m3822a(this.f63648d, C18247ai.m4256a(C18282n.m4127d((Iterable) this.f63649e, (Iterable) arrayList)), this.f63651g);
    }

    @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Member mo3803a() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
    /* renamed from: b */
    public final Type mo3801b() {
        return this.f63648d;
    }

    @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
    /* renamed from: c */
    public final List<Type> mo3800c() {
        return this.f63645a;
    }
}
