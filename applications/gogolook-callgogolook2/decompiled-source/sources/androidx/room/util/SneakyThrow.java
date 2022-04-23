package androidx.room.util;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/room/util/SneakyThrow.class */
public class SneakyThrow {
    public static void reThrow(@NonNull Exception exc) {
        sneakyThrow(exc);
    }

    public static <E extends Throwable> void sneakyThrow(@NonNull Throwable th) throws Throwable {
        throw th;
    }
}
