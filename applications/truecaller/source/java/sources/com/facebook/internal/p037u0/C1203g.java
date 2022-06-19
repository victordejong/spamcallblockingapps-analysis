package com.facebook.internal.p037u0;

import com.razorpay.AnalyticsConstants;
import java.io.File;
import java.io.FilenameFilter;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: com.facebook.internal.u0.g */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/u0/g.class */
public final /* synthetic */ class C1203g implements FilenameFilter {

    /* renamed from: a */
    public static final /* synthetic */ C1203g f3264a = new C1203g();

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        l.d(str, AnalyticsConstants.NAME);
        return C22128a.m8648Z0(C22128a.m8562v(new Object[]{"crash_log_", "shield_log_", "thread_check_log_"}, 3, "^(%s|%s|%s)[0-9]+.json$", "java.lang.String.format(format, *args)"), str);
    }
}
