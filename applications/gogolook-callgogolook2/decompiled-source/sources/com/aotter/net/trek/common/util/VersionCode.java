package com.aotter.net.trek.common.util;

import android.os.Build;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/util/VersionCode.class */
public enum VersionCode {
    BASE(1),
    BASE_1_1(2),
    CUPCAKE(3),
    DONUT(4),
    ECLAIR(5),
    ECLAIR_0_1(6),
    ECLAIR_MR1(7),
    FROYO(8),
    GINGERBREAD(9),
    GINGERBREAD_MR1(10),
    HONEYCOMB(11),
    HONEYCOMB_MR1(12),
    HONEYCOMB_MR2(13),
    ICE_CREAM_SANDWICH(14),
    ICE_CREAM_SANDWICH_MR1(15),
    JELLY_BEAN(16),
    JELLY_BEAN_MR1(17),
    JELLY_BEAN_MR2(18),
    KITKAT(19),
    CUR_DEVELOPMENT(10000);
    

    /* renamed from: a */
    public int f1544a;

    VersionCode(int i) {
        this.f1544a = i;
    }

    /* renamed from: a */
    public static VersionCode m36342a(int i) {
        VersionCode[] values;
        for (VersionCode versionCode : values()) {
            if (versionCode.getApiLevel() == i) {
                return versionCode;
            }
        }
        return CUR_DEVELOPMENT;
    }

    public static VersionCode currentApiLevel() {
        return m36342a(Build.VERSION.SDK_INT);
    }

    public int getApiLevel() {
        return this.f1544a;
    }

    public boolean isAtLeast(VersionCode versionCode) {
        return getApiLevel() >= versionCode.getApiLevel();
    }

    public boolean isAtMost(VersionCode versionCode) {
        return getApiLevel() <= versionCode.getApiLevel();
    }

    public boolean isBelow(VersionCode versionCode) {
        return getApiLevel() < versionCode.getApiLevel();
    }
}
