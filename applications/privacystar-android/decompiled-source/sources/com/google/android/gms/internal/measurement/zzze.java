package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;
import java.util.Arrays;
import org.spongycastle.i18n.LocalizedMessage;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzze.class */
public final class zzze {
    protected static final Charset UTF_8 = Charset.forName("UTF-8");
    private static final Charset ISO_8859_1 = Charset.forName(LocalizedMessage.DEFAULT_ENCODING);
    public static final Object zzcfl = new Object();

    public static boolean equals(int[] iArr, int[] iArr2) {
        return (iArr == null || iArr.length == 0) ? iArr2 == null || iArr2.length == 0 : Arrays.equals(iArr, iArr2);
    }

    public static boolean equals(long[] jArr, long[] jArr2) {
        return (jArr == null || jArr.length == 0) ? jArr2 == null || jArr2.length == 0 : Arrays.equals(jArr, jArr2);
    }

    public static boolean equals(Object[] objArr, Object[] objArr2) {
        int length = objArr == null ? 0 : objArr.length;
        int length2 = objArr2 == null ? 0 : objArr2.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < length) {
                i3 = i2;
                if (objArr[i] == null) {
                    i++;
                }
            }
            while (i3 < length2 && objArr2[i3] == null) {
                i3++;
            }
            boolean z = i >= length;
            boolean z2 = i3 >= length2;
            if (z && z2) {
                return true;
            }
            if (z != z2 || !objArr[i].equals(objArr2[i3])) {
                return false;
            }
            i++;
            i2 = i3 + 1;
        }
    }

    public static int hashCode(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return 0;
        }
        return Arrays.hashCode(iArr);
    }

    public static int hashCode(long[] jArr) {
        if (jArr == null || jArr.length == 0) {
            return 0;
        }
        return Arrays.hashCode(jArr);
    }

    public static int hashCode(Object[] objArr) {
        int length = objArr == null ? 0 : objArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            Object obj = objArr[i2];
            i = i;
            if (obj != null) {
                i = (i * 31) + obj.hashCode();
            }
        }
        return i;
    }

    public static void zza(zzza zzzaVar, zzza zzzaVar2) {
        if (zzzaVar.zzcfc != null) {
            zzzaVar2.zzcfc = (zzzc) zzzaVar.zzcfc.clone();
        }
    }
}
