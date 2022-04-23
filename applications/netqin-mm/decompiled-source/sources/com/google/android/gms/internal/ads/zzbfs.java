package com.google.android.gms.internal.ads;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfs.class */
public final class zzbfs extends zzbfl {

    /* renamed from: f */
    public static final Set<String> f24935f = Collections.synchronizedSet(new HashSet());

    /* renamed from: g */
    public static final DecimalFormat f24936g = new DecimalFormat("#,###");

    /* renamed from: d */
    public File f24937d;

    /* renamed from: e */
    public boolean f24938e;

    public zzbfs(zzbdu zzbduVar) {
        super(zzbduVar);
        File cacheDir = this.f24932a.getCacheDir();
        if (cacheDir == null) {
            zzbbq.m15852d("Context.getCacheDir() returned null");
            return;
        }
        File file = new File(cacheDir, "admobVideoStreams");
        this.f24937d = file;
        if (!file.isDirectory() && !this.f24937d.mkdirs()) {
            String valueOf = String.valueOf(this.f24937d.getAbsolutePath());
            zzbbq.m15852d(valueOf.length() != 0 ? "Could not create preload cache directory at ".concat(valueOf) : new String("Could not create preload cache directory at "));
            this.f24937d = null;
        } else if (!this.f24937d.setReadable(true, false) || !this.f24937d.setExecutable(true, false)) {
            String valueOf2 = String.valueOf(this.f24937d.getAbsolutePath());
            zzbbq.m15852d(valueOf2.length() != 0 ? "Could not set cache file permissions at ".concat(valueOf2) : new String("Could not set cache file permissions at "));
            this.f24937d = null;
        }
    }

