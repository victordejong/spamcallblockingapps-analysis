package kotlin.d;

import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.e.b;
import kotlin.e.c;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010 \n\u0002\b\u0002\b\u0010\u0018��2\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\b\u001a\u00020\tH\u0016J\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u00112\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\u0013"}, d2 = {"Lkotlin/internal/PlatformImplementations;", "", "()V", "addSuppressed", "", "cause", "", "exception", "defaultPlatformRandom", "Lkotlin/random/Random;", "getMatchResultNamedGroup", "Lkotlin/text/MatchGroup;", "matchResult", "Ljava/util/regex/MatchResult;", "name", "", "getSuppressed", "", "ReflectThrowable", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/d/a.class */
public class a {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÂ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\u0006"}, d2 = {"Lkotlin/internal/PlatformImplementations$ReflectThrowable;", "", "()V", "addSuppressed", "Ljava/lang/reflect/Method;", "getSuppressed", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* renamed from: kotlin.d.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/d/a$a.class */
    static final class C0609a {

        /* renamed from: a  reason: collision with root package name */
        public static final Method f36651a;

        /* renamed from: b  reason: collision with root package name */
        public static final Method f36652b;

        /* renamed from: c  reason: collision with root package name */
        public static final C0609a f36653c = new C0609a();

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0077, code lost:
            if (kotlin.jvm.internal.p.a(r0.length == 1 ? r0[0] : null, java.lang.Throwable.class) != false) goto L_0x0080;
         */
        static {
            /*
                Method dump skipped, instructions count: 210
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.d.a.C0609a.m6928clinit():void");
        }

        private C0609a() {
        }
    }

    public c a() {
        return new b();
    }

    public void a(Throwable cause, Throwable exception) {
        p.d(cause, "cause");
        p.d(exception, "exception");
        Method method = C0609a.f36651a;
        if (method != null) {
            method.invoke(cause, exception);
        }
    }
}
