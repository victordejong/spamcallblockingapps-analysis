package kotlin.reflect.jvm.internal.a;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.a.i;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.af;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.a.d;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b0\u0018�� \u001e*\n\b��\u0010\u0001 \u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\b\u001b\u001c\u001d\u001e\u001f !\"B3\b\u0002\u0012\u0006\u0010\u0004\u001a\u00028��\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0002\b\u0003\u0018\u00010\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\n¢\u0006\u0002\u0010\u000bJ\u0012\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0004R\u0017\u0010\u0007\u001a\b\u0012\u0002\b\u0003\u0018\u00010\b¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0004\u001a\u00028��¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u0012X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0016\u0082\u0001\u0007#$%&'()¨\u0006*"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl;", "M", "Ljava/lang/reflect/Member;", "Lkotlin/reflect/jvm/internal/calls/Caller;", "member", "returnType", "Ljava/lang/reflect/Type;", "instanceClass", "Ljava/lang/Class;", "valueParameterTypes", "", "(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V", "getInstanceClass", "()Ljava/lang/Class;", "getMember", "()Ljava/lang/reflect/Member;", "Ljava/lang/reflect/Member;", "parameterTypes", "", "getParameterTypes", "()Ljava/util/List;", "getReturnType", "()Ljava/lang/reflect/Type;", "checkObjectInstance", "", "obj", "", "AccessorForHiddenBoundConstructor", "AccessorForHiddenConstructor", "BoundConstructor", "Companion", "Constructor", "FieldGetter", "FieldSetter", "Method", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Constructor;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$BoundConstructor;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$AccessorForHiddenConstructor;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$AccessorForHiddenBoundConstructor;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e.class */
public abstract class e<M extends Member> implements kotlin.reflect.jvm.internal.a.d<M> {

    /* renamed from: a  reason: collision with root package name */
    public static final d f36845a = new d(null);

    /* renamed from: b  reason: collision with root package name */
    private final List<Type> f36846b;

    /* renamed from: c  reason: collision with root package name */
    private final M f36847c;

    /* renamed from: d  reason: collision with root package name */
    private final Type f36848d;
    private final Class<?> e;

    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u00012\u00020\u0003B\u001b\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u001b\u0010\b\u001a\u0004\u0018\u00010\u00062\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\nH\u0016¢\u0006\u0002\u0010\u000bR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$AccessorForHiddenBoundConstructor;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl;", "Ljava/lang/reflect/Constructor;", "Lkotlin/reflect/jvm/internal/calls/BoundCaller;", "constructor", "boundReceiver", "", "(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V", "call", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$a.class */
    public static final class a extends e<Constructor<?>> implements kotlin.reflect.jvm.internal.a.c {

        /* renamed from: b  reason: collision with root package name */
        private final Object f36849b;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public a(java.lang.reflect.Constructor<?> r8, java.lang.Object r9) {
            /*
                r7 = this;
                r0 = r8
                java.lang.String r1 = "constructor"
                kotlin.jvm.internal.p.d(r0, r1)
                r0 = r8
                java.lang.reflect.Member r0 = (java.lang.reflect.Member) r0
                r10 = r0
                r0 = r8
                java.lang.Class r0 = r0.getDeclaringClass()
                r11 = r0
                r0 = r11
                java.lang.String r1 = "constructor.declaringClass"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r11
                java.lang.reflect.Type r0 = (java.lang.reflect.Type) r0
                r11 = r0
                r0 = r8
                java.lang.reflect.Type[] r0 = r0.getGenericParameterTypes()
                r8 = r0
                r0 = r8
                java.lang.String r1 = "constructor.genericParameterTypes"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r8
                int r0 = r0.length
                r1 = 2
                if (r0 > r1) goto L_0x0038
                r0 = 0
                java.lang.reflect.Type[] r0 = new java.lang.reflect.Type[r0]
                r8 = r0
                goto L_0x0049
            L_0x0038:
                r0 = r8
                r1 = 1
                r2 = r8
                int r2 = r2.length
                r3 = 1
                int r2 = r2 - r3
                java.lang.Object[] r0 = kotlin.a.i.a(r0, r1, r2)
                r8 = r0
                r0 = r8
                java.lang.String r1 = "null cannot be cast to non-null type kotlin.Array<T>"
                java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            L_0x0049:
                r0 = r7
                r1 = r10
                r2 = r11
                r3 = 0
                r4 = r8
                java.lang.reflect.Type[] r4 = (java.lang.reflect.Type[]) r4
                r5 = 0
                r0.<init>(r1, r2, r3, r4, r5)
                r0 = r7
                r1 = r9
                r0.f36849b = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.a.e.a.<init>(java.lang.reflect.Constructor, java.lang.Object):void");
        }

        @Override // kotlin.reflect.jvm.internal.a.d
        public final Object a(Object[] args) {
            p.d(args, "args");
            b(args);
            Constructor<?> a2 = a();
            af afVar = new af(3);
            afVar.b(this.f36849b);
            afVar.a((Object) args);
            afVar.b(null);
            return a2.newInstance(afVar.a(new Object[afVar.f36784a.size()]));
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001B\u0011\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0002\u0010\u0004J\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bH\u0016¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$AccessorForHiddenConstructor;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl;", "Ljava/lang/reflect/Constructor;", "constructor", "(Ljava/lang/reflect/Constructor;)V", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$b.class */
    public static final class b extends e<Constructor<?>> {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public b(java.lang.reflect.Constructor<?> r8) {
            /*
                r7 = this;
                r0 = r8
                java.lang.String r1 = "constructor"
                kotlin.jvm.internal.p.d(r0, r1)
                r0 = r8
                java.lang.reflect.Member r0 = (java.lang.reflect.Member) r0
                r9 = r0
                r0 = r8
                java.lang.Class r0 = r0.getDeclaringClass()
                r10 = r0
                r0 = r10
                java.lang.String r1 = "constructor.declaringClass"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r10
                java.lang.reflect.Type r0 = (java.lang.reflect.Type) r0
                r10 = r0
                r0 = r8
                java.lang.reflect.Type[] r0 = r0.getGenericParameterTypes()
                r8 = r0
                r0 = r8
                java.lang.String r1 = "constructor.genericParameterTypes"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r8
                int r0 = r0.length
                r1 = 1
                if (r0 > r1) goto L_0x0034
                r0 = 0
                java.lang.reflect.Type[] r0 = new java.lang.reflect.Type[r0]
                r8 = r0
                goto L_0x0045
            L_0x0034:
                r0 = r8
                r1 = 0
                r2 = r8
                int r2 = r2.length
                r3 = 1
                int r2 = r2 - r3
                java.lang.Object[] r0 = kotlin.a.i.a(r0, r1, r2)
                r8 = r0
                r0 = r8
                java.lang.String r1 = "null cannot be cast to non-null type kotlin.Array<T>"
                java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            L_0x0045:
                r0 = r7
                r1 = r9
                r2 = r10
                r3 = 0
                r4 = r8
                java.lang.reflect.Type[] r4 = (java.lang.reflect.Type[]) r4
                r5 = 0
                r0.<init>(r1, r2, r3, r4, r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.a.e.b.<init>(java.lang.reflect.Constructor):void");
        }

        @Override // kotlin.reflect.jvm.internal.a.d
        public final Object a(Object[] args) {
            p.d(args, "args");
            b(args);
            Constructor<?> a2 = a();
            af afVar = new af(2);
            afVar.a((Object) args);
            afVar.b(null);
            return a2.newInstance(afVar.a(new Object[afVar.f36784a.size()]));
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u00012\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00030\u0002B\u001b\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u001b\u0010\b\u001a\u0004\u0018\u00010\u00062\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\nH\u0016¢\u0006\u0002\u0010\u000bR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$BoundConstructor;", "Lkotlin/reflect/jvm/internal/calls/BoundCaller;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl;", "Ljava/lang/reflect/Constructor;", "constructor", "boundReceiver", "", "(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V", "call", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$c.class */
    public static final class c extends e<Constructor<?>> implements kotlin.reflect.jvm.internal.a.c {

        /* renamed from: b  reason: collision with root package name */
        private final Object f36850b;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public c(java.lang.reflect.Constructor<?> r8, java.lang.Object r9) {
            /*
                r7 = this;
                r0 = r8
                java.lang.String r1 = "constructor"
                kotlin.jvm.internal.p.d(r0, r1)
                r0 = r8
                java.lang.reflect.Member r0 = (java.lang.reflect.Member) r0
                r10 = r0
                r0 = r8
                java.lang.Class r0 = r0.getDeclaringClass()
                r11 = r0
                r0 = r11
                java.lang.String r1 = "constructor.declaringClass"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r11
                java.lang.reflect.Type r0 = (java.lang.reflect.Type) r0
                r11 = r0
                r0 = r8
                java.lang.reflect.Type[] r0 = r0.getGenericParameterTypes()
                r8 = r0
                r0 = r8
                java.lang.String r1 = "constructor.genericParameterTypes"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r7
                r1 = r10
                r2 = r11
                r3 = 0
                r4 = r8
                r5 = 0
                r0.<init>(r1, r2, r3, r4, r5)
                r0 = r7
                r1 = r9
                r0.f36850b = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.a.e.c.<init>(java.lang.reflect.Constructor, java.lang.Object):void");
        }

        @Override // kotlin.reflect.jvm.internal.a.d
        public final Object a(Object[] args) {
            p.d(args, "args");
            b(args);
            Constructor<?> a2 = a();
            af afVar = new af(2);
            afVar.b(this.f36850b);
            afVar.a((Object) args);
            return a2.newInstance(afVar.a(new Object[afVar.f36784a.size()]));
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0005\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0006\b\u0001\u0010\u0005\u0018\u0001*\n\u0012\u0006\b\u0001\u0012\u0002H\u00050\u0004H\u0086\b¢\u0006\u0002\u0010\u0006J(\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0006\b\u0001\u0010\u0005\u0018\u0001*\n\u0012\u0006\b\u0001\u0012\u0002H\u00050\u0004H\u0086\b¢\u0006\u0002\u0010\u0006J(\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0006\b\u0001\u0010\u0005\u0018\u0001*\n\u0012\u0006\b\u0001\u0012\u0002H\u00050\u0004H\u0086\b¢\u0006\u0002\u0010\u0006¨\u0006\t"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$Companion;", "", "()V", "dropFirst", "", "T", "([Ljava/lang/Object;)[Ljava/lang/Object;", "dropFirstAndLast", "dropLast", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$d.class */
    public static final class d {
        private d() {
        }

        public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001B\u0011\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0002\u0010\u0004J\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bH\u0016¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$Constructor;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl;", "Ljava/lang/reflect/Constructor;", "constructor", "(Ljava/lang/reflect/Constructor;)V", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.a.e$e  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$e.class */
    public static final class C0616e extends e<Constructor<?>> {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C0616e(java.lang.reflect.Constructor<?> r8) {
            /*
                r7 = this;
                r0 = r8
                java.lang.String r1 = "constructor"
                kotlin.jvm.internal.p.d(r0, r1)
                r0 = r8
                java.lang.reflect.Member r0 = (java.lang.reflect.Member) r0
                r9 = r0
                r0 = r8
                java.lang.Class r0 = r0.getDeclaringClass()
                r10 = r0
                r0 = r10
                java.lang.String r1 = "constructor.declaringClass"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r10
                java.lang.reflect.Type r0 = (java.lang.reflect.Type) r0
                r11 = r0
                r0 = r8
                java.lang.Class r0 = r0.getDeclaringClass()
                r12 = r0
                r0 = r12
                java.lang.String r1 = "klass"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r12
                java.lang.Class r0 = r0.getDeclaringClass()
                r10 = r0
                r0 = r10
                if (r0 == 0) goto L_0x0041
                r0 = r12
                int r0 = r0.getModifiers()
                boolean r0 = java.lang.reflect.Modifier.isStatic(r0)
                if (r0 != 0) goto L_0x0041
                goto L_0x0043
            L_0x0041:
                r0 = 0
                r10 = r0
            L_0x0043:
                r0 = r8
                java.lang.reflect.Type[] r0 = r0.getGenericParameterTypes()
                r8 = r0
                r0 = r8
                java.lang.String r1 = "constructor.genericParameterTypes"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r7
                r1 = r9
                r2 = r11
                r3 = r10
                r4 = r8
                r5 = 0
                r0.<init>(r1, r2, r3, r4, r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.a.e.C0616e.<init>(java.lang.reflect.Constructor):void");
        }

        @Override // kotlin.reflect.jvm.internal.a.d
        public final Object a(Object[] args) {
            p.d(args, "args");
            b(args);
            return a().newInstance(Arrays.copyOf(args, args.length));
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\f\r\u000e\u000f\u0010B\u0017\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001b\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\nH\u0016¢\u0006\u0002\u0010\u000b\u0082\u0001\u0005\u0011\u0012\u0013\u0014\u0015¨\u0006\u0016"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl;", "Ljava/lang/reflect/Field;", "field", "requiresInstance", "", "(Ljava/lang/reflect/Field;Z)V", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "BoundInstance", "BoundJvmStaticInObject", "Instance", "JvmStaticInObject", "Static", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter$Static;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter$Instance;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter$JvmStaticInObject;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter$BoundInstance;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter$BoundJvmStaticInObject;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$f.class */
    public static abstract class f extends e<Field> {

        @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u001b\u0010\b\u001a\u0004\u0018\u00010\u00062\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\nH\u0016¢\u0006\u0002\u0010\u000bR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter$BoundInstance;", "Lkotlin/reflect/jvm/internal/calls/BoundCaller;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter;", "field", "Ljava/lang/reflect/Field;", "boundReceiver", "", "(Ljava/lang/reflect/Field;Ljava/lang/Object;)V", "call", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$f$a.class */
        public static final class a extends f implements kotlin.reflect.jvm.internal.a.c {

            /* renamed from: b  reason: collision with root package name */
            private final Object f36851b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Field field, Object obj) {
                super(field, false, null);
                p.d(field, "field");
                this.f36851b = obj;
            }

            @Override // kotlin.reflect.jvm.internal.a.e.f, kotlin.reflect.jvm.internal.a.d
            public final Object a(Object[] args) {
                p.d(args, "args");
                b(args);
                return a().get(this.f36851b);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter$BoundJvmStaticInObject;", "Lkotlin/reflect/jvm/internal/calls/BoundCaller;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter;", "field", "Ljava/lang/reflect/Field;", "(Ljava/lang/reflect/Field;)V", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$f$b.class */
        public static final class b extends f implements kotlin.reflect.jvm.internal.a.c {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(Field field) {
                super(field, false, null);
                p.d(field, "field");
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter$Instance;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter;", "field", "Ljava/lang/reflect/Field;", "(Ljava/lang/reflect/Field;)V", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$f$c.class */
        public static final class c extends f {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(Field field) {
                super(field, true, null);
                p.d(field, "field");
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0019\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bH\u0016¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter$JvmStaticInObject;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter;", "field", "Ljava/lang/reflect/Field;", "(Ljava/lang/reflect/Field;)V", "checkArguments", "", "args", "", "([Ljava/lang/Object;)V", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$f$d.class */
        public static final class d extends f {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(Field field) {
                super(field, true, null);
                p.d(field, "field");
            }

            @Override // kotlin.reflect.jvm.internal.a.e
            public final void b(Object[] args) {
                p.d(args, "args");
                super.b(args);
                a(i.d(args));
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter$Static;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter;", "field", "Ljava/lang/reflect/Field;", "(Ljava/lang/reflect/Field;)V", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.a.e$f$e  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$f$e.class */
        public static final class C0617e extends f {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0617e(Field field) {
                super(field, false, null);
                p.d(field, "field");
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private f(java.lang.reflect.Field r8, boolean r9) {
            /*
                r7 = this;
                r0 = r8
                java.lang.reflect.Member r0 = (java.lang.reflect.Member) r0
                r10 = r0
                r0 = r8
                java.lang.reflect.Type r0 = r0.getGenericType()
                r11 = r0
                r0 = r11
                java.lang.String r1 = "field.genericType"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r9
                if (r0 == 0) goto L_0x001e
                r0 = r8
                java.lang.Class r0 = r0.getDeclaringClass()
                r8 = r0
                goto L_0x0020
            L_0x001e:
                r0 = 0
                r8 = r0
            L_0x0020:
                r0 = r7
                r1 = r10
                r2 = r11
                r3 = r8
                r4 = 0
                java.lang.reflect.Type[] r4 = new java.lang.reflect.Type[r4]
                r5 = 0
                r0.<init>(r1, r2, r3, r4, r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.a.e.f.<init>(java.lang.reflect.Field, boolean):void");
        }

        public /* synthetic */ f(Field field, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            this(field, z);
        }

        @Override // kotlin.reflect.jvm.internal.a.d
        public Object a(Object[] args) {
            p.d(args, "args");
            b(args);
            return a().get(d() != null ? i.c(args) : null);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u0010\u0011\u0012\u0013\u0014B\u001f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\u001b\u0010\b\u001a\u0004\u0018\u00010\t2\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u000bH\u0016¢\u0006\u0002\u0010\fJ\u0019\u0010\r\u001a\u00020\u000e2\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u000bH\u0016¢\u0006\u0002\u0010\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��\u0082\u0001\u0005\u0015\u0016\u0017\u0018\u0019¨\u0006\u001a"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl;", "Ljava/lang/reflect/Field;", "field", "notNull", "", "requiresInstance", "(Ljava/lang/reflect/Field;ZZ)V", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "checkArguments", "", "([Ljava/lang/Object;)V", "BoundInstance", "BoundJvmStaticInObject", "Instance", "JvmStaticInObject", "Static", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$Static;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$Instance;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$JvmStaticInObject;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$BoundInstance;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$BoundJvmStaticInObject;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$g.class */
    public static abstract class g extends e<Field> {

        /* renamed from: b  reason: collision with root package name */
        private final boolean f36852b;

        @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\u001b\u0010\n\u001a\u0004\u0018\u00010\b2\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fH\u0016¢\u0006\u0002\u0010\rR\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$BoundInstance;", "Lkotlin/reflect/jvm/internal/calls/BoundCaller;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;", "field", "Ljava/lang/reflect/Field;", "notNull", "", "boundReceiver", "", "(Ljava/lang/reflect/Field;ZLjava/lang/Object;)V", "call", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$g$a.class */
        public static final class a extends g implements kotlin.reflect.jvm.internal.a.c {

            /* renamed from: b  reason: collision with root package name */
            private final Object f36853b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Field field, boolean z, Object obj) {
                super(field, z, false, null);
                p.d(field, "field");
                this.f36853b = obj;
            }

            @Override // kotlin.reflect.jvm.internal.a.e.g, kotlin.reflect.jvm.internal.a.d
            public final Object a(Object[] args) {
                p.d(args, "args");
                b(args);
                a().set(this.f36853b, i.c(args));
                return v.f38654a;
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001b\u0010\b\u001a\u0004\u0018\u00010\t2\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u000bH\u0016¢\u0006\u0002\u0010\f¨\u0006\r"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$BoundJvmStaticInObject;", "Lkotlin/reflect/jvm/internal/calls/BoundCaller;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;", "field", "Ljava/lang/reflect/Field;", "notNull", "", "(Ljava/lang/reflect/Field;Z)V", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$g$b.class */
        public static final class b extends g implements kotlin.reflect.jvm.internal.a.c {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(Field field, boolean z) {
                super(field, z, false, null);
                p.d(field, "field");
            }

            @Override // kotlin.reflect.jvm.internal.a.e.g, kotlin.reflect.jvm.internal.a.d
            public final Object a(Object[] args) {
                p.d(args, "args");
                b(args);
                a().set(null, i.e(args));
                return v.f38654a;
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$Instance;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;", "field", "Ljava/lang/reflect/Field;", "notNull", "", "(Ljava/lang/reflect/Field;Z)V", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$g$c.class */
        public static final class c extends g {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(Field field, boolean z) {
                super(field, z, true, null);
                p.d(field, "field");
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0019\u0010\u0007\u001a\u00020\b2\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$JvmStaticInObject;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;", "field", "Ljava/lang/reflect/Field;", "notNull", "", "(Ljava/lang/reflect/Field;Z)V", "checkArguments", "", "args", "", "([Ljava/lang/Object;)V", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$g$d.class */
        public static final class d extends g {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(Field field, boolean z) {
                super(field, z, true, null);
                p.d(field, "field");
            }

            @Override // kotlin.reflect.jvm.internal.a.e.g, kotlin.reflect.jvm.internal.a.e
            public final void b(Object[] args) {
                p.d(args, "args");
                super.b(args);
                a(i.d(args));
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$Static;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;", "field", "Ljava/lang/reflect/Field;", "notNull", "", "(Ljava/lang/reflect/Field;Z)V", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.a.e$g$e  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$g$e.class */
        public static final class C0618e extends g {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0618e(Field field, boolean z) {
                super(field, z, false, null);
                p.d(field, "field");
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private g(java.lang.reflect.Field r10, boolean r11, boolean r12) {
            /*
                r9 = this;
                r0 = r10
                java.lang.reflect.Member r0 = (java.lang.reflect.Member) r0
                r13 = r0
                java.lang.Class r0 = java.lang.Void.TYPE
                r14 = r0
                r0 = r14
                java.lang.String r1 = "Void.TYPE"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r14
                java.lang.reflect.Type r0 = (java.lang.reflect.Type) r0
                r15 = r0
                r0 = r12
                if (r0 == 0) goto L_0x0026
                r0 = r10
                java.lang.Class r0 = r0.getDeclaringClass()
                r14 = r0
                goto L_0x0029
            L_0x0026:
                r0 = 0
                r14 = r0
            L_0x0029:
                r0 = r10
                java.lang.reflect.Type r0 = r0.getGenericType()
                r10 = r0
                r0 = r10
                java.lang.String r1 = "field.genericType"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r9
                r1 = r13
                r2 = r15
                r3 = r14
                r4 = 1
                java.lang.reflect.Type[] r4 = new java.lang.reflect.Type[r4]
                r5 = r4
                r6 = 0
                r7 = r10
                r5[r6] = r7
                r5 = 0
                r0.<init>(r1, r2, r3, r4, r5)
                r0 = r9
                r1 = r11
                r0.f36852b = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.a.e.g.<init>(java.lang.reflect.Field, boolean, boolean):void");
        }

        public /* synthetic */ g(Field field, boolean z, boolean z2, DefaultConstructorMarker defaultConstructorMarker) {
            this(field, z, z2);
        }

        @Override // kotlin.reflect.jvm.internal.a.d
        public Object a(Object[] args) {
            p.d(args, "args");
            b(args);
            a().set(d() != null ? i.c(args) : null, i.e(args));
            return v.f38654a;
        }

        @Override // kotlin.reflect.jvm.internal.a.e
        public void b(Object[] args) {
            p.d(args, "args");
            e.super.b(args);
            if (this.f36852b && i.e(args) == null) {
                throw new IllegalArgumentException("null is not allowed as a value for this property.");
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0006\u0010\u0011\u0012\u0013\u0014\u0015B)\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ%\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\f2\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u0007H\u0004¢\u0006\u0002\u0010\u000fR\u000e\u0010\n\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��\u0082\u0001\u0006\u0016\u0017\u0018\u0019\u001a\u001b¨\u0006\u001c"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl;", "Ljava/lang/reflect/Method;", "method", "requiresInstance", "", "parameterTypes", "", "Ljava/lang/reflect/Type;", "(Ljava/lang/reflect/Method;Z[Ljava/lang/reflect/Type;)V", "isVoidMethod", "callMethod", "", "instance", "args", "(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;", "BoundInstance", "BoundJvmStaticInObject", "BoundStatic", "Instance", "JvmStaticInObject", "Static", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Instance;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$JvmStaticInObject;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundInstance;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundJvmStaticInObject;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$h.class */
    public static abstract class h extends e<Method> {

        /* renamed from: b  reason: collision with root package name */
        private final boolean f36854b;

        @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u001b\u0010\b\u001a\u0004\u0018\u00010\u00062\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\nH\u0016¢\u0006\u0002\u0010\u000bR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundInstance;", "Lkotlin/reflect/jvm/internal/calls/BoundCaller;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;", "method", "Ljava/lang/reflect/Method;", "boundReceiver", "", "(Ljava/lang/reflect/Method;Ljava/lang/Object;)V", "call", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$h$a.class */
        public static final class a extends h implements kotlin.reflect.jvm.internal.a.c {

            /* renamed from: b  reason: collision with root package name */
            private final Object f36855b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Method method, Object obj) {
                super(method, false, null, 4, null);
                p.d(method, "method");
                this.f36855b = obj;
            }

            @Override // kotlin.reflect.jvm.internal.a.d
            public final Object a(Object[] args) {
                p.d(args, "args");
                b(args);
                return a(this.f36855b, args);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u001b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\tH\u0016¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundJvmStaticInObject;", "Lkotlin/reflect/jvm/internal/calls/BoundCaller;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;", "method", "Ljava/lang/reflect/Method;", "(Ljava/lang/reflect/Method;)V", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$h$b.class */
        public static final class b extends h implements kotlin.reflect.jvm.internal.a.c {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(Method method) {
                super(method, false, null, 4, null);
                p.d(method, "method");
            }

            @Override // kotlin.reflect.jvm.internal.a.d
            public final Object a(Object[] args) {
                p.d(args, "args");
                b(args);
                return a(null, args);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u001b\u0010\b\u001a\u0004\u0018\u00010\u00062\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\nH\u0016¢\u0006\u0002\u0010\u000bR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;", "Lkotlin/reflect/jvm/internal/calls/BoundCaller;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;", "method", "Ljava/lang/reflect/Method;", "boundReceiver", "", "(Ljava/lang/reflect/Method;Ljava/lang/Object;)V", "call", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$h$c.class */
        public static final class c extends h implements kotlin.reflect.jvm.internal.a.c {

            /* renamed from: b  reason: collision with root package name */
            private final Object f36856b;

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public c(java.lang.reflect.Method r7, java.lang.Object r8) {
                /*
                    r6 = this;
                    r0 = r7
                    java.lang.String r1 = "method"
                    kotlin.jvm.internal.p.d(r0, r1)
                    r0 = r7
                    java.lang.reflect.Type[] r0 = r0.getGenericParameterTypes()
                    r9 = r0
                    r0 = r9
                    java.lang.String r1 = "method.genericParameterTypes"
                    kotlin.jvm.internal.p.b(r0, r1)
                    r0 = r9
                    int r0 = r0.length
                    r1 = 1
                    if (r0 > r1) goto L_0x001f
                    r0 = 0
                    java.lang.reflect.Type[] r0 = new java.lang.reflect.Type[r0]
                    r9 = r0
                    goto L_0x002e
                L_0x001f:
                    r0 = r9
                    r1 = 1
                    r2 = r9
                    int r2 = r2.length
                    java.lang.Object[] r0 = kotlin.a.i.a(r0, r1, r2)
                    r9 = r0
                    r0 = r9
                    java.lang.String r1 = "null cannot be cast to non-null type kotlin.Array<T>"
                    java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
                L_0x002e:
                    r0 = r6
                    r1 = r7
                    r2 = 0
                    r3 = r9
                    java.lang.reflect.Type[] r3 = (java.lang.reflect.Type[]) r3
                    r4 = 0
                    r0.<init>(r1, r2, r3, r4)
                    r0 = r6
                    r1 = r8
                    r0.f36856b = r1
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.a.e.h.c.<init>(java.lang.reflect.Method, java.lang.Object):void");
            }

            @Override // kotlin.reflect.jvm.internal.a.d
            public final Object a(Object[] args) {
                p.d(args, "args");
                b(args);
                af afVar = new af(2);
                afVar.b(this.f36856b);
                afVar.a((Object) args);
                return a(null, afVar.a(new Object[afVar.f36784a.size()]));
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bH\u0016¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Instance;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;", "method", "Ljava/lang/reflect/Method;", "(Ljava/lang/reflect/Method;)V", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$h$d.class */
        public static final class d extends h {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(Method method) {
                super(method, false, null, 6, null);
                p.d(method, "method");
            }

            @Override // kotlin.reflect.jvm.internal.a.d
            public final Object a(Object[] args) {
                Object[] objArr;
                p.d(args, "args");
                b(args);
                Object obj = args[0];
                if (args.length <= 1) {
                    objArr = new Object[0];
                } else {
                    objArr = i.a(args, 1, args.length);
                    Objects.requireNonNull(objArr, "null cannot be cast to non-null type kotlin.Array<T>");
                }
                return a(obj, objArr);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bH\u0016¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$JvmStaticInObject;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;", "method", "Ljava/lang/reflect/Method;", "(Ljava/lang/reflect/Method;)V", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.a.e$h$e  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$h$e.class */
        public static final class C0619e extends h {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0619e(Method method) {
                super(method, true, null, 4, null);
                p.d(method, "method");
            }

            @Override // kotlin.reflect.jvm.internal.a.d
            public final Object a(Object[] args) {
                Object[] objArr;
                p.d(args, "args");
                b(args);
                a(i.d(args));
                if (args.length <= 1) {
                    objArr = new Object[0];
                } else {
                    objArr = i.a(args, 1, args.length);
                    Objects.requireNonNull(objArr, "null cannot be cast to non-null type kotlin.Array<T>");
                }
                return a(null, objArr);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bH\u0016¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;", "method", "Ljava/lang/reflect/Method;", "(Ljava/lang/reflect/Method;)V", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$h$f.class */
        public static final class f extends h {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public f(Method method) {
                super(method, false, null, 6, null);
                p.d(method, "method");
            }

            @Override // kotlin.reflect.jvm.internal.a.d
            public final Object a(Object[] args) {
                p.d(args, "args");
                b(args);
                return a(null, args);
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private h(java.lang.reflect.Method r8, boolean r9, java.lang.reflect.Type[] r10) {
            /*
                r7 = this;
                r0 = r8
                java.lang.reflect.Member r0 = (java.lang.reflect.Member) r0
                r11 = r0
                r0 = r8
                java.lang.reflect.Type r0 = r0.getGenericReturnType()
                r12 = r0
                r0 = r12
                java.lang.String r1 = "method.genericReturnType"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r9
                if (r0 == 0) goto L_0x001f
                r0 = r8
                java.lang.Class r0 = r0.getDeclaringClass()
                r8 = r0
                goto L_0x0021
            L_0x001f:
                r0 = 0
                r8 = r0
            L_0x0021:
                r0 = r7
                r1 = r11
                r2 = r12
                r3 = r8
                r4 = r10
                r5 = 0
                r0.<init>(r1, r2, r3, r4, r5)
                r0 = r7
                r1 = r7
                java.lang.reflect.Type r1 = r1.b()
                java.lang.Class r2 = java.lang.Void.TYPE
                boolean r1 = kotlin.jvm.internal.p.a(r1, r2)
                r0.f36854b = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.a.e.h.<init>(java.lang.reflect.Method, boolean, java.lang.reflect.Type[]):void");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        /* synthetic */ h(java.lang.reflect.Method r6, boolean r7, java.lang.reflect.Type[] r8, int r9, kotlin.jvm.internal.DefaultConstructorMarker r10) {
            /*
                r5 = this;
                r0 = r9
                r1 = 2
                r0 = r0 & r1
                if (r0 == 0) goto L_0x0011
                r0 = r6
                int r0 = r0.getModifiers()
                boolean r0 = java.lang.reflect.Modifier.isStatic(r0)
                r1 = 1
                r0 = r0 ^ r1
                r7 = r0
            L_0x0011:
                r0 = r9
                r1 = 4
                r0 = r0 & r1
                if (r0 == 0) goto L_0x0023
                r0 = r6
                java.lang.reflect.Type[] r0 = r0.getGenericParameterTypes()
                r8 = r0
                r0 = r8
                java.lang.String r1 = "method.genericParameterTypes"
                kotlin.jvm.internal.p.b(r0, r1)
            L_0x0023:
                r0 = r5
                r1 = r6
                r2 = r7
                r3 = r8
                r0.<init>(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.a.e.h.<init>(java.lang.reflect.Method, boolean, java.lang.reflect.Type[], int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }

        public /* synthetic */ h(Method method, boolean z, Type[] typeArr, DefaultConstructorMarker defaultConstructorMarker) {
            this(method, z, typeArr);
        }

        protected final Object a(Object obj, Object[] args) {
            p.d(args, "args");
            Object invoke = a().invoke(obj, Arrays.copyOf(args, args.length));
            if (this.f36854b) {
                invoke = v.f38654a;
            }
            return invoke;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0046, code lost:
        if (r0 == null) goto L_0x0049;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private e(M r5, java.lang.reflect.Type r6, java.lang.Class<?> r7, java.lang.reflect.Type[] r8) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = r4
            r1 = r5
            r0.f36847c = r1
            r0 = r4
            r1 = r6
            r0.f36848d = r1
            r0 = r4
            r1 = r7
            r0.e = r1
            r0 = r7
            if (r0 == 0) goto L_0x0049
            kotlin.jvm.internal.af r0 = new kotlin.jvm.internal.af
            r1 = r0
            r2 = 2
            r1.<init>(r2)
            r5 = r0
            r0 = r5
            r1 = r7
            java.lang.reflect.Type r1 = (java.lang.reflect.Type) r1
            r0.b(r1)
            r0 = r5
            r1 = r8
            r0.a(r1)
            r0 = r5
            r1 = r5
            java.util.ArrayList<java.lang.Object> r1 = r1.f36784a
            int r1 = r1.size()
            java.lang.reflect.Type[] r1 = new java.lang.reflect.Type[r1]
            java.lang.Object[] r0 = r0.a(r1)
            java.lang.reflect.Type[] r0 = (java.lang.reflect.Type[]) r0
            java.util.List r0 = kotlin.a.n.b(r0)
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            if (r0 != 0) goto L_0x004f
        L_0x0049:
            r0 = r8
            java.util.List r0 = kotlin.a.i.i(r0)
            r5 = r0
        L_0x004f:
            r0 = r4
            r1 = r5
            r0.f36846b = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.a.e.<init>(java.lang.reflect.Member, java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Type[]):void");
    }

    public /* synthetic */ e(Member member, Type type, Class cls, Type[] typeArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(member, type, cls, typeArr);
    }

    @Override // kotlin.reflect.jvm.internal.a.d
    public final M a() {
        return this.f36847c;
    }

    protected final void a(Object obj) {
        if (obj == null || !this.f36847c.getDeclaringClass().isInstance(obj)) {
            throw new IllegalArgumentException("An object member requires the object instance passed as the first argument.");
        }
    }

    @Override // kotlin.reflect.jvm.internal.a.d
    public final Type b() {
        return this.f36848d;
    }

    public void b(Object[] args) {
        p.d(args, "args");
        d.a.a(this, args);
    }

    @Override // kotlin.reflect.jvm.internal.a.d
    public final List<Type> c() {
        return this.f36846b;
    }

    public final Class<?> d() {
        return this.e;
    }
}
