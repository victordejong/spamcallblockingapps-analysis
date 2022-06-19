package kotlin.p525d.p526a;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p525d.C18343a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010 \n��\b\u0010\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\t2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\n"}, m4298d2 = {"Lkotlin/internal/jdk7/JDK7PlatformImplementations;", "Lkotlin/internal/PlatformImplementations;", "()V", "addSuppressed", "", "cause", "", "exception", "getSuppressed", "", "kotlin-stdlib-jdk7"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.d.a.a */
/* loaded from: classes5-dex2jar.jar:kotlin/d/a/a.class */
public class C18345a extends C18343a {
    @Override // kotlin.p525d.C18343a
    /* renamed from: a */
    public final void mo4072a(Throwable cause, Throwable exception) {
        C18524p.m3840d(cause, "cause");
        C18524p.m3840d(exception, "exception");
        cause.addSuppressed(exception);
    }
}
