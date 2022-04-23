package com.google.firebase.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.GuardedBy;
import android.support.p001v4.content.ContextCompat;
import android.support.p001v4.util.ArrayMap;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzaw.class */
public final class zzaw {
    private final SharedPreferences zzdc;
    private final zzy zzdd;
    @GuardedBy("this")
    private final Map<String, zzz> zzde;
    private final Context zzx;

    public zzaw(Context context) {
        this(context, new zzy());
    }

    private zzaw(Context context, zzy zzyVar) {
        this.zzde = new ArrayMap();
        this.zzx = context;
        this.zzdc = context.getSharedPreferences("com.google.android.gms.appid", 0);
        this.zzdd = zzyVar;
        File file = new File(ContextCompat.getNoBackupFilesDir(this.zzx), "com.google.android.gms.appid-no-backup");
        if (!file.exists()) {
            try {
                if (file.createNewFile() && !isEmpty()) {
                    Log.i("FirebaseInstanceId", "App restored, clearing state");
                    zzal();
                    FirebaseInstanceId.getInstance().zzm();
                }
            } catch (IOException e) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String valueOf = String.valueOf(e.getMessage());
                    Log.d("FirebaseInstanceId", valueOf.length() != 0 ? "Error creating file in no backup dir: ".concat(valueOf) : new String("Error creating file in no backup dir: "));
                }
            }
        }
    }

    private final boolean isEmpty() {
        boolean isEmpty;
        synchronized (this) {
            isEmpty = this.zzdc.getAll().isEmpty();
        }
        return isEmpty;
    }

    private static String zza(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 4 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append("|T|");
        sb.append(str2);
        sb.append("|");
        sb.append(str3);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzd(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("|S|");
        sb.append(str2);
        return sb.toString();
    }

    public final void zza(String str, String str2, String str3, String str4, String str5) {
        synchronized (this) {
            String zza = zzax.zza(str4, str5, System.currentTimeMillis());
            if (zza != null) {
                SharedPreferences.Editor edit = this.zzdc.edit();
                edit.putString(zza(str, str2, str3), zza);
                edit.commit();
            }
        }
    }

    public final String zzak() {
        String string;
        synchronized (this) {
            string = this.zzdc.getString("topic_operaion_queue", "");
        }
        return string;
    }

    public final void zzal() {
        synchronized (this) {
            this.zzde.clear();
            zzy.zza(this.zzx);
            this.zzdc.edit().clear().commit();
        }
    }

    public final zzax zzb(String str, String str2, String str3) {
        zzax zzi;
        synchronized (this) {
            zzi = zzax.zzi(this.zzdc.getString(zza(str, str2, str3), null));
        }
        return zzi;
    }

    public final void zzc(String str, String str2, String str3) {
        synchronized (this) {
            String zza = zza(str, str2, str3);
            SharedPreferences.Editor edit = this.zzdc.edit();
            edit.remove(zza);
            edit.commit();
        }
    }

    public final void zzf(String str) {
        synchronized (this) {
            this.zzdc.edit().putString("topic_operaion_queue", str).apply();
        }
    }

    public final zzz zzg(String str) {
        zzz zzzVar;
        synchronized (this) {
            zzz zzzVar2 = this.zzde.get(str);
            if (zzzVar2 != null) {
                return zzzVar2;
            }
            try {
                zzzVar = this.zzdd.zzb(this.zzx, str);
            } catch (zzaa e) {
                Log.w("FirebaseInstanceId", "Stored data is corrupt, generating new identity");
                FirebaseInstanceId.getInstance().zzm();
                zzzVar = this.zzdd.zzc(this.zzx, str);
            }
            this.zzde.put(str, zzzVar);
            return zzzVar;
        }
    }

    public final void zzh(String str) {
        synchronized (this) {
            String concat = String.valueOf(str).concat("|T|");
            SharedPreferences.Editor edit = this.zzdc.edit();
            for (String str2 : this.zzdc.getAll().keySet()) {
                if (str2.startsWith(concat)) {
                    edit.remove(str2);
                }
            }
            edit.commit();
        }
    }
}
