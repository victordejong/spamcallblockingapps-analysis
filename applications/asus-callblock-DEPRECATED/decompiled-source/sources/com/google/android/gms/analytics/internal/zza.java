package com.google.android.gms.analytics.internal;

import android.text.TextUtils;
import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.a.a.a;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zza.class */
public class zza extends zzd {
    public static boolean zzVS;

    /* renamed from: a  reason: collision with root package name */
    private a.C0105a f3818a;

    /* renamed from: b  reason: collision with root package name */
    private final c f3819b;
    private String c;
    private boolean d = false;
    private Object e = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zza(zzf zzfVar) {
        super(zzfVar);
        this.f3819b = new c(zzfVar.zzlQ());
    }

    private a.C0105a a() {
        a.C0105a aVar;
        synchronized (this) {
            if (this.f3819b.a(1000L)) {
                this.f3819b.a();
                a.C0105a zzlG = zzlG();
                if (a(this.f3818a, zzlG)) {
                    this.f3818a = zzlG;
                } else {
                    zzbK("Failed to reset client id on adid change. Not using adid");
                    this.f3818a = new a.C0105a(BuildConfig.FLAVOR, false);
                }
            }
            aVar = this.f3818a;
        }
        return aVar;
    }

    private static String a(String str) {
        MessageDigest zzbZ = zzao.zzbZ("MD5");
        return zzbZ == null ? null : String.format(Locale.US, "%032X", new BigInteger(1, zzbZ.digest(str.getBytes())));
    }

    private boolean a(a.C0105a aVar, a.C0105a aVar2) {
        boolean b2;
        String str;
        String str2 = null;
        String str3 = aVar2 == null ? null : aVar2.f3756a;
        if (TextUtils.isEmpty(str3)) {
            b2 = true;
        } else {
            String zzmP = zzlW().zzmP();
            synchronized (this.e) {
                if (!this.d) {
                    this.c = zzlH();
                    this.d = true;
                } else if (TextUtils.isEmpty(this.c)) {
                    if (aVar != null) {
                        str2 = aVar.f3756a;
                    }
                    if (str2 == null) {
                        String valueOf = String.valueOf(str3);
                        String valueOf2 = String.valueOf(zzmP);
                        b2 = b(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
                    } else {
                        String valueOf3 = String.valueOf(str2);
                        String valueOf4 = String.valueOf(zzmP);
                        this.c = a(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3));
                    }
                }
                String valueOf5 = String.valueOf(str3);
                String valueOf6 = String.valueOf(zzmP);
                String a2 = a(valueOf6.length() != 0 ? valueOf5.concat(valueOf6) : new String(valueOf5));
                if (TextUtils.isEmpty(a2)) {
                    b2 = false;
                } else if (a2.equals(this.c)) {
                    b2 = true;
                } else {
                    if (!TextUtils.isEmpty(this.c)) {
                        zzbG("Resetting the client id because Advertising Id changed.");
                        str = zzlW().a();
                        zza("New client Id", str);
                    } else {
                        str = zzmP;
                    }
                    String valueOf7 = String.valueOf(str3);
                    String valueOf8 = String.valueOf(str);
                    b2 = b(valueOf8.length() != 0 ? valueOf7.concat(valueOf8) : new String(valueOf7));
                }
            }
        }
        return b2;
    }

