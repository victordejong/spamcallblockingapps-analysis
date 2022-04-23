package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.Cursor;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$6.class */
public final /* synthetic */ class SQLiteEventStore$$Lambda$6 implements SQLiteEventStore.Function {

    /* renamed from: a */
    private static final SQLiteEventStore$$Lambda$6 f6812a = new SQLiteEventStore$$Lambda$6();

    private SQLiteEventStore$$Lambda$6() {
    }

    /* renamed from: a */
    public static SQLiteEventStore.Function m15218a() {
        return f6812a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
    public Object apply(Object obj) {
        return SQLiteEventStore.m15271K((Cursor) obj);
    }
}
