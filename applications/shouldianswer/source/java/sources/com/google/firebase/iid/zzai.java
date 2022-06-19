package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.firebase.FirebaseApp;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzai.class */
public final class zzai {
    private final Context zza;
    private String zzb;
    private String zzc;
    private int zzd;
    private int zze = 0;

    public zzai(Context context) {
        this.zza = context;
    }

    private final PackageInfo zza(String str) {
        try {
            return this.zza.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("Failed to find package ");
            sb.append(valueOf);
            Log.w("FirebaseInstanceId", sb.toString());
            return null;
        }
    }

    public static String zza(FirebaseApp firebaseApp) {
        String gcmSenderId = firebaseApp.getOptions().getGcmSenderId();
        if (gcmSenderId != null) {
            return gcmSenderId;
        }
        String applicationId = firebaseApp.getOptions().getApplicationId();
        if (!applicationId.startsWith("1:")) {
            return applicationId;
        }
        String[] split = applicationId.split(":");
        if (split.length < 2) {
            return null;
        }
        String str = split[1];
        if (!str.isEmpty()) {
            return str;
        }
        return null;
    }

    public static String zza(PublicKey publicKey) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(publicKey.getEncoded());
            digest[0] = (byte) ((digest[0] & 15) + 112);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException e) {
            Log.w("FirebaseInstanceId", "Unexpected error, device missing required algorithms");
            return null;
        }
    }

    private final void zze() {
        synchronized (this) {
            PackageInfo zza = zza(this.zza.getPackageName());
            if (zza != null) {
                this.zzb = Integer.toString(zza.versionCode);
                this.zzc = zza.versionName;
            }
        }
    }

    public final int zza() {
        synchronized (this) {
            if (this.zze != 0) {
                return this.zze;
            }
            PackageManager packageManager = this.zza.getPackageManager();
            if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
                Log.e("FirebaseInstanceId", "Google Play services missing or without correct permission.");
                return 0;
            }
            if (!PlatformVersion.isAtLeastO()) {
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                if (queryIntentServices != null && queryIntentServices.size() > 0) {
                    this.zze = 1;
                    return this.zze;
                }
            }
            Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
            intent2.setPackage("com.google.android.gms");
            List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
            if (queryBroadcastReceivers != null && queryBroadcastReceivers.size() > 0) {
                this.zze = 2;
                return this.zze;
            }
            Log.w("FirebaseInstanceId", "Failed to resolve IID implementation package, falling back");
            if (PlatformVersion.isAtLeastO()) {
                this.zze = 2;
            } else {
                this.zze = 1;
            }
            return this.zze;
        }
    }

    public final String zzb() {
        String str;
        synchronized (this) {
            if (this.zzb == null) {
                zze();
            }
            str = this.zzb;
        }
        return str;
    }

    public final String zzc() {
        String str;
        synchronized (this) {
            if (this.zzc == null) {
                zze();
            }
            str = this.zzc;
        }
        return str;
    }

    public final int zzd() {
        int i;
        PackageInfo zza;
        synchronized (this) {
            if (this.zzd == 0 && (zza = zza("com.google.android.gms")) != null) {
                this.zzd = zza.versionCode;
            }
            i = this.zzd;
        }
        return i;
    }
}
