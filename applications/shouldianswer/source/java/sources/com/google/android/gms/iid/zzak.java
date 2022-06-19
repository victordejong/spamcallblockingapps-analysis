package com.google.android.gms.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import androidx.core.p015a.C0409a;
import androidx.p014c.C0374a;
import java.io.File;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzak.class */
public final class zzak {
    private SharedPreferences zzde;
    private final zzn zzdf;
    private final Map<String, zzo> zzdg;
    private Context zzl;

    public zzak(Context context) {
        this(context, new zzn());
    }

    private zzak(Context context, zzn zznVar) {
        this.zzdg = new C0374a();
        this.zzl = context;
        this.zzde = context.getSharedPreferences("com.google.android.gms.appid", 0);
        this.zzdf = zznVar;
        File file = new File(C0409a.m6754a(this.zzl), "com.google.android.gms.appid-no-backup");
        if (!file.exists()) {
            try {
                if (!file.createNewFile() || isEmpty()) {
                    return;
                }
                Log.i("InstanceID/Store", "App restored, clearing state");
                InstanceIDListenerService.zzd(this.zzl, this);
            } catch (IOException e) {
                if (!Log.isLoggable("InstanceID/Store", 3)) {
                    return;
                }
                String valueOf = String.valueOf(e.getMessage());
                Log.d("InstanceID/Store", valueOf.length() != 0 ? "Error creating file in no backup dir: ".concat(valueOf) : new String("Error creating file in no backup dir: "));
            }
        }
    }

    private static String zzd(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 4 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append("|T|");
        sb.append(str2);
        sb.append("|");
        sb.append(str3);
        return sb.toString();
    }

    private static String zze(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 14 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append("|T-timestamp|");
        sb.append(str2);
        sb.append("|");
        sb.append(str3);
        return sb.toString();
    }

    public static String zzh(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("|S|");
        sb.append(str2);
        return sb.toString();
    }

    public final String get(String str) {
        String string;
        synchronized (this) {
            string = this.zzde.getString(str, null);
        }
        return string;
    }

    public final boolean isEmpty() {
        return this.zzde.getAll().isEmpty();
    }

    public final void zzd(String str, String str2, String str3, String str4, String str5) {
        synchronized (this) {
            String zzd = zzd(str, str2, str3);
            String zze = zze(str, str2, str3);
            SharedPreferences.Editor edit = this.zzde.edit();
            edit.putString(zzd, str4);
            edit.putLong(zze, System.currentTimeMillis());
            edit.putString("appVersion", str5);
            edit.commit();
        }
    }

    public final String zzf(String str, String str2, String str3) {
        String string;
        synchronized (this) {
            string = this.zzde.getString(zzd(str, str2, str3), null);
        }
        return string;
    }

    public final long zzg(String str, String str2, String str3) {
        long j;
        synchronized (this) {
            j = this.zzde.getLong(zze(str, str2, str3), -1L);
        }
        return j;
    }

    public final void zzh(String str, String str2, String str3) {
        synchronized (this) {
            SharedPreferences.Editor edit = this.zzde.edit();
            edit.remove(zzd(str, str2, str3));
            edit.remove(zze(str, str2, str3));
            edit.commit();
        }
    }

    public final void zzi(String str) {
        synchronized (this) {
            SharedPreferences.Editor edit = this.zzde.edit();
            for (String str2 : this.zzde.getAll().keySet()) {
                if (str2.startsWith(str)) {
                    edit.remove(str2);
                }
            }
            edit.commit();
        }
    }

    public final zzo zzj(String str) {
        zzo zzoVar;
        synchronized (this) {
            zzo zzoVar2 = this.zzdg.get(str);
            if (zzoVar2 != null) {
                return zzoVar2;
            }
            try {
                zzoVar = this.zzdf.zze(this.zzl, str);
            } catch (zzp e) {
                Log.w("InstanceID/Store", "Stored data is corrupt, generating new identity");
                InstanceIDListenerService.zzd(this.zzl, this);
                zzoVar = this.zzdf.zzf(this.zzl, str);
            }
            this.zzdg.put(str, zzoVar);
            return zzoVar;
        }
    }

    public final void zzk(String str) {
        synchronized (this) {
            this.zzdg.remove(str);
        }
        zzn.zzg(this.zzl, str);
        zzi(String.valueOf(str).concat("|"));
    }

    public final void zzz() {
        synchronized (this) {
            this.zzdg.clear();
            zzn.zzi(this.zzl);
            this.zzde.edit().clear().commit();
        }
    }
}
