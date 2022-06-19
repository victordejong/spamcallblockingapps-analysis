package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i;

import android.database.Cursor;
import java.util.ArrayList;
import p193e.p1577m.p1578a.p1580b.C23987b;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24097h0;
/* renamed from: e.m.a.b.j.c0.i.g */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/i/g.class */
public final /* synthetic */ class C24094g implements C24097h0.AbstractC24099b {

    /* renamed from: a */
    public static final /* synthetic */ C24094g f66771a = new C24094g();

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24097h0.AbstractC24099b
    public final Object apply(Object obj) {
        int i;
        Cursor cursor = (Cursor) obj;
        C23987b c23987b = C24097h0.f66773f;
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (true) {
            i = i2;
            if (!cursor.moveToNext()) {
                break;
            }
            byte[] blob = cursor.getBlob(0);
            arrayList.add(blob);
            i2 = i + blob.length;
        }
        byte[] bArr = new byte[i];
        int i3 = 0;
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            byte[] bArr2 = (byte[]) arrayList.get(i4);
            System.arraycopy(bArr2, 0, bArr, i3, bArr2.length);
            i3 += bArr2.length;
        }
        return bArr;
    }
}
