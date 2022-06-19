package com.appnext.base.moments.p011a.p013b;

import android.database.Cursor;
import com.appnext.base.moments.p011a.p012a.C0483a;
import com.appnext.base.p006a.p009c.AbstractC0478a;
import com.huawei.hms.opendevice.AbstractC2405c;
import org.json.JSONArray;
/* renamed from: com.appnext.base.moments.a.b.a */
/* loaded from: classes-dex2jar.jar:com/appnext/base/moments/a/b/a.class */
public final class C0486a extends AbstractC0478a<C0483a> {

    /* renamed from: co */
    private String[] f1688co = {"p", AbstractC2405c.f7629a};

    @Override // com.appnext.base.p006a.p009c.AbstractC0478a
    /* renamed from: O */
    public final String[] mo42531O() {
        return this.f1688co;
    }

    /* renamed from: a */
    public final long m42537a(JSONArray jSONArray) {
        return super.m42568a("ct", jSONArray);
    }

    /* renamed from: ag */
    public final void m42536ag() {
        super.m42563i("ct");
    }

    @Override // com.appnext.base.p006a.p009c.AbstractC0478a
    /* renamed from: b */
    public final /* synthetic */ C0483a mo42528b(Cursor cursor) {
        return new C0483a(cursor.getString(cursor.getColumnIndex("p")), Integer.valueOf(cursor.getInt(cursor.getColumnIndex(AbstractC2405c.f7629a))));
    }
}
