package com.appnext.core.adswatched.database;

import java.util.HashMap;
import java.util.HashSet;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25683x;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1751c0.p1754h0.C25656e;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/appnext/core/adswatched/database/AdWatchedDatabase_Impl$1.class */
public final class AdWatchedDatabase_Impl$1 extends C25683x.AbstractC25684a {

    /* renamed from: eA */
    public final /* synthetic */ AdWatchedDatabase_Impl f1744eA;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdWatchedDatabase_Impl$1(AdWatchedDatabase_Impl adWatchedDatabase_Impl, int i) {
        super(1);
        this.f1744eA = adWatchedDatabase_Impl;
    }

    @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
    public final void createAllTables(AbstractC26147b abstractC26147b) {
        abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS `AdWatched` (`bannerId` TEXT NOT NULL, `auid` TEXT NOT NULL, PRIMARY KEY(`bannerId`, `auid`))");
        abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        abstractC26147b.mo2668S0("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '78dfff40d553309e5115594472f14b49')");
    }

    @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
    public final void dropAllTables(AbstractC26147b abstractC26147b) {
        abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `AdWatched`");
        if (AdWatchedDatabase_Impl.a(this.f1744eA) != null) {
            int size = AdWatchedDatabase_Impl.b(this.f1744eA).size();
            for (int i = 0; i < size; i++) {
                ((AbstractC25677q.AbstractC25679b) AdWatchedDatabase_Impl.c(this.f1744eA).get(i)).mo3061b(abstractC26147b);
            }
        }
    }

    @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
    public final void onCreate(AbstractC26147b abstractC26147b) {
        if (AdWatchedDatabase_Impl.d(this.f1744eA) != null) {
            int size = AdWatchedDatabase_Impl.e(this.f1744eA).size();
            for (int i = 0; i < size; i++) {
                ((AbstractC25677q.AbstractC25679b) AdWatchedDatabase_Impl.f(this.f1744eA).get(i)).mo3062a(abstractC26147b);
            }
        }
    }

    @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
    public final void onOpen(AbstractC26147b abstractC26147b) {
        AdWatchedDatabase_Impl.a(this.f1744eA, abstractC26147b);
        AdWatchedDatabase_Impl.b(this.f1744eA, abstractC26147b);
        if (AdWatchedDatabase_Impl.g(this.f1744eA) != null) {
            int size = AdWatchedDatabase_Impl.h(this.f1744eA).size();
            for (int i = 0; i < size; i++) {
                ((AbstractC25677q.AbstractC25679b) AdWatchedDatabase_Impl.i(this.f1744eA).get(i)).mo1434c(abstractC26147b);
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
        HashMap hashMap = new HashMap(2);
        hashMap.put("bannerId", new C25656e.C25657a("bannerId", "TEXT", true, 1, null, 1));
        C25656e c25656e = new C25656e("AdWatched", hashMap, C22128a.m8658W(hashMap, "auid", new C25656e.C25657a("auid", "TEXT", true, 2, null, 1), 0), new HashSet(0));
        C25656e m3085a = C25656e.m3085a(abstractC26147b, "AdWatched");
        if (!c25656e.equals(m3085a)) {
            return new C25683x.C25685b(false, "AdWatched(com.appnext.core.adswatched.database.AdWatched).\n Expected:\n" + c25656e + "\n Found:\n" + m3085a);
        }
        return new C25683x.C25685b(true, null);
    }
}
