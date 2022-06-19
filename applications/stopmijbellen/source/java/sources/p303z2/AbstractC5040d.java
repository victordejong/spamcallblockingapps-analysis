package p303z2;

import com.google.android.gms.internal.ads.C1676a;
import com.google.auto.value.AutoValue;
@AutoValue
/* renamed from: z2.d */
/* loaded from: classes-dex2jar.jar:z2/d.class */
public abstract class AbstractC5040d {

    /* renamed from: a */
    public static final AbstractC5040d f15315a;

    static {
        Long l = 10485760L;
        Integer num = 200;
        Integer num2 = 10000;
        Long l2 = 604800000L;
        Integer num3 = 81920;
        String str = l == null ? " maxStorageSizeInBytes" : "";
        String str2 = str;
        if (num == null) {
            str2 = C1676a.m4789h(str, " loadBatchSize");
        }
        String str3 = str2;
        if (num2 == null) {
            str3 = C1676a.m4789h(str2, " criticalSectionEnterTimeoutMs");
        }
        String str4 = str3;
        if (l2 == null) {
            str4 = C1676a.m4789h(str3, " eventCleanUpAge");
        }
        String str5 = str4;
        if (num3 == null) {
            str5 = C1676a.m4789h(str4, " maxBlobByteSizePerRow");
        }
        if (str5.isEmpty()) {
            f15315a = new C5036a(l.longValue(), num.intValue(), num2.intValue(), l2.longValue(), num3.intValue(), null);
            return;
        }
        throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str5));
    }

    /* renamed from: a */
    public abstract int mo115a();

    /* renamed from: b */
    public abstract long mo114b();

    /* renamed from: c */
    public abstract int mo113c();

    /* renamed from: d */
    public abstract int mo112d();

    /* renamed from: e */
    public abstract long mo111e();
}
