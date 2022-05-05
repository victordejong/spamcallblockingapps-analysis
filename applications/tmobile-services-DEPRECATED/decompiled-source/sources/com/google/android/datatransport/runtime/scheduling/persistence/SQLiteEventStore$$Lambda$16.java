package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.Cursor;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$16.class */
public final /* synthetic */ class SQLiteEventStore$$Lambda$16 implements SQLiteEventStore.Function {

    /* renamed from: a */
    private static final SQLiteEventStore$$Lambda$16 f6802a = new SQLiteEventStore$$Lambda$16();

    private SQLiteEventStore$$Lambda$16() {
    }

    /* renamed from: a */
    public static SQLiteEventStore.Function m15226a() {
        return f6802a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
    public Object apply(Object obj) {
        return SQLiteEventStore.m15262b0((Cursor) obj);
    }
}
