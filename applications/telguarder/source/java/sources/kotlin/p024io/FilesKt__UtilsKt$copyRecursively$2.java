package kotlin.p024io;

import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0014\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m400d2 = {"<anonymous>", "", "f", "Ljava/io/File;", "e", "Ljava/io/IOException;", "invoke"}, m399k = 3, m398mv = {1, 4, 0})
/* renamed from: kotlin.io.FilesKt__UtilsKt$copyRecursively$2 */
/* loaded from: classes-dex2jar.jar:kotlin/io/FilesKt__UtilsKt$copyRecursively$2.class */
final class FilesKt__UtilsKt$copyRecursively$2 extends Lambda implements Function2<File, IOException, Unit> {
    final /* synthetic */ Function2 $onError;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilesKt__UtilsKt$copyRecursively$2(Function2 function2) {
        super(2);
        this.$onError = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(File file, IOException iOException) {
        invoke2(file, iOException);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke */
    public final void invoke2(File f, IOException e) {
        Intrinsics.checkNotNullParameter(f, "f");
        Intrinsics.checkNotNullParameter(e, "e");
        if (((OnErrorAction) this.$onError.invoke(f, e)) != OnErrorAction.TERMINATE) {
            return;
        }
        throw new TerminateException(f);
    }
}
