package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.scheduling.persistence.SchemaManager;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$2.class */
final /* synthetic */ class SchemaManager$$Lambda$2 implements SchemaManager.Migration {

    /* renamed from: a */
    private static final SchemaManager$$Lambda$2 f6830a = new SchemaManager$$Lambda$2();

    private SchemaManager$$Lambda$2() {
    }

    /* renamed from: b */
    public static SchemaManager.Migration m15203b() {
        return f6830a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SchemaManager.Migration
    /* renamed from: a */
    public void mo15200a(SQLiteDatabase sQLiteDatabase) {
        SchemaManager.m15209d(sQLiteDatabase);
    }
}
