package com.criteo.publisher.logging;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.logging.a */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/a.class */
public final class C8393a {

    /* renamed from: a */
    public static final C8393a f30118a = new C8393a();

    @Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: com.criteo.publisher.logging.a$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/a$a.class */
    public @interface AbstractC8394a {
    }

    /* renamed from: com.criteo.publisher.logging.a$b */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/a$b.class */
    public static final class C8395b extends AbstractC18526r implements Function1<Class<?>, String> {

        /* renamed from: a */
        public static final C8395b f30119a = new C8395b();

        C8395b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ String invoke(Class<?> cls) {
            Class<?> it2 = cls;
            C18524p.m3849a((Object) it2, "it");
            String simpleName = it2.getSimpleName();
            C18524p.m3849a((Object) simpleName, "it.simpleName");
            return simpleName;
        }
    }

    private C8393a() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0037, code lost:
        if (r0 == null) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ java.lang.String m25746a(java.lang.reflect.Method r9) {
        /*
            r0 = r9
            java.lang.Class[] r0 = r0.getParameterTypes()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "callerMethod.parameterTypes"
            kotlin.jvm.internal.C18524p.m3849a(r0, r1)
            r0 = r10
            java.lang.String r1 = ", "
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            com.criteo.publisher.logging.a$b r6 = com.criteo.publisher.logging.C8393a.C8395b.f30119a
            r7 = 30
            java.lang.String r0 = kotlin.p518a.C18273i.m4202a(r0, r1, r2, r3, r4, r5, r6, r7)
            r11 = r0
            r0 = r9
            java.lang.Class r0 = r0.getDeclaringClass()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "callerMethod.declaringClass"
            kotlin.jvm.internal.C18524p.m3849a(r0, r1)
            r0 = r10
            java.lang.Package r0 = r0.getPackage()
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L3a
            r0 = r10
            java.lang.String r0 = r0.getName()
            r12 = r0
            r0 = r12
            r10 = r0
            r0 = r12
            if (r0 != 0) goto L3d
        L3a:
            java.lang.String r0 = ""
            r10 = r0
        L3d:
            r0 = r9
            java.lang.Class r0 = r0.getDeclaringClass()
            r12 = r0
            r0 = r12
            java.lang.String r1 = "callerMethod.declaringClass"
            kotlin.jvm.internal.C18524p.m3849a(r0, r1)
            r0 = r12
            java.lang.String r0 = r0.getName()
            r12 = r0
            r0 = r12
            java.lang.String r1 = "callerMethod.declaringClass.name"
            kotlin.jvm.internal.C18524p.m3849a(r0, r1)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r13 = r0
            r0 = r13
            r1 = r10
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            r1 = 46
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r12
            r1 = r13
            java.lang.String r1 = r1.toString()
            java.lang.String r0 = kotlin.p532h.C18425p.m3931a(r0, r1)
            r12 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = r10
            r1 = r12
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            r1 = 35
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            r1 = r9
            java.lang.String r1 = r1.getName()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            r1 = 40
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            r1 = r11
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            r1 = 41
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.logging.C8393a.m25746a(java.lang.reflect.Method):java.lang.String");
    }
}
