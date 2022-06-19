package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzwy.class */
public final class zzwy implements zzvm {
    private final zzwx zzc;
    private final Map<String, zzwv> zza = new LinkedHashMap(16, 0.75f, true);
    private long zzb = 0;
    private final int zzd = 5242880;

    public zzwy(zzwx zzwxVar, int i) {
        this.zzc = zzwxVar;
    }

    public zzwy(File file, int i) {
        this.zzc = new zzwu(this, file);
    }

    public static byte[] zzg(zzww zzwwVar, long j) throws IOException {
        long zza = zzwwVar.zza();
        if (j >= 0 && j <= zza) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(zzwwVar).readFully(bArr);
                return bArr;
            }
        }
        StringBuilder sb = new StringBuilder(73);
        sb.append("streamToBytes length=");
        sb.append(j);
        sb.append(", maxLength=");
        sb.append(zza);
        throw new IOException(sb.toString());
    }

    public static void zzh(OutputStream outputStream, int i) throws IOException {
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    public static int zzi(InputStream inputStream) throws IOException {
        return (zzp(inputStream) << 24) | zzp(inputStream) | (zzp(inputStream) << 8) | (zzp(inputStream) << 16);
    }

    public static void zzj(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) j);
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    public static long zzk(InputStream inputStream) throws IOException {
        return (zzp(inputStream) & 255) | ((zzp(inputStream) & 255) << 8) | ((zzp(inputStream) & 255) << 16) | ((zzp(inputStream) & 255) << 24) | ((zzp(inputStream) & 255) << 32) | ((zzp(inputStream) & 255) << 40) | ((zzp(inputStream) & 255) << 48) | ((255 & zzp(inputStream)) << 56);
    }

    public static void zzl(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes(StringConstant.UTF8);
        int length = bytes.length;
        zzj(outputStream, length);
        outputStream.write(bytes, 0, length);
    }

    public static String zzm(zzww zzwwVar) throws IOException {
        return new String(zzg(zzwwVar, zzk(zzwwVar)), StringConstant.UTF8);
    }

    private final void zzn(String str, zzwv zzwvVar) {
        if (!this.zza.containsKey(str)) {
            this.zzb += zzwvVar.zza;
        } else {
            this.zzb = (zzwvVar.zza - this.zza.get(str).zza) + this.zzb;
        }
        this.zza.put(str, zzwvVar);
    }

    private final void zzo(String str) {
        zzwv remove = this.zza.remove(str);
        if (remove != null) {
            this.zzb -= remove.zza;
        }
    }

    private static int zzp(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    private static final String zzq(String str) {
        int length = str.length() / 2;
        String valueOf = String.valueOf(String.valueOf(str.substring(0, length).hashCode()));
        String valueOf2 = String.valueOf(String.valueOf(str.substring(length).hashCode()));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final zzvl zza(String str) {
        synchronized (this) {
            zzwv zzwvVar = this.zza.get(str);
            if (zzwvVar == null) {
                return null;
            }
            File zzf = zzf(str);
            try {
                zzww zzwwVar = new zzww(new BufferedInputStream(new FileInputStream(zzf)), zzf.length());
                try {
                    zzwv zza = zzwv.zza(zzwwVar);
                    if (!TextUtils.equals(str, zza.zzb)) {
                        zzwo.zzb("%s: key=%s, found=%s", zzf.getAbsolutePath(), str, zza.zzb);
                        zzo(str);
                        return null;
                    }
                    byte[] zzg = zzg(zzwwVar, zzwwVar.zza());
                    zzvl zzvlVar = new zzvl();
                    zzvlVar.zza = zzg;
                    zzvlVar.zzb = zzwvVar.zzc;
                    zzvlVar.zzc = zzwvVar.zzd;
                    zzvlVar.zzd = zzwvVar.zze;
                    zzvlVar.zze = zzwvVar.zzf;
                    zzvlVar.zzf = zzwvVar.zzg;
                    List<zzvu> list = zzwvVar.zzh;
                    TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                    for (zzvu zzvuVar : list) {
                        treeMap.put(zzvuVar.zza(), zzvuVar.zzb());
                    }
                    zzvlVar.zzg = treeMap;
                    zzvlVar.zzh = Collections.unmodifiableList(zzwvVar.zzh);
                    return zzvlVar;
                } finally {
                    zzwwVar.close();
                }
            } catch (IOException e) {
                zzwo.zzb("%s: %s", zzf.getAbsolutePath(), e.toString());
                zze(str);
                return null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final void zzb(String str, zzvl zzvlVar) {
        int i;
        synchronized (this) {
            long j = this.zzb;
            int length = zzvlVar.zza.length;
            int i2 = this.zzd;
            if (j + length <= i2 || length <= i2 * 0.9f) {
                File zzf = zzf(str);
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(zzf));
                    zzwv zzwvVar = new zzwv(str, zzvlVar);
                    try {
                        zzh(bufferedOutputStream, 538247942);
                        zzl(bufferedOutputStream, zzwvVar.zzb);
                        String str2 = zzwvVar.zzc;
                        String str3 = str2;
                        if (str2 == null) {
                            str3 = "";
                        }
                        zzl(bufferedOutputStream, str3);
                        zzj(bufferedOutputStream, zzwvVar.zzd);
                        zzj(bufferedOutputStream, zzwvVar.zze);
                        zzj(bufferedOutputStream, zzwvVar.zzf);
                        zzj(bufferedOutputStream, zzwvVar.zzg);
                        List<zzvu> list = zzwvVar.zzh;
                        if (list != null) {
                            zzh(bufferedOutputStream, list.size());
                            for (zzvu zzvuVar : list) {
                                zzl(bufferedOutputStream, zzvuVar.zza());
                                zzl(bufferedOutputStream, zzvuVar.zzb());
                            }
                        } else {
                            zzh(bufferedOutputStream, 0);
                        }
                        bufferedOutputStream.flush();
                        bufferedOutputStream.write(zzvlVar.zza);
                        bufferedOutputStream.close();
                        zzwvVar.zza = zzf.length();
                        zzn(str, zzwvVar);
                        if (this.zzb >= this.zzd) {
                            if (zzwo.zzb) {
                                zzwo.zza("Pruning old cache entries.", new Object[0]);
                            }
                            long j2 = this.zzb;
                            long elapsedRealtime = SystemClock.elapsedRealtime();
                            Iterator<Map.Entry<String, zzwv>> it = this.zza.entrySet().iterator();
                            int i3 = 0;
                            while (true) {
                                i = i3;
                                if (!it.hasNext()) {
                                    break;
                                }
                                zzwv value = it.next().getValue();
                                if (zzf(value.zzb).delete()) {
                                    this.zzb -= value.zza;
                                } else {
                                    String str4 = value.zzb;
                                    zzwo.zzb("Could not delete cache entry for key=%s, filename=%s", str4, zzq(str4));
                                }
                                it.remove();
                                i3++;
                                if (((float) this.zzb) < this.zzd * 0.9f) {
                                    i = i3;
                                    break;
                                }
                            }
                            if (zzwo.zzb) {
                                zzwo.zza("pruned %d files, %d bytes, %d ms", Integer.valueOf(i), Long.valueOf(this.zzb - j2), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
                            }
                        }
                    } catch (IOException e) {
                        zzwo.zzb("%s", e.toString());
                        bufferedOutputStream.close();
                        zzwo.zzb("Failed to write header for %s", zzf.getAbsolutePath());
                        throw new IOException();
                    }
                } catch (IOException e2) {
                    if (!zzf.delete()) {
                        zzwo.zzb("Could not clean up file %s", zzf.getAbsolutePath());
                    }
                    if (!this.zzc.zza().exists()) {
                        zzwo.zzb("Re-initializing cache after external clearing.", new Object[0]);
                        this.zza.clear();
                        this.zzb = 0L;
                        zzc();
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final void zzc() {
        long length;
        zzww zzwwVar;
        synchronized (this) {
            File zza = this.zzc.zza();
            if (!zza.exists()) {
                if (zza.mkdirs()) {
                    return;
                }
                zzwo.zzc("Unable to create cache dir %s", zza.getAbsolutePath());
                return;
            }
            File[] listFiles = zza.listFiles();
            if (listFiles == null) {
                return;
            }
            for (File file : listFiles) {
                try {
                    length = file.length();
                    zzwwVar = new zzww(new BufferedInputStream(new FileInputStream(file)), length);
                } catch (IOException e) {
                    file.delete();
                }
                try {
                    zzwv zza2 = zzwv.zza(zzwwVar);
                    zza2.zza = length;
                    zzn(zza2.zzb, zza2);
                    zzwwVar.close();
                } catch (Throwable th) {
                    zzwwVar.close();
                    throw th;
                    break;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final void zzd(String str, boolean z) {
        synchronized (this) {
            zzvl zza = zza(str);
            if (zza != null) {
                zza.zzf = 0L;
                zza.zze = 0L;
                zzb(str, zza);
            }
        }
    }

    public final void zze(String str) {
        synchronized (this) {
            boolean delete = zzf(str).delete();
            zzo(str);
            if (!delete) {
                zzwo.zzb("Could not delete cache entry for key=%s, filename=%s", str, zzq(str));
            }
        }
    }

    public final File zzf(String str) {
        return new File(this.zzc.zza(), zzq(str));
    }
}