    /* renamed from: a */
    public final File m15658a(File file) {
        return new File(this.f24937d, String.valueOf(file.getName()).concat(".done"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:152:0x042e, code lost:
        if ((r0 instanceof java.net.HttpURLConnection) == false) goto L_0x04eb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0437, code lost:
        r0 = r0.getResponseCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0443, code lost:
        if (r0 < 400) goto L_0x04eb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0453, code lost:
        r0 = java.lang.String.valueOf(java.lang.Integer.toString(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0468, code lost:
        if (r0.length() == 0) goto L_0x0481;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0473, code lost:
        r21 = "HTTP request failed. Code: ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0489, code lost:
        r21 = new java.lang.String("HTTP request failed. Code: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0497, code lost:
        r0 = new java.lang.StringBuilder(java.lang.String.valueOf(r9).length() + 32);
        r0.append("HTTP status code ");
        r0.append(r0);
        r0.append(" at ");
        r0.append(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x04da, code lost:
        throw new java.io.IOException(r0.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x04db, code lost:
        r10 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x04dc, code lost:
        r20 = "badUrl";
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x04e3, code lost:
        r10 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x04e4, code lost:
        r20 = "badUrl";
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x04eb, code lost:
        r0 = r0.getContentLength();
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x04f4, code lost:
        if (r0 >= 0) goto L_0x0568;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x04fd, code lost:
        r0 = java.lang.String.valueOf(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x050e, code lost:
        if (r0.length() == 0) goto L_0x0524;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x0517, code lost:
        r30 = "Stream cache aborted, missing content-length header at ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x052a, code lost:
        r30 = new java.lang.String("Stream cache aborted, missing content-length header at ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x053c, code lost:
        com.google.android.gms.internal.ads.zzbbq.m15852d(r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x0547, code lost:
        m15662a(r9, r0.getAbsolutePath(), "contentLengthMissing", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x055b, code lost:
        com.google.android.gms.internal.ads.zzbfs.f24935f.remove(r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x0567, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x0568, code lost:
        r0 = com.google.android.gms.internal.ads.zzbfs.f24936g.format(r0);
        r0 = ((java.lang.Integer) com.google.android.gms.internal.ads.zzwm.m11166e().m16921a(com.google.android.gms.internal.ads.zzabb.f23856n)).intValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x058c, code lost:
        if (r0 <= r0) goto L_0x067b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x05bf, code lost:
        r0 = new java.lang.StringBuilder((java.lang.String.valueOf(r0).length() + 33) + java.lang.String.valueOf(r9).length());
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x05d2, code lost:
        r0.append("Content length ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x05e1, code lost:
        r0.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x05ef, code lost:
        r0.append(" exceeds limit at ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x05fe, code lost:
        r0.append(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x060b, code lost:
        com.google.android.gms.internal.ads.zzbbq.m15852d(r0.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x0619, code lost:
        r0 = java.lang.String.valueOf(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x062b, code lost:
        if (r0.length() == 0) goto L_0x0641;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x0634, code lost:
        r30 = "File too big for full file cache. Size: ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x0647, code lost:
        r30 = new java.lang.String("File too big for full file cache. Size: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x0659, code lost:
        m15662a(r9, r0.getAbsolutePath(), "sizeExceeded", r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x066e, code lost:
        com.google.android.gms.internal.ads.zzbfs.f24935f.remove(r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x067a, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x067b, code lost:
        r0 = new java.lang.StringBuilder((java.lang.String.valueOf(r0).length() + 20) + java.lang.String.valueOf(r9).length());
        r0.append("Caching ");
        r0.append(r0);
        r0.append(" bytes from ");
        r0.append(r9);
        com.google.android.gms.internal.ads.zzbbq.m15858a(r0.toString());
        r0 = java.nio.channels.Channels.newChannel(r0.getInputStream());
        r0 = new java.io.FileOutputStream(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x06e1, code lost:
        r0 = r0.getChannel();
        r0 = java.nio.ByteBuffer.allocate(1048576);
        r0 = com.google.android.gms.ads.internal.zzp.m17962j();
        r0 = r0.mo17091b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x0710, code lost:
        r31 = r0;
        r33 = r24;
        r30 = r10;
        r11 = r0;
        r32 = r24;
        r38 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x0759, code lost:
        r0 = new com.google.android.gms.internal.ads.zzbaw(((java.lang.Long) com.google.android.gms.internal.ads.zzwm.m11166e().m16921a(com.google.android.gms.internal.ads.zzabb.f23874q)).longValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x078f, code lost:
        r0 = ((java.lang.Long) com.google.android.gms.internal.ads.zzwm.m11166e().m16921a(com.google.android.gms.internal.ads.zzabb.f23868p)).longValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x07a0, code lost:
        r10 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x07b1, code lost:
        r31 = r0;
        r33 = r10;
        r30 = r10;
        r11 = r0;
        r32 = r10;
        r38 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x07c6, code lost:
        r0 = r0.read(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x07d3, code lost:
        if (r0 < 0) goto L_0x09e3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x07d6, code lost:
        r16 = r16 + r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x07e1, code lost:
        if (r16 <= r0) goto L_0x0873;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x07e4, code lost:
        r20 = "sizeExceeded";
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x07f1, code lost:
        r0 = java.lang.String.valueOf(java.lang.Integer.toString(r16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x0806, code lost:
        if (r0.length() == 0) goto L_0x081f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x0811, code lost:
        r20 = "File too big for full file cache. Size: ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x0827, code lost:
        r20 = new java.lang.String("File too big for full file cache. Size: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x0844, code lost:
        throw new java.io.IOException("stream cache file size limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x0849, code lost:
        r11 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x084a, code lost:
        r20 = "sizeExceeded";
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x0855, code lost:
        r11 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x0859, code lost:
        r11 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x085a, code lost:
        r20 = "sizeExceeded";
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x085e, code lost:
        r30 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x0861, code lost:
        r30 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x0873, code lost:
        r0.flip();
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x0880, code lost:
        if (r0.write(r0) > 0) goto L_0x0879;
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x0883, code lost:
        r0.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x089a, code lost:
        if ((r0.mo17091b() - r0) > (1000 * r0)) goto L_0x090b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x08a1, code lost:
        if (r8.f24938e != false) goto L_0x08e1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x08a9, code lost:
        if (r0.m15931a() == false) goto L_0x07b1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x08be, code lost:
        com.google.android.gms.internal.ads.zzbbg.f24738b.post(new p131c.p161d.p170b.p224d.p252g.p253a.RunnableC4021s8(r8, r9, r0.getAbsolutePath(), r16, r0, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x08d4, code lost:
        r20 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x08d9, code lost:
        r20 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x090a, code lost:
        throw new java.io.IOException("abort requested");
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x090b, code lost:
        r20 = "downloadTimeout";
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x0917, code lost:
        r0 = java.lang.Long.toString(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x0942, code lost:
        r0 = new java.lang.StringBuilder(java.lang.String.valueOf(r0).length() + 29);
     */
    /* JADX WARN: Code restructure failed: missing block: B:306:0x0953, code lost:
        r0.append("Timeout exceeded. Limit: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x0963, code lost:
        r0.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x0972, code lost:
        r0.append(" sec");
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x0982, code lost:
        r21 = r0.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:0x0998, code lost:
        throw new java.io.IOException("stream cache time limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x0999, code lost:
        r24 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:317:0x09a0, code lost:
        r30 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x09b5, code lost:
        r21 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:319:0x09b7, code lost:
        r20 = r30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x09be, code lost:
        r21 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x09c0, code lost:
        r20 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x09c9, code lost:
        r24 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x09d0, code lost:
        r20 = r10;
        r21 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x09e6, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x09f3, code lost:
        if (com.google.android.gms.internal.ads.zzbbq.m15859a(3) == false) goto L_0x0a69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x09f6, code lost:
        r0 = com.google.android.gms.internal.ads.zzbfs.f24936g.format(r16);
        r0 = new java.lang.StringBuilder((java.lang.String.valueOf(r0).length() + 22) + java.lang.String.valueOf(r9).length());
        r0.append("Preloaded ");
        r0.append(r0);
        r0.append(" bytes from ");
        r0.append(r9);
        com.google.android.gms.internal.ads.zzbbq.m15858a(r0.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x0a4b, code lost:
        r30 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x0a50, code lost:
        r30 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x0a52, code lost:
        r20 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x0a5a, code lost:
        r21 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x0a69, code lost:
        r0.setReadable(true, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x0a7a, code lost:
        if (r0.isFile() == false) goto L_0x0a89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x0a7d, code lost:
        r0.setLastModified(java.lang.System.currentTimeMillis());
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x0a89, code lost:
        r0.createNewFile();
     */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x0ab6, code lost:
        r20 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x0abb, code lost:
        r20 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x0ad0, code lost:
        r24 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x0ad8, code lost:
        r24 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x0af4, code lost:
        r24 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x0af6, code lost:
        r30 = r0;
        r20 = r10;
        r10 = r24;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0b53  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x0b6f  */
    /* JADX WARN: Removed duplicated region for block: B:373:0x0ba6  */
    /* JADX WARN: Removed duplicated region for block: B:376:0x0be4  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x0bfe  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0c0b  */
    /* JADX WARN: Type inference failed for: r0v675, types: [long] */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2, types: [long] */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.zzbfl
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo15643a(java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 3143
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbfs.mo15643a(java.lang.String):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzbfl
    /* renamed from: b */
    public final void mo15642b() {
        this.f24938e = true;
    }
}
