package com.google.android.datatransport.p232h.p237x.p238j;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.p232h.p237x.p238j.C4725h0;
/* renamed from: com.google.android.datatransport.h.x.j.f0 */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/f0.class */
final /* synthetic */ class C4719f0 implements C4725h0.AbstractC4726a {

    /* renamed from: a */
    private static final C4719f0 f14313a = new C4719f0();

    private C4719f0() {
    }

    /* renamed from: b */
    public static C4725h0.AbstractC4726a m21901b() {
        return f14313a;
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.C4725h0.AbstractC4726a
    /* renamed from: a */
    public void mo21884a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN payload_encoding TEXT");
    }
}
