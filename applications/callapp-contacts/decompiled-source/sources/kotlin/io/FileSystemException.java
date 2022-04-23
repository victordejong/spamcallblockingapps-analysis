package kotlin.io;

import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0016\u0018��2\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\n\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lkotlin/io/FileSystemException;", "Ljava/io/IOException;", "file", "Ljava/io/File;", "other", "reason", "", "(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V", "getFile", "()Ljava/io/File;", "getOther", "getReason", "()Ljava/lang/String;", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/io/FileSystemException.class */
public class FileSystemException extends IOException {

    /* renamed from: a  reason: collision with root package name */
    private final File f36754a;

    /* renamed from: b  reason: collision with root package name */
    private final File f36755b;

    /* renamed from: c  reason: collision with root package name */
    private final String f36756c;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FileSystemException(java.io.File r5, java.io.File r6, java.lang.String r7) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "file"
            kotlin.jvm.internal.p.d(r0, r1)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r5
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0026
            r0 = r8
            java.lang.String r1 = " -> "
            r2 = r6
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.String r1 = r1.concat(r2)
            java.lang.StringBuilder r0 = r0.append(r1)
        L_0x0026:
            r0 = r7
            if (r0 == 0) goto L_0x0039
            r0 = r8
            java.lang.String r1 = ": "
            r2 = r7
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.String r1 = r1.concat(r2)
            java.lang.StringBuilder r0 = r0.append(r1)
        L_0x0039:
            r0 = r8
            java.lang.String r0 = r0.toString()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "sb.toString()"
            kotlin.jvm.internal.p.b(r0, r1)
            r0 = r4
            r1 = r8
            r0.<init>(r1)
            r0 = r4
            r1 = r5
            r0.f36754a = r1
            r0 = r4
            r1 = r6
            r0.f36755b = r1
            r0 = r4
            r1 = r7
            r0.f36756c = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.FileSystemException.<init>(java.io.File, java.io.File, java.lang.String):void");
    }

    public /* synthetic */ FileSystemException(File file, File file2, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, (i & 2) != 0 ? null : file2, (i & 4) != 0 ? null : str);
    }
}
