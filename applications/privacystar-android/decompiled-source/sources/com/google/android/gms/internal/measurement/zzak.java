package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzak.class */
public final class zzak extends zzau {
    private static boolean zzvk;
    private AdvertisingIdClient.Info zzvl;
    private final zzdc zzvm;
    private String zzvn;
    private boolean zzvo = false;
    private final Object zzvp = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzak(zzaw zzawVar) {
        super(zzawVar);
        this.zzvm = new zzdc(zzawVar.zzbx());
    }

    private final boolean zza(AdvertisingIdClient.Info info, AdvertisingIdClient.Info info2) {
        String str = null;
        String id = info2 == null ? null : info2.getId();
        if (TextUtils.isEmpty(id)) {
            return true;
        }
        String zzdr = zzcg().zzdr();
        synchronized (this.zzvp) {
            if (!this.zzvo) {
                this.zzvn = zzbq();
                this.zzvo = true;
            } else if (TextUtils.isEmpty(this.zzvn)) {
                if (info != null) {
                    str = info.getId();
                }
                if (str == null) {
                    String valueOf = String.valueOf(id);
                    String valueOf2 = String.valueOf(zzdr);
                    return zzp(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
                }
                String valueOf3 = String.valueOf(str);
                String valueOf4 = String.valueOf(zzdr);
                this.zzvn = zzo(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3));
            }
            String valueOf5 = String.valueOf(id);
            String valueOf6 = String.valueOf(zzdr);
            String zzo = zzo(valueOf6.length() != 0 ? valueOf5.concat(valueOf6) : new String(valueOf5));
            if (TextUtils.isEmpty(zzo)) {
                return false;
            }
            if (zzo.equals(this.zzvn)) {
                return true;
            }
            String str2 = zzdr;
            if (!TextUtils.isEmpty(this.zzvn)) {
                zzq("Resetting the client id because Advertising Id changed.");
                str2 = zzcg().zzds();
                zza("New client Id", str2);
            }
            String valueOf7 = String.valueOf(id);
            String valueOf8 = String.valueOf(str2);
            return zzp(valueOf8.length() != 0 ? valueOf7.concat(valueOf8) : new String(valueOf7));
        }
    }

    private final AdvertisingIdClient.Info zzbo() {
        AdvertisingIdClient.Info info;
        synchronized (this) {
            if (this.zzvm.zzj(1000L)) {
                this.zzvm.start();
                AdvertisingIdClient.Info zzbp = zzbp();
                if (zza(this.zzvl, zzbp)) {
                    this.zzvl = zzbp;
                } else {
                    zzu("Failed to reset client id on adid change. Not using adid");
                    this.zzvl = new AdvertisingIdClient.Info("", false);
                }
            }
            info = this.zzvl;
        }
        return info;
    }

