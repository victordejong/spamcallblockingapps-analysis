package com.appnext.base.moments.p011a.p013b;

import android.content.ContentValues;
import android.database.Cursor;
import com.appnext.base.moments.p011a.p012a.C0484b;
import com.appnext.base.moments.p014b.C0493d;
import com.appnext.base.p006a.p009c.AbstractC0478a;
import java.util.ArrayList;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.appnext.base.moments.a.b.d */
/* loaded from: classes-dex2jar.jar:com/appnext/base/moments/a/b/d.class */
public class C0488d extends AbstractC0478a<C0484b> {

    /* renamed from: co */
    private String[] f1690co = {"pk", "t", "cd", "cdd", "cdt"};

    /* renamed from: cp */
    private String f1691cp;

    public C0488d(String str) {
        this.f1691cp = str;
    }

    /* renamed from: a */
    public static String m42529a(String str, boolean z) {
        StringBuilder m8696K = C22128a.m8696K("create table ", str);
        m8696K.append(" ( pk text not null, t text not null , cd text not null, cdd text default (strftime('%s','now')), cdt text)");
        return m8696K.toString();
    }

    @Override // com.appnext.base.p006a.p009c.AbstractC0478a
    /* renamed from: O */
    public final String[] mo42531O() {
        return this.f1690co;
    }

    /* renamed from: a */
    public final long m42530a(C0484b c0484b) {
        m42527l(c0484b.getType());
        String str = this.f1691cp;
        ContentValues contentValues = new ContentValues();
        contentValues.put("pk", c0484b.m42549U());
        contentValues.put("t", c0484b.getType());
        contentValues.put("cd", c0484b.m42548V());
        contentValues.put("cdt", c0484b.m42546X());
        return AbstractC0478a.m42569a(str, contentValues);
    }

    @Override // com.appnext.base.p006a.p009c.AbstractC0478a
    /* renamed from: b */
    public final /* synthetic */ C0484b mo42528b(Cursor cursor) {
        return new C0484b(cursor.getString(cursor.getColumnIndex("pk")), cursor.getString(cursor.getColumnIndex("t")), cursor.getString(cursor.getColumnIndex("cd")), C0493d.m42521a(cursor.getLong(cursor.getColumnIndex("cdd")) * 1000), cursor.getString(cursor.getColumnIndex("cdt")));
    }

    /* renamed from: l */
    public final void m42527l(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(AbstractC0478a.EnumC0479a.Equals);
        super.m42566a(this.f1691cp, new String[]{"t"}, new String[]{str}, arrayList);
    }
}
