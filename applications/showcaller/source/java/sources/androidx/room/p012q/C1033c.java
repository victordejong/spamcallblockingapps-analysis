package androidx.room.p012q;

import android.database.Cursor;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import p020b.p070r.p071a.AbstractC1772b;
/* renamed from: androidx.room.q.c */
/* loaded from: classes-dex2jar.jar:androidx/room/q/c.class */
public class C1033c {
    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static void m31208a(AbstractC1772b abstractC1772b) {
        ArrayList<String> arrayList = new ArrayList();
        Cursor mo28917M = abstractC1772b.mo28917M("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (mo28917M.moveToNext()) {
            try {
                arrayList.add(mo28917M.getString(0));
            } catch (Throwable th) {
                mo28917M.close();
                throw th;
            }
        }
        mo28917M.close();
        for (String str : arrayList) {
            if (str.startsWith("room_fts_content_sync_")) {
                abstractC1772b.mo28910n("DROP TRIGGER IF EXISTS " + str);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0046, code lost:
        if (r9 < r0) goto L14;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.database.Cursor m31207b(androidx.room.RoomDatabase r4, p020b.p070r.p071a.AbstractC1779e r5, boolean r6, android.os.CancellationSignal r7) {
        /*
            r0 = r4
            r1 = r5
            r2 = r7
            android.database.Cursor r0 = r0.m31281q(r1, r2)
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
            android.database.Cursor r0 = androidx.room.p012q.C1032b.m31210a(r0)
            r4 = r0
        L4e:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.p012q.C1033c.m31207b(androidx.room.RoomDatabase, b.r.a.e, boolean, android.os.CancellationSignal):android.database.Cursor");
    }

    /* renamed from: c */
    public static int m31206c(File file) {
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
            channel.close();
            return i;
        } catch (Throwable th) {
            if (0 != 0) {
                fileChannel.close();
            }
            throw th;
        }
    }
}
