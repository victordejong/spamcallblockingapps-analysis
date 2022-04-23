package com.google.android.datatransport.runtime.scheduling.a;

import android.database.Cursor;
import com.google.android.datatransport.runtime.scheduling.a.i;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/u.class */
public final /* synthetic */ class u implements i.a {

    /* renamed from: a  reason: collision with root package name */
    private static final u f20522a = new u();

    private u() {
    }

    public static i.a a() {
        return f20522a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.a.i.a
    public final Object a(Object obj) {
        return Boolean.valueOf(((Cursor) obj).moveToNext());
    }
}
