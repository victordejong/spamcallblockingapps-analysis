package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.Cursor;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$17.class */
public final /* synthetic */ class SQLiteEventStore$$Lambda$17 implements SQLiteEventStore.Function {

    /* renamed from: a */
    private final Map f6803a;

    private SQLiteEventStore$$Lambda$17(Map map) {
        this.f6803a = map;
    }

    /* renamed from: a */
    public static SQLiteEventStore.Function m15225a(Map map) {
        return new SQLiteEventStore$$Lambda$17(map);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
    public Object apply(Object obj) {
        return SQLiteEventStore.m15265Y(this.f6803a, (Cursor) obj);
    }
}
