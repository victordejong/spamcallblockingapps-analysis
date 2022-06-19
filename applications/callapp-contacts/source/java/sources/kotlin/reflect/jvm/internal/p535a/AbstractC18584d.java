package kotlin.reflect.jvm.internal.p535a;

import java.lang.reflect.Member;
import java.lang.reflect.Type;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b`\u0018��*\f\b��\u0010\u0001 \u0001*\u0004\u0018\u00010\u00022\u00020\u0003J\u001b\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u0011H&¢\u0006\u0002\u0010\u0012J\u0019\u0010\u0013\u001a\u00020\u00142\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u0011H\u0016¢\u0006\u0002\u0010\u0015R\u0012\u0010\u0004\u001a\u00028��X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0012\u0010\f\u001a\u00020\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0016"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/calls/Caller;", "M", "Ljava/lang/reflect/Member;", "", "member", "getMember", "()Ljava/lang/reflect/Member;", "parameterTypes", "", "Ljava/lang/reflect/Type;", "getParameterTypes", "()Ljava/util/List;", "returnType", "getReturnType", "()Ljava/lang/reflect/Type;", "call", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "checkArguments", "", "([Ljava/lang/Object;)V", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.a.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/d.class */
public interface AbstractC18584d<M extends Member> {

    @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.a.d$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/d$a.class */
    public static final class C18585a {
        /* renamed from: a */
        public static <M extends Member> void m3819a(AbstractC18584d<? extends M> abstractC18584d, Object[] args) {
            C18524p.m3840d(args, "args");
            if (C18611f.m3814a(abstractC18584d) == args.length) {
                return;
            }
            throw new IllegalArgumentException("Callable expects " + C18611f.m3814a(abstractC18584d) + " arguments, but " + args.length + " were provided.");
        }
    }

    /* renamed from: a */
    Object mo3802a(Object[] objArr);

    /* renamed from: a */
    M mo3803a();

    /* renamed from: b */
    Type mo3801b();

    /* renamed from: c */
    List<Type> mo3800c();
}
