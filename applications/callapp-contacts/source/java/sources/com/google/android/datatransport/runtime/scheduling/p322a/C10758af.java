package com.google.android.datatransport.runtime.scheduling.p322a;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.scheduling.p322a.C10754ac;
/* renamed from: com.google.android.datatransport.runtime.scheduling.a.af */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/af.class */
final /* synthetic */ class C10758af implements C10754ac.AbstractC10755a {

    /* renamed from: a */
    private static final C10758af f34648a = new C10758af();

    private C10758af() {
    }

    /* renamed from: a */
    public static C10754ac.AbstractC10755a m22422a() {
        return f34648a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.p322a.C10754ac.AbstractC10755a
    /* renamed from: a */
    public final void mo22420a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN payload_encoding TEXT");
    }
}
