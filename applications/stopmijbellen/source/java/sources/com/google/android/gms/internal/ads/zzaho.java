package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaho.class */
public final class zzaho implements zzagc {
    private final zzahn zzc;
    private final Map<String, zzahl> zza = new LinkedHashMap(16, 0.75f, true);
    private long zzb = 0;
    private final int zzd = 5242880;

    public zzaho(zzahn zzahnVar, int i) {
        this.zzc = zzahnVar;
    }

    public zzaho(File file, int i) {
        this.zzc = new zzahk(this, file);
    }

    public static int zze(InputStream inputStream) throws IOException {
        return (zzn(inputStream) << 24) | zzn(inputStream) | (zzn(inputStream) << 8) | (zzn(inputStream) << 16);
    }

    public static long zzf(InputStream inputStream) throws IOException {
        return (zzn(inputStream) & 255) | ((zzn(inputStream) & 255) << 8) | ((zzn(inputStream) & 255) << 16) | ((zzn(inputStream) & 255) << 24) | ((zzn(inputStream) & 255) << 32) | ((zzn(inputStream) & 255) << 40) | ((zzn(inputStream) & 255) << 48) | ((255 & zzn(inputStream)) << 56);
    }

    public static String zzh(zzahm zzahmVar) throws IOException {
        return new String(zzm(zzahmVar, zzf(zzahmVar)), "UTF-8");
    }

    public static void zzj(OutputStream outputStream, int i) throws IOException {
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    public static void zzk(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) j);
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    public static void zzl(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        int length = bytes.length;
        zzk(outputStream, length);
        outputStream.write(bytes, 0, length);
    }

