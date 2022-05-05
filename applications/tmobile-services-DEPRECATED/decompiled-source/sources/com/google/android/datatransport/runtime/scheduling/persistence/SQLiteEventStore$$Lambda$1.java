package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$1.class */
final /* synthetic */ class SQLiteEventStore$$Lambda$1 implements SQLiteEventStore.Producer {

    /* renamed from: a */
    private final SchemaManager f6792a;

    private SQLiteEventStore$$Lambda$1(SchemaManager schemaManager) {
        this.f6792a = schemaManager;
    }

    /* renamed from: b */
    public static SQLiteEventStore.Producer m15232b(SchemaManager schemaManager) {
        return new SQLiteEventStore$$Lambda$1(schemaManager);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Producer
    /* renamed from: a */
    public Object mo15214a() {
        return this.f6792a.getWritableDatabase();
    }
}
