package com.huawei.hms.availableupdate;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.availableupdate.i */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/availableupdate/i.class */
public final class C2257i {
    /* renamed from: a */
    public static String m38149a(int i) {
        if (i != 1000) {
            if (i == 2000) {
                return "DOWNLOAD_SUCCESS";
            }
            if (i == 2100) {
                return "DOWNLOADING";
            }
            if (i == 2101) {
                return "DOWNLOAD_CANCELED";
            }
            switch (i) {
                case 1201:
                    return "CHECK_FAILURE";
                case 1202:
                    return "CHECK_NO_UPDATE";
                case 1203:
                    return "CHECK_NO_SUPPORTED";
                default:
                    switch (i) {
                        case 2201:
                            return "DOWNLOAD_FAILURE";
                        case 2202:
                            return "DOWNLOAD_HASH_ERROR";
                        case 2203:
                            return "DOWNLOAD_NO_SPACE";
                        case 2204:
                            return "DOWNLOAD_NO_STORAGE";
                        default:
                            return C22128a.m8611i2("UNKNOWN - ", i);
                    }
            }
        }
        return "CHECK_OK";
    }
}
