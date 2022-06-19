package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import com.pubmatic.sdk.common.POBCommonConstants;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzda.class */
public final class zzda {
    private static boolean zzns = false;
    private static MessageDigest zznt;
    private static final Object zznu = new Object();
    private static final Object zznv = new Object();
    static CountDownLatch zznw = new CountDownLatch(1);

    private static zzcf.zza zza(zzcf.zza.zzd zzdVar) {
        zzcf.zza.zzb zzap = zzcf.zza.zzap();
        zzap.zzau(zzdVar.zzv());
        return (zzcf.zza) ((zzelb) zzap.zzbiw());
    }

    private static Vector<byte[]> zza(byte[] bArr, int i) {
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        int length = ((bArr.length + 255) - 1) / 255;
        Vector<byte[]> vector = new Vector<>();
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 255;
            try {
                vector.add(Arrays.copyOfRange(bArr, i3, bArr.length - i3 > 255 ? i3 + 255 : bArr.length));
            } catch (IndexOutOfBoundsException e) {
                return null;
            }
        }
        return vector;
    }

    private static byte[] zza(byte[] bArr, String str, boolean z) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        byte[] bArr2;
        int i = z ? 239 : 255;
        byte[] bArr3 = bArr;
        if (bArr.length > i) {
            bArr3 = zza(zzcf.zza.zzd.PSN_ENCODE_SIZE_FAIL).toByteArray();
        }
        if (bArr3.length < i) {
            byte[] bArr4 = new byte[i - bArr3.length];
            new SecureRandom().nextBytes(bArr4);
            bArr2 = ByteBuffer.allocate(i + 1).put((byte) bArr3.length).put(bArr3).put(bArr4).array();
        } else {
            bArr2 = ByteBuffer.allocate(i + 1).put((byte) bArr3.length).put(bArr3).array();
        }
        byte[] bArr5 = bArr2;
        if (z) {
            bArr5 = ByteBuffer.allocate(256).put(zzb(bArr2)).put(bArr2).array();
        }
        byte[] bArr6 = new byte[256];
        for (zzdd zzddVar : new zzdb().zzvk) {
            zzddVar.zza(bArr5, bArr6);
        }
        if (str != null && str.length() > 0) {
            String str2 = str;
            if (str.length() > 32) {
                str2 = str.substring(0, 32);
            }
            new zzeje(str2.getBytes(POBCommonConstants.URL_ENCODING)).zzs(bArr6);
        }
        return bArr6;
    }

    public static byte[] zzb(byte[] bArr) throws NoSuchAlgorithmException {
        byte[] digest;
        synchronized (zznu) {
            MessageDigest zzbp = zzbp();
            if (zzbp == null) {
                throw new NoSuchAlgorithmException("Cannot compute hash");
            }
            zzbp.reset();
            zzbp.update(bArr);
            digest = zznt.digest();
        }
        return digest;
    }

    public static void zzbo() {
        synchronized (zznv) {
            if (!zzns) {
                zzns = true;
                new Thread(new zzdc()).start();
            }
        }
    }

    private static MessageDigest zzbp() {
        boolean z;
        MessageDigest messageDigest;
        zzbo();
        try {
            z = zznw.await(2L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            z = false;
        }
        if (z && (messageDigest = zznt) != null) {
            return messageDigest;
        }
        return null;
    }

    public static String zzj(zzcf.zza zzaVar, String str) throws GeneralSecurityException, UnsupportedEncodingException {
        byte[] bArr;
        byte[] byteArray = zzaVar.toByteArray();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcsh)).booleanValue()) {
            Vector<byte[]> zza = zza(byteArray, 255);
            if (zza == null || zza.size() == 0) {
                bArr = zza(zza(zzcf.zza.zzd.PSN_ENCODE_SIZE_FAIL).toByteArray(), str, true);
            } else {
                zzcf.zzf.zza zzbl = zzcf.zzf.zzbl();
                Iterator<byte[]> it = zza.iterator();
                while (it.hasNext()) {
                    zzbl.zzi(zzejr.zzt(zza(it.next(), str, false)));
                }
                zzbl.zzj(zzejr.zzt(zzb(byteArray)));
                bArr = ((zzcf.zzf) ((zzelb) zzbl.zzbiw())).toByteArray();
            }
        } else if (zzff.zzzp == null) {
            throw new GeneralSecurityException();
        } else {
            bArr = ((zzcf.zzf) ((zzelb) zzcf.zzf.zzbl().zzi(zzejr.zzt(zzff.zzzp.zzc(byteArray, str != null ? str.getBytes() : new byte[0]))).zza(zzcm.TINK_HYBRID).zzbiw())).toByteArray();
        }
        return zzcy.zza(bArr, true);
    }
}
