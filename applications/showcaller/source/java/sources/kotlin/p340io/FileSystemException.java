package kotlin.p340io;

import java.io.File;
import java.io.IOException;
import kotlin.p338c.p339a.C9549a;
/* renamed from: kotlin.io.FileSystemException */
/* loaded from: classes2-dex2jar.jar:kotlin/io/FileSystemException.class */
public class FileSystemException extends IOException {
    private final File file;
    private final File other;
    private final String reason;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FileSystemException(java.io.File r6, java.io.File r7, java.lang.String r8) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r1 = "file"
            kotlin.p338c.p339a.C9550b.m375b(r0, r1)
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            java.lang.String r1 = kotlin.p340io.C9551a.m369a(r1, r2, r3)
            r0.<init>(r1)
            r0 = r5
            r1 = r6
            r0.file = r1
            r0 = r5
            r1 = r7
            r0.other = r1
            r0 = r5
            r1 = r8
            r0.reason = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.p340io.FileSystemException.<init>(java.io.File, java.io.File, java.lang.String):void");
    }

    public /* synthetic */ FileSystemException(File file, File file2, String str, int i, C9549a c9549a) {
        this(file, (i & 2) != 0 ? null : file2, (i & 4) != 0 ? null : str);
    }

    public final File getFile() {
        return this.file;
    }

    public final File getOther() {
        return this.other;
    }

    public final String getReason() {
        return this.reason;
    }
}
