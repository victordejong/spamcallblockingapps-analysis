package com.google.android.datatransport.runtime.scheduling.a;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.scheduling.a.i;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/m.class */
final /* synthetic */ class m implements i.a {

    /* renamed from: a  reason: collision with root package name */
    private static final m f20512a = new m();

    private m() {
    }

    public static i.a a() {
        return f20512a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.a.i.a
    public final Object a(Object obj) {
        return i.b((SQLiteDatabase) obj);
    }
}
