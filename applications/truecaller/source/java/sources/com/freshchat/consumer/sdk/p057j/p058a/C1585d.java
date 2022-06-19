package com.freshchat.consumer.sdk.p057j.p058a;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.StatFs;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1630aw;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.mopub.common.Constants;
import java.io.File;
import java.io.IOException;
import p1727n3.p1788g.C26180f;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.j.a.d */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/a/d.class */
public class C1585d {

    /* renamed from: rP */
    private static C1579b f4291rP;

    /* renamed from: rQ */
    private static C26180f<String, Bitmap> f4292rQ;

    /* renamed from: rR */
    private static C1586a f4293rR;

    /* renamed from: rU */
    private static C1585d f4296rU;

    /* renamed from: rO */
    private static final Bitmap.CompressFormat f4290rO = Bitmap.CompressFormat.PNG;

    /* renamed from: rS */
    private static final Object f4294rS = new Object();

    /* renamed from: rT */
    private static boolean f4295rT = true;

    /* renamed from: com.freshchat.consumer.sdk.j.a.d$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/a/d$a.class */
    public static class C1586a {

        /* renamed from: rY */
        public File f4299rY;

        /* renamed from: rW */
        public int f4297rW = Constants.TEN_MB;

        /* renamed from: rX */
        public int f4298rX = 20971520;

        /* renamed from: rZ */
        public Bitmap.CompressFormat f4300rZ = C1585d.f4290rO;

        /* renamed from: sa */
        public int f4301sa = 90;

        /* renamed from: sb */
        public boolean f4302sb = true;

        /* renamed from: sc */
        public boolean f4303sc = true;

        /* renamed from: sd */
        public boolean f4304sd = false;

        /* renamed from: se */
        public boolean f4305se = false;

        public C1586a(Context context, String str) {
            this.f4299rY = C1585d.m40419R(context, str);
        }

        /* renamed from: bh */
        private static int m40406bh(Context context) {
            return ((ActivityManager) context.getSystemService("activity")).getMemoryClass();
        }

        /* renamed from: a */
        public void m40407a(Context context, float f) {
            if (f < 0.05f || f > 0.8f) {
                throw new IllegalArgumentException("setMemCacheSizePercent - percent must be between 0.05 and 0.8 (inclusive)");
            }
            this.f4297rW = Math.round(f * m40406bh(context) * 1024.0f * 1024.0f);
        }
    }

    public C1585d(C1586a c1586a) {
        m40415b(c1586a);
    }

