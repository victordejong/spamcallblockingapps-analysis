package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$12.class */
final /* synthetic */ class SQLiteEventStore$$Lambda$12 implements SQLiteEventStore.Function {

    /* renamed from: a */
    private static final SQLiteEventStore$$Lambda$12 f6797a = new SQLiteEventStore$$Lambda$12();

    private SQLiteEventStore$$Lambda$12() {
    }

    /* renamed from: a */
    public static SQLiteEventStore.Function m15229a() {
        return f6797a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
    public Object apply(Object obj) {
        return SQLiteEventStore.m15268V((SQLiteDatabase) obj);
    }
}
