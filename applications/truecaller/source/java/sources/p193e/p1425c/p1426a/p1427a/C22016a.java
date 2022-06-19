package p193e.p1425c.p1426a.p1427a;

import android.content.Context;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.net.URL;
import java.util.Objects;
import javax.net.ssl.HttpsURLConnection;
import p193e.p1425c.p1426a.p1427a.C22016a;
import p193e.p1425c.p1426a.p1427a.p1428b.C22017a;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22018b;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22019c;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
/* renamed from: e.c.a.a.a */
/* loaded from: classes-dex2jar.jar:e/c/a/a/a.class */
public class C22016a {

    /* renamed from: a */
    public static Context f61211a;

    /* renamed from: b */
    public static boolean f61212b = false;

    /* renamed from: c */
    public static String f61213c;

    /* renamed from: d */
    public static String f61214d;

    /* renamed from: a */
    public static void m8829a(EnumC22018b enumC22018b, EnumC22019c enumC22019c, String str, Exception exc) {
        try {
            Context context = f61211a;
            if (!(context != null && f61212b)) {
                return;
            }
            C22017a c22017a = new C22017a(context, enumC22018b, enumC22019c.name());
            c22017a.m8826a(exc);
            if (str != null) {
                c22017a.f61224j = str;
            }
            m8828b(c22017a);
        } catch (RuntimeException e) {
        }
    }

    /* renamed from: b */
    public static void m8828b(final C22017a c22017a) {
        EnumC22018b enumC22018b = c22017a.f61218d;
        EnumC22018b enumC22018b2 = EnumC22018b.FATAL;
        if (enumC22018b == enumC22018b2) {
            Context context = f61211a;
            if (C22021b.f61238d == null) {
                C22021b.f61238d = new C22021b(context);
            }
            final C22021b c22021b = C22021b.f61238d;
            Objects.requireNonNull(c22021b);
            if (c22017a.f61218d != enumC22018b2) {
                return;
            }
            Runnable runnable = new Runnable() { // from class: e.c.a.a.c.a
                @Override // java.lang.Runnable
                public final void run() {
                    HttpsURLConnection httpsURLConnection;
                    BufferedInputStream bufferedInputStream;
                    BufferedOutputStream bufferedOutputStream;
                    HttpsURLConnection httpsURLConnection2;
                    BufferedInputStream bufferedInputStream2;
                    BufferedOutputStream bufferedOutputStream2;
                    Throwable th;
                    HttpsURLConnection httpsURLConnection3;
                    C22021b c22021b2 = C22021b.this;
                    C22017a c22017a2 = c22017a;
                    Objects.requireNonNull(c22021b2);
                    try {
                        httpsURLConnection3 = (HttpsURLConnection) new URL(C22016a.f61214d).openConnection();
                        try {
                        } catch (IOException | RuntimeException e) {
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedInputStream2 = null;
                            httpsURLConnection2 = httpsURLConnection3;
                            bufferedOutputStream2 = null;
                        }
                    } catch (IOException | RuntimeException e2) {
                        httpsURLConnection = null;
                        bufferedOutputStream = null;
                        bufferedInputStream = null;
                    } catch (Throwable th3) {
                        th = th3;
                        httpsURLConnection2 = null;
                        bufferedOutputStream2 = null;
                        bufferedInputStream2 = null;
                    }
                    if (c22021b2.m8823b(httpsURLConnection3)) {
                        BufferedOutputStream bufferedOutputStream3 = new BufferedOutputStream(httpsURLConnection3.getOutputStream());
                        try {
                            bufferedOutputStream3.write(c22017a2.m8825b().getBytes());
                            bufferedOutputStream3.flush();
                            bufferedInputStream = null;
                            httpsURLConnection = httpsURLConnection3;
                            bufferedOutputStream = bufferedOutputStream3;
                            if (httpsURLConnection3.getResponseCode() == 200) {
                                byte[] bArr = new byte[1024];
                                BufferedInputStream bufferedInputStream3 = new BufferedInputStream(httpsURLConnection3.getInputStream());
                                try {
                                    bufferedInputStream3.read(bArr);
                                    new String(bArr);
                                    c22021b2.m8824a(bufferedInputStream3, bufferedOutputStream3, httpsURLConnection3);
                                    return;
                                } catch (IOException | RuntimeException e3) {
                                    bufferedInputStream = bufferedInputStream3;
                                    httpsURLConnection = httpsURLConnection3;
                                    bufferedOutputStream = bufferedOutputStream3;
                                } catch (Throwable th4) {
                                    bufferedInputStream2 = bufferedInputStream3;
                                    th = th4;
                                    httpsURLConnection2 = httpsURLConnection3;
                                    bufferedOutputStream2 = bufferedOutputStream3;
                                    c22021b2.m8824a(bufferedInputStream2, bufferedOutputStream2, httpsURLConnection2);
                                    throw th;
                                }
                            }
                        } catch (IOException | RuntimeException e4) {
                            bufferedInputStream = null;
                            httpsURLConnection = httpsURLConnection3;
                            bufferedOutputStream = bufferedOutputStream3;
                        } catch (Throwable th5) {
                            th = th5;
                            bufferedInputStream2 = null;
                            httpsURLConnection2 = httpsURLConnection3;
                            bufferedOutputStream2 = bufferedOutputStream3;
                        }
                        c22021b2.m8824a(bufferedInputStream, bufferedOutputStream, httpsURLConnection);
                    }
                    bufferedOutputStream = null;
                    bufferedInputStream = null;
                    httpsURLConnection = httpsURLConnection3;
                    c22021b2.m8824a(bufferedInputStream, bufferedOutputStream, httpsURLConnection);
                }
            };
            synchronized (c22021b) {
                try {
                    if (!c22021b.f61239a) {
                        c22021b.f61240b.execute(runnable);
                    }
                } catch (InternalError e) {
                    e.getLocalizedMessage().contains("shutdown");
                } catch (RuntimeException e2) {
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000b, code lost:
        if (r3 > 100) goto L6;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m8827c(int r3) {
        /*
            r0 = 1
            r4 = r0
            r0 = r3
            if (r0 < 0) goto Le
            r0 = r3
            r5 = r0
            r0 = r3
            r1 = 100
            if (r0 <= r1) goto L10
        Le:
            r0 = 1
            r5 = r0
        L10:
            java.util.Random r0 = new java.util.Random     // Catch: java.lang.RuntimeException -> L2e
            r6 = r0
            r0 = r6
            r0.<init>()     // Catch: java.lang.RuntimeException -> L2e
            r0 = r6
            r1 = 100
            int r0 = r0.nextInt(r1)     // Catch: java.lang.RuntimeException -> L2e
            r1 = 1
            int r0 = r0 + r1
            r1 = r5
            if (r0 > r1) goto L27
            goto L29
        L27:
            r0 = 0
            r4 = r0
        L29:
            r0 = r4
            p193e.p1425c.p1426a.p1427a.C22016a.f61212b = r0     // Catch: java.lang.RuntimeException -> L2e
        L2d:
            return
        L2e:
            r6 = move-exception
            goto L2d
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1425c.p1426a.p1427a.C22016a.m8827c(int):void");
    }
}
