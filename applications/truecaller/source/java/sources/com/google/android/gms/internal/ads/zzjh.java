package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjh.class */
public final /* synthetic */ class zzjh implements Comparator {
    public static final Comparator zza = new zzjh();

    private zzjh() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i;
        Integer num = (Integer) obj;
        Integer num2 = (Integer) obj2;
        int i2 = zzjt.zza;
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
