package kotlin.p615io;

import java.io.File;
import java.io.IOException;
import kotlin.jvm.internal.Lambda;
import p573f.p590w.p591b.AbstractC10035p;
import p573f.p590w.p592c.C10059q;
/* renamed from: kotlin.io.FilesKt__UtilsKt$copyRecursively$1 */
/* loaded from: classes2-dex2jar.jar:kotlin/io/FilesKt__UtilsKt$copyRecursively$1.class */
public final class FilesKt__UtilsKt$copyRecursively$1 extends Lambda implements AbstractC10035p {
    public static final FilesKt__UtilsKt$copyRecursively$1 INSTANCE = new FilesKt__UtilsKt$copyRecursively$1();

    public FilesKt__UtilsKt$copyRecursively$1() {
        super(2);
    }

    public final Void invoke(File file, IOException iOException) {
        C10059q.m1637b(file, "<anonymous parameter 0>");
        C10059q.m1637b(iOException, "exception");
        throw iOException;
    }
}
