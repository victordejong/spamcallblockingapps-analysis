package kotlin.p009io;

import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "f", "Ljava/io/File;", "e", "Ljava/io/IOException;", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* renamed from: kotlin.io.FilesKt__UtilsKt$copyRecursively$2 */
/* loaded from: classes2-dex2jar.jar:kotlin/io/FilesKt__UtilsKt$copyRecursively$2.class */
final class FilesKt__UtilsKt$copyRecursively$2 extends Lambda implements Function2<File, IOException, Unit> {

    /* renamed from: f */
    final /* synthetic */ Function2 f20700f;

    /* renamed from: b */
    public final void m1872b(@NotNull File f, @NotNull IOException e) {
        Intrinsics.m1830e(f, "f");
        Intrinsics.m1830e(e, "e");
        if (((OnErrorAction) this.f20700f.mo422o(f, e)) == OnErrorAction.TERMINATE) {
            throw new TerminateException(f);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public /* bridge */ /* synthetic */ Unit mo422o(File file, IOException iOException) {
        m1872b(file, iOException);
        return Unit.f20447a;
    }
}
