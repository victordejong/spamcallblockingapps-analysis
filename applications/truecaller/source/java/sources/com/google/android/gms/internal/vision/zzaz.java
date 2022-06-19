package com.google.android.gms.internal.vision;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import com.tenor.android.core.constant.StringConstant;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzaz.class */
public final class zzaz {
    private static zzba zza(File file) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
            HashMap hashMap = new HashMap();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    String.valueOf(file).length();
                    zzba zzbaVar = new zzba(hashMap);
                    bufferedReader.close();
                    return zzbaVar;
                }
                String[] split = readLine.split(StringConstant.SPACE, 3);
                if (split.length == 3) {
                    String str = split[0];
                    String decode = Uri.decode(split[1]);
                    String decode2 = Uri.decode(split[2]);
                    if (!hashMap.containsKey(str)) {
                        hashMap.put(str, new HashMap());
                    }
                    ((Map) hashMap.get(str)).put(decode, decode2);
                } else if (readLine.length() != 0) {
                    "Invalid: ".concat(readLine);
                } else {
                    new String("Invalid: ");
                }
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static zzcn<zzba> zzf(Context context) {
        String str = Build.TYPE;
        String str2 = Build.TAGS;
        String str3 = Build.HARDWARE;
        boolean z = false;
        if ((str.equals("eng") || str.equals("userdebug")) && ((str3.equals("goldfish") || str3.equals("ranchu") || str3.equals("robolectric")) && (str2.contains("dev-keys") || str2.contains("test-keys")))) {
            z = true;
        }
        if (!z) {
            return zzcn.zzbx();
        }
        Context context2 = context;
        if (zzan.zzs()) {
            context2 = context.isDeviceProtectedStorage() ? context : context.createDeviceProtectedStorageContext();
        }
        zzcn<File> zzg = zzg(context2);
        return zzg.isPresent() ? zzcn.zzb(zza(zzg.get())) : zzcn.zzbx();
    }

    private static zzcn<File> zzg(Context context) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            StrictMode.allowThreadDiskWrites();
            try {
                File file = new File(context.getDir("phenotype_hermetic", 0), "overrides.txt");
                zzcn<File> zzb = file.exists() ? zzcn.zzb(file) : zzcn.zzbx();
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                return zzb;
            } catch (RuntimeException e) {
                zzcn<File> zzbx = zzcn.zzbx();
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                return zzbx;
            }
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
    }
}
