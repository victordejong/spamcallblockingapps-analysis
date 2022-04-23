package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adb.class */
public final class adb extends acu {

    /* renamed from: d  reason: collision with root package name */
    private static final Set<String> f23141d = Collections.synchronizedSet(new HashSet());
    private static final DecimalFormat e = new DecimalFormat("#,###");
    private File f;
    private boolean g;

    public adb(abb abbVar) {
        super(abbVar);
        File cacheDir = this.f23118a.getCacheDir();
        if (cacheDir == null) {
            zzd.zzez("Context.getCacheDir() returned null");
            return;
        }
        File file = new File(cacheDir, "admobVideoStreams");
        this.f = file;
        if (!file.isDirectory() && !this.f.mkdirs()) {
            String valueOf = String.valueOf(this.f.getAbsolutePath());
            zzd.zzez(valueOf.length() != 0 ? "Could not create preload cache directory at ".concat(valueOf) : new String("Could not create preload cache directory at "));
            this.f = null;
        } else if (!this.f.setReadable(true, false) || !this.f.setExecutable(true, false)) {
            String valueOf2 = String.valueOf(this.f.getAbsolutePath());
            zzd.zzez(valueOf2.length() != 0 ? "Could not set cache file permissions at ".concat(valueOf2) : new String("Could not set cache file permissions at "));
            this.f = null;
        }
    }

