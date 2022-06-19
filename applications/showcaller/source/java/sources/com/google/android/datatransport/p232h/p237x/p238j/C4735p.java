package com.google.android.datatransport.p232h.p237x.p238j;

import android.database.Cursor;
import com.google.android.datatransport.p232h.p237x.p238j.C4705b0;
import java.util.Map;
/* renamed from: com.google.android.datatransport.h.x.j.p */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/p.class */
public final /* synthetic */ class C4735p implements C4705b0.AbstractC4707b {

    /* renamed from: a */
    private final Map f14338a;

    private C4735p(Map map) {
        this.f14338a = map;
    }

    /* renamed from: b */
    public static C4705b0.AbstractC4707b m21870b(Map map) {
        return new C4735p(map);
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.C4705b0.AbstractC4707b
    /* renamed from: a */
    public Object mo21859a(Object obj) {
        return C4705b0.m21956W(this.f14338a, (Cursor) obj);
    }
}
