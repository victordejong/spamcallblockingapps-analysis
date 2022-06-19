package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i;

import android.database.Cursor;
import android.util.Base64;
import java.util.ArrayList;
import p193e.p1577m.p1578a.p1580b.C23987b;
import p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24158r;
import p193e.p1577m.p1578a.p1580b.p1583j.C24144j;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24097h0;
import p193e.p1577m.p1578a.p1580b.p1583j.p1592f0.C24138a;
/* renamed from: e.m.a.b.j.c0.i.h */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/i/h.class */
public final /* synthetic */ class C24096h implements C24097h0.AbstractC24099b {

    /* renamed from: a */
    public static final /* synthetic */ C24096h f66772a = new C24096h();

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24097h0.AbstractC24099b
    public final Object apply(Object obj) {
        Cursor cursor = (Cursor) obj;
        C23987b c23987b = C24097h0.f66773f;
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            AbstractC24158r.AbstractC24159a m5527a = AbstractC24158r.m5527a();
            m5527a.mo5522b(cursor.getString(1));
            m5527a.mo5521c(C24138a.m5547b(cursor.getInt(2)));
            String string = cursor.getString(3);
            byte[] decode = string == null ? null : Base64.decode(string, 0);
            C24144j.C24146b c24146b = (C24144j.C24146b) m5527a;
            c24146b.f66864b = decode;
            arrayList.add(c24146b.mo5523a());
        }
        return arrayList;
    }
}
