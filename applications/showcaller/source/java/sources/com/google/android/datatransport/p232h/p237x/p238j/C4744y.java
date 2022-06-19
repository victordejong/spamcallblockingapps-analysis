package com.google.android.datatransport.p232h.p237x.p238j;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.p232h.p237x.p238j.C4705b0;
/* renamed from: com.google.android.datatransport.h.x.j.y */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/y.class */
final /* synthetic */ class C4744y implements C4705b0.AbstractC4707b {

    /* renamed from: a */
    private final String f14349a;

    private C4744y(String str) {
        this.f14349a = str;
    }

    /* renamed from: b */
    public static C4705b0.AbstractC4707b m21860b(String str) {
        return new C4744y(str);
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.C4705b0.AbstractC4707b
    /* renamed from: a */
    public Object mo21859a(Object obj) {
        return C4705b0.m21953a0(this.f14349a, (SQLiteDatabase) obj);
    }
}
