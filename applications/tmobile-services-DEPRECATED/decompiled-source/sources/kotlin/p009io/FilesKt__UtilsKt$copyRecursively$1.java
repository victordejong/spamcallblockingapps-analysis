package kotlin.p009io;

import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010\u0001\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Ljava/io/File;", "exception", "Ljava/io/IOException;", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* renamed from: kotlin.io.FilesKt__UtilsKt$copyRecursively$1 */
/* loaded from: classes2-dex2jar.jar:kotlin/io/FilesKt__UtilsKt$copyRecursively$1.class */
final class FilesKt__UtilsKt$copyRecursively$1 extends Lambda implements Function2 {
    static {
        new FilesKt__UtilsKt$copyRecursively$1();
    }

    FilesKt__UtilsKt$copyRecursively$1() {
        super(2);
    }

    @NotNull
    /* renamed from: b */
    public final Void m1873b(@NotNull File file, @NotNull IOException exception) {
        Intrinsics.m1830e(file, "<anonymous parameter 0>");
        Intrinsics.m1830e(exception, "exception");
        throw exception;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public /* bridge */ /* synthetic */ Object mo422o(Object obj, Object obj2) {
        m1873b((File) obj, (IOException) obj2);
        throw null;
    }
}
