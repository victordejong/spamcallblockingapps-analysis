package com.google.android.datatransport.p232h.p237x.p238j;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.p232h.p237x.p238j.C4705b0;
/* renamed from: com.google.android.datatransport.h.x.j.q */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/q.class */
public final /* synthetic */ class C4736q implements C4705b0.AbstractC4709d {

    /* renamed from: a */
    private final SQLiteDatabase f14339a;

    private C4736q(SQLiteDatabase sQLiteDatabase) {
        this.f14339a = sQLiteDatabase;
    }

    /* renamed from: b */
    public static C4705b0.AbstractC4709d m21869b(SQLiteDatabase sQLiteDatabase) {
        return new C4736q(sQLiteDatabase);
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.C4705b0.AbstractC4709d
    /* renamed from: a */
    public Object mo21867a() {
        return this.f14339a.beginTransaction();
    }
}
