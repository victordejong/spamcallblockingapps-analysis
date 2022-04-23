package kotlin.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 2}, m255d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\b\u0011\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\b"}, m254d2 = {"Lkotlin/internal/JRE7PlatformImplementations;", "Lkotlin/internal/PlatformImplementations;", "()V", "addSuppressed", "", "cause", "", "exception", "kotlin-stdlib-jre7"}, m253k = 1, m252mv = {1, 1, 9})
/* loaded from: classes2-dex2jar.jar:kotlin/internal/JRE7PlatformImplementations.class */
public class JRE7PlatformImplementations extends PlatformImplementations {
    @Override // kotlin.internal.PlatformImplementations
    public void addSuppressed(@NotNull Throwable cause, @NotNull Throwable exception) {
        Intrinsics.checkParameterIsNotNull(cause, "cause");
        Intrinsics.checkParameterIsNotNull(exception, "exception");
        cause.addSuppressed(exception);
    }
}
