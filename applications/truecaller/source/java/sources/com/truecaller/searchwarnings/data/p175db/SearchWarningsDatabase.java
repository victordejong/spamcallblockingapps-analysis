package com.truecaller.searchwarnings.data.p175db;

import kotlin.Metadata;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p194a.p1359x4.p1360j.p1362d.AbstractC21439b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b!\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase;", "Ln3/c0/q;", "Le/a/x4/j/d/b;", "a", "()Le/a/x4/j/d/b;", "<init>", "()V", "search-warnings_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.searchwarnings.data.db.SearchWarningsDatabase */
/* loaded from: classes13-dex2jar.jar:com/truecaller/searchwarnings/data/db/SearchWarningsDatabase.class */
public abstract class SearchWarningsDatabase extends AbstractC25677q {

    /* renamed from: a */
    public static final AbstractC25649a f14685a = new C4447a(2, 3);

    /* renamed from: b */
    public static SearchWarningsDatabase f14686b;

    /* renamed from: com.truecaller.searchwarnings.data.db.SearchWarningsDatabase$a */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/searchwarnings/data/db/SearchWarningsDatabase$a.class */
    public static final class C4447a extends AbstractC25649a {
        public C4447a(int i, int i2) {
            super(i, i2);
        }

        @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
        /* renamed from: a */
        public void mo1433a(AbstractC26147b abstractC26147b) {
            l.e(abstractC26147b, "database");
            abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS `search_warnings` (\n                `_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \n                `header` TEXT NOT NULL,\n                `message` TEXT NOT NULL,\n                `backgroundColor` TEXT,\n                `foregroundColor` TEXT,\n                `iconUrl` TEXT \n                )");
            abstractC26147b.mo2668S0("\n               ALTER TABLE `search_warnings` ADD COLUMN `backgroundColor` TEXT \n            ");
            abstractC26147b.mo2668S0("\n               ALTER TABLE `search_warnings` ADD COLUMN `foregroundColor` TEXT \n            ");
            abstractC26147b.mo2668S0("\n               ALTER TABLE `search_warnings` ADD COLUMN `iconUrl` TEXT\n            ");
        }
    }

    /* renamed from: a */
    public abstract AbstractC21439b mo34777a();
}
