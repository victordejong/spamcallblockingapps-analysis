package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.Cursor;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$20.class */
public final /* synthetic */ class SQLiteEventStore$$Lambda$20 implements SQLiteEventStore.Function {

    /* renamed from: a */
    private static final SQLiteEventStore$$Lambda$20 f6806a = new SQLiteEventStore$$Lambda$20();

    private SQLiteEventStore$$Lambda$20() {
    }

    /* renamed from: a */
    public static SQLiteEventStore.Function m15222a() {
        return f6806a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
    public Object apply(Object obj) {
        return SQLiteEventStore.m15269N((Cursor) obj);
    }
}
