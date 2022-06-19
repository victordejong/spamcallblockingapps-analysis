package com.appnext.core.p018ra.database;

import java.util.HashMap;
import java.util.HashSet;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25683x;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1751c0.p1754h0.C25656e;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.appnext.core.ra.database.RecentAppsDatabase_Impl$1 */
/* loaded from: classes-dex2jar.jar:com/appnext/core/ra/database/RecentAppsDatabase_Impl$1.class */
public final class RecentAppsDatabase_Impl$1 extends C25683x.AbstractC25684a {

    /* renamed from: eY */
    public final /* synthetic */ RecentAppsDatabase_Impl f1875eY;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecentAppsDatabase_Impl$1(RecentAppsDatabase_Impl recentAppsDatabase_Impl, int i) {
        super(1);
        this.f1875eY = recentAppsDatabase_Impl;
    }

    @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
    public final void createAllTables(AbstractC26147b abstractC26147b) {
        abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS `RecentApp` (`recentAppPackage` TEXT NOT NULL, `storeDate` TEXT NOT NULL, `sent` INTEGER NOT NULL, PRIMARY KEY(`recentAppPackage`, `storeDate`))");
        abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        abstractC26147b.mo2668S0("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'e1eb051e9230fda8568d681a1d3cf00b')");
    }

    @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
    public final void dropAllTables(AbstractC26147b abstractC26147b) {
        abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `RecentApp`");
        if (RecentAppsDatabase_Impl.a(this.f1875eY) != null) {
            int size = RecentAppsDatabase_Impl.b(this.f1875eY).size();
            for (int i = 0; i < size; i++) {
                ((AbstractC25677q.AbstractC25679b) RecentAppsDatabase_Impl.c(this.f1875eY).get(i)).mo3061b(abstractC26147b);
            }
        }
    }

    @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
    public final void onCreate(AbstractC26147b abstractC26147b) {
        if (RecentAppsDatabase_Impl.d(this.f1875eY) != null) {
            int size = RecentAppsDatabase_Impl.e(this.f1875eY).size();
            for (int i = 0; i < size; i++) {
                ((AbstractC25677q.AbstractC25679b) RecentAppsDatabase_Impl.f(this.f1875eY).get(i)).mo3062a(abstractC26147b);
            }
        }
    }

    @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
    public final void onOpen(AbstractC26147b abstractC26147b) {
        RecentAppsDatabase_Impl.a(this.f1875eY, abstractC26147b);
        RecentAppsDatabase_Impl.b(this.f1875eY, abstractC26147b);
        if (RecentAppsDatabase_Impl.g(this.f1875eY) != null) {
            int size = RecentAppsDatabase_Impl.h(this.f1875eY).size();
            for (int i = 0; i < size; i++) {
                ((AbstractC25677q.AbstractC25679b) RecentAppsDatabase_Impl.i(this.f1875eY).get(i)).mo1434c(abstractC26147b);
            }
        }
    }

    @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
    public final void onPostMigrate(AbstractC26147b abstractC26147b) {
    }

    @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
    public final void onPreMigrate(AbstractC26147b abstractC26147b) {
        C25653b.m3091a(abstractC26147b);
    }

    @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
    public final C25683x.C25685b onValidateSchema(AbstractC26147b abstractC26147b) {
        HashMap hashMap = new HashMap(3);
        hashMap.put("recentAppPackage", new C25656e.C25657a("recentAppPackage", "TEXT", true, 1, null, 1));
        hashMap.put("storeDate", new C25656e.C25657a("storeDate", "TEXT", true, 2, null, 1));
        C25656e c25656e = new C25656e("RecentApp", hashMap, C22128a.m8658W(hashMap, "sent", new C25656e.C25657a("sent", "INTEGER", true, 0, null, 1), 0), new HashSet(0));
        C25656e m3085a = C25656e.m3085a(abstractC26147b, "RecentApp");
        if (!c25656e.equals(m3085a)) {
            return new C25683x.C25685b(false, "RecentApp(com.appnext.core.ra.database.RecentApp).\n Expected:\n" + c25656e + "\n Found:\n" + m3085a);
        }
        return new C25683x.C25685b(true, null);
    }
}
