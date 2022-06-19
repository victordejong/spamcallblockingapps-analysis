package com.google.android.gms.common.api;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.internal.C6054p;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.common.api.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/g.class */
public final class C6005g {
    @RecentlyNonNull
    /* renamed from: a */
    public static <R extends AbstractC6007i> AbstractC6003f<R> m17454a(@RecentlyNonNull R r, @RecentlyNonNull AbstractC5999d abstractC5999d) {
        C6155o.m17017k(r, "Result must not be null");
        C6155o.m17026b(!r.mo5849e().m17486p0(), "Status code must not be SUCCESS");
        C6081n c6081n = new C6081n(abstractC5999d, r);
        c6081n.m17448f(r);
        return c6081n;
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static AbstractC6003f<Status> m17453b(@RecentlyNonNull Status status, @RecentlyNonNull AbstractC5999d abstractC5999d) {
        C6155o.m17017k(status, "Result must not be null");
        C6054p c6054p = new C6054p(abstractC5999d);
        c6054p.m17448f(status);
        return c6054p;
    }
}
