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
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1820h.C26551a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzhn.class */
public class zzhn {
    private static final o<?> zza;
    private static final zzdz zzc = new zzdz();
    private static final Object zzd = new Object();
    private final Context zzb;

    static {
        o.b a = o.a(zzhn.class);
        a.a(new x(Context.class, 1, 0));
        a.c(zzhm.zza);
        zza = a.b();
    }

    public zzhn(Context context) {
        this.zzb = context;
    }

    private static zzhp zza(String str, zzhl zzhlVar) {
        try {
            zzds zza2 = zzdz.zza(str);
            if (!(zza2 instanceof zzdx)) {
                String.valueOf(zza2).length();
                zzhlVar.zzb(zzbj.zzbg.zza.FILE_READ_RETURNED_MALFORMED_DATA);
                return null;
            }
            zzdx zza3 = zza2.zza();
            try {
                zzhc zzhcVar = new zzhc(zza3.zzc("fid").zze());
                String zze = zza3.zzc("refreshToken").zze();
                String zze2 = zza3.zzc("temporaryToken").zze();
                Long valueOf = Long.valueOf(zza3.zzc("temporaryTokenExpiryTimestamp").zzf());
                String.valueOf(zzhcVar).length();
                String valueOf2 = String.valueOf(zze);
                if (valueOf2.length() != 0) {
                    "refresh_token: ".concat(valueOf2);
                } else {
                    new String("refresh_token: ");
                }
                String valueOf3 = String.valueOf(zze2);
                if (valueOf3.length() != 0) {
                    "temporary_token: ".concat(valueOf3);
                } else {
                    new String("temporary_token: ");
                }
                String.valueOf(valueOf).length();
                return new zzhp(zzhcVar, zze, zze2, valueOf.longValue());
            } catch (ClassCastException | IllegalStateException | NullPointerException e) {
                zzhlVar.zzb(zzbj.zzbg.zza.FILE_READ_RETURNED_INVALID_DATA);
                String valueOf4 = String.valueOf(zza3);
                String.valueOf(str).length();
                valueOf4.length();
                return null;
            }
        } catch (zzeb e2) {
            String valueOf5 = String.valueOf(str);
            if (valueOf5.length() != 0) {
                "Error parsing installation info JSON object:\n".concat(valueOf5);
            } else {
                new String("Error parsing installation info JSON object:\n");
            }
            zzhlVar.zzb(zzbj.zzbg.zza.FILE_READ_RETURNED_MALFORMED_DATA);
            return null;
        }
    }

    private final File zzb(zzhl zzhlVar) {
        return new File(zzc(zzhlVar), "com.google.mlkit.InstallationId");
    }

    private final File zzc(zzhl zzhlVar) {
        Context context = this.zzb;
        Object obj = C26467a.f74235a;
        File m1788c = C26467a.C26470c.m1788c(context);
        if (m1788c == null || !m1788c.isDirectory()) {
            File filesDir = this.zzb.getFilesDir();
            if (filesDir != null && !filesDir.isDirectory()) {
                try {
                    if (!filesDir.mkdirs()) {
                        String.valueOf(filesDir).length();
                        zzhlVar.zza(zzbj.zzbg.zza.DIRECTORY_CREATION_FAILED);
                    }
                } catch (SecurityException e) {
                    String.valueOf(filesDir).length();
                    zzhlVar.zza(zzbj.zzbg.zza.DIRECTORY_CREATION_FAILED);
                }
            }
            return filesDir;
        }
        return m1788c;
    }

    /* JADX WARN: Finally extract failed */
    public final zzhp zza(zzhl zzhlVar) {
        zzhp zza2;
        synchronized (zzd) {
            File zzb = zzb(zzhlVar);
            try {
                File file = new File(zzb.getPath() + ".new");
                File file2 = new File(zzb.getPath() + ".bak");
                if (file2.exists()) {
                    C26551a.m1691c(file2, zzb);
                }
                if (file.exists() && zzb.exists() && !file.delete()) {
                    String str = "Failed to delete outdated new file " + file;
                }
                FileInputStream fileInputStream = new FileInputStream(zzb);
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
                if (!zzb.exists()) {
                    String.valueOf(zzb).length();
                    return null;
                }
                zzhlVar.zzb(zzbj.zzbg.zza.FILE_READ_FAILED);
                String.valueOf(zzb).length();
                return null;
            }
        }
        return zza2;
    }

    public final void zza(zzhp zzhpVar, zzhl zzhlVar) {
        File file;
        String format = String.format("{\n \"fid\": \"%s\",\n \"refreshToken\": \"%s\",\n \"temporaryToken\": \"%s\",\n \"temporaryTokenExpiryTimestamp\": \"%d\"\n}\n", zzhpVar.zza().zza(), zzhpVar.zzb(), zzhpVar.zzc(), Long.valueOf(zzhpVar.zzd()));
        synchronized (zzd) {
            try {
                file = zzb(zzhlVar);
            } catch (IOException e) {
                file = null;
            }
            try {
                String.valueOf(file).length();
                C26551a c26551a = new C26551a(file);
                FileOutputStream m1690d = c26551a.m1690d();
                try {
                    PrintWriter printWriter = new PrintWriter(m1690d);
                    printWriter.println(format);
                    printWriter.flush();
                    c26551a.m1692b(m1690d);
                    String.valueOf(file).length();
                    String.valueOf(format).length();
                } catch (Throwable th) {
                    c26551a.m1693a(m1690d);
                    throw th;
                }
            } catch (IOException e2) {
                zzhlVar.zzb(zzbj.zzbg.zza.FILE_WRITE_FAILED);
                String.valueOf(file).length();
            }
        }
    }
}
