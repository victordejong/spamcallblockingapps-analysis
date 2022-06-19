package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.b.j.c0.i.b0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/i/b0.class */
public abstract class AbstractC24082b0 {

    /* renamed from: a */
    public static final AbstractC24082b0 f66760a;

    static {
        Long l = 10485760L;
        Integer num = 200;
        Integer num2 = 10000;
        Long l2 = 604800000L;
        Integer num3 = 81920;
        String str = l == null ? " maxStorageSizeInBytes" : "";
        String str2 = str;
        if (num == null) {
            str2 = C22128a.m8543z2(str, " loadBatchSize");
        }
        String str3 = str2;
        if (num2 == null) {
            str3 = C22128a.m8543z2(str2, " criticalSectionEnterTimeoutMs");
        }
        String str4 = str3;
        if (l2 == null) {
            str4 = C22128a.m8543z2(str3, " eventCleanUpAge");
        }
        String str5 = str4;
        if (num3 == null) {
            str5 = C22128a.m8543z2(str4, " maxBlobByteSizePerRow");
        }
        if (str5.isEmpty()) {
            f66760a = new C24121x(l.longValue(), num.intValue(), num2.intValue(), l2.longValue(), num3.intValue(), null);
            return;
        }
        throw new IllegalStateException(C22128a.m8543z2("Missing required properties:", str5));
    }

    /* renamed from: a */
    public abstract int mo5561a();

    /* renamed from: b */
    public abstract long mo5560b();

    /* renamed from: c */
    public abstract int mo5559c();

    /* renamed from: d */
    public abstract int mo5558d();

    /* renamed from: e */
    public abstract long mo5557e();
}
