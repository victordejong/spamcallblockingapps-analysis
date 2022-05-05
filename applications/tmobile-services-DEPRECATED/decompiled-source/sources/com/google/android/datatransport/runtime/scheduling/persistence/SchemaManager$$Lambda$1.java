package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.scheduling.persistence.SchemaManager;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1.class */
final /* synthetic */ class SchemaManager$$Lambda$1 implements SchemaManager.Migration {

    /* renamed from: a */
    private static final SchemaManager$$Lambda$1 f6829a = new SchemaManager$$Lambda$1();

    private SchemaManager$$Lambda$1() {
    }

    /* renamed from: b */
    public static SchemaManager.Migration m15204b() {
        return f6829a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SchemaManager.Migration
    /* renamed from: a */
    public void mo15200a(SQLiteDatabase sQLiteDatabase) {
        SchemaManager.m15210b(sQLiteDatabase);
    }
}
