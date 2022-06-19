package com.google.android.datatransport.p232h.p237x.p238j;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.p232h.AbstractC4673m;
import com.google.android.datatransport.p232h.p237x.p238j.C4705b0;
/* renamed from: com.google.android.datatransport.h.x.j.k */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/k.class */
final /* synthetic */ class C4730k implements C4705b0.AbstractC4707b {

    /* renamed from: a */
    private final C4705b0 f14330a;

    /* renamed from: b */
    private final AbstractC4673m f14331b;

    private C4730k(C4705b0 c4705b0, AbstractC4673m abstractC4673m) {
        this.f14330a = c4705b0;
        this.f14331b = abstractC4673m;
    }

    /* renamed from: b */
    public static C4705b0.AbstractC4707b m21875b(C4705b0 c4705b0, AbstractC4673m abstractC4673m) {
        return new C4730k(c4705b0, abstractC4673m);
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.C4705b0.AbstractC4707b
    /* renamed from: a */
    public Object mo21859a(Object obj) {
        return this.f14330a.m21950e0((SQLiteDatabase) obj, this.f14331b);
    }
}
