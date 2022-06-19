package p193e.p194a.p1075n3.p1076a;

import android.content.Context;
import com.tenor.android.core.constant.StringConstant;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.zip.GZIPOutputStream;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.n3.a.d */
/* loaded from: classes8-dex2jar.jar:e/a/n3/a/d.class */
public class C18481d {

    /* renamed from: a */
    public final BlockingQueue<String> f52172a = new LinkedBlockingQueue();

    /* renamed from: b */
    public String f52173b;

    /* renamed from: c */
    public long f52174c;

    /* renamed from: d */
    public int f52175d;

    /* renamed from: e */
    public Thread f52176e;

    /* renamed from: e.a.n3.a.d$b */
    /* loaded from: classes8-dex2jar.jar:e/a/n3/a/d$b.class */
    public class RunnableC18483b implements Runnable {
        public RunnableC18483b(C18482a c18482a) {
            C18481d.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (true) {
                try {
                    C18481d.m14871a(C18481d.this, C18481d.this.f52172a.take());
                } catch (InterruptedException e) {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x007c A[Catch: all -> 0x0091, TryCatch #2 {, blocks: (B:4:0x0002, B:12:0x0038, B:23:0x006a, B:25:0x0071, B:27:0x007c, B:33:0x0088, B:35:0x0090), top: B:44:0x0002 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m14871a(p193e.p194a.p1075n3.p1076a.C18481d r5, java.lang.String r6) {
        /*
            r0 = r5
            monitor-enter(r0)
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L91
            r7 = r0
            r0 = r7
            r1 = r5
            java.lang.String r1 = r1.f52173b     // Catch: java.lang.Throwable -> L91
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L91
            r0 = 0
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r9
            r10 = r0
            java.io.FileWriter r0 = new java.io.FileWriter     // Catch: java.lang.Throwable -> L54 java.io.IOException -> L58
            r11 = r0
            r0 = r9
            r10 = r0
            r0 = r11
            r1 = r7
            r2 = 1
            r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> L54 java.io.IOException -> L58
            r0 = r11
            r1 = r6
            java.io.Writer r0 = r0.append(r1)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L48
            r0 = r11
            java.lang.String r1 = "\n"
            java.io.Writer r0 = r0.append(r1)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L48
            r0 = r11
            r0.close()     // Catch: java.lang.Throwable -> L91 java.io.IOException -> L96
            goto L70
        L40:
            r6 = move-exception
            r0 = r11
            r10 = r0
            goto L83
        L48:
            r10 = move-exception
            r0 = r11
            r6 = r0
            r0 = r10
            r11 = r0
            goto L5c
        L54:
            r6 = move-exception
            goto L83
        L58:
            r11 = move-exception
            r0 = r8
            r6 = r0
        L5c:
            r0 = r6
            r10 = r0
            r0 = r11
            java.lang.String r1 = "Could not write log"
            p193e.p194a.p437c.p578p.C10480a.m26057J1(r0, r1)     // Catch: java.lang.Throwable -> L54
            r0 = r6
            if (r0 == 0) goto L70
            r0 = r6
            r0.close()     // Catch: java.lang.Throwable -> L91 java.io.IOException -> L96
        L70:
            r0 = r7
            long r0 = r0.length()     // Catch: java.lang.Throwable -> L91
            r1 = r5
            long r1 = r1.f52174c     // Catch: java.lang.Throwable -> L91
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L80
            r0 = r5
            r0.m14867e()     // Catch: java.lang.Throwable -> L91
        L80:
            r0 = r5
            monitor-exit(r0)
            return
        L83:
            r0 = r10
            if (r0 == 0) goto L8f
            r0 = r10
            r0.close()     // Catch: java.lang.Throwable -> L91 java.io.IOException -> L9a
        L8f:
            r0 = r6
            throw r0     // Catch: java.lang.Throwable -> L91
        L91:
            r6 = move-exception
            r0 = r5
            monitor-exit(r0)
            r0 = r6
            throw r0
        L96:
            r6 = move-exception
            goto L70
        L9a:
            r10 = move-exception
            goto L8f
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1075n3.p1076a.C18481d.m14871a(e.a.n3.a.d, java.lang.String):void");
    }

    /* renamed from: b */
    public byte[] m14870b() throws IOException {
        int i;
        FileInputStream fileInputStream;
        Throwable th;
        int i2 = -1;
        while (true) {
            i = i2;
            int i3 = i + 1;
            if (!m14869c(i3).exists()) {
                break;
            }
            i2 = i3;
        }
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        while (i >= 0) {
            try {
                try {
                    fileInputStream = new FileInputStream(m14869c(i));
                    while (true) {
                        try {
                            int read = fileInputStream.read(bArr);
                            if (read >= 0) {
                                gZIPOutputStream.write(bArr, 0, read);
                            } else {
                                try {
                                    break;
                                } catch (IOException e) {
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e2) {
                                }
                            }
                            throw th;
                        }
                    }
                    fileInputStream.close();
                    i--;
                } catch (Throwable th3) {
                    th = th3;
                    fileInputStream = null;
                }
            } catch (Throwable th4) {
                try {
                    gZIPOutputStream.close();
                } catch (IOException e3) {
                }
                throw th4;
            }
        }
        try {
            gZIPOutputStream.close();
        } catch (IOException e4) {
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: c */
    public final File m14869c(int i) {
        return new File(i == 0 ? this.f52173b : C22128a.m8614i(new StringBuilder(), this.f52173b, StringConstant.DOT, i));
    }

    /* renamed from: d */
    public void m14868d(Context context, String str, long j, int i) {
        synchronized (this) {
            if (this.f52176e == null) {
                File file = new File(context.getFilesDir(), "logs");
                file.mkdirs();
                this.f52173b = new File(file, str).getAbsolutePath();
                this.f52174c = j;
                this.f52175d = i;
                Thread thread = new Thread(new RunnableC18483b(null));
                this.f52176e = thread;
                thread.start();
            }
        }
    }

    /* renamed from: e */
    public final void m14867e() {
        int i;
        synchronized (this) {
            int i2 = 0;
            while (true) {
                i = i2;
                int i3 = i + 1;
                if (m14869c(i3).exists()) {
                    i2 = i3;
                }
            }
            while (i > 0) {
                File m14869c = m14869c(i);
                if (i >= this.f52175d) {
                    m14869c.delete();
                } else {
                    m14869c.renameTo(m14869c(i + 1));
                }
                i--;
            }
            new File(this.f52173b).renameTo(m14869c(1));
        }
    }
}
