package com.integralads.avid.library.mopub.utils;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/utils/AvidTimestamp.class */
public class AvidTimestamp {

    /* renamed from: a */
    public static double f33098a = 1000000.0d;

    public static double getCurrentTime() {
        double nanoTime = System.nanoTime();
        double d = f33098a;
        Double.isNaN(nanoTime);
        return nanoTime / d;
    }
}
