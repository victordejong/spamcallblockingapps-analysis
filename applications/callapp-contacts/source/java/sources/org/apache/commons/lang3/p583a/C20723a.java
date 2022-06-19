package org.apache.commons.lang3.p583a;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: org.apache.commons.lang3.a.a */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/a/a.class */
public final class C20723a {

    /* renamed from: a */
    public static final Long f67180a = 0L;

    /* renamed from: b */
    public static final Long f67181b = 1L;

    /* renamed from: c */
    public static final Long f67182c = -1L;

    /* renamed from: d */
    public static final Integer f67183d = 0;

    /* renamed from: e */
    public static final Integer f67184e = 1;

    /* renamed from: f */
    public static final Integer f67185f = 2;

    /* renamed from: g */
    public static final Integer f67186g = -1;

    /* renamed from: h */
    public static final Short f67187h = 0;

    /* renamed from: i */
    public static final Short f67188i = 1;

    /* renamed from: j */
    public static final Short f67189j = -1;

    /* renamed from: k */
    public static final Byte f67190k = (byte) 0;

    /* renamed from: l */
    public static final Byte f67191l = (byte) 1;

    /* renamed from: m */
    public static final Byte f67192m = (byte) -1;

    /* renamed from: n */
    public static final Double f67193n = Double.valueOf(0.0d);

    /* renamed from: o */
    public static final Double f67194o = Double.valueOf(1.0d);

    /* renamed from: p */
    public static final Double f67195p = Double.valueOf(-1.0d);

    /* renamed from: q */
    public static final Float f67196q = Float.valueOf((float) BitmapDescriptorFactory.HUE_RED);

    /* renamed from: r */
    public static final Float f67197r = Float.valueOf(1.0f);

    /* renamed from: s */
    public static final Float f67198s = Float.valueOf(-1.0f);

    /* renamed from: a */
    public static int m599a(byte b, byte b2) {
        return b - b2;
    }

    /* renamed from: a */
    public static int m598a(int i, int i2) {
        if (i == i2) {
            return 0;
        }
        return i < i2 ? -1 : 1;
    }

    /* renamed from: a */
    public static int m597a(long j, long j2) {
        int i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
        if (i == 0) {
            return 0;
        }
        return i < 0 ? -1 : 1;
    }

    /* renamed from: a */
    public static int m596a(short s, short s2) {
        if (s == s2) {
            return 0;
        }
        return s < s2 ? -1 : 1;
    }
}
