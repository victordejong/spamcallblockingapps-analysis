package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdo.class */
public final class zzbdo extends zzbdd {
    private static final Set<String> zzeqc = Collections.synchronizedSet(new HashSet());
    private static final DecimalFormat zzeqd = new DecimalFormat("#,###");
    private File zzdb;
    private boolean zzeqe;

    public zzbdo(zzbbo zzbboVar) {
        super(zzbboVar);
        File cacheDir = this.mContext.getCacheDir();
        if (cacheDir == null) {
            zzd.zzex("Context.getCacheDir() returned null");
            return;
        }
        File file = new File(cacheDir, "admobVideoStreams");
        this.zzdb = file;
        if (!file.isDirectory() && !this.zzdb.mkdirs()) {
            String valueOf = String.valueOf(this.zzdb.getAbsolutePath());
            zzd.zzex(valueOf.length() != 0 ? "Could not create preload cache directory at ".concat(valueOf) : new String("Could not create preload cache directory at "));
            this.zzdb = null;
        } else if (this.zzdb.setReadable(true, false) && this.zzdb.setExecutable(true, false)) {
        } else {
            String valueOf2 = String.valueOf(this.zzdb.getAbsolutePath());
            zzd.zzex(valueOf2.length() != 0 ? "Could not set cache file permissions at ".concat(valueOf2) : new String("Could not set cache file permissions at "));
            this.zzdb = null;
        }
    }

