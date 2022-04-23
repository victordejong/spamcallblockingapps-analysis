package com.google.android.gms.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.support.p001v4.content.ContextCompat;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.internal.gcm.zzf;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Properties;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzn.class */
public final class zzn {
    @Nullable
    private static zzo zzd(SharedPreferences sharedPreferences, String str) throws zzp {
        zzo zzoVar = null;
        String string = sharedPreferences.getString(zzak.zzh(str, "|P|"), null);
        String string2 = sharedPreferences.getString(zzak.zzh(str, "|K|"), null);
        if (string != null) {
            if (string2 == null) {
                return null;
            }
            zzoVar = new zzo(zzg(string, string2), zze(sharedPreferences, str));
        }
        return zzoVar;
    }

    /* JADX WARN: Finally extract failed */
    @Nullable
    private static zzo zzd(File file) throws zzp, IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            Properties properties = new Properties();
            properties.load(fileInputStream);
            String property = properties.getProperty("pub");
            String property2 = properties.getProperty("pri");
            if (property == null || property2 == null) {
                zzd((Throwable) null, fileInputStream);
                return null;
            }
            try {
                zzo zzoVar = new zzo(zzg(property, property2), Long.parseLong(properties.getProperty("cre")));
                zzd((Throwable) null, fileInputStream);
                return zzoVar;
            } catch (NumberFormatException e) {
                throw new zzp(e);
            }
        } catch (Throwable th) {
            zzd((Throwable) null, fileInputStream);
            throw th;
        }
    }

    private static void zzd(Context context, String str, zzo zzoVar) {
        String zzo;
        String zzp;
        long j;
        try {
            if (Log.isLoggable("InstanceID", 3)) {
                Log.d("InstanceID", "Writing key to properties file");
            }
            File zzj = zzj(context, str);
            zzj.createNewFile();
            Properties properties = new Properties();
            zzo = zzoVar.zzo();
            properties.setProperty("pub", zzo);
            zzp = zzoVar.zzp();
            properties.setProperty("pri", zzp);
            j = zzoVar.zzbx;
            properties.setProperty("cre", String.valueOf(j));
            FileOutputStream fileOutputStream = new FileOutputStream(zzj);
            properties.store(fileOutputStream, (String) null);
            zzd((Throwable) null, fileOutputStream);
        } catch (IOException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 21);
            sb.append("Failed to write key: ");
            sb.append(valueOf);
            Log.w("InstanceID", sb.toString());
        }
    }

    private static /* synthetic */ void zzd(Throwable th, FileInputStream fileInputStream) {
        if (th != null) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                zzf.zzd(th, th2);
            }
        } else {
            fileInputStream.close();
        }
    }

    private static /* synthetic */ void zzd(Throwable th, FileOutputStream fileOutputStream) {
        if (th != null) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                zzf.zzd(th, th2);
            }
        } else {
            fileOutputStream.close();
        }
    }

    private static long zze(SharedPreferences sharedPreferences, String str) {
        String string = sharedPreferences.getString(zzak.zzh(str, "cre"), null);
        if (string == null) {
            return 0L;
        }
        try {
            return Long.parseLong(string);
        } catch (NumberFormatException e) {
            return 0L;
        }
    }

    private final void zze(Context context, String str, zzo zzoVar) {
        String zzo;
        String zzp;
        long j;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.appid", 0);
        try {
            if (zzoVar.equals(zzd(sharedPreferences, str))) {
                return;
            }
        } catch (zzp e) {
        }
        if (Log.isLoggable("InstanceID", 3)) {
            Log.d("InstanceID", "Writing key to shared preferences");
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        String zzh = zzak.zzh(str, "|P|");
        zzo = zzoVar.zzo();
        edit.putString(zzh, zzo);
        String zzh2 = zzak.zzh(str, "|K|");
        zzp = zzoVar.zzp();
        edit.putString(zzh2, zzp);
        String zzh3 = zzak.zzh(str, "cre");
        j = zzoVar.zzbx;
        edit.putString(zzh3, String.valueOf(j));
        edit.commit();
    }

    private static KeyPair zzg(String str, String str2) throws zzp {
        try {
            byte[] decode = Base64.decode(str, 8);
            byte[] decode2 = Base64.decode(str2, 8);
            try {
                KeyFactory instance = KeyFactory.getInstance("RSA");
                return new KeyPair(instance.generatePublic(new X509EncodedKeySpec(decode)), instance.generatePrivate(new PKCS8EncodedKeySpec(decode2)));
            } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 19);
                sb.append("Invalid key stored ");
                sb.append(valueOf);
                Log.w("InstanceID", sb.toString());
                throw new zzp(e);
            }
        } catch (IllegalArgumentException e2) {
            throw new zzp(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzg(Context context, String str) {
        File zzj = zzj(context, str);
        if (zzj.exists()) {
            zzj.delete();
        }
    }

    @Nullable
    private final zzo zzh(Context context, String str) throws zzp {
        zzp e;
        zzo zzi;
        try {
            zzi = zzi(context, str);
        } catch (zzp e2) {
            e = e2;
        }
        if (zzi != null) {
            zze(context, str, zzi);
            return zzi;
        }
        e = null;
        try {
            zzo zzd = zzd(context.getSharedPreferences("com.google.android.gms.appid", 0), str);
            if (zzd != null) {
                zzd(context, str, zzd);
                return zzd;
            }
        } catch (zzp e3) {
            e = e3;
        }
        if (e == null) {
            return null;
        }
        throw e;
    }

    @Nullable
    private final zzo zzi(Context context, String str) throws zzp {
        File zzj = zzj(context, str);
        if (!zzj.exists()) {
            return null;
        }
        try {
            return zzd(zzj);
        } catch (IOException e) {
            if (Log.isLoggable("InstanceID", 3)) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 40);
                sb.append("Failed to read key from file, retrying: ");
                sb.append(valueOf);
                Log.d("InstanceID", sb.toString());
            }
            try {
                return zzd(zzj);
            } catch (IOException e2) {
                String valueOf2 = String.valueOf(e2);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 45);
                sb2.append("IID file exists, but failed to read from it: ");
                sb2.append(valueOf2);
                Log.w("InstanceID", sb2.toString());
                throw new zzp(e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzi(Context context) {
        File[] listFiles;
        for (File file : zzj(context).listFiles()) {
            if (file.getName().startsWith("com.google.InstanceId")) {
                file.delete();
            }
        }
    }

    private static File zzj(Context context) {
        File noBackupFilesDir = ContextCompat.getNoBackupFilesDir(context);
        if (noBackupFilesDir != null && noBackupFilesDir.isDirectory()) {
            return noBackupFilesDir;
        }
        Log.w("InstanceID", "noBackupFilesDir doesn't exist, using regular files directory instead");
        return context.getFilesDir();
    }

    private static File zzj(Context context, String str) {
        String sb;
        if (TextUtils.isEmpty(str)) {
            sb = "com.google.InstanceId.properties";
        } else {
            try {
                String encodeToString = Base64.encodeToString(str.getBytes("UTF-8"), 11);
                StringBuilder sb2 = new StringBuilder(String.valueOf(encodeToString).length() + 33);
                sb2.append("com.google.InstanceId_");
                sb2.append(encodeToString);
                sb2.append(".properties");
                sb = sb2.toString();
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
        return new File(zzj(context), sb);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final zzo zze(Context context, String str) throws zzp {
        zzo zzh = zzh(context, str);
        return zzh != null ? zzh : zzf(context, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final zzo zzf(Context context, String str) {
        zzo zzoVar = new zzo(zzd.zzk(), System.currentTimeMillis());
        try {
            zzo zzh = zzh(context, str);
            if (zzh != null) {
                if (Log.isLoggable("InstanceID", 3)) {
                    Log.d("InstanceID", "Loaded key after generating new one, using loaded one");
                }
                return zzh;
            }
        } catch (zzp e) {
        }
        if (Log.isLoggable("InstanceID", 3)) {
            Log.d("InstanceID", "Generated new key");
        }
        zzd(context, str, zzoVar);
        zze(context, str, zzoVar);
        return zzoVar;
    }
}
