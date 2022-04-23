package kotlin.p615io;

import java.io.File;
import java.io.IOException;
import kotlin.jvm.internal.Lambda;
import p573f.C9946p;
import p573f.p590w.p591b.AbstractC10035p;
import p573f.p590w.p592c.C10059q;
/* renamed from: kotlin.io.FilesKt__UtilsKt$copyRecursively$2 */
/* loaded from: classes2-dex2jar.jar:kotlin/io/FilesKt__UtilsKt$copyRecursively$2.class */
public final class FilesKt__UtilsKt$copyRecursively$2 extends Lambda implements AbstractC10035p<File, IOException, C9946p> {
    public final /* synthetic */ AbstractC10035p $onError;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilesKt__UtilsKt$copyRecursively$2(AbstractC10035p pVar) {
        super(2);
        this.$onError = pVar;
    }

    @Override // p573f.p590w.p591b.AbstractC10035p
    public /* bridge */ /* synthetic */ C9946p invoke(File file, IOException iOException) {
        invoke2(file, iOException);
        return C9946p.f37137a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(File file, IOException iOException) {
        C10059q.m1637b(file, "f");
        C10059q.m1637b(iOException, "e");
        if (((OnErrorAction) this.$onError.invoke(file, iOException)) == OnErrorAction.TERMINATE) {
            throw new TerminateException(file);
        }
    }
}
