package com.google.android.gms.internal.ads;

import com.tenor.android.core.constant.StringConstant;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzzs.class */
public final class zzzs {
    public static boolean zza = false;
    private static MessageDigest zzc;
    private static final Object zzd = new Object();
    private static final Object zze = new Object();
    public static final CountDownLatch zzb = new CountDownLatch(1);

    public static void zzb() {
        synchronized (zze) {
            if (!zza) {
                zza = true;
                new Thread(new zzzq(null)).start();
            }
        }
    }

    public static String zzc(zzyz zzyzVar, String str) throws GeneralSecurityException, UnsupportedEncodingException {
        byte[] bArr;
        byte[] zzao = zzyzVar.zzao();
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbR)).booleanValue()) {
            Vector<byte[]> zzd2 = zzd(zzao, 255);
            if (zzd2 == null || zzd2.size() == 0) {
                bArr = zzg(zzf(4096).zzao(), str, true);
            } else {
                zzzl zza2 = zzzm.zza();
                int size = zzd2.size();
                for (int i = 0; i < size; i++) {
                    zza2.zza(zzgex.zzt(zzg(zzd2.get(i), str, false)));
                }
                zza2.zzb(zzgex.zzt(zze(zzao)));
                bArr = zza2.zzah().zzao();
            }
        } else if (zzabs.zza == null) {
            throw new GeneralSecurityException();
        } else {
            byte[] zza3 = zzabs.zza.zza(zzao, str != null ? str.getBytes() : new byte[0]);
            zzzl zza4 = zzzm.zza();
            zza4.zza(zzgex.zzt(zza3));
            zza4.zzc(3);
            bArr = zza4.zzah().zzao();
        }
        return zzzo.zza(bArr, true);
    }

    public static Vector<byte[]> zzd(byte[] bArr, int i) {
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

    public static byte[] zze(byte[] bArr) throws NoSuchAlgorithmException {
        byte[] digest;
        MessageDigest messageDigest;
        synchronized (zzd) {
            zzb();
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

    public static zzyz zzf(int i) {
        zzyj zzi = zzyz.zzi();
        zzi.zzl(4096L);
        return zzi.zzah();
    }

    private static byte[] zzg(byte[] bArr, String str, boolean z) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        byte[] bArr2;
        int i = true != z ? 255 : 239;
        byte[] bArr3 = bArr;
        if (bArr.length > i) {
            bArr3 = zzf(4096).zzao();
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
        zzzt[] zzztVarArr = new zzaah().zzcG;
        int length2 = zzztVarArr.length;
        for (int i2 = 0; i2 < 12; i2++) {
            zzztVarArr[i2].zza(bArr5, bArr6);
        }
        if (str != null && str.length() > 0) {
            String str2 = str;
            if (str.length() > 32) {
                str2 = str.substring(0, 32);
            }
            new zzgee(str2.getBytes(StringConstant.UTF8)).zza(bArr6);
        }
        return bArr6;
    }
}