    /* renamed from: R */
    public static File m40419R(Context context, String str) {
        File file = new File(C22128a.m8618h(C22128a.m8728C(context.getCacheDir().getPath()), File.separator, str));
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* renamed from: a */
    public static C1585d m40418a(C1586a c1586a) {
        C1585d c1585d;
        synchronized (C1585d.class) {
            try {
                if (f4296rU == null) {
                    f4296rU = new C1585d(c1586a);
                }
                c1585d = f4296rU;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1585d;
    }

    /* renamed from: b */
    public static int m40416b(Bitmap bitmap) {
        return bitmap.getHeight() * bitmap.getRowBytes();
    }

    /* renamed from: b */
    private void m40415b(C1586a c1586a) {
        f4293rR = c1586a;
        if (c1586a.f4302sb) {
            StringBuilder m8728C = C22128a.m8728C("Memory cache created (size = ");
            m8728C.append(f4293rR.f4297rW);
            m8728C.append(")");
            C1613ai.m40284d("ImageCache", m8728C.toString());
            f4292rQ = new C1592g(this, f4293rR.f4297rW);
        }
        if (c1586a.f4305se) {
            m40410jX();
        }
    }

    /* renamed from: bJ */
    public static String m40412bJ(String str) {
        return C1594aa.m40357aA(str);
    }

    /* renamed from: c */
    public static long m40411c(File file) {
        if (C1630aw.m40205eR()) {
            return file.getUsableSpace();
        }
        StatFs statFs = new StatFs(file.getPath());
        return statFs.getBlockSize() * statFs.getAvailableBlocks();
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0114, code lost:
        if (0 == 0) goto L47;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m40417a(java.lang.String r6, android.graphics.Bitmap r7) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p057j.p058a.C1585d.m40417a(java.lang.String, android.graphics.Bitmap):void");
    }

    /* renamed from: bH */
    public Bitmap m40414bH(String str) {
        Bitmap bitmap;
        C26180f<String, Bitmap> c26180f = f4292rQ;
        if (c26180f == null || (bitmap = c26180f.get(str)) == null) {
            return null;
        }
        C1613ai.m40284d("ImageCache", "Memory cache hit");
        return bitmap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x007b, code lost:
        if (r4 == null) goto L41;
     */
    /* renamed from: bI */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap m40413bI(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r0 = m40412bJ(r0)
            r4 = r0
            java.lang.Object r0 = com.freshchat.consumer.sdk.p057j.p058a.C1585d.f4294rS
            r5 = r0
            r0 = r5
            monitor-enter(r0)
        Lb:
            boolean r0 = com.freshchat.consumer.sdk.p057j.p058a.C1585d.f4295rT     // Catch: java.lang.Throwable -> L92
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L1c
            java.lang.Object r0 = com.freshchat.consumer.sdk.p057j.p058a.C1585d.f4294rS     // Catch: java.lang.Throwable -> L92 java.lang.InterruptedException -> L97
            r0.wait()     // Catch: java.lang.Throwable -> L92 java.lang.InterruptedException -> L97
            goto Lb
        L1c:
            com.freshchat.consumer.sdk.j.a.b r0 = com.freshchat.consumer.sdk.p057j.p058a.C1585d.f4291rP     // Catch: java.lang.Throwable -> L92
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L8e
            r0 = r7
            r1 = r4
            com.freshchat.consumer.sdk.j.a.b$c r0 = r0.m40451bE(r1)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6e
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L58
            r0 = r4
            r1 = 0
            java.io.InputStream r0 = r0.m40421ad(r1)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6e
            r4 = r0
            r0 = r4
            r8 = r0
            r0 = r4
            if (r0 == 0) goto L5b
            r0 = r4
            r8 = r0
            r0 = r4
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeStream(r0)     // Catch: java.io.IOException -> L53 java.lang.Throwable -> L81
            r7 = r0
            r0 = r4
            r0.close()     // Catch: java.lang.Throwable -> L92 java.io.IOException -> L9c
        L4e:
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L92
            r0 = r7
            return r0
        L53:
            r7 = move-exception
            goto L72
        L58:
            r0 = 0
            r8 = r0
        L5b:
            r0 = r8
            if (r0 == 0) goto L8e
            r0 = r8
            r4 = r0
        L63:
            r0 = r4
            r0.close()     // Catch: java.lang.Throwable -> L92 java.io.IOException -> La0
            goto L8e
        L6a:
            r4 = move-exception
            goto L82
        L6e:
            r7 = move-exception
            r0 = 0
            r4 = r0
        L72:
            r0 = r4
            r8 = r0
            r0 = r7
            com.freshchat.consumer.sdk.p057j.C1723q.m39823a(r0)     // Catch: java.lang.Throwable -> L81
            r0 = r4
            if (r0 == 0) goto L8e
            goto L63
        L81:
            r4 = move-exception
        L82:
            r0 = r8
            if (r0 == 0) goto L8c
            r0 = r8
            r0.close()     // Catch: java.lang.Throwable -> L92 java.io.IOException -> La4
        L8c:
            r0 = r4
            throw r0     // Catch: java.lang.Throwable -> L92
        L8e:
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L92
            r0 = 0
            return r0
        L92:
            r4 = move-exception
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L92
            r0 = r4
            throw r0
        L97:
            r8 = move-exception
            goto Lb
        L9c:
            r4 = move-exception
            goto L4e
        La0:
            r4 = move-exception
            goto L8e
        La4:
            r8 = move-exception
            goto L8c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p057j.p058a.C1585d.m40413bI(java.lang.String):android.graphics.Bitmap");
    }

    public void clearCache() {
        m40409jY();
        synchronized (f4294rS) {
            f4295rT = true;
            C1579b c1579b = f4291rP;
            if (c1579b != null && !c1579b.isClosed()) {
                try {
                    f4291rP.delete();
                    C1613ai.m40284d("ImageCache", "Disk cache cleared");
                } catch (IOException e) {
                    C1723q.m39823a(e);
                }
                f4291rP = null;
                m40410jX();
            }
        }
    }

    public void close() {
        synchronized (f4294rS) {
            C1579b c1579b = f4291rP;
            if (c1579b != null) {
                try {
                    if (!c1579b.isClosed()) {
                        f4291rP.close();
                        f4291rP = null;
                        C1613ai.m40284d("ImageCache", "Disk cache closed");
                    }
                } catch (IOException e) {
                    C1723q.m39823a(e);
                }
            }
        }
    }

    public void flush() {
        synchronized (f4294rS) {
            C1579b c1579b = f4291rP;
            if (c1579b != null) {
                try {
                    c1579b.flush();
                    C1613ai.m40284d("ImageCache", "Disk cache flushed");
                } catch (IOException e) {
                    C1723q.m39823a(e);
                }
            }
        }
    }

    /* renamed from: jX */
    public void m40410jX() {
        synchronized (f4294rS) {
            C1579b c1579b = f4291rP;
            if (c1579b == null || c1579b.isClosed()) {
                C1586a c1586a = f4293rR;
                File file = c1586a.f4299rY;
                if (c1586a.f4303sc && file != null) {
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    long m40411c = m40411c(file);
                    int i = f4293rR.f4298rX;
                    if (m40411c > i) {
                        try {
                            f4291rP = C1579b.m40456a(file, 1, 1, i);
                            C1613ai.m40284d("ImageCache", "Disk cache initialized");
                        } catch (IOException e) {
                            f4293rR.f4299rY = null;
                            C1723q.m39823a(e);
                        }
                    }
                }
            }
            f4295rT = false;
            f4294rS.notifyAll();
        }
    }

    /* renamed from: jY */
    public void m40409jY() {
        C26180f<String, Bitmap> c26180f = f4292rQ;
        if (c26180f != null) {
            c26180f.evictAll();
            C1613ai.m40284d("ImageCache", "Memory cache cleared");
        }
    }
}
