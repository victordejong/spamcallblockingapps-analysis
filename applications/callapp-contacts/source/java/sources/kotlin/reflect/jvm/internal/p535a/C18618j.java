package kotlin.reflect.jvm.internal.p535a;

import java.lang.reflect.Member;
import java.lang.reflect.Type;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18297z;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\bÀ\u0002\u0018��2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u001b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u0012H\u0016¢\u0006\u0002\u0010\u0013R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0014"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/ThrowingCaller;", "Lkotlin/reflect/jvm/internal/calls/Caller;", "", "()V", "member", "getMember", "()Ljava/lang/Void;", "parameterTypes", "", "Ljava/lang/reflect/Type;", "getParameterTypes", "()Ljava/util/List;", "returnType", "getReturnType", "()Ljava/lang/reflect/Type;", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.a.j */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/j.class */
public final class C18618j implements AbstractC18584d {

    /* renamed from: a */
    public static final C18618j f63689a = new C18618j();

    private C18618j() {
    }

    @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
    /* renamed from: a */
    public final Object mo3802a(Object[] args) {
        C18524p.m3840d(args, "args");
        throw new UnsupportedOperationException("call/callBy are not supported for this declaration.");
    }

    @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Member mo3803a() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
    /* renamed from: b */
    public final Type mo3801b() {
        Class cls = Void.TYPE;
        C18524p.m3843b(cls, "Void.TYPE");
        return cls;
    }

    @Override // kotlin.reflect.jvm.internal.p535a.AbstractC18584d
    /* renamed from: c */
    public final List<Type> mo3800c() {
        return C18297z.f63400a;
    }
}
