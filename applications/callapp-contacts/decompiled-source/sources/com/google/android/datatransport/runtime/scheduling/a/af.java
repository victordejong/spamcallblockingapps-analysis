package com.google.android.datatransport.runtime.scheduling.a;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.scheduling.a.ac;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/af.class */
final /* synthetic */ class af implements ac.a {

    /* renamed from: a  reason: collision with root package name */
    private static final af f20489a = new af();

    private af() {
    }

    public static ac.a a() {
        return f20489a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.a.ac.a
    public final void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN payload_encoding TEXT");
    }
}
