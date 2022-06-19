package com.facebook.internal.p037u0.p041n;

import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.Comparator;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: com.facebook.internal.u0.n.a */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/u0/n/a.class */
public final /* synthetic */ class C1221a implements Comparator {

    /* renamed from: a */
    public static final /* synthetic */ C1221a f3301a = new C1221a();

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        C1224d c1224d = (C1224d) obj;
        C1224d c1224d2 = (C1224d) obj2;
        l.d(c1224d2, "o2");
        Objects.requireNonNull(c1224d);
        l.e(c1224d2, RemoteMessageConst.DATA);
        Long l = c1224d.f3306c;
        int i = -1;
        if (l != null) {
            long longValue = l.longValue();
            Long l2 = c1224d2.f3306c;
            if (l2 != null) {
                int i2 = (l2.longValue() > longValue ? 1 : (l2.longValue() == longValue ? 0 : -1));
                if (i2 >= 0) {
                    if (i2 == 0) {
                        i = 0;
                    }
                }
            }
            i = 1;
        }
        return i;
    }
}
