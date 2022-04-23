package androidx.room.b;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
/* loaded from: classes-dex2jar.jar:androidx/room/b/c.class */
public final class c {
    private c() {
    }

    public static int a(File file) throws IOException {
        FileChannel fileChannel = null;
        try {
            ByteBuffer allocate = ByteBuffer.allocate(4);
            FileChannel channel = new FileInputStream(file).getChannel();
            channel.tryLock(60L, 4L, true);
            channel.position(60L);
            if (channel.read(allocate) == 4) {
                allocate.rewind();
                int i = allocate.getInt();
                if (channel != null) {
                    channel.close();
                }
                return i;
            }
            throw new IOException("Bad database header, unable to read 4 bytes at offset 60");
        } catch (Throwable th) {
            if (0 != 0) {
                fileChannel.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0046, code lost:
        if (r9 < r0) goto L_0x0049;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.database.Cursor a(androidx.room.h r4, androidx.sqlite.db.d r5, boolean r6) {
        /*
            r0 = r4
            r1 = r5
            r2 = 0
            android.database.Cursor r0 = r0.a(r1, r2)
            r5 = r0
            r0 = r5
            r4 = r0
            r0 = r6
            if (r0 == 0) goto L_0x004e
            r0 = r5
            r4 = r0
            r0 = r5
            boolean r0 = r0 instanceof android.database.AbstractWindowedCursor
            if (r0 == 0) goto L_0x004e
            r0 = r5
            android.database.AbstractWindowedCursor r0 = (android.database.AbstractWindowedCursor) r0
            r7 = r0
            r0 = r7
            int r0 = r0.getCount()
            r8 = r0
            r0 = r7
            boolean r0 = r0.hasWindow()
            if (r0 == 0) goto L_0x0034
            r0 = r7
            android.database.CursorWindow r0 = r0.getWindow()
            int r0 = r0.getNumRows()
            r9 = r0
            goto L_0x0038
        L_0x0034:
            r0 = r8
            r9 = r0
        L_0x0038:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 23
            if (r0 < r1) goto L_0x0049
            r0 = r5
            r4 = r0
            r0 = r9
            r1 = r8
            if (r0 >= r1) goto L_0x004e
        L_0x0049:
            r0 = r7
            android.database.Cursor r0 = androidx.room.b.b.a(r0)
            r4 = r0
        L_0x004e:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.b.c.a(androidx.room.h, androidx.sqlite.db.d, boolean):android.database.Cursor");
    }
}
