package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$7.class */
final /* synthetic */ class SQLiteEventStore$$Lambda$7 implements SQLiteEventStore.Function {

    /* renamed from: a */
    private final String f6813a;

    private SQLiteEventStore$$Lambda$7(String str) {
        this.f6813a = str;
    }

    /* renamed from: a */
    public static SQLiteEventStore.Function m15217a(String str) {
        return new SQLiteEventStore$$Lambda$7(str);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
    public Object apply(Object obj) {
        return SQLiteEventStore.m15260d0(this.f6813a, (SQLiteDatabase) obj);
    }
}
