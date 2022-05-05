package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$18.class */
public final /* synthetic */ class SQLiteEventStore$$Lambda$18 implements SQLiteEventStore.Producer {

    /* renamed from: a */
    private final SQLiteDatabase f6804a;

    private SQLiteEventStore$$Lambda$18(SQLiteDatabase sQLiteDatabase) {
        this.f6804a = sQLiteDatabase;
    }

    /* renamed from: b */
    public static SQLiteEventStore.Producer m15224b(SQLiteDatabase sQLiteDatabase) {
        return new SQLiteEventStore$$Lambda$18(sQLiteDatabase);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Producer
    /* renamed from: a */
    public Object mo15214a() {
        return this.f6804a.beginTransaction();
    }
}
