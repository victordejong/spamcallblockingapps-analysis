package com.huawei.hms.framework.network.grs.p090h;

import com.huawei.hms.framework.common.Logger;
/* renamed from: com.huawei.hms.framework.network.grs.h.e */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/h/e.class */
public class C2337e {

    /* renamed from: a */
    private static final String f7493a = "e";

    /* renamed from: a */
    public static boolean m37850a(Long l) {
        if (l == null) {
            Logger.m38042v(f7493a, "Method isTimeExpire input param expireTime is null.");
            return true;
        }
        try {
            if (l.longValue() - System.currentTimeMillis() >= 0) {
                Logger.m38044i(f7493a, "isSpExpire false.");
                return false;
            }
            Logger.m38044i(f7493a, "isSpExpire true.");
            return true;
        } catch (NumberFormatException e) {
            Logger.m38042v(f7493a, "isSpExpire spValue NumberFormatException.");
            return true;
        }
    }

    /* renamed from: a */
    public static boolean m37849a(Long l, long j) {
        if (l == null) {
            Logger.m38042v(f7493a, "Method isTimeWillExpire input param expireTime is null.");
            return true;
        }
        try {
            if (l.longValue() - (System.currentTimeMillis() + j) < 0) {
                return true;
            }
            Logger.m38042v(f7493a, "isSpExpire false.");
            return false;
        } catch (NumberFormatException e) {
            Logger.m38042v(f7493a, "isSpExpire spValue NumberFormatException.");
            return true;
        }
    }
}