    private final File zzd(File file) {
        return new File(this.zzdb, String.valueOf(file.getName()).concat(".done"));
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final void abort() {
        this.zzeqe = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:152:0x0431, code lost:
        if ((r0 instanceof java.net.HttpURLConnection) == false) goto L175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x043a, code lost:
        r0 = r0.getResponseCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0449, code lost:
        if (r0 < 400) goto L175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0459, code lost:
        r0 = java.lang.String.valueOf(java.lang.Integer.toString(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x046e, code lost:
        if (r0.length() == 0) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0482, code lost:
        r22 = "HTTP request failed. Code: ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x049b, code lost:
        r22 = new java.lang.String("HTTP request failed. Code: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x049d, code lost:
        r0 = new java.lang.StringBuilder(java.lang.String.valueOf(r9).length() + 32);
        r0.append("HTTP status code ");
        r0.append(r0);
        r0.append(" at ");
        r0.append(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x04e0, code lost:
        throw new java.io.IOException(r0.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x04e1, code lost:
        r10 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x04e2, code lost:
        r20 = "badUrl";
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x04e9, code lost:
        r10 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x04ea, code lost:
        r20 = "badUrl";
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x04f1, code lost:
        r0 = r0.getContentLength();
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x04fa, code lost:
        if (r0 >= 0) goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x0503, code lost:
        r0 = java.lang.String.valueOf(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x0514, code lost:
        if (r0.length() == 0) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x051d, code lost:
        r30 = "Stream cache aborted, missing content-length header at ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0530, code lost:
        r30 = new java.lang.String("Stream cache aborted, missing content-length header at ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x0542, code lost:
        com.google.android.gms.ads.internal.util.zzd.zzex(r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x054d, code lost:
        zza(r9, r0.getAbsolutePath(), "contentLengthMissing", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x0561, code lost:
        com.google.android.gms.internal.ads.zzbdo.zzeqc.remove(r21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x056d, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x056e, code lost:
        r0 = com.google.android.gms.internal.ads.zzbdo.zzeqd.format(r0);
        r0 = ((java.lang.Integer) com.google.android.gms.internal.ads.zzwr.zzqr().zzd(com.google.android.gms.internal.ads.zzabp.zzcmy)).intValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x0592, code lost:
        if (r0 <= r0) goto L232;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x05c5, code lost:
        r0 = new java.lang.StringBuilder((java.lang.String.valueOf(r0).length() + 33) + java.lang.String.valueOf(r9).length());
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x05d8, code lost:
        r0.append("Content length ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x05e7, code lost:
        r0.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x05f5, code lost:
        r0.append(" exceeds limit at ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x0604, code lost:
        r0.append(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x0611, code lost:
        com.google.android.gms.ads.internal.util.zzd.zzex(r0.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x061f, code lost:
        r0 = java.lang.String.valueOf(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x0631, code lost:
        if (r0.length() == 0) goto L224;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x063a, code lost:
        r30 = "File too big for full file cache. Size: ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x064d, code lost:
        r30 = new java.lang.String("File too big for full file cache. Size: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x065f, code lost:
        zza(r9, r0.getAbsolutePath(), "sizeExceeded", r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x0674, code lost:
        com.google.android.gms.internal.ads.zzbdo.zzeqc.remove(r21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x0680, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x0681, code lost:
        r0 = new java.lang.StringBuilder((java.lang.String.valueOf(r0).length() + 20) + java.lang.String.valueOf(r9).length());
        r0.append("Caching ");
        r0.append(r0);
        r0.append(" bytes from ");
        r0.append(r9);
        com.google.android.gms.ads.internal.util.zzd.zzdy(r0.toString());
        r0 = java.nio.channels.Channels.newChannel(r0.getInputStream());
        r0 = new java.io.FileOutputStream(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x06e7, code lost:
        r0 = r0.getChannel();
        r0 = java.nio.ByteBuffer.allocate(1048576);
        r0 = com.google.android.gms.ads.internal.zzr.zzky();
        r0 = r0.currentTimeMillis();
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x0716, code lost:
        r32 = r0;
        r33 = r21;
        r30 = r10;
        r11 = r0;
        r31 = r21;
        r38 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x075f, code lost:
        r0 = new com.google.android.gms.ads.internal.util.zzbp(((java.lang.Long) com.google.android.gms.internal.ads.zzwr.zzqr().zzd(com.google.android.gms.internal.ads.zzabp.zzcnb)).longValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x0795, code lost:
        r0 = ((java.lang.Long) com.google.android.gms.internal.ads.zzwr.zzqr().zzd(com.google.android.gms.internal.ads.zzabp.zzcna)).longValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x07a6, code lost:
        r16 = 0;
        r10 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x07b7, code lost:
        r32 = r0;
        r33 = r10;
        r30 = r10;
        r11 = r0;
        r31 = r10;
        r38 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x07cc, code lost:
        r0 = r0.read(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x07d9, code lost:
        if (r0 < 0) goto L441;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x07dc, code lost:
        r16 = r16 + r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x07e7, code lost:
        if (r16 <= r0) goto L405;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x07ea, code lost:
        r20 = "sizeExceeded";
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x07f7, code lost:
        r0 = java.lang.String.valueOf(java.lang.Integer.toString(r16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x080c, code lost:
        if (r0.length() == 0) goto L260;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x0820, code lost:
        r20 = "File too big for full file cache. Size: ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x0839, code lost:
        r20 = new java.lang.String("File too big for full file cache. Size: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x084a, code lost:
        throw new java.io.IOException("stream cache file size limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x084b, code lost:
        r11 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x0850, code lost:
        r30 = r20;
        r20 = "sizeExceeded";
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x085b, code lost:
        r11 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x085f, code lost:
        r11 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x0860, code lost:
        r20 = "sizeExceeded";
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x0864, code lost:
        r30 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x0867, code lost:
        r21 = r11;
        r22 = r30;
        r30 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x0879, code lost:
        r0.flip();
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x0886, code lost:
        if (r0.write(r0) > 0) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x0889, code lost:
        r0.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x08a0, code lost:
        if ((r0.currentTimeMillis() - r0) > (1000 * r0)) goto L437;
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x08a7, code lost:
        if (r8.zzeqe != false) goto L438;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x08af, code lost:
        if (r0.tryAcquire() == false) goto L443;
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x08c4, code lost:
        com.google.android.gms.internal.ads.zzaza.zzaac.post(new com.google.android.gms.internal.ads.zzbdg(r8, r9, r0.getAbsolutePath(), r16, r0, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x08da, code lost:
        r20 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x08df, code lost:
        r20 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x0910, code lost:
        throw new java.io.IOException("abort requested");
     */
    /* JADX WARN: Code restructure failed: missing block: B:297:0x0914, code lost:
        r20 = "downloadTimeout";
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x091d, code lost:
        r0 = java.lang.Long.toString(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x0948, code lost:
        r0 = new java.lang.StringBuilder(java.lang.String.valueOf(r0).length() + 29);
     */
    /* JADX WARN: Code restructure failed: missing block: B:306:0x0959, code lost:
        r0.append("Timeout exceeded. Limit: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x0969, code lost:
        r0.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x0978, code lost:
        r0.append(" sec");
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x0988, code lost:
        r0 = r0.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:0x099e, code lost:
        throw new java.io.IOException("stream cache time limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x099f, code lost:
        r22 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:317:0x09a6, code lost:
        r21 = r22;
        r22 = r0;
        r30 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x09bb, code lost:
        r22 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:319:0x09bd, code lost:
        r20 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x09c3, code lost:
        r22 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x09c5, code lost:
        r20 = r30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x09cc, code lost:
        r20 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x09d3, code lost:
        r21 = r20;
        r20 = r10;
        r22 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x09e9, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x09f6, code lost:
        if (com.google.android.gms.ads.internal.util.zzd.isLoggable(3) == false) goto L332;
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x09f9, code lost:
        r0 = com.google.android.gms.internal.ads.zzbdo.zzeqd.format(r16);
        r0 = new java.lang.StringBuilder((java.lang.String.valueOf(r0).length() + 22) + java.lang.String.valueOf(r9).length());
        r0.append("Preloaded ");
        r0.append(r0);
        r0.append(" bytes from ");
        r0.append(r9);
        com.google.android.gms.ads.internal.util.zzd.zzdy(r0.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x0a4e, code lost:
        r30 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x0a53, code lost:
        r30 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x0a55, code lost:
        r20 = r10;
        r22 = r30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x0a5d, code lost:
        r21 = r22;
        r22 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x0a6c, code lost:
        r0.setReadable(true, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x0a7d, code lost:
        if (r0.isFile() == false) goto L393;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x0a80, code lost:
        r0.setLastModified(java.lang.System.currentTimeMillis());
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x0a8c, code lost:
        r0.createNewFile();
     */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x0ab9, code lost:
        r20 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x0abe, code lost:
        r20 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x0ad3, code lost:
        r21 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x0ad5, code lost:
        r11 = r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x0adb, code lost:
        r21 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:349:0x0add, code lost:
        r30 = r38;
        r33 = r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x0ae5, code lost:
        r10 = r33;
        r20 = r30;
        r30 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x0af7, code lost:
        r22 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x0af9, code lost:
        r30 = r0;
        r20 = r10;
        r10 = r21;
        r21 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:353:0x0b07, code lost:
        r22 = r30;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0b56  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x0b72  */
    /* JADX WARN: Removed duplicated region for block: B:373:0x0ba9  */
    /* JADX WARN: Removed duplicated region for block: B:376:0x0be7  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x0c01  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0c0e  */
    /* JADX WARN: Type inference failed for: r0v151, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r0v676, types: [long] */
    /* JADX WARN: Type inference failed for: r0v74, types: [java.io.FileOutputStream] */
    @Override // com.google.android.gms.internal.ads.zzbdd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzfg(java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 3140
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbdo.zzfg(java.lang.String):boolean");
    }
}
