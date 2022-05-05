package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$9.class */
final /* synthetic */ class SQLiteEventStore$$Lambda$9 implements SQLiteEventStore.Function {

    /* renamed from: a */
    private final SQLiteEventStore f6815a;

    /* renamed from: b */
    private final TransportContext f6816b;

    private SQLiteEventStore$$Lambda$9(SQLiteEventStore sQLiteEventStore, TransportContext transportContext) {
        this.f6815a = sQLiteEventStore;
        this.f6816b = transportContext;
    }

    /* renamed from: a */
    public static SQLiteEventStore.Function m15215a(SQLiteEventStore sQLiteEventStore, TransportContext transportContext) {
        return new SQLiteEventStore$$Lambda$9(sQLiteEventStore, transportContext);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
    public Object apply(Object obj) {
        return this.f6815a.m15250k((SQLiteDatabase) obj, this.f6816b);
    }
}
