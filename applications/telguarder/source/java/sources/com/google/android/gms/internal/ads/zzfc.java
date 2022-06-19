package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.internal.ads.zzcf;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfc.class */
public class zzfc {
    private static final String TAG = "zzfc";
    protected Context context;
    private zzfa zzyp;
    private ExecutorService zzyy;
    private DexClassLoader zzyz;
    private zzek zzza;
    private byte[] zzzb;
    private boolean zzze;
    private zzdw zzzh;
    private Map<Pair<String, String>, zzgl> zzzk;
    private volatile AdvertisingIdClient zzzc = null;
    private volatile boolean zzxf = false;
    private Future zzzd = null;
    private volatile zzcf.zza zzzf = null;
    private Future zzzg = null;
    private boolean zzzi = false;
    private boolean zzzj = false;
    private boolean zzzl = false;

    private zzfc(Context context) {
        boolean z = false;
        Context applicationContext = context.getApplicationContext();
        z = applicationContext != null ? true : z;
        this.zzze = z;
        this.context = z ? applicationContext : context;
        this.zzzk = new HashMap();
        if (this.zzyp == null) {
            this.zzyp = new zzfa(this.context);
        }
    }

    public static zzfc zza(Context context, String str, String str2, boolean z) {
        zzfc zzfcVar = new zzfc(context);
        try {
            zzfcVar.zzyy = Executors.newCachedThreadPool(new zzfb());
            zzfcVar.zzxf = z;
            if (z) {
                zzfcVar.zzzd = zzfcVar.zzyy.submit(new zzfe(zzfcVar));
            }
            zzfcVar.zzyy.execute(new zzfg(zzfcVar));
            try {
                GoogleApiAvailabilityLight googleApiAvailabilityLight = GoogleApiAvailabilityLight.getInstance();
                zzfcVar.zzzi = googleApiAvailabilityLight.getApkVersion(zzfcVar.context) > 0;
                zzfcVar.zzzj = googleApiAvailabilityLight.isGooglePlayServicesAvailable(zzfcVar.context) == 0;
            } catch (Throwable th) {
            }
            zzfcVar.zza(0, true);
            if (zzfh.isMainThread() && ((Boolean) zzwr.zzqr().zzd(zzabp.zzcsi)).booleanValue()) {
                throw new IllegalStateException("Task Context initialization must not be called from the UI thread.");
            }
            zzek zzekVar = new zzek(null);
            zzfcVar.zzza = zzekVar;
            try {
                zzfcVar.zzzb = zzekVar.zzao(str);
                try {
                    try {
                        File cacheDir = zzfcVar.context.getCacheDir();
                        File file = cacheDir;
                        if (cacheDir == null) {
                            file = zzfcVar.context.getDir("dex", 0);
                            if (file == null) {
                                throw new zzev();
                            }
                        }
                        File file2 = new File(String.format("%s/%s.jar", file, "1608138930680"));
                        if (!file2.exists()) {
                            byte[] zza = zzfcVar.zzza.zza(zzfcVar.zzzb, str2);
                            file2.createNewFile();
                            FileOutputStream fileOutputStream = new FileOutputStream(file2);
                            fileOutputStream.write(zza, 0, zza.length);
                            fileOutputStream.close();
                        }
                        zzfcVar.zzb(file, "1608138930680");
                        try {
                            zzfcVar.zzyz = new DexClassLoader(file2.getAbsolutePath(), file.getAbsolutePath(), null, zzfcVar.context.getClassLoader());
                            zzc(file2);
                            zzfcVar.zza(file, "1608138930680");
                            zzap(String.format("%s/%s.dex", file, "1608138930680"));
                            zzfcVar.zzzh = new zzdw(zzfcVar);
                            zzfcVar.zzzl = true;
                        } catch (Throwable th2) {
                            zzc(file2);
                            zzfcVar.zza(file, "1608138930680");
                            zzap(String.format("%s/%s.dex", file, "1608138930680"));
                            throw th2;
                        }
                    } catch (IOException e) {
                        throw new zzev(e);
                    } catch (NullPointerException e2) {
                        throw new zzev(e2);
                    }
                } catch (zzej e3) {
                    throw new zzev(e3);
                } catch (FileNotFoundException e4) {
                    throw new zzev(e4);
                }
            } catch (zzej e5) {
                throw new zzev(e5);
            }
        } catch (zzev e6) {
        }
        return zzfcVar;
    }

