package com.google.android.datatransport.p232h.p237x.p238j;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.p232h.AbstractC4673m;
import com.google.android.datatransport.p232h.p237x.p238j.C4705b0;
/* renamed from: com.google.android.datatransport.h.x.j.a0 */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/a0.class */
final /* synthetic */ class C4703a0 implements C4705b0.AbstractC4707b {

    /* renamed from: a */
    private final C4705b0 f14293a;

    /* renamed from: b */
    private final AbstractC4673m f14294b;

    private C4703a0(C4705b0 c4705b0, AbstractC4673m abstractC4673m) {
        this.f14293a = c4705b0;
        this.f14294b = abstractC4673m;
    }

    /* renamed from: b */
    public static C4705b0.AbstractC4707b m21968b(C4705b0 c4705b0, AbstractC4673m abstractC4673m) {
        return new C4703a0(c4705b0, abstractC4673m);
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.C4705b0.AbstractC4707b
    /* renamed from: a */
    public Object mo21859a(Object obj) {
        return this.f14293a.m21938q((SQLiteDatabase) obj, this.f14294b);
    }
}
