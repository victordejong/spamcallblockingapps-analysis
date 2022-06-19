package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzep;
import com.google.android.gms.internal.measurement.zzew;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzs.class */
final /* synthetic */ class zzs {
    public static final /* synthetic */ int[] zza;
    public static final /* synthetic */ int[] zzb;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0082 -> B:46:0x0014). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0086 -> B:40:0x001f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x008a -> B:36:0x002a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008e -> B:10:0x0035). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0092 -> B:44:0x0049). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0096 -> B:38:0x0054). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x009a -> B:34:0x005f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x009e -> B:48:0x006a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a2 -> B:42:0x0075). Please submit an issue!!! */
    static {
        int[] iArr = new int[zzep.values().length];
        zzb = iArr;
        try {
            iArr[zzep.LESS_THAN.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            zzb[zzep.GREATER_THAN.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            zzb[zzep.EQUAL.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            zzb[zzep.BETWEEN.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        int[] iArr2 = new int[zzew.values().length];
        zza = iArr2;
        try {
            iArr2[zzew.REGEXP.ordinal()] = 1;
        } catch (NoSuchFieldError e5) {
        }
        try {
            zza[zzew.BEGINS_WITH.ordinal()] = 2;
        } catch (NoSuchFieldError e6) {
        }
        try {
            zza[zzew.ENDS_WITH.ordinal()] = 3;
        } catch (NoSuchFieldError e7) {
        }
        try {
            zza[zzew.PARTIAL.ordinal()] = 4;
        } catch (NoSuchFieldError e8) {
        }
        try {
            zza[zzew.EXACT.ordinal()] = 5;
        } catch (NoSuchFieldError e9) {
        }
        try {
            zza[zzew.IN_LIST.ordinal()] = 6;
        } catch (NoSuchFieldError e10) {
        }
    }
}
