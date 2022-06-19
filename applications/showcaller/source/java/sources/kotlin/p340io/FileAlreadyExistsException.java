package kotlin.p340io;

import java.io.File;
import kotlin.p338c.p339a.C9549a;
import kotlin.p338c.p339a.C9550b;
/* renamed from: kotlin.io.FileAlreadyExistsException */
/* loaded from: classes2-dex2jar.jar:kotlin/io/FileAlreadyExistsException.class */
public final class FileAlreadyExistsException extends FileSystemException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileAlreadyExistsException(File file, File file2, String str) {
        super(file, file2, str);
        C9550b.m375b(file, "file");
    }

    public /* synthetic */ FileAlreadyExistsException(File file, File file2, String str, int i, C9549a c9549a) {
        this(file, (i & 2) != 0 ? null : file2, (i & 4) != 0 ? null : str);
    }
}
