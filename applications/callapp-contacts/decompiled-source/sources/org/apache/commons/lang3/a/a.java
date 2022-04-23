package org.apache.commons.lang3.a;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final Long f39131a = 0L;

    /* renamed from: b  reason: collision with root package name */
    public static final Long f39132b = 1L;

    /* renamed from: c  reason: collision with root package name */
    public static final Long f39133c = -1L;

    /* renamed from: d  reason: collision with root package name */
    public static final Integer f39134d = 0;
    public static final Integer e = 1;
    public static final Integer f = 2;
    public static final Integer g = -1;
    public static final Short h = 0;
    public static final Short i = 1;
    public static final Short j = -1;
    public static final Byte k = (byte) 0;
    public static final Byte l = (byte) 1;
    public static final Byte m = (byte) -1;
    public static final Double n = Double.valueOf(0.0d);
    public static final Double o = Double.valueOf(1.0d);
    public static final Double p = Double.valueOf(-1.0d);
    public static final Float q = Float.valueOf((float) BitmapDescriptorFactory.HUE_RED);
    public static final Float r = Float.valueOf(1.0f);
    public static final Float s = Float.valueOf(-1.0f);

    public static int a(byte b2, byte b3) {
        return b2 - b3;
    }

    public static int a(int i2, int i3) {
        if (i2 == i3) {
            return 0;
        }
        return i2 < i3 ? -1 : 1;
    }

    public static int a(long j2, long j3) {
        int i2 = (j2 > j3 ? 1 : (j2 == j3 ? 0 : -1));
        if (i2 == 0) {
            return 0;
        }
        return i2 < 0 ? -1 : 1;
    }

    public static int a(short s2, short s3) {
        if (s2 == s3) {
            return 0;
        }
        return s2 < s3 ? -1 : 1;
    }
}
