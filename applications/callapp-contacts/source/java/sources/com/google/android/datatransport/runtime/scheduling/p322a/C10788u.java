package com.google.android.datatransport.runtime.scheduling.p322a;

import android.database.Cursor;
import com.google.android.datatransport.runtime.scheduling.p322a.C10772i;
/* renamed from: com.google.android.datatransport.runtime.scheduling.a.u */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/u.class */
public final /* synthetic */ class C10788u implements C10772i.AbstractC10774a {

    /* renamed from: a */
    private static final C10788u f34682a = new C10788u();

    private C10788u() {
    }

    /* renamed from: a */
    public static C10772i.AbstractC10774a m22362a() {
        return f34682a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.p322a.C10772i.AbstractC10774a
    /* renamed from: a */
    public final Object mo22358a(Object obj) {
        return Boolean.valueOf(((Cursor) obj).moveToNext());
    }
}
