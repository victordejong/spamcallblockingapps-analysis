package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$10.class */
final /* synthetic */ class SQLiteEventStore$$Lambda$10 implements SQLiteEventStore.Function {

    /* renamed from: a */
    private final long f6793a;

    /* renamed from: b */
    private final TransportContext f6794b;

    private SQLiteEventStore$$Lambda$10(long j, TransportContext transportContext) {
        this.f6793a = j;
        this.f6794b = transportContext;
    }

    /* renamed from: a */
    public static SQLiteEventStore.Function m15231a(long j, TransportContext transportContext) {
        return new SQLiteEventStore$$Lambda$10(j, transportContext);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
    public Object apply(Object obj) {
        return SQLiteEventStore.m15258e0(this.f6793a, this.f6794b, (SQLiteDatabase) obj);
    }
}