    private final AdvertisingIdClient.Info zzbp() {
        AdvertisingIdClient.Info info;
        try {
            info = AdvertisingIdClient.getAdvertisingIdInfo(getContext());
        } catch (IllegalStateException e) {
            zzt("IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added '<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />' to your application manifest file. See http://goo.gl/naFqQk for details.");
            info = null;
            return info;
        } catch (Exception e2) {
            if (!zzvk) {
                zzvk = true;
                zzd("Error getting advertiser id", e2);
            }
            info = null;
            return info;
        }
        return info;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.io.FileNotFoundException] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String zzbq() {
        /*
            r6 = this;
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r6
            android.content.Context r0 = r0.getContext()     // Catch: IOException -> 0x0070, FileNotFoundException -> 0x0088
            java.lang.String r1 = "gaClientIdData"
            java.io.FileInputStream r0 = r0.openFileInput(r1)     // Catch: IOException -> 0x0070, FileNotFoundException -> 0x0088
            r9 = r0
            r0 = 128(0x80, float:1.794E-43)
            byte[] r0 = new byte[r0]     // Catch: IOException -> 0x0070, FileNotFoundException -> 0x0088
            r10 = r0
            r0 = r9
            r1 = r10
            r2 = 0
            r3 = 128(0x80, float:1.794E-43)
            int r0 = r0.read(r1, r2, r3)     // Catch: IOException -> 0x0070, FileNotFoundException -> 0x0088
            r11 = r0
            r0 = r9
            int r0 = r0.available()     // Catch: IOException -> 0x0070, FileNotFoundException -> 0x0088
            if (r0 <= 0) goto L_0x0042
            r0 = r6
            java.lang.String r1 = "Hash file seems corrupted, deleting it."
            r0.zzt(r1)     // Catch: IOException -> 0x0070, FileNotFoundException -> 0x0088
            r0 = r9
            r0.close()     // Catch: IOException -> 0x0070, FileNotFoundException -> 0x0088
            r0 = r6
            android.content.Context r0 = r0.getContext()     // Catch: IOException -> 0x0070, FileNotFoundException -> 0x0088
            java.lang.String r1 = "gaClientIdData"
            boolean r0 = r0.deleteFile(r1)     // Catch: IOException -> 0x0070, FileNotFoundException -> 0x0088
            r0 = r7
            r10 = r0
            goto L_0x0085
        L_0x0042:
            r0 = r11
            if (r0 > 0) goto L_0x0057
            r0 = r6
            java.lang.String r1 = "Hash file is empty."
            r0.zzq(r1)     // Catch: IOException -> 0x0070, FileNotFoundException -> 0x0088
            r0 = r9
            r0.close()     // Catch: IOException -> 0x0070, FileNotFoundException -> 0x0088
            r0 = r7
            r10 = r0
            goto L_0x0085
        L_0x0057:
            java.lang.String r0 = new java.lang.String     // Catch: IOException -> 0x0070, FileNotFoundException -> 0x0088
            r1 = r0
            r2 = r10
            r3 = 0
            r4 = r11
            r1.<init>(r2, r3, r4)     // Catch: IOException -> 0x0070, FileNotFoundException -> 0x0088
            r10 = r0
            r0 = r9
            r0.close()     // Catch: IOException -> 0x006c, FileNotFoundException -> 0x0090
        L_0x0069:
            goto L_0x0085
        L_0x006c:
            r7 = move-exception
            goto L_0x0074
        L_0x0070:
            r7 = move-exception
            r0 = r8
            r10 = r0
        L_0x0074:
            r0 = r6
            java.lang.String r1 = "Error reading Hash file, deleting it"
            r2 = r7
            r0.zzd(r1, r2)
            r0 = r6
            android.content.Context r0 = r0.getContext()
            java.lang.String r1 = "gaClientIdData"
            boolean r0 = r0.deleteFile(r1)
        L_0x0085:
            r0 = r10
            return r0
        L_0x0088:
            r10 = move-exception
            r0 = r7
            r10 = r0
            goto L_0x0085
        L_0x0090:
            r7 = move-exception
            goto L_0x0069
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzak.zzbq():java.lang.String");
    }

    private static String zzo(String str) {
        MessageDigest messageDigest = zzdg.getMessageDigest("MD5");
        if (messageDigest == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, messageDigest.digest(str.getBytes())));
    }

    private final boolean zzp(String str) {
        try {
            String zzo = zzo(str);
            zzq("Storing hashed adid.");
            FileOutputStream openFileOutput = getContext().openFileOutput("gaClientIdData", 0);
            openFileOutput.write(zzo.getBytes());
            openFileOutput.close();
            this.zzvn = zzo;
            return true;
        } catch (IOException e) {
            zze("Error creating hash file", e);
            return false;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzau
    protected final void zzag() {
    }

    public final boolean zzbg() {
        zzcl();
        AdvertisingIdClient.Info zzbo = zzbo();
        return zzbo != null && !zzbo.isLimitAdTrackingEnabled();
    }

    public final String zzbn() {
        zzcl();
        AdvertisingIdClient.Info zzbo = zzbo();
        String id = zzbo != null ? zzbo.getId() : null;
        if (TextUtils.isEmpty(id)) {
            return null;
        }
        return id;
    }
}
