package androidx.room.p005o;

import android.database.Cursor;
import d.r.a.b;
import java.util.ArrayList;
/* renamed from: androidx.room.o.b */
/* loaded from: classes-dex2jar.jar:androidx/room/o/b.class */
public class C0462b {
    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static void m12244a(b bVar) {
        ArrayList<String> arrayList = new ArrayList();
        Cursor T = bVar.T("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (T.moveToNext()) {
            try {
                arrayList.add(T.getString(0));
            } catch (Throwable th) {
                T.close();
                throw th;
            }
        }
        T.close();
        for (String str : arrayList) {
            if (str.startsWith("room_fts_content_sync_")) {
                bVar.n("DROP TRIGGER IF EXISTS " + str);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0045, code lost:
        if (r8 < r0) goto L14;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.database.Cursor m12243b(androidx.room.RoomDatabase r3, d.r.a.e r4, boolean r5) {
        /*
            r0 = r3
            r1 = r4
            android.database.Cursor r0 = r0.m12306p(r1)
            r4 = r0
            r0 = r4
            r3 = r0
            r0 = r5
            if (r0 == 0) goto L4d
            r0 = r4
            r3 = r0
            r0 = r4
            boolean r0 = r0 instanceof android.database.AbstractWindowedCursor
            if (r0 == 0) goto L4d
            r0 = r4
            android.database.AbstractWindowedCursor r0 = (android.database.AbstractWindowedCursor) r0
            r6 = r0
            r0 = r6
            int r0 = r0.getCount()
            r7 = r0
            r0 = r6
            boolean r0 = r0.hasWindow()
            if (r0 == 0) goto L33
            r0 = r6
            android.database.CursorWindow r0 = r0.getWindow()
            int r0 = r0.getNumRows()
            r8 = r0
            goto L37
        L33:
            r0 = r7
            r8 = r0
        L37:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 23
            if (r0 < r1) goto L48
            r0 = r4
            r3 = r0
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L4d
        L48:
            r0 = r6
            android.database.Cursor r0 = androidx.room.p005o.C0461a.m12246a(r0)
            r3 = r0
        L4d:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.p005o.C0462b.m12243b(androidx.room.RoomDatabase, d.r.a.e, boolean):android.database.Cursor");
    }
}
