package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$11.class */
final /* synthetic */ class SQLiteEventStore$$Lambda$11 implements SQLiteEventStore.Function {

    /* renamed from: a */
    private final SQLiteEventStore f6795a;

    /* renamed from: b */
    private final TransportContext f6796b;

    private SQLiteEventStore$$Lambda$11(SQLiteEventStore sQLiteEventStore, TransportContext transportContext) {
        this.f6795a = sQLiteEventStore;
        this.f6796b = transportContext;
    }

    /* renamed from: a */
    public static SQLiteEventStore.Function m15230a(SQLiteEventStore sQLiteEventStore, TransportContext transportContext) {
        return new SQLiteEventStore$$Lambda$11(sQLiteEventStore, transportContext);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
    public Object apply(Object obj) {
        return SQLiteEventStore.m15267W(this.f6795a, this.f6796b, (SQLiteDatabase) obj);
    }
}
