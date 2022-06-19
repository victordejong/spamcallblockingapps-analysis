package p1727n3.p1751c0.p1754h0;

import android.database.AbstractWindowedCursor;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.os.CancellationSignal;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Iterator;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p1727n3.p1781e0.p1782a.AbstractC26153e;
/* renamed from: n3.c0.h0.b */
/* loaded from: classes-dex2jar.jar:n3/c0/h0/b.class */
public class C25653b {
    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static void m3091a(AbstractC26147b abstractC26147b) {
        ArrayList arrayList = new ArrayList();
        Cursor mo2667U1 = abstractC26147b.mo2667U1("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (mo2667U1.moveToNext()) {
            try {
                arrayList.add(mo2667U1.getString(0));
            } catch (Throwable th) {
                mo2667U1.close();
                throw th;
            }
        }
        mo2667U1.close();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str.startsWith("room_fts_content_sync_")) {
                abstractC26147b.mo2668S0("DROP TRIGGER IF EXISTS " + str);
            }
        }
    }

    /* renamed from: b */
    public static Cursor m3090b(AbstractC25677q abstractC25677q, AbstractC26153e abstractC26153e, boolean z, CancellationSignal cancellationSignal) {
        Cursor query = abstractC25677q.query(abstractC26153e, (CancellationSignal) null);
        if (z && (query instanceof AbstractWindowedCursor)) {
            AbstractWindowedCursor abstractWindowedCursor = (AbstractWindowedCursor) query;
            int count = abstractWindowedCursor.getCount();
            if ((abstractWindowedCursor.hasWindow() ? abstractWindowedCursor.getWindow().getNumRows() : count) < count) {
                try {
                    MatrixCursor matrixCursor = new MatrixCursor(abstractWindowedCursor.getColumnNames(), abstractWindowedCursor.getCount());
                    while (abstractWindowedCursor.moveToNext()) {
                        Object[] objArr = new Object[abstractWindowedCursor.getColumnCount()];
                        for (int i = 0; i < abstractWindowedCursor.getColumnCount(); i++) {
                            int type = abstractWindowedCursor.getType(i);
                            if (type == 0) {
                                objArr[i] = null;
                            } else if (type == 1) {
                                objArr[i] = Long.valueOf(abstractWindowedCursor.getLong(i));
                            } else if (type == 2) {
                                objArr[i] = Double.valueOf(abstractWindowedCursor.getDouble(i));
                            } else if (type == 3) {
                                objArr[i] = abstractWindowedCursor.getString(i);
                            } else if (type != 4) {
                                throw new IllegalStateException();
                            } else {
                                objArr[i] = abstractWindowedCursor.getBlob(i);
                            }
                        }
                        matrixCursor.addRow(objArr);
                    }
                    return matrixCursor;
                } finally {
                    abstractWindowedCursor.close();
                }
            }
        }
        return query;
    }

    /* renamed from: c */
    public static int m3089c(File file) throws IOException {
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
