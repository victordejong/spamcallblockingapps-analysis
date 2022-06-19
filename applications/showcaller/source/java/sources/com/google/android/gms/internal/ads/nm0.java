package com.google.android.gms.internal.ads;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nm0.class */
public final class nm0 extends km0 {

    /* renamed from: g */
    private static final Set<String> f27221g = Collections.synchronizedSet(new HashSet());

    /* renamed from: h */
    private static final DecimalFormat f27222h = new DecimalFormat("#,###");

    /* renamed from: i */
    public static final /* synthetic */ int f27223i = 0;

    /* renamed from: j */
    private File f27224j;

    /* renamed from: k */
    private boolean f27225k;

    public nm0(kk0 kk0Var) {
        super(kk0Var);
        File cacheDir = this.f25256d.getCacheDir();
        if (cacheDir == null) {
            ei0.m15464f("Context.getCacheDir() returned null");
            return;
        }
        File file = new File(cacheDir, "admobVideoStreams");
        this.f27224j = file;
        if (!file.isDirectory() && !this.f27224j.mkdirs()) {
            String valueOf = String.valueOf(this.f27224j.getAbsolutePath());
            ei0.m15464f(valueOf.length() != 0 ? "Could not create preload cache directory at ".concat(valueOf) : new String("Could not create preload cache directory at "));
            this.f27224j = null;
        } else if (this.f27224j.setReadable(true, false) && this.f27224j.setExecutable(true, false)) {
        } else {
            String valueOf2 = String.valueOf(this.f27224j.getAbsolutePath());
            ei0.m15464f(valueOf2.length() != 0 ? "Could not set cache file permissions at ".concat(valueOf2) : new String("Could not set cache file permissions at "));
            this.f27224j = null;
        }
    }

    /* renamed from: x */
    private final File m12851x(File file) {
        return new File(this.f27224j, String.valueOf(file.getName()).concat(".done"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:132:0x059c, code lost:
        r0 = java.lang.String.valueOf(java.lang.Integer.toString(r15));
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x05ab, code lost:
        if (r0.length() == 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x05ae, code lost:
        r19 = "File too big for full file cache. Size: ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x05bb, code lost:
        r19 = new java.lang.String("File too big for full file cache. Size: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x05d6, code lost:
        throw new java.io.IOException("stream cache file size limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x05d7, code lost:
        r16 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x05de, code lost:
        r11 = r0;
        r22 = r16;
        r16 = "sizeExceeded";
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x05f1, code lost:
        r19 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x05f3, code lost:
        r0 = r10;
        r10 = r19;
        r19 = r0;
        r11 = r0;
        r16 = "sizeExceeded";
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x06a1, code lost:
        r16 = "downloadTimeout";
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x06aa, code lost:
        r0 = java.lang.Long.toString(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x06d5, code lost:
        r0 = new java.lang.StringBuilder(java.lang.String.valueOf(r0).length() + 29);
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x06e6, code lost:
        r0.append("Timeout exceeded. Limit: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x06f6, code lost:
        r0.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x0705, code lost:
        r0.append(" sec");
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x0715, code lost:
        r0 = r0.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x072b, code lost:
        throw new java.io.IOException("stream cache time limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0731, code lost:
        r19 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x0733, code lost:
        r22 = r19;
        r19 = r0;
        r11 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x0776, code lost:
        r16 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x077d, code lost:
        r16.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x0786, code lost:
        if (com.google.android.gms.internal.ads.ei0.m15460j(3) == false) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x0789, code lost:
        r0 = com.google.android.gms.internal.ads.nm0.f27222h.format(r15);
        r0 = new java.lang.StringBuilder((java.lang.String.valueOf(r0).length() + 22) + java.lang.String.valueOf(r9).length());
        r0.append("Preloaded ");
        r0.append(r0);
        r0.append(" bytes from ");
        r0.append(r9);
        com.google.android.gms.internal.ads.ei0.m15469a(r0.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x07e4, code lost:
        r0.setReadable(true, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x07ef, code lost:
        if (r0.isFile() == false) goto L256;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x07f2, code lost:
        r0.setLastModified(java.lang.System.currentTimeMillis());
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x07fe, code lost:
        r0.createNewFile();
     */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0896  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x08b0  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x08e7  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0920  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x093a  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0947  */
    /* JADX WARN: Type inference failed for: r0v509, types: [long] */
    @Override // com.google.android.gms.internal.ads.km0
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo10625h(java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 2442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.nm0.mo10625h(java.lang.String):boolean");
    }

    @Override // com.google.android.gms.internal.ads.km0
    /* renamed from: o */
    public final void mo10618o() {
        this.f27225k = true;
    }
}
