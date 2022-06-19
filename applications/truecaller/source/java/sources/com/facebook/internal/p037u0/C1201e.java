package com.facebook.internal.p037u0;

import com.razorpay.AnalyticsConstants;
import java.io.File;
import java.io.FilenameFilter;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: com.facebook.internal.u0.e */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/u0/e.class */
public final /* synthetic */ class C1201e implements FilenameFilter {

    /* renamed from: a */
    public static final /* synthetic */ C1201e f3262a = new C1201e();

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        l.d(str, AnalyticsConstants.NAME);
        return C22128a.m8648Z0(C22128a.m8562v(new Object[]{"anr_log_"}, 1, "^%s[0-9]+.json$", "java.lang.String.format(format, *args)"), str);
    }
}
