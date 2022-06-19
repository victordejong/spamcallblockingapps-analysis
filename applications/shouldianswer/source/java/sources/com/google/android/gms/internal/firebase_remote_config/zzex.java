package com.google.android.gms.internal.firebase_remote_config;

import android.content.Context;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzex.class */
public final class zzex {
    private static final Map<String, zzex> zzkg = new HashMap();
    private final Context zzja;
    private final String zzlq;

    private zzex(Context context, String str) {
        this.zzja = context;
        this.zzlq = str;
    }

    private static /* synthetic */ void zza(Throwable th, FileInputStream fileInputStream) {
        if (th == null) {
            fileInputStream.close();
            return;
        }
        try {
            fileInputStream.close();
        } catch (Throwable th2) {
            zzea.zza(th, th2);
        }
    }

    private static /* synthetic */ void zza(Throwable th, FileOutputStream fileOutputStream) {
        if (th == null) {
            fileOutputStream.close();
            return;
        }
        try {
            fileOutputStream.close();
        } catch (Throwable th2) {
            zzea.zza(th, th2);
        }
    }

    public static zzex zzb(Context context, String str) {
        zzex zzexVar;
        synchronized (zzex.class) {
            try {
                if (!zzkg.containsKey(str)) {
                    zzkg.put(str, new zzex(context, str));
                }
                zzexVar = zzkg.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzexVar;
    }

    public final String getFileName() {
        return this.zzlq;
    }

    @Nullable
    public final zzen zzdb() {
        zzen zza;
        synchronized (this) {
            try {
                FileInputStream openFileInput = this.zzja.openFileInput(this.zzlq);
                byte[] bArr = new byte[openFileInput.available()];
                openFileInput.read(bArr, 0, bArr.length);
                zza = zzen.zza(new JSONObject(new String(bArr, "UTF-8")));
                if (openFileInput != null) {
                    zza((Throwable) null, openFileInput);
                }
            } catch (FileNotFoundException | JSONException e) {
                return null;
            }
        }
        return zza;
    }

    public final Void zzdc() {
        synchronized (this) {
            this.zzja.deleteFile(this.zzlq);
        }
        return null;
    }

    public final Void zzh(zzen zzenVar) {
        synchronized (this) {
            FileOutputStream openFileOutput = this.zzja.openFileOutput(this.zzlq, 0);
            openFileOutput.write(zzenVar.toString().getBytes("UTF-8"));
            if (openFileOutput != null) {
                zza((Throwable) null, openFileOutput);
            }
        }
        return null;
    }
}
