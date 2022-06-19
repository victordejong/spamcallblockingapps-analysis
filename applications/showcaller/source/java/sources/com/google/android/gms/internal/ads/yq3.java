package com.google.android.gms.internal.ads;

import java.io.EOFException;
import org.checkerframework.dataflow.qual.Pure;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yq3.class */
public final class yq3 {
    @Pure
    /* renamed from: a */
    public static void m8721a(boolean z, String str) {
        if (z) {
            return;
        }
        throw zzaha.zzb(str, null);
    }

    /* renamed from: b */
    public static int m8720b(vq3 vq3Var, byte[] bArr, int i, int i2) {
        int i3;
        int mo9881o;
        int i4 = 0;
        while (true) {
            i3 = i4;
            if (i3 >= i2 || (mo9881o = vq3Var.mo9881o(bArr, i + i3, i2 - i3)) == -1) {
                break;
            }
            i4 = i3 + mo9881o;
        }
        return i3;
    }

    /* renamed from: c */
    public static boolean m8719c(vq3 vq3Var, byte[] bArr, int i, int i2) {
        try {
            ((pq3) vq3Var).mo9883k(bArr, i, i2, false);
            return true;
        } catch (EOFException e) {
            return false;
        }
    }

    /* renamed from: d */
    public static boolean m8718d(vq3 vq3Var, int i) {
        try {
            ((pq3) vq3Var).m12196p(i, false);
            return true;
        } catch (EOFException e) {
            return false;
        }
    }

    /* renamed from: e */
    public static boolean m8717e(vq3 vq3Var, byte[] bArr, int i, int i2, boolean z) {
        try {
            return vq3Var.mo9882l(bArr, 0, i2, z);
        } catch (EOFException e) {
            if (!z) {
                throw e;
            }
            return false;
        }
    }
}
