package com.appnext.base.moments.services.p015a;

import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import com.appnext.base.C0472a;
import com.appnext.base.moments.operations.C0495b;
import com.appnext.base.moments.p011a.p012a.C0485c;
import com.appnext.base.moments.p014b.C0492c;
import com.appnext.base.p010b.C0481b;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;
/* renamed from: com.appnext.base.moments.services.a.a */
/* loaded from: classes-dex2jar.jar:com/appnext/base/moments/services/a/a.class */
public abstract class AbstractC0498a {
    /* renamed from: a */
    private static long m42516a(long j, long j2) {
        try {
            return 1800000 - new Random().nextInt((int) (Math.abs(-1800000L) + 1800000));
        } catch (Throwable th) {
            return -1800000L;
        }
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: n */
    private static long m42512n(String str) {
        char c = 65535;
        try {
            if (str.length() == 4) {
                int parseInt = Integer.parseInt(str.substring(0, 2));
                int parseInt2 = Integer.parseInt(str.substring(2, 4));
                Calendar calendar = Calendar.getInstance();
                calendar.set(11, parseInt);
                calendar.set(12, parseInt2);
                calendar.set(13, 0);
                if (new Date().after(calendar.getTime())) {
                    calendar.add(5, 1);
                }
                c = calendar.getTimeInMillis();
            }
            return c;
        } catch (Throwable th) {
            C0472a.m42577a("ServiceSchedulingLogic$getStartTime", th);
            return -1L;
        }
    }

    /* renamed from: a */
    public abstract void mo42511a(C0485c c0485c, long j, long j2);

    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* renamed from: a */
    public final void m42515a(C0485c c0485c, boolean z) {
        if (c0485c != null) {
            try {
                if (!TextUtils.isEmpty(c0485c.m42545Y()) && !c0485c.m42545Y().equals("off")) {
                    char c = 0;
                    if (c0485c.m42544Z() != null && c0485c.m42543aa().equals("time")) {
                        if (!z) {
                            c = m42512n(c0485c.m42544Z());
                        }
                        if (c == -1) {
                            return;
                        }
                        mo42511a(c0485c, c + m42516a(-1800000L, 1800000L), DtbConstants.SIS_CHECKIN_INTERVAL);
                    } else if (c0485c.m42541ac() == null || !c0485c.m42541ac().equals("interval")) {
                        if (c0485c.m42541ac() == null || !c0485c.m42541ac().equals("once")) {
                            return;
                        }
                        mo42511a(c0485c, System.currentTimeMillis(), 0L);
                    } else {
                        long m42523c = C0492c.m42523c(c0485c.m42544Z(), c0485c.m42543aa());
                        if (m42523c == -1) {
                            return;
                        }
                        long m42560a = C0481b.m42559ak().m42560a(c0485c.m42540ad() + "_lastupdate", 0L);
                        if (m42560a == 0 || z) {
                            mo42511a(c0485c, System.currentTimeMillis(), m42523c);
                        } else {
                            mo42511a(c0485c, m42523c + m42560a, m42523c);
                        }
                    }
                }
            } catch (Throwable th) {
                C0472a.m42577a("ServiceSchedulingLogic$scheduleOperation", th);
            }
        }
    }

    /* renamed from: a */
    public final void m42514a(List<C0485c> list) {
        if (list == null) {
            return;
        }
        try {
            for (C0485c c0485c : list) {
                C0495b.m42519aj().m42517c(c0485c);
                m42513c(c0485c);
            }
        } catch (Throwable th) {
            C0472a.m42577a("ServiceSchedulingLogic$cancelAllOperations", th);
        }
    }

    /* renamed from: c */
    public final void m42513c(C0485c c0485c) {
        if (c0485c == null) {
            return;
        }
        try {
            C0495b.m42519aj().m42517c(c0485c);
            mo42510d(c0485c);
        } catch (Throwable th) {
            C0472a.m42577a("ServiceSchedulingLogic$cancelOperation", th);
        }
    }

    /* renamed from: d */
    public abstract void mo42510d(C0485c c0485c);
}
