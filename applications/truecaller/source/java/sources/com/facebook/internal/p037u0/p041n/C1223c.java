package com.facebook.internal.p037u0.p041n;

import com.razorpay.AnalyticsConstants;
import java.io.File;
import java.io.FilenameFilter;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.f0.h;
import s1.z.c.l;
/* renamed from: com.facebook.internal.u0.n.c */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/u0/n/c.class */
public final /* synthetic */ class C1223c implements FilenameFilter {

    /* renamed from: a */
    public static final /* synthetic */ C1223c f3303a = new C1223c();

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        l.d(str, AnalyticsConstants.NAME);
        return new h(C22128a.m8562v(new Object[]{"error_log_"}, 1, "^%s[0-9]+.json$", "java.lang.String.format(format, *args)")).d(str);
    }
}
