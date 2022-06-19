package kotlin.reflect.jvm.internal.p535a;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18499af;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18273i;
import kotlin.reflect.jvm.internal.p535a.AbstractC18584d;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��Z\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b0\u0018�� \u001e*\n\b��\u0010\u0001 \u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\b\u001b\u001c\u001d\u001e\u001f !\"B3\b\u0002\u0012\u0006\u0010\u0004\u001a\u00028��\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0002\b\u0003\u0018\u00010\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\n¢\u0006\u0002\u0010\u000bJ\u0012\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0004R\u0017\u0010\u0007\u001a\b\u0012\u0002\b\u0003\u0018\u00010\b¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0004\u001a\u00028��¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u0012X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0016\u0082\u0001\u0007#$%&'()¨\u0006*"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl;", "M", "Ljava/lang/reflect/Member;", "Lkotlin/reflect/jvm/internal/calls/Caller;", "member", "returnType", "Ljava/lang/reflect/Type;", "instanceClass", "Ljava/lang/Class;", "valueParameterTypes", "", "(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V", "getInstanceClass", "()Ljava/lang/Class;", "getMember", "()Ljava/lang/reflect/Member;", "Ljava/lang/reflect/Member;", "parameterTypes", "", "getParameterTypes", "()Ljava/util/List;", "getReturnType", "()Ljava/lang/reflect/Type;", "checkObjectInstance", "", "obj", "", "AccessorForHiddenBoundConstructor", "AccessorForHiddenConstructor", "BoundConstructor", "Companion", "Constructor", "FieldGetter", "FieldSetter", "Method", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Constructor;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$BoundConstructor;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$AccessorForHiddenConstructor;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$AccessorForHiddenBoundConstructor;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.a.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e.class */
public abstract class AbstractC18586e<M extends Member> implements AbstractC18584d<M> {

    /* renamed from: a */
    public static final C18590d f63666a = new C18590d(null);

    /* renamed from: b */
    private final List<Type> f63667b;

    /* renamed from: c */
    private final M f63668c;

    /* renamed from: d */
    private final Type f63669d;

    /* renamed from: e */
    private final Class<?> f63670e;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u00012\u00020\u0003B\u001b\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u001b\u0010\b\u001a\u0004\u0018\u00010\u00062\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\nH\u0016¢\u0006\u0002\u0010\u000bR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$AccessorForHiddenBoundConstructor;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl;", "Ljava/lang/reflect/Constructor;", "Lkotlin/reflect/jvm/internal/calls/BoundCaller;", "constructor", "boundReceiver", "", "(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V", "call", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.a.e$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$a.class */
    public static final class C18587a extends AbstractC18586e<Constructor<?>> implements AbstractC18583c {

        /* renamed from: b */
        private final Object f63671b;

        /* JADX WARN: Illegal instructions before constructor call */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.Object[]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C18587a(java.lang.reflect.Constructor<?> r8, java.lang.Object r9) {
            /*
                r7 = this;
                r0 = r8
                java.lang.String r1 = "constructor"
                kotlin.jvm.internal.C18524p.m3840d(r0, r1)
                r0 = r8
                java.lang.reflect.Member r0 = (java.lang.reflect.Member) r0
                r10 = r0
                r0 = r8
                java.lang.Class r0 = r0.getDeclaringClass()
                r11 = r0
                r0 = r11
                java.lang.String r1 = "constructor.declaringClass"
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
                r0 = r11
                java.lang.reflect.Type r0 = (java.lang.reflect.Type) r0
                r11 = r0
                r0 = r8
                java.lang.reflect.Type[] r0 = r0.getGenericParameterTypes()
                r8 = r0
                r0 = r8
                java.lang.String r1 = "constructor.genericParameterTypes"
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
                r0 = r8
                int r0 = r0.length
                r1 = 2
                if (r0 > r1) goto L38
                r0 = 0
                java.lang.reflect.Type[] r0 = new java.lang.reflect.Type[r0]
                r8 = r0
                goto L49
            L38:
                r0 = r8
                r1 = 1
                r2 = r8
                int r2 = r2.length
                r3 = 1
                int r2 = r2 - r3
                java.lang.Object[] r0 = kotlin.p518a.C18273i.m4220a(r0, r1, r2)
                r8 = r0
                r0 = r8
                java.lang.String r1 = "null cannot be cast to non-null type kotlin.Array<T>"
                java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            L49:
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
                r0.f63671b = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.p535a.AbstractC18586e.C18587a.<init>(java.lang.reflect.Constructor, java.lang.Object):void");
        }

        @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
        /* renamed from: a */
        public final Object mo3802a(Object[] args) {
            C18524p.m3840d(args, "args");
            mo3816b(args);
            Constructor<?> a = mo3803a();
            C18499af c18499af = new C18499af(3);
            c18499af.m3878b(this.f63671b);
            c18499af.m3880a((Object) args);
            c18499af.m3878b(null);
            return a.newInstance(c18499af.m3879a(new Object[c18499af.f63593a.size()]));
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001B\u0011\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0002\u0010\u0004J\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bH\u0016¢\u0006\u0002\u0010\t¨\u0006\n"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$AccessorForHiddenConstructor;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl;", "Ljava/lang/reflect/Constructor;", "constructor", "(Ljava/lang/reflect/Constructor;)V", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.a.e$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$b.class */
    public static final class C18588b extends AbstractC18586e<Constructor<?>> {
        /* JADX WARN: Illegal instructions before constructor call */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v15, types: [java.lang.Object[]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C18588b(java.lang.reflect.Constructor<?> r8) {
            /*
                r7 = this;
                r0 = r8
                java.lang.String r1 = "constructor"
                kotlin.jvm.internal.C18524p.m3840d(r0, r1)
                r0 = r8
                java.lang.reflect.Member r0 = (java.lang.reflect.Member) r0
                r9 = r0
                r0 = r8
                java.lang.Class r0 = r0.getDeclaringClass()
                r10 = r0
                r0 = r10
                java.lang.String r1 = "constructor.declaringClass"
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
                r0 = r10
                java.lang.reflect.Type r0 = (java.lang.reflect.Type) r0
                r10 = r0
                r0 = r8
                java.lang.reflect.Type[] r0 = r0.getGenericParameterTypes()
                r8 = r0
                r0 = r8
                java.lang.String r1 = "constructor.genericParameterTypes"
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
                r0 = r8
                int r0 = r0.length
                r1 = 1
                if (r0 > r1) goto L34
                r0 = 0
                java.lang.reflect.Type[] r0 = new java.lang.reflect.Type[r0]
                r8 = r0
                goto L45
            L34:
                r0 = r8
                r1 = 0
                r2 = r8
                int r2 = r2.length
                r3 = 1
                int r2 = r2 - r3
                java.lang.Object[] r0 = kotlin.p518a.C18273i.m4220a(r0, r1, r2)
                r8 = r0
                r0 = r8
                java.lang.String r1 = "null cannot be cast to non-null type kotlin.Array<T>"
                java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            L45:
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.p535a.AbstractC18586e.C18588b.<init>(java.lang.reflect.Constructor):void");
        }

        @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
        /* renamed from: a */
        public final Object mo3802a(Object[] args) {
            C18524p.m3840d(args, "args");
            mo3816b(args);
            Constructor<?> a = mo3803a();
            C18499af c18499af = new C18499af(2);
            c18499af.m3880a((Object) args);
            c18499af.m3878b(null);
            return a.newInstance(c18499af.m3879a(new Object[c18499af.f63593a.size()]));
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u00012\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00030\u0002B\u001b\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u001b\u0010\b\u001a\u0004\u0018\u00010\u00062\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\nH\u0016¢\u0006\u0002\u0010\u000bR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$BoundConstructor;", "Lkotlin/reflect/jvm/internal/calls/BoundCaller;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl;", "Ljava/lang/reflect/Constructor;", "constructor", "boundReceiver", "", "(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V", "call", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.a.e$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$c.class */
    public static final class C18589c extends AbstractC18586e<Constructor<?>> implements AbstractC18583c {

        /* renamed from: b */
        private final Object f63672b;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C18589c(java.lang.reflect.Constructor<?> r8, java.lang.Object r9) {
            /*
                r7 = this;
                r0 = r8
                java.lang.String r1 = "constructor"
                kotlin.jvm.internal.C18524p.m3840d(r0, r1)
                r0 = r8
                java.lang.reflect.Member r0 = (java.lang.reflect.Member) r0
                r10 = r0
                r0 = r8
                java.lang.Class r0 = r0.getDeclaringClass()
                r11 = r0
                r0 = r11
                java.lang.String r1 = "constructor.declaringClass"
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
                r0 = r11
                java.lang.reflect.Type r0 = (java.lang.reflect.Type) r0
                r11 = r0
                r0 = r8
                java.lang.reflect.Type[] r0 = r0.getGenericParameterTypes()
                r8 = r0
                r0 = r8
                java.lang.String r1 = "constructor.genericParameterTypes"
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
                r0 = r7
                r1 = r10
                r2 = r11
                r3 = 0
                r4 = r8
                r5 = 0
                r0.<init>(r1, r2, r3, r4, r5)
                r0 = r7
                r1 = r9
                r0.f63672b = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.p535a.AbstractC18586e.C18589c.<init>(java.lang.reflect.Constructor, java.lang.Object):void");
        }

        @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
        /* renamed from: a */
        public final Object mo3802a(Object[] args) {
            C18524p.m3840d(args, "args");
            mo3816b(args);
            Constructor<?> a = mo3803a();
            C18499af c18499af = new C18499af(2);
            c18499af.m3878b(this.f63672b);
            c18499af.m3880a((Object) args);
            return a.newInstance(c18499af.m3879a(new Object[c18499af.f63593a.size()]));
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0005\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0006\b\u0001\u0010\u0005\u0018\u0001*\n\u0012\u0006\b\u0001\u0012\u0002H\u00050\u0004H\u0086\b¢\u0006\u0002\u0010\u0006J(\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0006\b\u0001\u0010\u0005\u0018\u0001*\n\u0012\u0006\b\u0001\u0012\u0002H\u00050\u0004H\u0086\b¢\u0006\u0002\u0010\u0006J(\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0006\b\u0001\u0010\u0005\u0018\u0001*\n\u0012\u0006\b\u0001\u0012\u0002H\u00050\u0004H\u0086\b¢\u0006\u0002\u0010\u0006¨\u0006\t"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$Companion;", "", "()V", "dropFirst", "", "T", "([Ljava/lang/Object;)[Ljava/lang/Object;", "dropFirstAndLast", "dropLast", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.a.e$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$d.class */
    public static final class C18590d {
        private C18590d() {
        }

        public /* synthetic */ C18590d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001B\u0011\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0002\u0010\u0004J\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bH\u0016¢\u0006\u0002\u0010\t¨\u0006\n"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$Constructor;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl;", "Ljava/lang/reflect/Constructor;", "constructor", "(Ljava/lang/reflect/Constructor;)V", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.a.e$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$e.class */
    public static final class C18591e extends AbstractC18586e<Constructor<?>> {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C18591e(java.lang.reflect.Constructor<?> r8) {
            /*
                r7 = this;
                r0 = r8
                java.lang.String r1 = "constructor"
                kotlin.jvm.internal.C18524p.m3840d(r0, r1)
                r0 = r8
                java.lang.reflect.Member r0 = (java.lang.reflect.Member) r0
                r9 = r0
                r0 = r8
                java.lang.Class r0 = r0.getDeclaringClass()
                r10 = r0
                r0 = r10
                java.lang.String r1 = "constructor.declaringClass"
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
                r0 = r10
                java.lang.reflect.Type r0 = (java.lang.reflect.Type) r0
                r11 = r0
                r0 = r8
                java.lang.Class r0 = r0.getDeclaringClass()
                r12 = r0
                r0 = r12
                java.lang.String r1 = "klass"
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
                r0 = r12
                java.lang.Class r0 = r0.getDeclaringClass()
                r10 = r0
                r0 = r10
                if (r0 == 0) goto L41
                r0 = r12
                int r0 = r0.getModifiers()
                boolean r0 = java.lang.reflect.Modifier.isStatic(r0)
                if (r0 != 0) goto L41
                goto L43
            L41:
                r0 = 0
                r10 = r0
            L43:
                r0 = r8
                java.lang.reflect.Type[] r0 = r0.getGenericParameterTypes()
                r8 = r0
                r0 = r8
                java.lang.String r1 = "constructor.genericParameterTypes"
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
                r0 = r7
                r1 = r9
                r2 = r11
                r3 = r10
                r4 = r8
                r5 = 0
                r0.<init>(r1, r2, r3, r4, r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.p535a.AbstractC18586e.C18591e.<init>(java.lang.reflect.Constructor):void");
        }

        @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
        /* renamed from: a */
        public final Object mo3802a(Object[] args) {
            C18524p.m3840d(args, "args");
            mo3816b(args);
            return mo3803a().newInstance(Arrays.copyOf(args, args.length));
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\f\r\u000e\u000f\u0010B\u0017\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001b\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\nH\u0016¢\u0006\u0002\u0010\u000b\u0082\u0001\u0005\u0011\u0012\u0013\u0014\u0015¨\u0006\u0016"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl;", "Ljava/lang/reflect/Field;", "field", "requiresInstance", "", "(Ljava/lang/reflect/Field;Z)V", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "BoundInstance", "BoundJvmStaticInObject", "Instance", "JvmStaticInObject", "Static", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter$Static;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter$Instance;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter$JvmStaticInObject;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter$BoundInstance;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter$BoundJvmStaticInObject;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.a.e$f */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$f.class */
    public static abstract class AbstractC18592f extends AbstractC18586e<Field> {

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u001b\u0010\b\u001a\u0004\u0018\u00010\u00062\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\nH\u0016¢\u0006\u0002\u0010\u000bR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter$BoundInstance;", "Lkotlin/reflect/jvm/internal/calls/BoundCaller;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter;", "field", "Ljava/lang/reflect/Field;", "boundReceiver", "", "(Ljava/lang/reflect/Field;Ljava/lang/Object;)V", "call", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.a.e$f$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$f$a.class */
        public static final class C18593a extends AbstractC18592f implements AbstractC18583c {

            /* renamed from: b */
            private final Object f63673b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18593a(Field field, Object obj) {
                super(field, false, null);
                C18524p.m3840d(field, "field");
                this.f63673b = obj;
            }

            @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18586e.AbstractC18592f, kotlin.reflect.jvm.internal.p535a.AbstractC18584d
            /* renamed from: a */
            public final Object mo3802a(Object[] args) {
                C18524p.m3840d(args, "args");
                mo3816b(args);
                return mo3803a().get(this.f63673b);
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter$BoundJvmStaticInObject;", "Lkotlin/reflect/jvm/internal/calls/BoundCaller;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter;", "field", "Ljava/lang/reflect/Field;", "(Ljava/lang/reflect/Field;)V", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.a.e$f$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$f$b.class */
        public static final class C18594b extends AbstractC18592f implements AbstractC18583c {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18594b(Field field) {
                super(field, false, null);
                C18524p.m3840d(field, "field");
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter$Instance;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter;", "field", "Ljava/lang/reflect/Field;", "(Ljava/lang/reflect/Field;)V", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.a.e$f$c */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$f$c.class */
        public static final class C18595c extends AbstractC18592f {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18595c(Field field) {
                super(field, true, null);
                C18524p.m3840d(field, "field");
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0019\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bH\u0016¢\u0006\u0002\u0010\t¨\u0006\n"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter$JvmStaticInObject;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter;", "field", "Ljava/lang/reflect/Field;", "(Ljava/lang/reflect/Field;)V", "checkArguments", "", "args", "", "([Ljava/lang/Object;)V", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.a.e$f$d */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$f$d.class */
        public static final class C18596d extends AbstractC18592f {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18596d(Field field) {
                super(field, true, null);
                C18524p.m3840d(field, "field");
            }

            @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18586e
            /* renamed from: b */
            public final void mo3816b(Object[] args) {
                C18524p.m3840d(args, "args");
                super.mo3816b(args);
                m3818a(C18273i.m4188d(args));
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter$Static;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldGetter;", "field", "Ljava/lang/reflect/Field;", "(Ljava/lang/reflect/Field;)V", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.a.e$f$e */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$f$e.class */
        public static final class C18597e extends AbstractC18592f {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18597e(Field field) {
                super(field, false, null);
                C18524p.m3840d(field, "field");
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private AbstractC18592f(java.lang.reflect.Field r8, boolean r9) {
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
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
                r0 = r9
                if (r0 == 0) goto L1e
                r0 = r8
                java.lang.Class r0 = r0.getDeclaringClass()
                r8 = r0
                goto L20
            L1e:
                r0 = 0
                r8 = r0
            L20:
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.p535a.AbstractC18586e.AbstractC18592f.<init>(java.lang.reflect.Field, boolean):void");
        }

        public /* synthetic */ AbstractC18592f(Field field, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            this(field, z);
        }

        @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
        /* renamed from: a */
        public Object mo3802a(Object[] args) {
            C18524p.m3840d(args, "args");
            mo3816b(args);
            return mo3803a().get(m3817d() != null ? C18273i.m4189c(args) : null);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u0010\u0011\u0012\u0013\u0014B\u001f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\u001b\u0010\b\u001a\u0004\u0018\u00010\t2\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u000bH\u0016¢\u0006\u0002\u0010\fJ\u0019\u0010\r\u001a\u00020\u000e2\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u000bH\u0016¢\u0006\u0002\u0010\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��\u0082\u0001\u0005\u0015\u0016\u0017\u0018\u0019¨\u0006\u001a"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl;", "Ljava/lang/reflect/Field;", "field", "notNull", "", "requiresInstance", "(Ljava/lang/reflect/Field;ZZ)V", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "checkArguments", "", "([Ljava/lang/Object;)V", "BoundInstance", "BoundJvmStaticInObject", "Instance", "JvmStaticInObject", "Static", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$Static;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$Instance;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$JvmStaticInObject;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$BoundInstance;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$BoundJvmStaticInObject;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.a.e$g */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$g.class */
    public static abstract class AbstractC18598g extends AbstractC18586e<Field> {

        /* renamed from: b */
        private final boolean f63674b;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\u001b\u0010\n\u001a\u0004\u0018\u00010\b2\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fH\u0016¢\u0006\u0002\u0010\rR\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$BoundInstance;", "Lkotlin/reflect/jvm/internal/calls/BoundCaller;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;", "field", "Ljava/lang/reflect/Field;", "notNull", "", "boundReceiver", "", "(Ljava/lang/reflect/Field;ZLjava/lang/Object;)V", "call", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.a.e$g$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$g$a.class */
        public static final class C18599a extends AbstractC18598g implements AbstractC18583c {

            /* renamed from: b */
            private final Object f63675b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18599a(Field field, boolean z, Object obj) {
                super(field, z, false, null);
                C18524p.m3840d(field, "field");
                this.f63675b = obj;
            }

            @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18586e.AbstractC18598g, kotlin.reflect.jvm.internal.p535a.AbstractC18584d
            /* renamed from: a */
            public final Object mo3802a(Object[] args) {
                C18524p.m3840d(args, "args");
                mo3816b(args);
                mo3803a().set(this.f63675b, C18273i.m4189c(args));
                return C20128v.f66529a;
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001b\u0010\b\u001a\u0004\u0018\u00010\t2\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u000bH\u0016¢\u0006\u0002\u0010\f¨\u0006\r"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$BoundJvmStaticInObject;", "Lkotlin/reflect/jvm/internal/calls/BoundCaller;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;", "field", "Ljava/lang/reflect/Field;", "notNull", "", "(Ljava/lang/reflect/Field;Z)V", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.a.e$g$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$g$b.class */
        public static final class C18600b extends AbstractC18598g implements AbstractC18583c {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18600b(Field field, boolean z) {
                super(field, z, false, null);
                C18524p.m3840d(field, "field");
            }

            @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18586e.AbstractC18598g, kotlin.reflect.jvm.internal.p535a.AbstractC18584d
            /* renamed from: a */
            public final Object mo3802a(Object[] args) {
                C18524p.m3840d(args, "args");
                mo3816b(args);
                mo3803a().set(null, C18273i.m4187e(args));
                return C20128v.f66529a;
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$Instance;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;", "field", "Ljava/lang/reflect/Field;", "notNull", "", "(Ljava/lang/reflect/Field;Z)V", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.a.e$g$c */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$g$c.class */
        public static final class C18601c extends AbstractC18598g {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18601c(Field field, boolean z) {
                super(field, z, true, null);
                C18524p.m3840d(field, "field");
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0019\u0010\u0007\u001a\u00020\b2\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$JvmStaticInObject;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;", "field", "Ljava/lang/reflect/Field;", "notNull", "", "(Ljava/lang/reflect/Field;Z)V", "checkArguments", "", "args", "", "([Ljava/lang/Object;)V", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.a.e$g$d */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$g$d.class */
        public static final class C18602d extends AbstractC18598g {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18602d(Field field, boolean z) {
                super(field, z, true, null);
                C18524p.m3840d(field, "field");
            }

            @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18586e.AbstractC18598g, kotlin.reflect.jvm.internal.p535a.AbstractC18586e
            /* renamed from: b */
            public final void mo3816b(Object[] args) {
                C18524p.m3840d(args, "args");
                super.mo3816b(args);
                m3818a(C18273i.m4188d(args));
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$Static;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;", "field", "Ljava/lang/reflect/Field;", "notNull", "", "(Ljava/lang/reflect/Field;Z)V", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.a.e$g$e */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$g$e.class */
        public static final class C18603e extends AbstractC18598g {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18603e(Field field, boolean z) {
                super(field, z, false, null);
                C18524p.m3840d(field, "field");
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private AbstractC18598g(java.lang.reflect.Field r10, boolean r11, boolean r12) {
            /*
                r9 = this;
                r0 = r10
                java.lang.reflect.Member r0 = (java.lang.reflect.Member) r0
                r13 = r0
                java.lang.Class r0 = java.lang.Void.TYPE
                r14 = r0
                r0 = r14
                java.lang.String r1 = "Void.TYPE"
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
                r0 = r14
                java.lang.reflect.Type r0 = (java.lang.reflect.Type) r0
                r15 = r0
                r0 = r12
                if (r0 == 0) goto L26
                r0 = r10
                java.lang.Class r0 = r0.getDeclaringClass()
                r14 = r0
                goto L29
            L26:
                r0 = 0
                r14 = r0
            L29:
                r0 = r10
                java.lang.reflect.Type r0 = r0.getGenericType()
                r10 = r0
                r0 = r10
                java.lang.String r1 = "field.genericType"
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
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
                r0.f63674b = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.p535a.AbstractC18586e.AbstractC18598g.<init>(java.lang.reflect.Field, boolean, boolean):void");
        }

        public /* synthetic */ AbstractC18598g(Field field, boolean z, boolean z2, DefaultConstructorMarker defaultConstructorMarker) {
            this(field, z, z2);
        }

        @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
        /* renamed from: a */
        public Object mo3802a(Object[] args) {
            C18524p.m3840d(args, "args");
            mo3816b(args);
            mo3803a().set(m3817d() != null ? C18273i.m4189c(args) : null, C18273i.m4187e(args));
            return C20128v.f66529a;
        }

        @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18586e
        /* renamed from: b */
        public void mo3816b(Object[] args) {
            C18524p.m3840d(args, "args");
            AbstractC18586e.super.mo3816b(args);
            if (!this.f63674b || C18273i.m4187e(args) != null) {
                return;
            }
            throw new IllegalArgumentException("null is not allowed as a value for this property.");
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0006\u0010\u0011\u0012\u0013\u0014\u0015B)\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ%\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\f2\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u0007H\u0004¢\u0006\u0002\u0010\u000fR\u000e\u0010\n\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��\u0082\u0001\u0006\u0016\u0017\u0018\u0019\u001a\u001b¨\u0006\u001c"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl;", "Ljava/lang/reflect/Method;", "method", "requiresInstance", "", "parameterTypes", "", "Ljava/lang/reflect/Type;", "(Ljava/lang/reflect/Method;Z[Ljava/lang/reflect/Type;)V", "isVoidMethod", "callMethod", "", "instance", "args", "(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;", "BoundInstance", "BoundJvmStaticInObject", "BoundStatic", "Instance", "JvmStaticInObject", "Static", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Instance;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$JvmStaticInObject;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundInstance;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundJvmStaticInObject;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.a.e$h */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$h.class */
    public static abstract class AbstractC18604h extends AbstractC18586e<Method> {

        /* renamed from: b */
        private final boolean f63676b;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u001b\u0010\b\u001a\u0004\u0018\u00010\u00062\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\nH\u0016¢\u0006\u0002\u0010\u000bR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundInstance;", "Lkotlin/reflect/jvm/internal/calls/BoundCaller;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;", "method", "Ljava/lang/reflect/Method;", "boundReceiver", "", "(Ljava/lang/reflect/Method;Ljava/lang/Object;)V", "call", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.a.e$h$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$h$a.class */
        public static final class C18605a extends AbstractC18604h implements AbstractC18583c {

            /* renamed from: b */
            private final Object f63677b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18605a(Method method, Object obj) {
                super(method, false, null, 4, null);
                C18524p.m3840d(method, "method");
                this.f63677b = obj;
            }

            @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
            /* renamed from: a */
            public final Object mo3802a(Object[] args) {
                C18524p.m3840d(args, "args");
                mo3816b(args);
                return m3815a(this.f63677b, args);
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u001b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\tH\u0016¢\u0006\u0002\u0010\n¨\u0006\u000b"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundJvmStaticInObject;", "Lkotlin/reflect/jvm/internal/calls/BoundCaller;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;", "method", "Ljava/lang/reflect/Method;", "(Ljava/lang/reflect/Method;)V", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.a.e$h$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$h$b.class */
        public static final class C18606b extends AbstractC18604h implements AbstractC18583c {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18606b(Method method) {
                super(method, false, null, 4, null);
                C18524p.m3840d(method, "method");
            }

            @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
            /* renamed from: a */
            public final Object mo3802a(Object[] args) {
                C18524p.m3840d(args, "args");
                mo3816b(args);
                return m3815a(null, args);
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u001b\u0010\b\u001a\u0004\u0018\u00010\u00062\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\nH\u0016¢\u0006\u0002\u0010\u000bR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;", "Lkotlin/reflect/jvm/internal/calls/BoundCaller;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;", "method", "Ljava/lang/reflect/Method;", "boundReceiver", "", "(Ljava/lang/reflect/Method;Ljava/lang/Object;)V", "call", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.a.e$h$c */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$h$c.class */
        public static final class C18607c extends AbstractC18604h implements AbstractC18583c {

            /* renamed from: b */
            private final Object f63678b;

            /* JADX WARN: Illegal instructions before constructor call */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Object[]] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public C18607c(java.lang.reflect.Method r7, java.lang.Object r8) {
                /*
                    r6 = this;
                    r0 = r7
                    java.lang.String r1 = "method"
                    kotlin.jvm.internal.C18524p.m3840d(r0, r1)
                    r0 = r7
                    java.lang.reflect.Type[] r0 = r0.getGenericParameterTypes()
                    r9 = r0
                    r0 = r9
                    java.lang.String r1 = "method.genericParameterTypes"
                    kotlin.jvm.internal.C18524p.m3843b(r0, r1)
                    r0 = r9
                    int r0 = r0.length
                    r1 = 1
                    if (r0 > r1) goto L1f
                    r0 = 0
                    java.lang.reflect.Type[] r0 = new java.lang.reflect.Type[r0]
                    r9 = r0
                    goto L2e
                L1f:
                    r0 = r9
                    r1 = 1
                    r2 = r9
                    int r2 = r2.length
                    java.lang.Object[] r0 = kotlin.p518a.C18273i.m4220a(r0, r1, r2)
                    r9 = r0
                    r0 = r9
                    java.lang.String r1 = "null cannot be cast to non-null type kotlin.Array<T>"
                    java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
                L2e:
                    r0 = r6
                    r1 = r7
                    r2 = 0
                    r3 = r9
                    java.lang.reflect.Type[] r3 = (java.lang.reflect.Type[]) r3
                    r4 = 0
                    r0.<init>(r1, r2, r3, r4)
                    r0 = r6
                    r1 = r8
                    r0.f63678b = r1
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.p535a.AbstractC18586e.AbstractC18604h.C18607c.<init>(java.lang.reflect.Method, java.lang.Object):void");
            }

            @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
            /* renamed from: a */
            public final Object mo3802a(Object[] args) {
                C18524p.m3840d(args, "args");
                mo3816b(args);
                C18499af c18499af = new C18499af(2);
                c18499af.m3878b(this.f63678b);
                c18499af.m3880a((Object) args);
                return m3815a(null, c18499af.m3879a(new Object[c18499af.f63593a.size()]));
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bH\u0016¢\u0006\u0002\u0010\t¨\u0006\n"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Instance;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;", "method", "Ljava/lang/reflect/Method;", "(Ljava/lang/reflect/Method;)V", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.a.e$h$d */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$h$d.class */
        public static final class C18608d extends AbstractC18604h {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18608d(Method method) {
                super(method, false, null, 6, null);
                C18524p.m3840d(method, "method");
            }

            @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
            /* renamed from: a */
            public final Object mo3802a(Object[] args) {
                Object[] objArr;
                C18524p.m3840d(args, "args");
                mo3816b(args);
                Object obj = args[0];
                if (args.length <= 1) {
                    objArr = new Object[0];
                } else {
                    objArr = C18273i.m4220a(args, 1, args.length);
                    Objects.requireNonNull(objArr, "null cannot be cast to non-null type kotlin.Array<T>");
                }
                return m3815a(obj, objArr);
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bH\u0016¢\u0006\u0002\u0010\t¨\u0006\n"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$JvmStaticInObject;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;", "method", "Ljava/lang/reflect/Method;", "(Ljava/lang/reflect/Method;)V", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.a.e$h$e */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$h$e.class */
        public static final class C18609e extends AbstractC18604h {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18609e(Method method) {
                super(method, true, null, 4, null);
                C18524p.m3840d(method, "method");
            }

            @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
            /* renamed from: a */
            public final Object mo3802a(Object[] args) {
                Object[] objArr;
                C18524p.m3840d(args, "args");
                mo3816b(args);
                m3818a(C18273i.m4188d(args));
                if (args.length <= 1) {
                    objArr = new Object[0];
                } else {
                    objArr = C18273i.m4220a(args, 1, args.length);
                    Objects.requireNonNull(objArr, "null cannot be cast to non-null type kotlin.Array<T>");
                }
                return m3815a(null, objArr);
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bH\u0016¢\u0006\u0002\u0010\t¨\u0006\n"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;", "method", "Ljava/lang/reflect/Method;", "(Ljava/lang/reflect/Method;)V", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.a.e$h$f */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/e$h$f.class */
        public static final class C18610f extends AbstractC18604h {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18610f(Method method) {
                super(method, false, null, 6, null);
                C18524p.m3840d(method, "method");
            }

            @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
            /* renamed from: a */
            public final Object mo3802a(Object[] args) {
                C18524p.m3840d(args, "args");
                mo3816b(args);
                return m3815a(null, args);
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private AbstractC18604h(java.lang.reflect.Method r8, boolean r9, java.lang.reflect.Type[] r10) {
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
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
                r0 = r9
                if (r0 == 0) goto L1f
                r0 = r8
                java.lang.Class r0 = r0.getDeclaringClass()
                r8 = r0
                goto L21
            L1f:
                r0 = 0
                r8 = r0
            L21:
                r0 = r7
                r1 = r11
                r2 = r12
                r3 = r8
                r4 = r10
                r5 = 0
                r0.<init>(r1, r2, r3, r4, r5)
                r0 = r7
                r1 = r7
                java.lang.reflect.Type r1 = r1.mo3801b()
                java.lang.Class r2 = java.lang.Void.TYPE
                boolean r1 = kotlin.jvm.internal.C18524p.m3850a(r1, r2)
                r0.f63676b = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.p535a.AbstractC18586e.AbstractC18604h.<init>(java.lang.reflect.Method, boolean, java.lang.reflect.Type[]):void");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        /* synthetic */ AbstractC18604h(java.lang.reflect.Method r6, boolean r7, java.lang.reflect.Type[] r8, int r9, kotlin.jvm.internal.DefaultConstructorMarker r10) {
            /*
                r5 = this;
                r0 = r9
                r1 = 2
                r0 = r0 & r1
                if (r0 == 0) goto L11
                r0 = r6
                int r0 = r0.getModifiers()
                boolean r0 = java.lang.reflect.Modifier.isStatic(r0)
                r1 = 1
                r0 = r0 ^ r1
                r7 = r0
            L11:
                r0 = r9
                r1 = 4
                r0 = r0 & r1
                if (r0 == 0) goto L23
                r0 = r6
                java.lang.reflect.Type[] r0 = r0.getGenericParameterTypes()
                r8 = r0
                r0 = r8
                java.lang.String r1 = "method.genericParameterTypes"
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            L23:
                r0 = r5
                r1 = r6
                r2 = r7
                r3 = r8
                r0.<init>(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.p535a.AbstractC18586e.AbstractC18604h.<init>(java.lang.reflect.Method, boolean, java.lang.reflect.Type[], int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }

        public /* synthetic */ AbstractC18604h(Method method, boolean z, Type[] typeArr, DefaultConstructorMarker defaultConstructorMarker) {
            this(method, z, typeArr);
        }

        /* renamed from: a */
        protected final Object m3815a(Object obj, Object[] args) {
            C18524p.m3840d(args, "args");
            C20128v invoke = mo3803a().invoke(obj, Arrays.copyOf(args, args.length));
            if (this.f63676b) {
                invoke = C20128v.f66529a;
            }
            return invoke;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0046, code lost:
        if (r0 == null) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private AbstractC18586e(M r5, java.lang.reflect.Type r6, java.lang.Class<?> r7, java.lang.reflect.Type[] r8) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = r4
            r1 = r5
            r0.f63668c = r1
            r0 = r4
            r1 = r6
            r0.f63669d = r1
            r0 = r4
            r1 = r7
            r0.f63670e = r1
            r0 = r7
            if (r0 == 0) goto L49
            kotlin.jvm.internal.af r0 = new kotlin.jvm.internal.af
            r1 = r0
            r2 = 2
            r1.<init>(r2)
            r5 = r0
            r0 = r5
            r1 = r7
            java.lang.reflect.Type r1 = (java.lang.reflect.Type) r1
            r0.m3878b(r1)
            r0 = r5
            r1 = r8
            r0.m3880a(r1)
            r0 = r5
            r1 = r5
            java.util.ArrayList<java.lang.Object> r1 = r1.f63593a
            int r1 = r1.size()
            java.lang.reflect.Type[] r1 = new java.lang.reflect.Type[r1]
            java.lang.Object[] r0 = r0.m3879a(r1)
            java.lang.reflect.Type[] r0 = (java.lang.reflect.Type[]) r0
            java.util.List r0 = kotlin.p518a.C18282n.m4167b(r0)
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            if (r0 != 0) goto L4f
        L49:
            r0 = r8
            java.util.List r0 = kotlin.p518a.C18273i.m4183i(r0)
            r5 = r0
        L4f:
            r0 = r4
            r1 = r5
            r0.f63667b = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.p535a.AbstractC18586e.<init>(java.lang.reflect.Member, java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Type[]):void");
    }

    public /* synthetic */ AbstractC18586e(Member member, Type type, Class cls, Type[] typeArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(member, type, cls, typeArr);
    }

    @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
    /* renamed from: a */
    public final M mo3803a() {
        return this.f63668c;
    }

    /* renamed from: a */
    protected final void m3818a(Object obj) {
        if (obj == null || !this.f63668c.getDeclaringClass().isInstance(obj)) {
            throw new IllegalArgumentException("An object member requires the object instance passed as the first argument.");
        }
    }

    @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
    /* renamed from: b */
    public final Type mo3801b() {
        return this.f63669d;
    }

    /* renamed from: b */
    public void mo3816b(Object[] args) {
        C18524p.m3840d(args, "args");
        AbstractC18584d.C18585a.m3819a(this, args);
    }

    @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
    /* renamed from: c */
    public final List<Type> mo3800c() {
        return this.f63667b;
    }

    /* renamed from: d */
    public final Class<?> m3817d() {
        return this.f63670e;
    }
}
