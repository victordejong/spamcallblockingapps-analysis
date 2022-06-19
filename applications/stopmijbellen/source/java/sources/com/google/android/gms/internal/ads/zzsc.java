package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsc.class */
public final /* synthetic */ class zzsc implements Comparator {
    public static final /* synthetic */ zzsc zza = new zzsc();

    private /* synthetic */ zzsc() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i;
        Integer num = (Integer) obj;
        Integer num2 = (Integer) obj2;
        int i2 = zzsp.zza;
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
