package com.google.android.gms.internal.mlkit_translate;

import android.content.Context;
import com.google.android.gms.internal.mlkit_translate.zzbj;
import com.tenor.android.core.constant.StringConstant;
import e.m.d.m.o;
import e.m.d.m.x;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1820h.C26551a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzig.class */
public class zzig {
    private static final o<?> zza;
    private static final Object zzc = new Object();
    private final Context zzb;

    static {
        o.b a = o.a(zzig.class);
        a.a(new x(Context.class, 1, 0));
        a.c(zzij.zza);
        zza = a.b();
    }

    public zzig(Context context) {
        this.zzb = context;
    }

    private static zzhr zza(String str, zzhl zzhlVar) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            try {
                return new zzhr(jSONObject.getJSONObject("configs_key"), new Date(jSONObject.getLong("fetch_time_key")), jSONObject.getJSONArray("abt_experiments_key"));
            } catch (JSONException e) {
                zzhlVar.zzb(zzbj.zzbg.zza.FILE_READ_RETURNED_INVALID_DATA);
                String.valueOf(jSONObject).length();
                return null;
            }
        } catch (JSONException e2) {
            zzhlVar.zzb(zzbj.zzbg.zza.FILE_READ_RETURNED_MALFORMED_DATA);
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                "Error parsing remote config settings JSON string:\n".concat(valueOf);
                return null;
            }
            new String("Error parsing remote config settings JSON string:\n");
            return null;
        }
    }

    private final File zza() {
        return new File(zzb(), "com.google.mlkit.RemoteConfig");
    }

    private final File zzb() {
        Context context = this.zzb;
        Object obj = C26467a.f74235a;
        File m1788c = C26467a.C26470c.m1788c(context);
        if (m1788c == null || !m1788c.isDirectory()) {
            File filesDir = this.zzb.getFilesDir();
            if (filesDir != null && !filesDir.isDirectory()) {
                try {
                    if (!filesDir.mkdirs()) {
                        String.valueOf(filesDir).length();
                    }
                } catch (SecurityException e) {
                    String.valueOf(filesDir).length();
                }
            }
            return filesDir;
        }
        return m1788c;
    }

    /* JADX WARN: Finally extract failed */
    public final zzhr zza(zzhl zzhlVar) {
        zzhr zza2;
        synchronized (zzc) {
            File zza3 = zza();
            try {
                File file = new File(zza3.getPath() + ".new");
                File file2 = new File(zza3.getPath() + ".bak");
                if (file2.exists()) {
                    C26551a.m1691c(file2, zza3);
                }
                if (file.exists() && zza3.exists() && !file.delete()) {
                    String str = "Failed to delete outdated new file " + file;
                }
                FileInputStream fileInputStream = new FileInputStream(zza3);
                try {
                    byte[] bArr = new byte[fileInputStream.available()];
                    int i = 0;
                    while (true) {
                        int read = fileInputStream.read(bArr, i, bArr.length - i);
                        if (read <= 0) {
                            fileInputStream.close();
                            zza2 = zza(new String(bArr, Charset.forName(StringConstant.UTF8)), zzhlVar);
                        } else {
                            int i2 = i + read;
                            int available = fileInputStream.available();
                            i = i2;
                            if (available > bArr.length - i2) {
                                byte[] bArr2 = new byte[available + i2];
                                System.arraycopy(bArr, 0, bArr2, 0, i2);
                                bArr = bArr2;
                                i = i2;
                            }
                        }
                    }
                } catch (Throwable th) {
                    fileInputStream.close();
                    throw th;
                }
            } catch (IOException e) {
                if (!zza3.exists()) {
                    String.valueOf(zza3).length();
                    return null;
                }
                zzhlVar.zzb(zzbj.zzbg.zza.FILE_READ_FAILED);
                String.valueOf(zza3).length();
                return null;
            }
        }
        return zza2;
    }

    public final void zza(zzhr zzhrVar, zzhl zzhlVar) {
        File file;
        String zzhrVar2 = zzhrVar.toString();
        synchronized (zzc) {
            try {
                file = zza();
                try {
                    String.valueOf(file).length();
                    C26551a c26551a = new C26551a(file);
                    FileOutputStream m1690d = c26551a.m1690d();
                    try {
                        PrintWriter printWriter = new PrintWriter(m1690d);
                        printWriter.println(zzhrVar2);
                        printWriter.flush();
                        c26551a.m1692b(m1690d);
                        String.valueOf(file).length();
                        String.valueOf(zzhrVar2).length();
                    } catch (Throwable th) {
                        c26551a.m1693a(m1690d);
                        throw th;
                    }
                } catch (IOException e) {
                    zzhlVar.zzb(zzbj.zzbg.zza.FILE_WRITE_FAILED);
                    String.valueOf(file).length();
                }
            } catch (IOException e2) {
                file = null;
            }
        }
    }
}
