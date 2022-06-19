package com.appnext.base.moments.p011a.p013b;

import android.database.Cursor;
import android.text.TextUtils;
import com.appnext.base.moments.p011a.p012a.C0485c;
import com.appnext.base.p006a.p009c.AbstractC0478a;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
/* renamed from: com.appnext.base.moments.a.b.c */
/* loaded from: classes-dex2jar.jar:com/appnext/base/moments/a/b/c.class */
public final class C0487c extends AbstractC0478a<C0485c> {

    /* renamed from: co */
    private String[] f1689co = {AnalyticsConstants.KEY, UpdateKey.STATUS, "sample", "sample_type", "cycle", "cycle_type", "service_key", RemoteMessageConst.DATA};

    @Override // com.appnext.base.p006a.p009c.AbstractC0478a
    /* renamed from: O */
    public final String[] mo42531O() {
        return this.f1689co;
    }

    /* renamed from: ag */
    public final void m42535ag() {
        super.m42563i("config_table");
    }

    /* renamed from: ai */
    public final List<C0485c> m42534ai() {
        return super.m42562j("config_table");
    }

    /* renamed from: b */
    public final long m42533b(JSONArray jSONArray) {
        return super.m42568a("config_table", jSONArray);
    }

    @Override // com.appnext.base.p006a.p009c.AbstractC0478a
    /* renamed from: b */
    public final /* synthetic */ C0485c mo42528b(Cursor cursor) {
        return new C0485c(cursor.getString(cursor.getColumnIndex(UpdateKey.STATUS)), cursor.getString(cursor.getColumnIndex("sample")), cursor.getString(cursor.getColumnIndex("sample_type")), cursor.getString(cursor.getColumnIndex("cycle")), cursor.getString(cursor.getColumnIndex("cycle_type")), cursor.getString(cursor.getColumnIndex(AnalyticsConstants.KEY)), cursor.getString(cursor.getColumnIndex("service_key")), cursor.getString(cursor.getColumnIndex(RemoteMessageConst.DATA)));
    }

    /* renamed from: k */
    public final C0485c m42532k(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(AbstractC0478a.EnumC0479a.Equals);
        List m42567a = super.m42567a("config_table", new String[]{AnalyticsConstants.KEY}, new String[]{str}, null, arrayList);
        if (m42567a != null && m42567a.size() > 0) {
            return (C0485c) m42567a.get(0);
        }
        return null;
    }
}