    private boolean b(String str) {
        boolean z = false;
        try {
            String a2 = a(str);
            zzbG("Storing hashed adid.");
            FileOutputStream openFileOutput = getContext().openFileOutput("gaClientIdData", 0);
            openFileOutput.write(a2.getBytes());
            openFileOutput.close();
            this.c = a2;
            z = true;
        } catch (IOException e) {
            zze("Error creating hash file", e);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.analytics.internal.zzd
    public void zzkO() {
    }

    public String zzlE() {
        String str = null;
        zzma();
        a.C0105a a2 = a();
        str = a2 != null ? a2.f3756a : null;
        if (TextUtils.isEmpty(str)) {
        }
        return str;
    }

    protected a.C0105a zzlG() {
        a.C0105a aVar;
        try {
            aVar = a.a(getContext());
        } catch (IllegalStateException e) {
            zzbJ("IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added '<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />' to your application manifest file. See http://goo.gl/naFqQk for details.");
            aVar = null;
        } catch (Throwable th) {
            aVar = null;
            if (!zzVS) {
                zzVS = true;
                zzd("Error getting advertiser id", th);
                aVar = null;
            }
        }
        return aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.io.FileNotFoundException] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.String zzlH() {
        /*
            r6 = this;
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r6
            android.content.Context r0 = r0.getContext()     // Catch: FileNotFoundException -> 0x0057, IOException -> 0x0074
            java.lang.String r1 = "gaClientIdData"
            java.io.FileInputStream r0 = r0.openFileInput(r1)     // Catch: FileNotFoundException -> 0x0057, IOException -> 0x0074
            r9 = r0
            r0 = 128(0x80, float:1.794E-43)
            byte[] r0 = new byte[r0]     // Catch: FileNotFoundException -> 0x0057, IOException -> 0x0074
            r10 = r0
            r0 = r9
            r1 = r10
            r2 = 0
            r3 = 128(0x80, float:1.794E-43)
            int r0 = r0.read(r1, r2, r3)     // Catch: FileNotFoundException -> 0x0057, IOException -> 0x0074
            r11 = r0
            r0 = r9
            int r0 = r0.available()     // Catch: FileNotFoundException -> 0x0057, IOException -> 0x0074
            if (r0 <= 0) goto L_0x0042
            r0 = r6
            java.lang.String r1 = "Hash file seems corrupted, deleting it."
            r0.zzbJ(r1)     // Catch: FileNotFoundException -> 0x0057, IOException -> 0x0074
            r0 = r9
            r0.close()     // Catch: FileNotFoundException -> 0x0057, IOException -> 0x0074
            r0 = r6
            android.content.Context r0 = r0.getContext()     // Catch: FileNotFoundException -> 0x0057, IOException -> 0x0074
            java.lang.String r1 = "gaClientIdData"
            boolean r0 = r0.deleteFile(r1)     // Catch: FileNotFoundException -> 0x0057, IOException -> 0x0074
            r0 = r8
            r10 = r0
        L_0x003f:
            r0 = r10
            return r0
        L_0x0042:
            r0 = r11
            if (r0 > 0) goto L_0x005f
            r0 = r6
            java.lang.String r1 = "Hash file is empty."
            r0.zzbG(r1)     // Catch: FileNotFoundException -> 0x0057, IOException -> 0x0074
            r0 = r9
            r0.close()     // Catch: FileNotFoundException -> 0x0057, IOException -> 0x0074
            r0 = r8
            r10 = r0
            goto L_0x003f
        L_0x0057:
            r10 = move-exception
            r0 = r8
            r10 = r0
            goto L_0x003f
        L_0x005f:
            java.lang.String r0 = new java.lang.String     // Catch: FileNotFoundException -> 0x0057, IOException -> 0x0074
            r1 = r0
            r2 = r10
            r3 = 0
            r4 = r11
            r1.<init>(r2, r3, r4)     // Catch: FileNotFoundException -> 0x0057, IOException -> 0x0074
            r10 = r0
            r0 = r9
            r0.close()     // Catch: IOException -> 0x008c, FileNotFoundException -> 0x0090
            goto L_0x003f
        L_0x0074:
            r8 = move-exception
            r0 = r7
            r10 = r0
        L_0x0078:
            r0 = r6
            java.lang.String r1 = "Error reading Hash file, deleting it"
            r2 = r8
            r0.zzd(r1, r2)
            r0 = r6
            android.content.Context r0 = r0.getContext()
            java.lang.String r1 = "gaClientIdData"
            boolean r0 = r0.deleteFile(r1)
            goto L_0x003f
        L_0x008c:
            r8 = move-exception
            goto L_0x0078
        L_0x0090:
            r8 = move-exception
            goto L_0x003f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.zza.zzlH():java.lang.String");
    }

    public boolean zzlt() {
        zzma();
        a.C0105a a2 = a();
        boolean z = false;
        if (a2 != null) {
            z = false;
            if (!a2.f3757b) {
                z = true;
            }
        }
        return z;
    }
}
