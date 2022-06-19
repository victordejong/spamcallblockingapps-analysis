package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nm3.class */
final /* synthetic */ class nm3 implements Comparator {

    /* renamed from: d */
    static final Comparator f27229d = new nm3();

    private nm3() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i;
        Integer num = (Integer) obj;
        Integer num2 = (Integer) obj2;
        int i2 = zm3.f33003f;
        int i3 = -1;
        if (num.intValue() == -1) {
            if (num2.intValue() == -1) {
                i = 0;
                return i;
            }
            return i3;
        } else if (num2.intValue() == -1) {
            i3 = 1;
            return i3;
        } else {
            i = num.intValue() - num2.intValue();
            return i;
        }
    }
}
