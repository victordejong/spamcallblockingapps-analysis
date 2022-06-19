package com.google.android.datatransport.p232h.p237x.p238j;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.p232h.p237x.p238j.C4705b0;
/* renamed from: com.google.android.datatransport.h.x.j.m */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/m.class */
final /* synthetic */ class C4732m implements C4705b0.AbstractC4707b {

    /* renamed from: a */
    private final long f14333a;

    private C4732m(long j) {
        this.f14333a = j;
    }

    /* renamed from: b */
    public static C4705b0.AbstractC4707b m21873b(long j) {
        return new C4732m(j);
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.C4705b0.AbstractC4707b
    /* renamed from: a */
    public Object mo21859a(Object obj) {
        Integer valueOf;
        valueOf = Integer.valueOf(((SQLiteDatabase) obj).delete("events", "timestamp_ms < ?", new String[]{String.valueOf(this.f14333a)}));
        return valueOf;
    }
}
