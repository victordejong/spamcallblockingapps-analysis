package androidx.room.util;
/* loaded from: classes-dex2jar.jar:androidx/room/util/SneakyThrow.class */
public class SneakyThrow {
    private SneakyThrow() {
    }

    public static void reThrow(Exception exc) {
        sneakyThrow(exc);
    }

    private static <E extends Throwable> void sneakyThrow(Throwable th) throws Throwable {
        throw th;
    }
}