    private final File a(File file) {
        return new File(this.f, String.valueOf(file.getName()).concat(".done"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:152:0x0430, code lost:
        if ((r0 instanceof java.net.HttpURLConnection) == false) goto L_0x04f0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0439, code lost:
        r0 = r0.getResponseCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0448, code lost:
        if (r0 < 400) goto L_0x04f0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0458, code lost:
        r0 = java.lang.String.valueOf(java.lang.Integer.toString(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x046d, code lost:
        if (r0.length() == 0) goto L_0x0486;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0478, code lost:
        r22 = "HTTP request failed. Code: ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x048e, code lost:
        r22 = new java.lang.String("HTTP request failed. Code: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x049c, code lost:
        r0 = new java.lang.StringBuilder(java.lang.String.valueOf(r9).length() + 32);
        r0.append("HTTP status code ");
        r0.append(r0);
        r0.append(" at ");
        r0.append(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x04df, code lost:
        throw new java.io.IOException(r0.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x04e0, code lost:
        r10 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x04e1, code lost:
        r20 = "badUrl";
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x04e8, code lost:
        r10 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x04e9, code lost:
        r20 = "badUrl";
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x04f0, code lost:
        r0 = r0.getContentLength();
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x04f9, code lost:
        if (r0 >= 0) goto L_0x056d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x0502, code lost:
        r0 = java.lang.String.valueOf(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x0513, code lost:
        if (r0.length() == 0) goto L_0x0529;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x051c, code lost:
        r30 = "Stream cache aborted, missing content-length header at ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x052f, code lost:
        r30 = new java.lang.String("Stream cache aborted, missing content-length header at ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x0541, code lost:
        com.google.android.gms.ads.internal.util.zzd.zzez(r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x054c, code lost:
        a(r9, r0.getAbsolutePath(), "contentLengthMissing", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x0560, code lost:
        com.google.android.gms.internal.ads.adb.f23141d.remove(r21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x056c, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x056d, code lost:
        r0 = com.google.android.gms.internal.ads.adb.e.format(r0);
        r0 = ((java.lang.Integer) com.google.android.gms.internal.ads.ekb.e().a(com.google.android.gms.internal.ads.aq.o)).intValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x0591, code lost:
        if (r0 <= r0) goto L_0x0680;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x05c4, code lost:
        r0 = new java.lang.StringBuilder((java.lang.String.valueOf(r0).length() + 33) + java.lang.String.valueOf(r9).length());
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x05d7, code lost:
        r0.append("Content length ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x05e6, code lost:
        r0.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x05f4, code lost:
        r0.append(" exceeds limit at ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x0603, code lost:
        r0.append(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x0610, code lost:
        com.google.android.gms.ads.internal.util.zzd.zzez(r0.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x061e, code lost:
        r0 = java.lang.String.valueOf(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x0630, code lost:
        if (r0.length() == 0) goto L_0x0646;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x0639, code lost:
        r30 = "File too big for full file cache. Size: ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x064c, code lost:
        r30 = new java.lang.String("File too big for full file cache. Size: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x065e, code lost:
        a(r9, r0.getAbsolutePath(), "sizeExceeded", r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x0673, code lost:
        com.google.android.gms.internal.ads.adb.f23141d.remove(r21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x067f, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x0680, code lost:
        r0 = new java.lang.StringBuilder((java.lang.String.valueOf(r0).length() + 20) + java.lang.String.valueOf(r9).length());
        r0.append("Caching ");
        r0.append(r0);
        r0.append(" bytes from ");
        r0.append(r9);
        com.google.android.gms.ads.internal.util.zzd.zzdz(r0.toString());
        r0 = java.nio.channels.Channels.newChannel(r0.getInputStream());
        r0 = new java.io.FileOutputStream(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x06e6, code lost:
        r0 = r0.getChannel();
        r0 = java.nio.ByteBuffer.allocate(1048576);
        r0 = com.google.android.gms.ads.internal.zzr.zzlc();
        r0 = r0.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x0715, code lost:
        r31 = r0;
        r33 = r21;
        r30 = r10;
        r11 = r0;
        r32 = r21;
        r38 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x075e, code lost:
        r0 = new com.google.android.gms.ads.internal.util.zzbp(((java.lang.Long) com.google.android.gms.internal.ads.ekb.e().a(com.google.android.gms.internal.ads.aq.r)).longValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x0794, code lost:
        r0 = ((java.lang.Long) com.google.android.gms.internal.ads.ekb.e().a(com.google.android.gms.internal.ads.aq.q)).longValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x07a5, code lost:
        r10 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x07b6, code lost:
        r31 = r0;
        r33 = r10;
        r30 = r10;
        r11 = r0;
        r32 = r10;
        r38 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x07cb, code lost:
        r0 = r0.read(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x07d8, code lost:
        if (r0 < 0) goto L_0x09e4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x07db, code lost:
        r16 = r16 + r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x07e6, code lost:
        if (r16 <= r0) goto L_0x0878;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x07e9, code lost:
        r20 = "sizeExceeded";
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x07f6, code lost:
        r0 = java.lang.String.valueOf(java.lang.Integer.toString(r16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x080b, code lost:
        if (r0.length() == 0) goto L_0x0824;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x0816, code lost:
        r20 = "File too big for full file cache. Size: ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x082c, code lost:
        r20 = new java.lang.String("File too big for full file cache. Size: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x0849, code lost:
        throw new java.io.IOException("stream cache file size limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x084a, code lost:
        r11 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x084f, code lost:
        r20 = "sizeExceeded";
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x085a, code lost:
        r11 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x085e, code lost:
        r11 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x085f, code lost:
        r20 = "sizeExceeded";
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x0863, code lost:
        r30 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x0866, code lost:
        r30 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x0878, code lost:
        r0.flip();
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x0885, code lost:
        if (r0.write(r0) > 0) goto L_0x087e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x0888, code lost:
        r0.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x089f, code lost:
        if ((r0.a() - r0) > (1000 * r0)) goto L_0x090f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x08a6, code lost:
        if (r8.g != false) goto L_0x08e5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x08ae, code lost:
        if (r0.tryAcquire() == false) goto L_0x07b6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x08c2, code lost:
        com.google.android.gms.internal.ads.yq.f28555a.post(new com.google.android.gms.internal.ads.act(r8, r9, r0.getAbsolutePath(), r16, r0, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x08d8, code lost:
        r20 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x08dd, code lost:
        r20 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x090e, code lost:
        throw new java.io.IOException("abort requested");
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x090f, code lost:
        r20 = "downloadTimeout";
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x091b, code lost:
        r0 = java.lang.Long.toString(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x0946, code lost:
        r0 = new java.lang.StringBuilder(java.lang.String.valueOf(r0).length() + 29);
     */
    /* JADX WARN: Code restructure failed: missing block: B:306:0x0957, code lost:
        r0.append("Timeout exceeded. Limit: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x0967, code lost:
        r0.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x0976, code lost:
        r0.append(" sec");
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x0986, code lost:
        r22 = r0.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:0x099c, code lost:
        throw new java.io.IOException("stream cache time limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x099d, code lost:
        r21 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:317:0x09a4, code lost:
        r30 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x09b9, code lost:
        r22 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:319:0x09bb, code lost:
        r20 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x09c1, code lost:
        r22 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x09c3, code lost:
        r20 = r30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x09ca, code lost:
        r21 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x09d1, code lost:
        r20 = r10;
        r22 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x09e7, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x09f4, code lost:
        if (com.google.android.gms.ads.internal.util.zzd.isLoggable(3) == false) goto L_0x0a6a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x09f7, code lost:
        r0 = com.google.android.gms.internal.ads.adb.e.format(r16);
        r0 = new java.lang.StringBuilder((java.lang.String.valueOf(r0).length() + 22) + java.lang.String.valueOf(r9).length());
        r0.append("Preloaded ");
        r0.append(r0);
        r0.append(" bytes from ");
        r0.append(r9);
        com.google.android.gms.ads.internal.util.zzd.zzdz(r0.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x0a4c, code lost:
        r30 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x0a51, code lost:
        r30 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x0a53, code lost:
        r20 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x0a5b, code lost:
        r22 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x0a6a, code lost:
        r0.setReadable(true, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x0a7b, code lost:
        if (r0.isFile() == false) goto L_0x0a8a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x0a7e, code lost:
        r0.setLastModified(java.lang.System.currentTimeMillis());
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x0a8a, code lost:
        r0.createNewFile();
     */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x0ab7, code lost:
        r20 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x0abc, code lost:
        r20 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x0ad1, code lost:
        r21 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x0ad9, code lost:
        r21 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x0af5, code lost:
        r21 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x0af7, code lost:
        r30 = r0;
        r20 = r10;
        r10 = r21;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0b54  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x0b70  */
    /* JADX WARN: Removed duplicated region for block: B:373:0x0ba7  */
    /* JADX WARN: Removed duplicated region for block: B:376:0x0be5  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x0bff  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0c0c  */
    /* JADX WARN: Type inference failed for: r0v676, types: [long] */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v3, types: [long] */
    /* JADX WARN: Type inference failed for: r18v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.acu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 3138
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.adb.a(java.lang.String):boolean");
    }

    @Override // com.google.android.gms.internal.ads.acu
    public final void b() {
        this.g = true;
    }
}
