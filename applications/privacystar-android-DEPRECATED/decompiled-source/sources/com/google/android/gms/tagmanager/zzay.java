package com.google.android.gms.tagmanager;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzay.class */
final class zzay {
    final byte[] zzbbi;
    final String zzoj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzay(String str, byte[] bArr) {
        this.zzoj = str;
        this.zzbbi = bArr;
    }

    public final String toString() {
        String str = this.zzoj;
        int hashCode = Arrays.hashCode(this.zzbbi);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 54);
        sb.append("KeyAndSerialized: key = ");
        sb.append(str);
        sb.append(" serialized hash = ");
        sb.append(hashCode);
        return sb.toString();
    }
}