    public static byte[] zzm(zzahm zzahmVar, long j) throws IOException {
        long zza = zzahmVar.zza();
        if (j >= 0 && j <= zza) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(zzahmVar).readFully(bArr);
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

    private static int zzn(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    private final void zzo(String str, zzahl zzahlVar) {
        if (!this.zza.containsKey(str)) {
            this.zzb += zzahlVar.zza;
        } else {
            this.zzb = (zzahlVar.zza - this.zza.get(str).zza) + this.zzb;
        }
        this.zza.put(str, zzahlVar);
    }

    private final void zzp(String str) {
        zzahl remove = this.zza.remove(str);
        if (remove != null) {
            this.zzb -= remove.zza;
        }
    }

    private static final String zzq(String str) {
        int length = str.length() / 2;
        String valueOf = String.valueOf(String.valueOf(str.substring(0, length).hashCode()));
        String valueOf2 = String.valueOf(String.valueOf(str.substring(length).hashCode()));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    @Override // com.google.android.gms.internal.ads.zzagc
    public final zzagb zza(String str) {
        synchronized (this) {
            zzahl zzahlVar = this.zza.get(str);
            if (zzahlVar == null) {
                return null;
            }
            File zzg = zzg(str);
            try {
                zzahm zzahmVar = new zzahm(new BufferedInputStream(new FileInputStream(zzg)), zzg.length());
                try {
                    zzahl zza = zzahl.zza(zzahmVar);
                    if (!TextUtils.equals(str, zza.zzb)) {
                        zzahe.zza("%s: key=%s, found=%s", zzg.getAbsolutePath(), str, zza.zzb);
                        zzp(str);
                        return null;
                    }
                    byte[] zzm = zzm(zzahmVar, zzahmVar.zza());
                    zzagb zzagbVar = new zzagb();
                    zzagbVar.zza = zzm;
                    zzagbVar.zzb = zzahlVar.zzc;
                    zzagbVar.zzc = zzahlVar.zzd;
                    zzagbVar.zzd = zzahlVar.zze;
                    zzagbVar.zze = zzahlVar.zzf;
                    zzagbVar.zzf = zzahlVar.zzg;
                    List<zzagk> list = zzahlVar.zzh;
                    TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                    for (zzagk zzagkVar : list) {
                        treeMap.put(zzagkVar.zza(), zzagkVar.zzb());
                    }
                    zzagbVar.zzg = treeMap;
                    zzagbVar.zzh = Collections.unmodifiableList(zzahlVar.zzh);
                    return zzagbVar;
                } finally {
                    zzahmVar.close();
                }
            } catch (IOException e) {
                zzahe.zza("%s: %s", zzg.getAbsolutePath(), e.toString());
                zzi(str);
                return null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzagc
    public final void zzb() {
        long length;
        zzahm zzahmVar;
        synchronized (this) {
            File zza = this.zzc.zza();
            if (!zza.exists()) {
                if (zza.mkdirs()) {
                    return;
                }
                zzahe.zzb("Unable to create cache dir %s", zza.getAbsolutePath());
                return;
            }
            File[] listFiles = zza.listFiles();
            if (listFiles == null) {
                return;
            }
            for (File file : listFiles) {
                try {
                    length = file.length();
                    zzahmVar = new zzahm(new BufferedInputStream(new FileInputStream(file)), length);
                } catch (IOException e) {
                    file.delete();
                }
                try {
                    zzahl zza2 = zzahl.zza(zzahmVar);
                    zza2.zza = length;
                    zzo(zza2.zzb, zza2);
                    zzahmVar.close();
                } catch (Throwable th) {
                    zzahmVar.close();
                    throw th;
                    break;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzagc
    public final void zzc(String str, boolean z) {
        synchronized (this) {
            zzagb zza = zza(str);
            if (zza != null) {
                zza.zzf = 0L;
                zza.zze = 0L;
                zzd(str, zza);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzagc
    public final void zzd(String str, zzagb zzagbVar) {
        BufferedOutputStream bufferedOutputStream;
        zzahl zzahlVar;
        synchronized (this) {
            long j = this.zzb;
            int length = zzagbVar.zza.length;
            int i = this.zzd;
            if (j + length <= i || length <= i * 0.9f) {
                File zzg = zzg(str);
                try {
                    bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(zzg));
                    zzahlVar = new zzahl(str, zzagbVar);
                } catch (IOException e) {
                    if (!zzg.delete()) {
                        zzahe.zza("Could not clean up file %s", zzg.getAbsolutePath());
                    }
                    if (!this.zzc.zza().exists()) {
                        zzahe.zza("Re-initializing cache after external clearing.", new Object[0]);
                        this.zza.clear();
                        this.zzb = 0L;
                        zzb();
                        return;
                    }
                }
                try {
                    zzj(bufferedOutputStream, 538247942);
                    zzl(bufferedOutputStream, zzahlVar.zzb);
                    String str2 = zzahlVar.zzc;
                    String str3 = str2;
                    if (str2 == null) {
                        str3 = "";
                    }
                    zzl(bufferedOutputStream, str3);
                    zzk(bufferedOutputStream, zzahlVar.zzd);
                    zzk(bufferedOutputStream, zzahlVar.zze);
                    zzk(bufferedOutputStream, zzahlVar.zzf);
                    zzk(bufferedOutputStream, zzahlVar.zzg);
                    List<zzagk> list = zzahlVar.zzh;
                    if (list != null) {
                        zzj(bufferedOutputStream, list.size());
                        for (zzagk zzagkVar : list) {
                            zzl(bufferedOutputStream, zzagkVar.zza());
                            zzl(bufferedOutputStream, zzagkVar.zzb());
                        }
                    } else {
                        zzj(bufferedOutputStream, 0);
                    }
                    bufferedOutputStream.flush();
                    bufferedOutputStream.write(zzagbVar.zza);
                    bufferedOutputStream.close();
                    zzahlVar.zza = zzg.length();
                    zzo(str, zzahlVar);
                    if (this.zzb >= this.zzd) {
                        if (zzahe.zzb) {
                            zzahe.zzd("Pruning old cache entries.", new Object[0]);
                        }
                        long j2 = this.zzb;
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        Iterator<Map.Entry<String, zzahl>> it2 = this.zza.entrySet().iterator();
                        int i2 = 0;
                        while (it2.hasNext()) {
                            zzahl value = it2.next().getValue();
                            if (zzg(value.zzb).delete()) {
                                this.zzb -= value.zza;
                            } else {
                                String str4 = value.zzb;
                                zzahe.zza("Could not delete cache entry for key=%s, filename=%s", str4, zzq(str4));
                            }
                            it2.remove();
                            i2++;
                            if (((float) this.zzb) < this.zzd * 0.9f) {
                                break;
                            }
                        }
                        if (zzahe.zzb) {
                            zzahe.zzd("pruned %d files, %d bytes, %d ms", Integer.valueOf(i2), Long.valueOf(this.zzb - j2), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
                        }
                    }
                } catch (IOException e2) {
                    zzahe.zza("%s", e2.toString());
                    bufferedOutputStream.close();
                    zzahe.zza("Failed to write header for %s", zzg.getAbsolutePath());
                    throw new IOException();
                }
            }
        }
    }

    public final File zzg(String str) {
        return new File(this.zzc.zza(), zzq(str));
    }

    public final void zzi(String str) {
        synchronized (this) {
            boolean delete = zzg(str).delete();
            zzp(str);
            if (!delete) {
                zzahe.zza("Could not delete cache entry for key=%s, filename=%s", str, zzq(str));
            }
        }
    }
}
