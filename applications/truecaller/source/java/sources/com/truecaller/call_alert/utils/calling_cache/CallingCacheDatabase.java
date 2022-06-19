package com.truecaller.call_alert.utils.calling_cache;

import com.huawei.hms.opendevice.AbstractC2405c;
import kotlin.Metadata;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p703e3.p710k.p711s.AbstractC13465a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b'\u0018�� \u00072\u00020\u0001:\u0001\bB\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\t"}, d2 = {"Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase;", "Ln3/c0/q;", "Le/a/e3/k/s/a;", "a", "()Le/a/e3/k/s/a;", "<init>", "()V", AbstractC2405c.f7629a, C22021b.f61237c, "call-alert_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes6-dex2jar.jar:com/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase.class */
public abstract class CallingCacheDatabase extends AbstractC25677q {

    /* renamed from: a */
    public static CallingCacheDatabase f10543a;

    /* renamed from: c */
    public static final C3584b f10545c = new C3584b(null);

    /* renamed from: b */
    public static final C3583a f10544b = new C3583a(1, 2);

    /* renamed from: com.truecaller.call_alert.utils.calling_cache.CallingCacheDatabase$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase$a.class */
    public static final class C3583a extends AbstractC25649a {
        public C3583a(int i, int i2) {
            super(i, i2);
        }

        @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
        /* renamed from: a */
        public void mo1433a(AbstractC26147b abstractC26147b) {
            l.e(abstractC26147b, "database");
            abstractC26147b.mo2668S0("\n                            CREATE TABLE IF NOT EXISTS `call_cache_new` (\n                            `_id` INTEGER PRIMARY KEY AUTOINCREMENT,\n                            `number` TEXT NOT NULL,\n                            `timestamp` INTEGER NOT NULL,\n                            `state` TEXT NOT NULL,\n                            `maxAgeSeconds` INTEGER NOT NULL)\n                            ");
            abstractC26147b.mo2668S0("\n                            INSERT INTO call_cache_new (\n                            number, timestamp, maxAgeSeconds, state)\n                            SELECT number, timestamp, maxAgeSeconds, 'initiated'\n                            FROM call_cache\n                            ");
            abstractC26147b.mo2668S0("\n                            INSERT INTO call_cache_new (\n                            number, timestamp, maxAgeSeconds, state)\n                            SELECT number, timestamp, maxAgeSeconds, 'ended'\n                            FROM call_cache\n                            ");
            abstractC26147b.mo2668S0("DROP TABLE call_cache");
            abstractC26147b.mo2668S0("ALTER TABLE call_cache_new RENAME TO call_cache");
            abstractC26147b.mo2668S0("CREATE UNIQUE INDEX `index_call_cache_number_state` ON `call_cache` (`number`, `state`)");
        }
    }

    /* renamed from: com.truecaller.call_alert.utils.calling_cache.CallingCacheDatabase$b */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase$b.class */
    public static final class C3584b {
        public C3584b(f fVar) {
        }
    }

    /* renamed from: a */
    public abstract AbstractC13465a mo35802a();
}