    private final void zza(File file, String str) {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream2;
        FileOutputStream fileOutputStream2;
        Throwable th;
        File file2 = new File(String.format("%s/%s.tmp", file, str));
        if (file2.exists()) {
            return;
        }
        File file3 = new File(String.format("%s/%s.dex", file, str));
        if (!file3.exists()) {
            return;
        }
        long length = file3.length();
        if (length <= 0) {
            return;
        }
        byte[] bArr = new byte[(int) length];
        try {
            fileInputStream2 = new FileInputStream(file3);
            try {
                if (fileInputStream2.read(bArr) <= 0) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException e) {
                    }
                    zzc(file3);
                    return;
                }
                System.out.print(POBConstants.TEST_MODE);
                System.out.print(POBConstants.TEST_MODE);
                System.out.print(POBConstants.TEST_MODE);
                zzcf.zzc.zza zzg = zzcf.zzc.zzbe().zzh(zzejr.zzt(Build.VERSION.SDK.getBytes())).zzg(zzejr.zzt(str.getBytes()));
                byte[] bytes = this.zzza.zzb(this.zzzb, bArr).getBytes();
                zzg.zze(zzejr.zzt(bytes)).zzf(zzejr.zzt(zzda.zzb(bytes)));
                file2.createNewFile();
                fileOutputStream = new FileOutputStream(file2);
                try {
                    byte[] byteArray = ((zzcf.zzc) ((zzelb) zzg.zzbiw())).toByteArray();
                    fileOutputStream.write(byteArray, 0, byteArray.length);
                    fileOutputStream.close();
                    try {
                        fileInputStream2.close();
                    } catch (IOException e2) {
                    }
                    try {
                        fileOutputStream.close();
                    } catch (IOException e3) {
                    }
                    zzc(file3);
                } catch (zzej | IOException | NoSuchAlgorithmException e4) {
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e5) {
                        }
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e6) {
                        }
                    }
                    zzc(file3);
                } catch (Throwable th2) {
                    fileOutputStream2 = fileOutputStream;
                    th = th2;
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                        } catch (IOException e7) {
                        }
                    }
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e8) {
                        }
                    }
                    zzc(file3);
                    throw th;
                }
            } catch (zzej | IOException | NoSuchAlgorithmException e9) {
                fileOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream2 = null;
            }
        } catch (zzej | IOException | NoSuchAlgorithmException e10) {
            fileOutputStream = null;
            fileInputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream2 = null;
            fileInputStream2 = null;
        }
    }

    public static boolean zza(int i, zzcf.zza zzaVar) {
        if (i < 4) {
            return zzaVar == null || !zzaVar.zzai() || zzaVar.zzaf().equals("0000000000000000000000000000000000000000000000000000000000000000") || !zzaVar.zzan() || !zzaVar.zzao().zzbg() || zzaVar.zzao().zzbh() == -2;
        }
        return false;
    }

    private static void zzap(String str) {
        zzc(new File(str));
    }

    private final boolean zzb(File file, String str) {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        Throwable th;
        File file2 = new File(String.format("%s/%s.tmp", file, str));
        if (!file2.exists()) {
            return false;
        }
        File file3 = new File(String.format("%s/%s.dex", file, str));
        if (file3.exists()) {
            return false;
        }
        try {
            long length = file2.length();
            if (length <= 0) {
                zzc(file2);
                return false;
            }
            byte[] bArr = new byte[(int) length];
            fileInputStream = new FileInputStream(file2);
            try {
                try {
                    if (fileInputStream.read(bArr) <= 0) {
                        Log.d(TAG, "Cannot read the cache data.");
                        zzc(file2);
                        try {
                            fileInputStream.close();
                            return false;
                        } catch (IOException e) {
                            return false;
                        }
                    }
                    try {
                        zzcf.zzc zzb = zzcf.zzc.zzb(bArr, zzeko.zzbhw());
                        if (str.equals(new String(zzb.zzbc().toByteArray())) && Arrays.equals(zzb.zzbb().toByteArray(), zzda.zzb(zzb.zzba().toByteArray())) && Arrays.equals(zzb.zzbd().toByteArray(), Build.VERSION.SDK.getBytes())) {
                            byte[] zza = this.zzza.zza(this.zzzb, new String(zzb.zzba().toByteArray()));
                            file3.createNewFile();
                            fileOutputStream = new FileOutputStream(file3);
                            try {
                                fileOutputStream.write(zza, 0, zza.length);
                                try {
                                    fileInputStream.close();
                                } catch (IOException e2) {
                                }
                                try {
                                    fileOutputStream.close();
                                    return true;
                                } catch (IOException e3) {
                                    return true;
                                }
                            } catch (zzej | IOException | NoSuchAlgorithmException e4) {
                                if (fileInputStream != null) {
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e5) {
                                    }
                                }
                                if (fileOutputStream == null) {
                                    return false;
                                }
                                try {
                                    fileOutputStream.close();
                                    return false;
                                } catch (IOException e6) {
                                    return false;
                                }
                            } catch (Throwable th2) {
                                fileOutputStream2 = fileOutputStream;
                                th = th2;
                                if (fileInputStream != null) {
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e7) {
                                    }
                                }
                                if (fileOutputStream2 != null) {
                                    try {
                                        fileOutputStream2.close();
                                    } catch (IOException e8) {
                                    }
                                }
                                throw th;
                            }
                        }
                        zzc(file2);
                        try {
                            fileInputStream.close();
                            return false;
                        } catch (IOException e9) {
                            return false;
                        }
                    } catch (NullPointerException e10) {
                        try {
                            fileInputStream.close();
                            return false;
                        } catch (IOException e11) {
                            return false;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream2 = null;
                }
            } catch (zzej | IOException | NoSuchAlgorithmException e12) {
                fileOutputStream = null;
            }
        } catch (zzej | IOException | NoSuchAlgorithmException e13) {
            fileInputStream = null;
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream2 = null;
            fileInputStream = null;
        }
    }

    private static void zzc(File file) {
        if (!file.exists()) {
            Log.d(TAG, String.format("File %s not found. No need for deletion", file.getAbsolutePath()));
        } else {
            file.delete();
        }
    }

    public final void zzcq() {
        try {
            if (this.zzzc != null || !this.zzze) {
                return;
            }
            AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(this.context);
            advertisingIdClient.start();
            this.zzzc = advertisingIdClient;
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException e) {
            this.zzzc = null;
        }
    }

    private final zzcf.zza zzcr() {
        zzcf.zza zzaVar;
        try {
            PackageInfo packageInfo = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 0);
            Context context = this.context;
            zzaVar = zzdti.zzj(context, context.getPackageName(), Integer.toString(packageInfo.versionCode));
        } catch (Throwable th) {
            zzaVar = null;
        }
        return zzaVar;
    }

    public final Context getContext() {
        return this.context;
    }

    public final boolean isInitialized() {
        return this.zzzl;
    }

    public final Method zza(String str, String str2) {
        zzgl zzglVar = this.zzzk.get(new Pair(str, str2));
        if (zzglVar == null) {
            return null;
        }
        return zzglVar.zzdb();
    }

    public final void zza(int i, boolean z) {
        if (!this.zzzj) {
            return;
        }
        Future<?> submit = this.zzyy.submit(new zzfd(this, i, z));
        if (i != 0) {
            return;
        }
        this.zzzg = submit;
    }

    public final boolean zza(String str, String str2, Class<?>... clsArr) {
        if (!this.zzzk.containsKey(new Pair(str, str2))) {
            this.zzzk.put(new Pair<>(str, str2), new zzgl(this, str, str2, clsArr));
            return true;
        }
        return false;
    }

    public final zzcf.zza zzb(int i, boolean z) {
        if (i > 0 && z) {
            try {
                Thread.sleep(i * 1000);
            } catch (InterruptedException e) {
            }
        }
        return zzcr();
    }

    public final int zzbu() {
        return this.zzzh != null ? zzdw.zzbu() : Integer.MIN_VALUE;
    }

    public final boolean zzcf() {
        return this.zzyp.zzcf();
    }

    public final ExecutorService zzcg() {
        return this.zzyy;
    }

    public final DexClassLoader zzch() {
        return this.zzyz;
    }

    public final zzek zzci() {
        return this.zzza;
    }

    public final byte[] zzcj() {
        return this.zzzb;
    }

    public final boolean zzck() {
        return this.zzzi;
    }

    public final zzdw zzcl() {
        return this.zzzh;
    }

    public final boolean zzcm() {
        return this.zzzj;
    }

    public final zzfa zzcn() {
        return this.zzyp;
    }

    public final zzcf.zza zzco() {
        return this.zzzf;
    }

    public final Future zzcp() {
        return this.zzzg;
    }

    public final AdvertisingIdClient zzcs() {
        if (!this.zzxf) {
            return null;
        }
        if (this.zzzc != null) {
            return this.zzzc;
        }
        Future future = this.zzzd;
        if (future != null) {
            try {
                future.get(2000L, TimeUnit.MILLISECONDS);
                this.zzzd = null;
            } catch (InterruptedException | ExecutionException e) {
            } catch (TimeoutException e2) {
                this.zzzd.cancel(true);
            }
        }
        return this.zzzc;
    }
}
