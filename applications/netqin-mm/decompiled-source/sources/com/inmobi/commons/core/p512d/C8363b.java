package com.inmobi.commons.core.p512d;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.facebook.ads.ExtraHints;
import com.inmobi.commons.p508a.C8326a;
/* renamed from: com.inmobi.commons.core.d.b */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/d/b.class */
public final class C8363b {

    /* renamed from: a */
    public static final String f32517a = "b";

    /* renamed from: b */
    public static volatile C8363b f32518b;

    /* renamed from: c */
    public static final Object f32519c = new Object();

    /* renamed from: d */
    public static final Object f32520d = new Object();

    /* renamed from: e */
    public static int f32521e;

    /* renamed from: f */
    public SQLiteDatabase f32522f;

    public C8363b() {
        try {
            this.f32522f = new C8362a(C8326a.m5891b()).getWritableDatabase();
            f32518b = this;
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public static C8363b m5815a() {
        C8363b bVar;
        synchronized (C8363b.class) {
            try {
                synchronized (f32520d) {
                    f32521e++;
                }
                C8363b bVar2 = f32518b;
                bVar = bVar2;
                if (bVar2 == null) {
                    synchronized (f32519c) {
                        C8363b bVar3 = f32518b;
                        bVar = bVar3;
                        if (bVar3 == null) {
                            bVar = new C8363b();
                            f32518b = bVar;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bVar;
    }

    /* renamed from: a */
    public final int m5814a(String str) {
        int i;
        synchronized (this) {
            try {
                Cursor rawQuery = this.f32522f.rawQuery("SELECT COUNT(*) FROM " + str + " ; ", null);
                rawQuery.moveToFirst();
                i = rawQuery.getInt(0);
                rawQuery.close();
            } catch (Exception e) {
                new StringBuilder("SDK encountered unexpected error in DbStore.getCount() method; ").append(e.getMessage());
                return -1;
            }
        }
        return i;
    }

    /* renamed from: a */
    public final int m5810a(String str, String str2, String[] strArr) {
        int delete;
        synchronized (this) {
            try {
                delete = this.f32522f.delete(str, str2, strArr);
            } catch (Exception e) {
                new StringBuilder("SDK encountered an unexpected error in DbStore.delete() method; ").append(e.getMessage());
                return -1;
            }
        }
        return delete;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0080, code lost:
        if (r11 == null) goto L_0x00bb;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<android.content.ContentValues> m5809a(java.lang.String r11, java.lang.String[] r12, java.lang.String r13, java.lang.String[] r14, java.lang.String r15, java.lang.String r16, java.lang.String r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.core.p512d.C8363b.m5809a(java.lang.String, java.lang.String[], java.lang.String, java.lang.String[], java.lang.String, java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    /* renamed from: a */
    public final void m5812a(String str, ContentValues contentValues, String str2, String[] strArr) {
        synchronized (this) {
            try {
                if (!m5813a(str, contentValues)) {
                    m5807b(str, contentValues, str2, strArr);
                }
            } catch (Exception e) {
                new StringBuilder("SDK encountered unexpected error in DbStore.insertOrUpdate() method; ").append(e.getMessage());
            }
        }
    }

    /* renamed from: a */
    public final void m5811a(String str, String str2) {
        synchronized (this) {
            try {
                this.f32522f.execSQL("CREATE TABLE IF NOT EXISTS " + str + str2 + ExtraHints.KEYWORD_SEPARATOR);
            } catch (Exception e) {
                new StringBuilder("SDK encountered unexpected error in DbStore.createTableIfNotExists() method; ").append(e.getMessage());
            }
        }
    }

    /* renamed from: a */
    public final boolean m5813a(String str, ContentValues contentValues) {
        synchronized (this) {
            try {
                return this.f32522f.insertWithOnConflict(str, null, contentValues, 4) != -1;
            } catch (Exception e) {
                new StringBuilder("SDK encountered unexpected error in DbStore.insert() method; ").append(e.getMessage());
                return false;
            }
        }
    }

    /* renamed from: b */
    public final int m5807b(String str, ContentValues contentValues, String str2, String[] strArr) {
        int updateWithOnConflict;
        synchronized (this) {
            try {
                updateWithOnConflict = this.f32522f.updateWithOnConflict(str, contentValues, str2, strArr, 4);
            } catch (Exception e) {
                new StringBuilder("SDK encountered an unexpected error in DbStore.delete() method; ").append(e.getMessage());
                return -1;
            }
        }
        return updateWithOnConflict;
    }

    /* renamed from: b */
    public final int m5806b(String str, String str2, String[] strArr) {
        int i;
        synchronized (this) {
            try {
                Cursor rawQuery = this.f32522f.rawQuery("SELECT COUNT(*) FROM " + str + " WHERE " + str2 + " ; ", strArr);
                rawQuery.moveToFirst();
                i = rawQuery.getInt(0);
                rawQuery.close();
            } catch (Exception e) {
                new StringBuilder("SDK encountered unexpected error in DbStore.getCount() method; ").append(e.getMessage());
                return -1;
            }
        }
        return i;
    }

    /* renamed from: b */
    public final void m5808b() {
        synchronized (this) {
            try {
                synchronized (f32520d) {
                    int i = f32521e - 1;
                    f32521e = i;
                    if (i == 0) {
                        this.f32522f.close();
                        f32518b = null;
                    }
                }
            } catch (Exception e) {
                new StringBuilder("SDK encountered unexpected error in DbStore.close() method; ").append(e.getMessage());
            }
        }
    }
}
