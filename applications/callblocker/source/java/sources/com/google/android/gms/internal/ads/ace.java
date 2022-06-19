package com.google.android.gms.internal.ads;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ace.class */
public final class ace extends abt {

    /* renamed from: d */
    private static final Set<String> f7803d = Collections.synchronizedSet(new HashSet());

    /* renamed from: e */
    private static final DecimalFormat f7804e = new DecimalFormat("#,###");

    /* renamed from: f */
    private File f7805f;

    /* renamed from: g */
    private boolean f7806g;

    public ace(aad aadVar) {
        super(aadVar);
        File cacheDir = this.f7762a.getCacheDir();
        if (cacheDir == null) {
            C3556uu.m6745e("Context.getCacheDir() returned null");
            return;
        }
        this.f7805f = new File(cacheDir, "admobVideoStreams");
        if (!this.f7805f.isDirectory() && !this.f7805f.mkdirs()) {
            String valueOf = String.valueOf(this.f7805f.getAbsolutePath());
            C3556uu.m6745e(valueOf.length() != 0 ? "Could not create preload cache directory at ".concat(valueOf) : new String("Could not create preload cache directory at "));
            this.f7805f = null;
        } else if (this.f7805f.setReadable(true, false) && this.f7805f.setExecutable(true, false)) {
        } else {
            String valueOf2 = String.valueOf(this.f7805f.getAbsolutePath());
            C3556uu.m6745e(valueOf2.length() != 0 ? "Could not set cache file permissions at ".concat(valueOf2) : new String("Could not set cache file permissions at "));
            this.f7805f = null;
        }
    }

