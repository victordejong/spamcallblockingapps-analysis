package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.scheduling.persistence.SchemaManager;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$3.class */
final /* synthetic */ class SchemaManager$$Lambda$3 implements SchemaManager.Migration {

    /* renamed from: a */
    private static final SchemaManager$$Lambda$3 f6831a = new SchemaManager$$Lambda$3();

    private SchemaManager$$Lambda$3() {
    }

    /* renamed from: b */
    public static SchemaManager.Migration m15202b() {
        return f6831a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SchemaManager.Migration
    /* renamed from: a */
    public void mo15200a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN payload_encoding TEXT");
    }
}
