package kotlin.system;

import kotlin.Metadata;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u000e\n��\n\u0002\u0010\u0001\n��\n\u0002\u0010\b\n��\u001a\u0011\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\b¨\u0006\u0004"}, m254d2 = {"exitProcess", "", "status", "", "kotlin-stdlib"}, m253k = 2, m252mv = {1, 1, 13})
@JvmName(name = "ProcessKt")
/* loaded from: classes2-dex2jar.jar:kotlin/system/ProcessKt.class */
public final class ProcessKt {
    @InlineOnly
    private static final Void exitProcess(int i) {
        System.exit(i);
        throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
    }
}
