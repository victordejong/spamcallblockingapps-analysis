package p193e.p194a.p1053m0.p1057c1;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
/* renamed from: e.a.m0.c1.e */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/e.class */
public final class C18056e implements AbstractC18063h0 {
    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: a */
    public String[] mo15498a() {
        return new String[]{"\n    CREATE TABLE contact_settings (\n        tc_id TEXT UNIQUE NOT NULL,\n        hidden_from_identified INT NOT NULL DEFAULT 0\n    )\n"};
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: b */
    public /* synthetic */ void mo15497b(Context context, SQLiteDatabase sQLiteDatabase, int i, int i2) {
        C18061g0.m15508c(this, context, sQLiteDatabase, i, i2);
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: c */
    public /* synthetic */ String[] mo15496c() {
        return C18061g0.m15509b(this);
    }
}
