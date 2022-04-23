package kotlin.p615io;

import java.io.File;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
/* renamed from: kotlin.io.FileAlreadyExistsException */
/* loaded from: classes2-dex2jar.jar:kotlin/io/FileAlreadyExistsException.class */
public final class FileAlreadyExistsException extends FileSystemException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileAlreadyExistsException(File file, File file2, String str) {
        super(file, file2, str);
        C10059q.m1637b(file, "file");
    }

    public /* synthetic */ FileAlreadyExistsException(File file, File file2, String str, int i, C10057o oVar) {
        this(file, (i & 2) != 0 ? null : file2, (i & 4) != 0 ? null : str);
    }
}
