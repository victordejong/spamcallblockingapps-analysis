package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$18.class */
public final /* synthetic */ class SQLiteEventStore$$Lambda$18 implements SQLiteEventStore.Producer {
    private final SQLiteDatabase arg$1;

    private SQLiteEventStore$$Lambda$18(SQLiteDatabase sQLiteDatabase) {
        this.arg$1 = sQLiteDatabase;
    }

    public static SQLiteEventStore.Producer lambdaFactory$(SQLiteDatabase sQLiteDatabase) {
        return new SQLiteEventStore$$Lambda$18(sQLiteDatabase);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Producer
    public Object produce() {
        return this.arg$1.beginTransaction();
    }
}
