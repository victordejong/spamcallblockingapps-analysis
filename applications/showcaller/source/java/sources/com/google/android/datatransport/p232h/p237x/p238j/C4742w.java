package com.google.android.datatransport.p232h.p237x.p238j;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.p232h.AbstractC4664h;
import com.google.android.datatransport.p232h.AbstractC4673m;
import com.google.android.datatransport.p232h.p237x.p238j.C4705b0;
/* renamed from: com.google.android.datatransport.h.x.j.w */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/w.class */
final /* synthetic */ class C4742w implements C4705b0.AbstractC4707b {

    /* renamed from: a */
    private final C4705b0 f14345a;

    /* renamed from: b */
    private final AbstractC4673m f14346b;

    /* renamed from: c */
    private final AbstractC4664h f14347c;

    private C4742w(C4705b0 c4705b0, AbstractC4673m abstractC4673m, AbstractC4664h abstractC4664h) {
        this.f14345a = c4705b0;
        this.f14346b = abstractC4673m;
        this.f14347c = abstractC4664h;
    }

    /* renamed from: b */
    public static C4705b0.AbstractC4707b m21862b(C4705b0 c4705b0, AbstractC4673m abstractC4673m, AbstractC4664h abstractC4664h) {
        return new C4742w(c4705b0, abstractC4673m, abstractC4664h);
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.C4705b0.AbstractC4707b
    /* renamed from: a */
    public Object mo21859a(Object obj) {
        return C4705b0.m21955Y(this.f14345a, this.f14346b, this.f14347c, (SQLiteDatabase) obj);
    }
}
