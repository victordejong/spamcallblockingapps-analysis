package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C0515C;
import com.google.android.gms.internal.ads.zzcf;
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
    public static CountDownLatch zznw = new CountDownLatch(1);

    private static zzcf.zza zza(zzcf.zza.zzd zzdVar) {
        zzcf.zza.zzb zzap = zzcf.zza.zzap();
        zzap.zzau(zzdVar.zzv());
        return (zzelb) zzap.zzbiw();
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

    private static byte[] zza(byte[] bArr, String str, boolean z) {
        ByteBuffer byteBuffer;
        int i = z ? 239 : 255;
        byte[] bArr2 = bArr;
        if (bArr.length > i) {
            bArr2 = zza(zzcf.zza.zzd.zzju).toByteArray();
        }
        if (bArr2.length < i) {
            byte[] bArr3 = new byte[i - bArr2.length];
            new SecureRandom().nextBytes(bArr3);
            byteBuffer = ByteBuffer.allocate(i + 1).put((byte) bArr2.length).put(bArr2).put(bArr3);
        } else {
            byteBuffer = ByteBuffer.allocate(i + 1).put((byte) bArr2.length).put(bArr2);
        }
        byte[] array = byteBuffer.array();
        byte[] bArr4 = array;
        if (z) {
            bArr4 = ByteBuffer.allocate(256).put(zzb(array)).put(array).array();
        }
        byte[] bArr5 = new byte[256];
        for (zzdd zzddVar : new zzdb().zzvk) {
            zzddVar.zza(bArr4, bArr5);
        }
        if (str != null && str.length() > 0) {
            String str2 = str;
            if (str.length() > 32) {
                str2 = str.substring(0, 32);
            }
            new zzeje(str2.getBytes(C0515C.UTF8_NAME)).zzs(bArr5);
        }
        return bArr5;
    }

    public static byte[] zzb(byte[] bArr) {
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

    public static String zzj(zzcf.zza zzaVar, String str) {
        byte[] bArr;
        zzemo zzbiw;
        byte[] byteArray = zzaVar.toByteArray();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcsh)).booleanValue()) {
            Vector<byte[]> zza = zza(byteArray, 255);
            if (zza == null || zza.size() == 0) {
                bArr = zza(zza(zzcf.zza.zzd.zzju).toByteArray(), str, true);
                return zzcy.zza(bArr, true);
            }
            zzcf.zzf.zza zzbl = zzcf.zzf.zzbl();
            Iterator<byte[]> it = zza.iterator();
            while (it.hasNext()) {
                zzbl.zzi(zzejr.zzt(zza(it.next(), str, false)));
            }
            zzbl.zzj(zzejr.zzt(zzb(byteArray)));
            zzbiw = zzbl.zzbiw();
        } else if (zzff.zzzp == null) {
            throw new GeneralSecurityException();
        } else {
            zzbiw = zzcf.zzf.zzbl().zzi(zzejr.zzt(zzff.zzzp.zzc(byteArray, str != null ? str.getBytes() : new byte[0]))).zza(zzcm.zzln).zzbiw();
        }
        bArr = ((zzelb) zzbiw).toByteArray();
        return zzcy.zza(bArr, true);
    }
}