    /* renamed from: a */
    private final File m13649a(File file) {
        return new File(this.f7805f, String.valueOf(file.getName()).concat(".done"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x02eb, code lost:
        com.google.android.gms.internal.ads.C3556uu.m6745e(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x02f0, code lost:
        m13658a(r9, r0.getAbsolutePath(), r18, r19);
        com.google.android.gms.internal.ads.ace.f7803d.remove(r24);
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0436, code lost:
        if ((r0 instanceof java.net.HttpURLConnection) == false) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0439, code lost:
        r0 = r0.getResponseCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0448, code lost:
        if (r0 < 400) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x044b, code lost:
        r18 = "badUrl";
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0450, code lost:
        r0 = java.lang.String.valueOf(java.lang.Integer.toString(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x045f, code lost:
        if (r0.length() == 0) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0462, code lost:
        r19 = "HTTP request failed. Code: ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x04a8, code lost:
        throw new java.io.IOException(new java.lang.StringBuilder(java.lang.String.valueOf(r9).length() + 32).append("HTTP status code ").append(r0).append(" at ").append(r9).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x04a9, code lost:
        r12 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x04ae, code lost:
        r19 = new java.lang.String("HTTP request failed. Code: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x04bd, code lost:
        r12 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x04bf, code lost:
        r19 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x04c5, code lost:
        r0 = r0.getContentLength();
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x04ce, code lost:
        if (r0 >= 0) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x04d1, code lost:
        r0 = java.lang.String.valueOf(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x04dc, code lost:
        if (r0.length() == 0) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x04df, code lost:
        r12 = "Stream cache aborted, missing content-length header at ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x04eb, code lost:
        com.google.android.gms.internal.ads.C3556uu.m6745e(r12);
        m13658a(r9, r0.getAbsolutePath(), "contentLengthMissing", null);
        com.google.android.gms.internal.ads.ace.f7803d.remove(r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x0508, code lost:
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x050c, code lost:
        r12 = new java.lang.String("Stream cache aborted, missing content-length header at ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x051b, code lost:
        r0 = com.google.android.gms.internal.ads.ace.f7804e.format(r0);
        r0 = ((java.lang.Integer) com.google.android.gms.internal.ads.dyx.m8158e().m7876a(com.google.android.gms.internal.ads.edi.f16601m)).intValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x053f, code lost:
        if (r0 <= r0) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0542, code lost:
        com.google.android.gms.internal.ads.C3556uu.m6745e(new java.lang.StringBuilder((java.lang.String.valueOf(r0).length() + 33) + java.lang.String.valueOf(r9).length()).append("Content length ").append(r0).append(" exceeds limit at ").append(r9).toString());
        r0 = java.lang.String.valueOf(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x058e, code lost:
        if (r0.length() == 0) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0591, code lost:
        r12 = "File too big for full file cache. Size: ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x059c, code lost:
        m13658a(r9, r0.getAbsolutePath(), "sizeExceeded", r12);
        com.google.android.gms.internal.ads.ace.f7803d.remove(r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x05b6, code lost:
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x05ba, code lost:
        r12 = new java.lang.String("File too big for full file cache. Size: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x05c9, code lost:
        com.google.android.gms.internal.ads.C3556uu.m6751b(new java.lang.StringBuilder((java.lang.String.valueOf(r0).length() + 20) + java.lang.String.valueOf(r9).length()).append("Caching ").append(r0).append(" bytes from ").append(r9).toString());
        r0 = java.nio.channels.Channels.newChannel(r0.getInputStream());
        r0 = new java.io.FileOutputStream(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0620, code lost:
        r0 = r0.getChannel();
        r0 = java.nio.ByteBuffer.allocate(1048576);
        r0 = com.google.android.gms.ads.internal.C2341q.m14737j();
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0633, code lost:
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0634, code lost:
        r0 = r0.mo13862a();
        r0 = new com.google.android.gms.internal.ads.C3624xh(((java.lang.Long) com.google.android.gms.internal.ads.dyx.m8158e().m7876a(com.google.android.gms.internal.ads.edi.f16604p)).longValue());
        r0 = ((java.lang.Long) com.google.android.gms.internal.ads.dyx.m8158e().m7876a(com.google.android.gms.internal.ads.edi.f16603o)).longValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x0675, code lost:
        r0 = r0.read(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0680, code lost:
        if (r0 < 0) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0683, code lost:
        r0 = r11 + r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x068d, code lost:
        if (r0 <= r0) goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x069d, code lost:
        r0 = java.lang.String.valueOf(java.lang.Integer.toString(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x06b4, code lost:
        if (r0.length() == 0) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x06cb, code lost:
        r18 = "File too big for full file cache. Size: ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x06dd, code lost:
        r0 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x06f2, code lost:
        r0 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x070c, code lost:
        throw new java.io.IOException("stream cache file size limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x070d, code lost:
        r19 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x070f, code lost:
        r25 = r0;
        r12 = r19;
        r19 = r0;
        r18 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x0738, code lost:
        r18 = new java.lang.String("File too big for full file cache. Size: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x073d, code lost:
        r19 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x073f, code lost:
        r25 = r0;
        r12 = r19;
        r19 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0751, code lost:
        r0.flip();
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x075e, code lost:
        if (r0.write(r0) > 0) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x0761, code lost:
        r0.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x0778, code lost:
        if ((r0.mo13862a() - r0) <= (1000 * r0)) goto L231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x0788, code lost:
        r0 = java.lang.Long.toString(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x07c6, code lost:
        r0 = new java.lang.StringBuilder(java.lang.String.valueOf(r0).length() + 29).append("Timeout exceeded. Limit: ").append(r0).append(" sec").toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x0821, code lost:
        throw new java.io.IOException("stream cache time limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x0822, code lost:
        r19 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x0824, code lost:
        r12 = r19;
        r19 = r0;
        r18 = r0;
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x083f, code lost:
        if (r8.f7806g == false) goto L243;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x086e, code lost:
        throw new java.io.IOException("abort requested");
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x086f, code lost:
        r19 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x0871, code lost:
        r12 = r19;
        r19 = null;
        r18 = r0;
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x088b, code lost:
        r11 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x0893, code lost:
        if (r0.m6824a() == false) goto L305;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x0896, code lost:
        com.google.android.gms.internal.ads.C3634xr.f17613a.post(new com.google.android.gms.internal.ads.abw(r8, r9, r0.getAbsolutePath(), r0, r0, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x08bf, code lost:
        r11 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x08c3, code lost:
        r19 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x08c5, code lost:
        r18 = "error";
        r25 = r0;
        r12 = r19;
        r19 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x08db, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x08e4, code lost:
        if (com.google.android.gms.internal.ads.C3556uu.m6753a(3) == false) goto L253;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x08e7, code lost:
        r0 = com.google.android.gms.internal.ads.ace.f7804e.format(r11);
        com.google.android.gms.internal.ads.C3556uu.m6751b(new java.lang.StringBuilder((java.lang.String.valueOf(r0).length() + 22) + java.lang.String.valueOf(r9).length()).append("Preloaded ").append(r0).append(" bytes from ").append(r9).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x0935, code lost:
        r0.setReadable(true, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x0940, code lost:
        if (r18.isFile() == false) goto L272;
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x0943, code lost:
        r18.setLastModified(java.lang.System.currentTimeMillis());
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x0967, code lost:
        r18.createNewFile();
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x0975, code lost:
        com.google.android.gms.internal.ads.C3556uu.m6746d(new java.lang.StringBuilder(java.lang.String.valueOf(r9).length() + 25).append("Preload failed for URL \"").append(r9).append("\"").toString(), r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x09a0, code lost:
        r12 = new java.lang.String("Could not delete partial cache file at ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x09b9, code lost:
        r12 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x09bb, code lost:
        r19 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x09c1, code lost:
        r12 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x09c6, code lost:
        r19 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x09c8, code lost:
        r18 = "error";
        r25 = r0;
        r12 = r19;
        r19 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0281, code lost:
        if ((r12 instanceof java.lang.RuntimeException) != false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0284, code lost:
        com.google.android.gms.ads.internal.C2341q.m14740g().m7095a(r12, "VideoStreamFullFileCache.preload");
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x028e, code lost:
        r25.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0297, code lost:
        if (r8.f7806g == false) goto L262;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x029a, code lost:
        com.google.android.gms.internal.ads.C3556uu.m6747d(new java.lang.StringBuilder(java.lang.String.valueOf(r9).length() + 26).append("Preload aborted for URL \"").append(r9).append("\"").toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x02c4, code lost:
        if (r0.exists() != false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x02cf, code lost:
        r0 = java.lang.String.valueOf(r0.getAbsolutePath());
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x02de, code lost:
        if (r0.length() == 0) goto L263;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x02e1, code lost:
        r12 = "Could not delete partial cache file at ".concat(r0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0975  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x09a0  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02e1  */
    /* JADX WARN: Type inference failed for: r0v495, types: [long] */
    @Override // com.google.android.gms.internal.ads.abt
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo13638a(java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 2529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ace.mo13638a(java.lang.String):boolean");
    }

    @Override // com.google.android.gms.internal.ads.abt
    /* renamed from: b */
    public final void mo13634b() {
        this.f7806g = true;
    }
}
