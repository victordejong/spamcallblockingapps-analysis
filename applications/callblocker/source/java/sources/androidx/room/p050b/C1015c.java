package androidx.room.p050b;

import android.database.Cursor;
import androidx.p042i.p043a.AbstractC0749b;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
/* renamed from: androidx.room.b.c */
/* loaded from: classes-dex2jar.jar:androidx/room/b/c.class */
public class C1015c {
    /* renamed from: a */
    public static int m18345a(File file) {
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

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003f, code lost:
        if (r9 < r0) goto L13;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.database.Cursor m18346a(androidx.room.AbstractC1044i r4, androidx.p042i.p043a.AbstractC0756e r5, boolean r6, android.os.CancellationSignal r7) {
        /*
            r0 = r4
            r1 = r5
            r2 = r7
            android.database.Cursor r0 = r0.m18298a(r1, r2)
            r5 = r0
            r0 = r5
            r4 = r0
            r0 = r6
            if (r0 == 0) goto L47
            r0 = r5
            r4 = r0
            r0 = r5
            boolean r0 = r0 instanceof android.database.AbstractWindowedCursor
            if (r0 == 0) goto L47
            r0 = r5
            android.database.AbstractWindowedCursor r0 = (android.database.AbstractWindowedCursor) r0
            r7 = r0
            r0 = r7
            int r0 = r0.getCount()
            r8 = r0
            r0 = r7
            boolean r0 = r0.hasWindow()
            if (r0 == 0) goto L49
            r0 = r7
            android.database.CursorWindow r0 = r0.getWindow()
            int r0 = r0.getNumRows()
            r9 = r0
        L31:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 23
            if (r0 < r1) goto L42
            r0 = r5
            r4 = r0
            r0 = r9
            r1 = r8
            if (r0 >= r1) goto L47
        L42:
            r0 = r7
            android.database.Cursor r0 = androidx.room.p050b.C1014b.m18349a(r0)
            r4 = r0
        L47:
            r0 = r4
            return r0
        L49:
            r0 = r8
            r9 = r0
            goto L31
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.p050b.C1015c.m18346a(androidx.room.i, androidx.i.a.e, boolean, android.os.CancellationSignal):android.database.Cursor");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static void m18347a(AbstractC0749b abstractC0749b) {
        ArrayList<String> arrayList = new ArrayList();
        Cursor mo19519b = abstractC0749b.mo19519b("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (mo19519b.moveToNext()) {
            try {
                arrayList.add(mo19519b.getString(0));
            } catch (Throwable th) {
                mo19519b.close();
                throw th;
            }
        }
        mo19519b.close();
        for (String str : arrayList) {
            if (str.startsWith("room_fts_content_sync_")) {
                abstractC0749b.mo19517c("DROP TRIGGER IF EXISTS " + str);
            }
        }
    }
}
