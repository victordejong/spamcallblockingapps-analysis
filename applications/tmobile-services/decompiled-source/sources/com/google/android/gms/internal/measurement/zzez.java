package com.google.android.gms.internal.measurement;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzez.class */
final class zzez {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m12698a(int i) {
        return (int) (Integer.rotateLeft((int) (i * (-862048943)), 15) * 461845907);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m12697b(@NullableDecl Object obj) {
        return m12698a(obj == null ? 0 : obj.hashCode());
    }
}
