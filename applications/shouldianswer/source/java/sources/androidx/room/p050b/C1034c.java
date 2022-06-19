package androidx.room.p050b;

import android.database.Cursor;
import androidx.p042i.p043a.AbstractC0778b;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
/* renamed from: androidx.room.b.c */
/* loaded from: classes-dex2jar.jar:androidx/room/b/c.class */
public class C1034c {
    /* renamed from: a */
    public static int m4493a(File file) {
        FileChannel fileChannel;
        Throwable th;
        try {
            ByteBuffer allocate = ByteBuffer.allocate(4);
            fileChannel = new FileInputStream(file).getChannel();
            try {
                fileChannel.tryLock(60L, 4L, true);
                fileChannel.position(60L);
                if (fileChannel.read(allocate) != 4) {
                    throw new IOException("Bad database header, unable to read 4 bytes at offset 60");
                }
                allocate.rewind();
                int i = allocate.getInt();
                if (fileChannel != null) {
                    fileChannel.close();
                }
                return i;
            } catch (Throwable th2) {
                th = th2;
                if (fileChannel != null) {
                    fileChannel.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            fileChannel = null;
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
    public static android.database.Cursor m4494a(androidx.room.AbstractC1063j r4, androidx.p042i.p043a.AbstractC0785e r5, boolean r6, android.os.CancellationSignal r7) {
        /*
            r0 = r4
            r1 = r5
            r2 = r7
            android.database.Cursor r0 = r0.m4447a(r1, r2)
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
            android.database.Cursor r0 = androidx.room.p050b.C1033b.m4497a(r0)
            r4 = r0
        L4e:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.p050b.C1034c.m4494a(androidx.room.j, androidx.i.a.e, boolean, android.os.CancellationSignal):android.database.Cursor");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static void m4495a(AbstractC0778b abstractC0778b) {
        ArrayList<String> arrayList = new ArrayList();
        Cursor mo5367b = abstractC0778b.mo5367b("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (mo5367b.moveToNext()) {
            try {
                arrayList.add(mo5367b.getString(0));
            } catch (Throwable th) {
                mo5367b.close();
                throw th;
            }
        }
        mo5367b.close();
        for (String str : arrayList) {
            if (str.startsWith("room_fts_content_sync_")) {
                abstractC0778b.mo5365c("DROP TRIGGER IF EXISTS " + str);
            }
        }
    }
}
