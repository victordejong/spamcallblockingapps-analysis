package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaki.class */
public final class zzaki {
    public static boolean zza = false;
    private static MessageDigest zzc;
    private static final Object zzd = new Object();
    private static final Object zze = new Object();
    public static final CountDownLatch zzb = new CountDownLatch(1);

    public static String zza(zzajp zzajpVar, String str) throws GeneralSecurityException, UnsupportedEncodingException {
        byte[] bArr;
        byte[] zzar = zzajpVar.zzar();
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbX)).booleanValue()) {
            Vector<byte[]> zzb2 = zzb(zzar, 255);
            if (zzb2 == null || zzb2.size() == 0) {
                bArr = zzg(zzf(4096).zzar(), str, true);
            } else {
                zzakb zza2 = zzakc.zza();
                int size = zzb2.size();
                for (int i = 0; i < size; i++) {
                    zza2.zza(zzgjf.zzv(zzg(zzb2.get(i), str, false)));
                }
                zza2.zzb(zzgjf.zzv(zze(zzar)));
                bArr = zza2.zzah().zzar();
            }
        } else if (zzamt.zza == null) {
            throw new GeneralSecurityException();
        } else {
            byte[] zza3 = zzamt.zza.zza(zzar, str != null ? str.getBytes() : new byte[0]);
            zzakb zza4 = zzakc.zza();
            zza4.zza(zzgjf.zzv(zza3));
            zza4.zzc(3);
            bArr = zza4.zzah().zzar();
        }
        return zzake.zza(bArr, true);
    }

    public static Vector<byte[]> zzb(byte[] bArr, int i) {
        int length;
        if (bArr == null || (length = bArr.length) <= 0) {
            return null;
        }
        int i2 = (length + 254) / 255;
        Vector<byte[]> vector = new Vector<>();
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i3 * 255;
            try {
                int length2 = bArr.length;
                int i5 = length2;
                if (length2 - i4 > 255) {
                    i5 = i4 + 255;
                }
                vector.add(Arrays.copyOfRange(bArr, i4, i5));
            } catch (IndexOutOfBoundsException e) {
                return null;
            }
        }
        return vector;
    }

    public static void zzd() {
        synchronized (zze) {
            if (!zza) {
                zza = true;
                new Thread(new zzakh(null)).start();
            }
        }
    }

    public static byte[] zze(byte[] bArr) throws NoSuchAlgorithmException {
        byte[] digest;
        MessageDigest messageDigest;
        synchronized (zzd) {
            zzd();
            MessageDigest messageDigest2 = null;
            try {
                if (zzb.await(2L, TimeUnit.SECONDS) && (messageDigest = zzc) != null) {
                    messageDigest2 = messageDigest;
                }
            } catch (InterruptedException e) {
            }
            if (messageDigest2 == null) {
                throw new NoSuchAlgorithmException("Cannot compute hash");
            }
            messageDigest2.reset();
            messageDigest2.update(bArr);
            digest = zzc.digest();
        }
        return digest;
    }

    public static zzajp zzf(int i) {
        zzaiz zza2 = zzajp.zza();
        zza2.zzz(4096L);
        return zza2.zzah();
    }

    private static byte[] zzg(byte[] bArr, String str, boolean z) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        byte[] bArr2;
        int i = true != z ? 255 : 239;
        byte[] bArr3 = bArr;
        if (bArr.length > i) {
            bArr3 = zzf(4096).zzar();
        }
        int length = bArr3.length;
        if (length < i) {
            byte[] bArr4 = new byte[i - length];
            new SecureRandom().nextBytes(bArr4);
            bArr2 = ByteBuffer.allocate(i + 1).put((byte) length).put(bArr3).put(bArr4).array();
        } else {
            bArr2 = ByteBuffer.allocate(i + 1).put((byte) length).put(bArr3).array();
        }
        byte[] bArr5 = bArr2;
        if (z) {
            bArr5 = ByteBuffer.allocate(256).put(zze(bArr2)).put(bArr2).array();
        }
        byte[] bArr6 = new byte[256];
        zzakj[] zzakjVarArr = new zzali().zzcG;
        int length2 = zzakjVarArr.length;
        for (int i2 = 0; i2 < 12; i2++) {
            zzakjVarArr[i2].zza(bArr5, bArr6);
        }
        if (str != null && str.length() > 0) {
            String str2 = str;
            if (str.length() > 32) {
                str2 = str.substring(0, 32);
            }
            new zzgil(str2.getBytes("UTF-8")).zza(bArr6);
        }
        return bArr6;
    }
}
