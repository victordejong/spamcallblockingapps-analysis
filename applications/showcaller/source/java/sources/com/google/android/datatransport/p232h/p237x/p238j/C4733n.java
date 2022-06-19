package com.google.android.datatransport.p232h.p237x.p238j;

import android.database.Cursor;
import com.google.android.datatransport.p232h.AbstractC4673m;
import com.google.android.datatransport.p232h.p237x.p238j.C4705b0;
import java.util.List;
/* renamed from: com.google.android.datatransport.h.x.j.n */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/n.class */
public final /* synthetic */ class C4733n implements C4705b0.AbstractC4707b {

    /* renamed from: a */
    private final C4705b0 f14334a;

    /* renamed from: b */
    private final List f14335b;

    /* renamed from: c */
    private final AbstractC4673m f14336c;

    private C4733n(C4705b0 c4705b0, List list, AbstractC4673m abstractC4673m) {
        this.f14334a = c4705b0;
        this.f14335b = list;
        this.f14336c = abstractC4673m;
    }

    /* renamed from: b */
    public static C4705b0.AbstractC4707b m21872b(C4705b0 c4705b0, List list, AbstractC4673m abstractC4673m) {
        return new C4733n(c4705b0, list, abstractC4673m);
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.C4705b0.AbstractC4707b
    /* renamed from: a */
    public Object mo21859a(Object obj) {
        return C4705b0.m21957U(this.f14334a, this.f14335b, this.f14336c, (Cursor) obj);
    }
}
