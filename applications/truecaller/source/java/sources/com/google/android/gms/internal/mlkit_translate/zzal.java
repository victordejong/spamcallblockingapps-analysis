package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzal.class */
public abstract class zzal {
    private static final zzal zza = new zzaq("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", '=');
    private static final zzal zzb = new zzaq("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", '=');
    private static final zzal zzc = new zzas("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');
    private static final zzal zzd = new zzas("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');
    private static final zzal zze = new zzan("base16()", "0123456789ABCDEF");

    public static zzal zza() {
        return zza;
    }

    public abstract int zza(int i);

    public abstract int zza(byte[] bArr, CharSequence charSequence) throws zzap;

    public final byte[] zza(CharSequence charSequence) {
        try {
            CharSequence zzb2 = zzb(charSequence);
            int zza2 = zza(zzb2.length());
            byte[] bArr = new byte[zza2];
            int zza3 = zza(bArr, zzb2);
            if (zza3 == zza2) {
                return bArr;
            }
            byte[] bArr2 = new byte[zza3];
            System.arraycopy(bArr, 0, bArr2, 0, zza3);
            return bArr2;
        } catch (zzap e) {
            throw new IllegalArgumentException(e);
        }
    }

    public CharSequence zzb(CharSequence charSequence) {
        return (CharSequence) zzi.zza(charSequence);
    }
}
