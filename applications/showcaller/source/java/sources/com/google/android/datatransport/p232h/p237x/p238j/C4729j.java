package com.google.android.datatransport.p232h.p237x.p238j;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.p232h.AbstractC4673m;
import com.google.android.datatransport.p232h.p237x.p238j.C4705b0;
/* renamed from: com.google.android.datatransport.h.x.j.j */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/j.class */
final /* synthetic */ class C4729j implements C4705b0.AbstractC4707b {

    /* renamed from: a */
    private final long f14328a;

    /* renamed from: b */
    private final AbstractC4673m f14329b;

    private C4729j(long j, AbstractC4673m abstractC4673m) {
        this.f14328a = j;
        this.f14329b = abstractC4673m;
    }

    /* renamed from: b */
    public static C4705b0.AbstractC4707b m21876b(long j, AbstractC4673m abstractC4673m) {
        return new C4729j(j, abstractC4673m);
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.C4705b0.AbstractC4707b
    /* renamed from: a */
    public Object mo21859a(Object obj) {
        return C4705b0.m21952d0(this.f14328a, this.f14329b, (SQLiteDatabase) obj);
    }
}
