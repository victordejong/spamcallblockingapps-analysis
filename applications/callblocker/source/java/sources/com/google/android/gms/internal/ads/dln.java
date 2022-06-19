package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dln.class */
public abstract class dln {

    /* renamed from: a */
    public static final dln f14666a = new dlm();

    /* renamed from: a */
    public abstract int mo8840a();

    /* renamed from: a */
    public final int m9200a(int i, dlp dlpVar, dlo dloVar, int i2) {
        int i3;
        int i4;
        mo8838a(i, dlpVar, false);
        m9201a(0, dloVar, false);
        if (i == 0) {
            switch (i2) {
                case 0:
                    i4 = 1;
                    if (mo8840a() - 1 == 0) {
                        i4 = -1;
                        break;
                    }
                    break;
                case 1:
                    i4 = 0;
                    break;
                case 2:
                    i4 = 1;
                    if (mo8840a() - 1 == 0) {
                        i4 = 0;
                        break;
                    }
                    break;
                default:
                    throw new IllegalStateException();
            }
            if (i4 == -1) {
                i3 = -1;
            } else {
                m9201a(i4, dloVar, false);
                i3 = 0;
            }
        } else {
            i3 = i + 1;
        }
        return i3;
    }

    /* renamed from: a */
    public abstract int mo8837a(Object obj);

    /* renamed from: a */
    public final dlo m9201a(int i, dlo dloVar, boolean z) {
        return mo8839a(i, dloVar, false, 0L);
    }

    /* renamed from: a */
    public abstract dlo mo8839a(int i, dlo dloVar, boolean z, long j);

    /* renamed from: a */
    public abstract dlp mo8838a(int i, dlp dlpVar, boolean z);

    /* renamed from: b */
    public abstract int mo8836b();

    /* renamed from: c */
    public final boolean m9199c() {
        return mo8840a() == 0;
    }
}
