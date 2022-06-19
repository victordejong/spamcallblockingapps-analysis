package p193e.p194a.p1392y2.p1393p;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.y2.p.a */
/* loaded from: classes5-dex2jar.jar:e/a/y2/p/a.class */
public final class C21773a {

    /* renamed from: a */
    public static final AbstractC25649a f60613a = new C21774a(1, 2);

    /* renamed from: e.a.y2.p.a$a */
    /* loaded from: classes5-dex2jar.jar:e/a/y2/p/a$a.class */
    public static final class C21774a extends AbstractC25649a {
        public C21774a(int i, int i2) {
            super(i, i2);
        }

        @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
        /* renamed from: a */
        public void mo1433a(AbstractC26147b abstractC26147b) {
            C22128a.m8565u0(abstractC26147b, "database", "DROP TABLE IF EXISTS WorkActionRetryResult", "CREATE TABLE `WorkActionRetryResult` (\n                `actionName` TEXT NOT NULL, \n                `period` TEXT NOT NULL, \n                `internetRequired` INTEGER NOT NULL, \n                `retriedTimes` INTEGER NOT NULL, \n                PRIMARY KEY(`actionName`, `period`, `internetRequired`)\n            )");
        }
    }
}
