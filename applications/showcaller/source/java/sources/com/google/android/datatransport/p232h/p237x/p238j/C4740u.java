package com.google.android.datatransport.p232h.p237x.p238j;

import android.database.Cursor;
import com.google.android.datatransport.p232h.p237x.p238j.C4705b0;
/* renamed from: com.google.android.datatransport.h.x.j.u */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/u.class */
public final /* synthetic */ class C4740u implements C4705b0.AbstractC4707b {

    /* renamed from: a */
    private static final C4740u f14343a = new C4740u();

    private C4740u() {
    }

    /* renamed from: b */
    public static C4705b0.AbstractC4707b m21864b() {
        return f14343a;
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.C4705b0.AbstractC4707b
    /* renamed from: a */
    public Object mo21859a(Object obj) {
        return Boolean.valueOf(((Cursor) obj).moveToNext());
    }
}
