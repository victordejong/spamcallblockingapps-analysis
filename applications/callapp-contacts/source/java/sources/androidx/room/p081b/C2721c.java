package androidx.room.p081b;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
/* renamed from: androidx.room.b.c */
/* loaded from: classes-dex2jar.jar:androidx/room/b/c.class */
public final class C2721c {
    private C2721c() {
    }

    /* renamed from: a */
    public static int m39996a(File file) throws IOException {
        FileChannel fileChannel = null;
        try {
            ByteBuffer allocate = ByteBuffer.allocate(4);
            FileChannel channel = new FileInputStream(file).getChannel();
            channel.tryLock(60L, 4L, true);
            channel.position(60L);
            if (channel.read(allocate) != 4) {
                throw new IOException("Bad database header, unable to read 4 bytes at offset 60");
            }
            allocate.rewind();
            int i = allocate.getInt();
            if (channel != null) {
                channel.close();
            }
            return i;
        } catch (Throwable th) {
            if (0 != 0) {
                fileChannel.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0046, code lost:
        if (r9 < r0) goto L14;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.database.Cursor m39997a(androidx.room.AbstractC2748h r4, androidx.sqlite.p082db.AbstractC2794d r5, boolean r6) {
        /*
            r0 = r4
            r1 = r5
            r2 = 0
            android.database.Cursor r0 = r0.m39964a(r1, r2)
            r5 = r0
            r0 = r5
            r4 = r0
            r0 = r6
            if (r0 == 0) goto L4e
            r0 = r5
            r4 = r0
            r0 = r5
            boolean r0 = r0 instanceof android.database.AbstractWindowedCursor
            if (r0 == 0) goto L4e
            r0 = r5
            android.database.AbstractWindowedCursor r0 = (android.database.AbstractWindowedCursor) r0
            r7 = r0
            r0 = r7
            int r0 = r0.getCount()
            r8 = r0
            r0 = r7
            boolean r0 = r0.hasWindow()
            if (r0 == 0) goto L34
            r0 = r7
            android.database.CursorWindow r0 = r0.getWindow()
            int r0 = r0.getNumRows()
            r9 = r0
            goto L38
        L34:
            r0 = r8
            r9 = r0
        L38:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 23
            if (r0 < r1) goto L49
            r0 = r5
            r4 = r0
            r0 = r9
            r1 = r8
            if (r0 >= r1) goto L4e
        L49:
            r0 = r7
            android.database.Cursor r0 = androidx.room.p081b.C2720b.m40000a(r0)
            r4 = r0
        L4e:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.p081b.C2721c.m39997a(androidx.room.h, androidx.sqlite.db.d, boolean):android.database.Cursor");
    }
}
