package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.google.android.gms.common.util.AbstractC2708e;
/* renamed from: com.google.android.gms.measurement.internal.du */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/du.class */
public final class C4259du extends AbstractC4243de {

    /* renamed from: a */
    private final C4262dx f18693a = new C4262dx(this, mo4034r(), "google_app_measurement_local.db");

    /* renamed from: b */
    private boolean f18694b;

    public C4259du(C4296fd c4296fd) {
        super(c4296fd);
    }

    /* renamed from: E */
    private final SQLiteDatabase m4702E() {
        SQLiteDatabase writableDatabase;
        if (this.f18694b) {
            writableDatabase = null;
        } else {
            writableDatabase = this.f18693a.getWritableDatabase();
            if (writableDatabase == null) {
                this.f18694b = true;
                writableDatabase = null;
            }
        }
        return writableDatabase;
    }

    /* renamed from: F */
    private final boolean m4701F() {
        return mo4034r().getDatabasePath("google_app_measurement_local.db").exists();
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* renamed from: a */
    private static long m4698a(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        Throwable th;
        char c;
        try {
            cursor = sQLiteDatabase.query("messages", new String[]{"rowid"}, "type=?", new String[]{"3"}, null, null, "rowid desc", "1");
            try {
                if (cursor.moveToFirst()) {
                    ?? r0 = cursor.getLong(0);
                    c = r0;
                    if (cursor != null) {
                        cursor.close();
                        c = r0;
                    }
                } else {
                    if (cursor != null) {
                        cursor.close();
                    }
                    c = 65535;
                }
                return c;
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v197, types: [long] */
    /* renamed from: a */
    private final boolean m4699a(int i, byte[] bArr) {
        boolean z;
        int i2;
        mo4039m();
        mo4037o();
        if (this.f18694b) {
            z = false;
        } else {
            ContentValues contentValues = new ContentValues();
            contentValues.put("type", Integer.valueOf(i));
            contentValues.put("entry", bArr);
            int i3 = 5;
            int i4 = 0;
            while (true) {
                if (i4 >= 5) {
                    mo4030v().m4657j().m4654a("Failed to write entry to local database");
                    z = false;
                    break;
                }
                SQLiteDatabase sQLiteDatabase = null;
                SQLiteDatabase sQLiteDatabase2 = null;
                SQLiteDatabase sQLiteDatabase3 = null;
                SQLiteDatabase sQLiteDatabase4 = null;
                Cursor cursor = null;
                Cursor cursor2 = null;
                Cursor cursor3 = null;
                Cursor cursor4 = null;
                try {
                    try {
                        try {
                            SQLiteDatabase m4702E = m4702E();
                            if (m4702E == null) {
                                this.f18694b = true;
                                if (m4702E != null) {
                                    m4702E.close();
                                }
                                z = false;
                            } else {
                                m4702E.beginTransaction();
                                Cursor rawQuery = m4702E.rawQuery("select count(1) from messages", null);
                                char c = 0;
                                if (rawQuery != null) {
                                    c = 0;
                                    if (rawQuery.moveToFirst()) {
                                        c = rawQuery.getLong(0);
                                    }
                                }
                                if (c >= 100000) {
                                    mo4030v().m4655x_().m4654a("Data loss, local db full");
                                    long j = (34464 - c) + 1;
                                    long delete = m4702E.delete("messages", "rowid in (select rowid from messages order by rowid asc limit ?)", new String[]{Long.toString(j)});
                                    if (delete != j) {
                                        mo4030v().m4655x_().m4651a("Different delete count than expected in local db. expected, received, difference", Long.valueOf(j), Long.valueOf(delete), Long.valueOf(j - delete));
                                    }
                                }
                                m4702E.insertOrThrow("messages", null, contentValues);
                                m4702E.setTransactionSuccessful();
                                m4702E.endTransaction();
                                if (rawQuery != null) {
                                    rawQuery.close();
                                }
                                if (m4702E != null) {
                                    m4702E.close();
                                }
                                z = true;
                            }
                        } catch (SQLiteException e) {
                            if (0 != 0 && sQLiteDatabase2.inTransaction()) {
                                sQLiteDatabase2.endTransaction();
                            }
                            mo4030v().m4655x_().m4653a("Error writing entry to local database", e);
                            this.f18694b = true;
                            if (0 != 0) {
                                cursor2.close();
                            }
                            i2 = i3;
                            if (0 != 0) {
                                sQLiteDatabase2.close();
                                i2 = i3;
                            }
                        }
                    } catch (SQLiteFullException e2) {
                        cursor4 = null;
                        sQLiteDatabase3 = null;
                        try {
                            mo4030v().m4655x_().m4653a("Error writing entry; local database full", e2);
                            this.f18694b = true;
                            if (0 != 0) {
                                cursor3.close();
                            }
                            i2 = i3;
                            if (0 != 0) {
                                sQLiteDatabase4.close();
                                i2 = i3;
                            }
                        } catch (Throwable th) {
                            if (cursor4 != null) {
                                cursor4.close();
                            }
                            if (sQLiteDatabase3 != null) {
                                sQLiteDatabase3.close();
                            }
                            throw th;
                        }
                    }
                } catch (SQLiteDatabaseLockedException e3) {
                    SystemClock.sleep(i3);
                    int i5 = i3 + 20;
                    if (0 != 0) {
                        cursor.close();
                    }
                    i2 = i5;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                        i2 = i5;
                    }
                }
                i4++;
                i3 = i2;
            }
        }
        return z;
    }

    /* renamed from: B */
    public final void m4705B() {
        mo4039m();
        mo4037o();
        try {
            int delete = m4702E().delete("messages", null, null) + 0;
            if (delete <= 0) {
                return;
            }
            mo4030v().m4657j().m4653a("Reset local analytics data. records", Integer.valueOf(delete));
        } catch (SQLiteException e) {
            mo4030v().m4655x_().m4653a("Error resetting local analytics data. error", e);
        }
    }

    /* renamed from: C */
    public final boolean m4704C() {
        return m4699a(3, new byte[0]);
    }

    /* renamed from: D */
    public final boolean m4703D() {
        boolean z;
        int i;
        mo4037o();
        mo4039m();
        if (this.f18694b) {
            z = false;
        } else if (!m4701F()) {
            z = false;
        } else {
            int i2 = 0;
            int i3 = 5;
            while (true) {
                int i4 = i3;
                if (i2 >= 5) {
                    mo4030v().m4662e().m4654a("Error deleting app launch break from local database in reasonable time");
                    z = false;
                    break;
                }
                SQLiteDatabase sQLiteDatabase = null;
                SQLiteDatabase sQLiteDatabase2 = null;
                SQLiteDatabase sQLiteDatabase3 = null;
                SQLiteDatabase sQLiteDatabase4 = null;
                try {
                    try {
                        SQLiteDatabase m4702E = m4702E();
                        if (m4702E == null) {
                            sQLiteDatabase4 = m4702E;
                            sQLiteDatabase3 = m4702E;
                            this.f18694b = true;
                            if (m4702E != null) {
                                m4702E.close();
                            }
                            z = false;
                        } else {
                            m4702E.beginTransaction();
                            m4702E.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                            m4702E.setTransactionSuccessful();
                            sQLiteDatabase4 = m4702E;
                            sQLiteDatabase3 = m4702E;
                            m4702E.endTransaction();
                            if (m4702E != null) {
                                m4702E.close();
                            }
                            z = true;
                        }
                    } catch (SQLiteFullException e) {
                        sQLiteDatabase3 = sQLiteDatabase4;
                        try {
                            mo4030v().m4655x_().m4653a("Error deleting app launch break from local database", e);
                            SQLiteDatabase sQLiteDatabase5 = sQLiteDatabase4;
                            this.f18694b = true;
                            i = i4;
                            if (sQLiteDatabase4 != null) {
                                sQLiteDatabase4.close();
                                i = i4;
                            }
                        } catch (Throwable th) {
                            if (sQLiteDatabase3 != null) {
                                sQLiteDatabase3.close();
                            }
                            throw th;
                        }
                    }
                } catch (SQLiteDatabaseLockedException e2) {
                    SystemClock.sleep(i4);
                    int i5 = i4 + 20;
                    i = i5;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                        i = i5;
                    }
                } catch (SQLiteException e3) {
                    if (0 != 0 && sQLiteDatabase2.inTransaction()) {
                        sQLiteDatabase2.endTransaction();
                    }
                    mo4030v().m4655x_().m4653a("Error deleting app launch break from local database", e3);
                    this.f18694b = true;
                    i = i4;
                    if (0 != 0) {
                        sQLiteDatabase2.close();
                        i = i4;
                    }
                }
                i2++;
                i3 = i;
            }
        }
        return z;
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C4159ab mo4289a() {
        return super.mo4289a();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x028f  */
    /* JADX WARN: Type inference failed for: r0v122, types: [long] */
    /* JADX WARN: Type inference failed for: r19v10 */
    /* JADX WARN: Type inference failed for: r19v11 */
    /* JADX WARN: Type inference failed for: r19v12 */
    /* JADX WARN: Type inference failed for: r19v13 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r19v6 */
    /* JADX WARN: Type inference failed for: r19v7 */
    /* JADX WARN: Type inference failed for: r19v8 */
    /* JADX WARN: Type inference failed for: r19v9 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.common.internal.safeparcel.AbstractC2663a> m4700a(int r11) {
        /*
            Method dump skipped, instructions count: 1038
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4259du.m4700a(int):java.util.List");
    }

    /* renamed from: a */
    public final boolean m4697a(C4423jv c4423jv) {
        boolean z = false;
        Parcel obtain = Parcel.obtain();
        c4423jv.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            mo4030v().m4664c().m4654a("User property too long for local database. Sending directly to service");
        } else {
            z = m4699a(1, marshall);
        }
        return z;
    }

    /* renamed from: a */
    public final boolean m4696a(C4442kn c4442kn) {
        boolean m4699a;
        mo4032t();
        byte[] m4133a = C4424jw.m4133a((Parcelable) c4442kn);
        if (m4133a.length > 131072) {
            mo4030v().m4664c().m4654a("Conditional user property too long for local database. Sending directly to service");
            m4699a = false;
        } else {
            m4699a = m4699a(2, m4133a);
        }
        return m4699a;
    }

    /* renamed from: a */
    public final boolean m4695a(C4450r c4450r) {
        boolean z = false;
        Parcel obtain = Parcel.obtain();
        c4450r.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            mo4030v().m4664c().m4654a("Event is too long for local database. Sending event directly to service");
        } else {
            z = m4699a(0, marshall);
        }
        return z;
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ C4330gk mo4284b() {
        return super.mo4284b();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ C4260dv mo4280c() {
        return super.mo4280c();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ C4367hu mo4279d() {
        return super.mo4279d();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ C4361ho mo4278e() {
        return super.mo4278e();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ C4259du mo4277f() {
        return super.mo4277f();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: g */
    public final /* bridge */ /* synthetic */ C4399iz mo4276g() {
        return super.mo4276g();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef, com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: l */
    public final /* bridge */ /* synthetic */ void mo4040l() {
        super.mo4040l();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef, com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: m */
    public final /* bridge */ /* synthetic */ void mo4039m() {
        super.mo4039m();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef, com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: n */
    public final /* bridge */ /* synthetic */ void mo4038n() {
        super.mo4038n();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef, com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: o */
    public final /* bridge */ /* synthetic */ void mo4037o() {
        super.mo4037o();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: p */
    public final /* bridge */ /* synthetic */ C4444l mo4036p() {
        return super.mo4036p();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: q */
    public final /* bridge */ /* synthetic */ AbstractC2708e mo4035q() {
        return super.mo4035q();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: r */
    public final /* bridge */ /* synthetic */ Context mo4034r() {
        return super.mo4034r();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: s */
    public final /* bridge */ /* synthetic */ C4261dw mo4033s() {
        return super.mo4033s();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: t */
    public final /* bridge */ /* synthetic */ C4424jw mo4032t() {
        return super.mo4032t();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: u */
    public final /* bridge */ /* synthetic */ C4293fa mo4031u() {
        return super.mo4031u();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: v */
    public final /* bridge */ /* synthetic */ C4263dy mo4030v() {
        return super.mo4030v();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: w */
    public final /* bridge */ /* synthetic */ C4277el mo4029w() {
        return super.mo4029w();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: x */
    public final /* bridge */ /* synthetic */ C4184b mo4027x() {
        return super.mo4027x();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: y */
    public final /* bridge */ /* synthetic */ C4439kk mo4026y() {
        return super.mo4026y();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4243de
    /* renamed from: z */
    protected final boolean mo4275z() {
        return false;
    }
}
