package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.scheduling.persistence.SchemaManager;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$4.class */
final /* synthetic */ class SchemaManager$$Lambda$4 implements SchemaManager.Migration {

    /* renamed from: a */
    private static final SchemaManager$$Lambda$4 f6832a = new SchemaManager$$Lambda$4();

    private SchemaManager$$Lambda$4() {
    }

    /* renamed from: b */
    public static SchemaManager.Migration m15201b() {
        return f6832a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SchemaManager.Migration
    /* renamed from: a */
    public void mo15200a(SQLiteDatabase sQLiteDatabase) {
        SchemaManager.m15207h(sQLiteDatabase);
    }
}
