package com.google.android.gms.internal.ads;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcni.class */
public final class zzcni extends zzcnf {
    public static final /* synthetic */ int zzd = 0;
    private static final Set<String> zze = Collections.synchronizedSet(new HashSet());
    private static final DecimalFormat zzf = new DecimalFormat("#,###");
    private File zzg;
    private boolean zzh;

    public zzcni(zzclh zzclhVar) {
        super(zzclhVar);
        File cacheDir = this.zza.getCacheDir();
        if (cacheDir == null) {
            zzciz.zzj("Context.getCacheDir() returned null");
            return;
        }
        File file = new File(cacheDir, "admobVideoStreams");
        this.zzg = file;
        if (!file.isDirectory() && !this.zzg.mkdirs()) {
            String valueOf = String.valueOf(this.zzg.getAbsolutePath());
            zzciz.zzj(valueOf.length() != 0 ? "Could not create preload cache directory at ".concat(valueOf) : new String("Could not create preload cache directory at "));
            this.zzg = null;
        } else if (this.zzg.setReadable(true, false) && this.zzg.setExecutable(true, false)) {
        } else {
            String valueOf2 = String.valueOf(this.zzg.getAbsolutePath());
            zzciz.zzj(valueOf2.length() != 0 ? "Could not set cache file permissions at ".concat(valueOf2) : new String("Could not set cache file permissions at "));
            this.zzg = null;
        }
    }

    private final File zzi(File file) {
        return new File(this.zzg, String.valueOf(file.getName()).concat(".done"));
    }

    @Override // com.google.android.gms.internal.ads.zzcnf
    public final void zzb() {
        this.zzh = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:132:0x059a, code lost:
        r0 = java.lang.String.valueOf(java.lang.Integer.toString(r15));
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x05a9, code lost:
        if (r0.length() == 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x05ac, code lost:
        r19 = "File too big for full file cache. Size: ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x05b9, code lost:
        r19 = new java.lang.String("File too big for full file cache. Size: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x05d4, code lost:
        throw new java.io.IOException("stream cache file size limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x05d5, code lost:
        r16 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x05dc, code lost:
        r11 = r0;
        r22 = r16;
        r16 = "sizeExceeded";
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x05ef, code lost:
        r19 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x05f1, code lost:
        r0 = r10;
        r10 = r19;
        r19 = r0;
        r11 = r0;
        r16 = "sizeExceeded";
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x06a0, code lost:
        r16 = "downloadTimeout";
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x06a9, code lost:
        r0 = java.lang.Long.toString(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x06d4, code lost:
        r0 = new java.lang.StringBuilder(java.lang.String.valueOf(r0).length() + 29);
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x06e5, code lost:
        r0.append("Timeout exceeded. Limit: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x06f5, code lost:
        r0.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x0704, code lost:
        r0.append(" sec");
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x0714, code lost:
        r0 = r0.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x072a, code lost:
        throw new java.io.IOException("stream cache time limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0730, code lost:
        r19 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x0732, code lost:
        r22 = r19;
        r19 = r0;
        r11 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x0775, code lost:
        r16 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x077c, code lost:
        r16.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x0785, code lost:
        if (com.google.android.gms.internal.ads.zzciz.zzm(3) == false) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x0788, code lost:
        r0 = com.google.android.gms.internal.ads.zzcni.zzf.format(r15);
        r0 = new java.lang.StringBuilder((java.lang.String.valueOf(r0).length() + 22) + java.lang.String.valueOf(r9).length());
        r0.append("Preloaded ");
        r0.append(r0);
        r0.append(" bytes from ");
        r0.append(r9);
        com.google.android.gms.internal.ads.zzciz.zze(r0.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x07e3, code lost:
        r0.setReadable(true, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x07ee, code lost:
        if (r0.isFile() == false) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x07f1, code lost:
        r0.setLastModified(java.lang.System.currentTimeMillis());
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x07fd, code lost:
        r0.createNewFile();
     */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0895  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x08af  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x08e6  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x091f  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0939  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0946  */
    /* JADX WARN: Type inference failed for: r0v509, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzcnf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzq(final java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 2441
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcni.zzq(java.lang.String):boolean");
    }
}
