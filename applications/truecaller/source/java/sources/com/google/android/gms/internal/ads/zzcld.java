package com.google.android.gms.internal.ads;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcld.class */
public final class zzcld extends zzcla {
    public static final /* synthetic */ int zzd = 0;
    private static final Set<String> zze = Collections.synchronizedSet(new HashSet());
    private static final DecimalFormat zzf = new DecimalFormat("#,###");
    private File zzg;
    private boolean zzh;

    public zzcld(zzcjb zzcjbVar) {
        super(zzcjbVar);
        File cacheDir = this.zza.getCacheDir();
        if (cacheDir == null) {
            zzcgt.zzi("Context.getCacheDir() returned null");
            return;
        }
        File file = new File(cacheDir, "admobVideoStreams");
        this.zzg = file;
        if (!file.isDirectory() && !this.zzg.mkdirs()) {
            String valueOf = String.valueOf(this.zzg.getAbsolutePath());
            zzcgt.zzi(valueOf.length() != 0 ? "Could not create preload cache directory at ".concat(valueOf) : new String("Could not create preload cache directory at "));
            this.zzg = null;
        } else if (this.zzg.setReadable(true, false) && this.zzg.setExecutable(true, false)) {
        } else {
            String valueOf2 = String.valueOf(this.zzg.getAbsolutePath());
            zzcgt.zzi(valueOf2.length() != 0 ? "Could not set cache file permissions at ".concat(valueOf2) : new String("Could not set cache file permissions at "));
            this.zzg = null;
        }
    }

    private final File zza(File file) {
        return new File(this.zzg, String.valueOf(file.getName()).concat(".done"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:132:0x059f, code lost:
        r0 = java.lang.String.valueOf(java.lang.Integer.toString(r15));
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x05ae, code lost:
        if (r0.length() == 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x05b1, code lost:
        r20 = "File too big for full file cache. Size: ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x05be, code lost:
        r20 = new java.lang.String("File too big for full file cache. Size: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x05d9, code lost:
        throw new java.io.IOException("stream cache file size limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x05da, code lost:
        r16 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x05e1, code lost:
        r11 = r0;
        r19 = r16;
        r16 = "sizeExceeded";
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x05f4, code lost:
        r20 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x05f6, code lost:
        r0 = r10;
        r10 = r20;
        r20 = r0;
        r11 = r0;
        r16 = "sizeExceeded";
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x06a5, code lost:
        r16 = "downloadTimeout";
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x06ae, code lost:
        r0 = java.lang.Long.toString(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x06d9, code lost:
        r0 = new java.lang.StringBuilder(java.lang.String.valueOf(r0).length() + 29);
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x06ea, code lost:
        r0.append("Timeout exceeded. Limit: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x06fa, code lost:
        r0.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x0709, code lost:
        r0.append(" sec");
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x0719, code lost:
        r0 = r0.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x072f, code lost:
        throw new java.io.IOException("stream cache time limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0735, code lost:
        r20 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x0737, code lost:
        r19 = r20;
        r20 = r0;
        r11 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x077a, code lost:
        r16 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x0781, code lost:
        r16.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x078a, code lost:
        if (com.google.android.gms.internal.ads.zzcgt.zzm(3) == false) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x078d, code lost:
        r0 = com.google.android.gms.internal.ads.zzcld.zzf.format(r15);
        r0 = new java.lang.StringBuilder((java.lang.String.valueOf(r0).length() + 22) + java.lang.String.valueOf(r9).length());
        r0.append("Preloaded ");
        r0.append(r0);
        r0.append(" bytes from ");
        r0.append(r9);
        com.google.android.gms.internal.ads.zzcgt.zzd(r0.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x07e8, code lost:
        r0.setReadable(true, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x07f3, code lost:
        if (r0.isFile() == false) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x07f6, code lost:
        r0.setLastModified(java.lang.System.currentTimeMillis());
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x0802, code lost:
        r0.createNewFile();
     */
    /* JADX WARN: Removed duplicated region for block: B:228:0x089a  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x08b0  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x08e7  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0920  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x093a  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0947  */
    /* JADX WARN: Type inference failed for: r0v510, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzcla
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzd(java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 2446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcld.zzd(java.lang.String):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzcla
    public final void zzm() {
        this.zzh = true;
    }
}
