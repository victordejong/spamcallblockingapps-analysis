package com.freshchat.consumer.sdk.p057j.p058a;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.p047b.C1471i;
import com.freshchat.consumer.sdk.p057j.C1608ad;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p057j.p058a.C1579b;
import com.tenor.android.core.network.constant.Protocols;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
/* renamed from: com.freshchat.consumer.sdk.j.a.h */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/a/h.class */
public class C1593h extends C1587e {

    /* renamed from: sf */
    private static C1579b f4322sf;

    /* renamed from: sg */
    private static File f4323sg;

    /* renamed from: sh */
    private static boolean f4324sh = true;

    /* renamed from: si */
    private static final Object f4325si = new Object();

    /* renamed from: sj */
    private static C1593h f4326sj;

    public C1593h(Context context, int i) {
        super(context, i);
        if (f4326sj == null) {
            synchronized (C1593h.class) {
                try {
                    if (f4326sj == null) {
                        f4326sj = this;
                        m40374d(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* renamed from: bK */
    private Bitmap m40376bK(String str) {
        Bitmap bitmap;
        Throwable th;
        IOException e;
        Closeable closeable;
        IllegalStateException e2;
        Closeable closeable2;
        Closeable closeable3;
        Bitmap bitmap2;
        C1613ai.m40284d("ImageFetcher", "processBitmap - " + ((String) str));
        String m40412bJ = C1585d.m40412bJ(str);
        synchronized (f4325si) {
            while (f4324sh) {
                try {
                    f4325si.wait();
                } catch (InterruptedException e3) {
                }
            }
            C1579b c1579b = f4322sf;
            bitmap = null;
            try {
                if (c1579b != null) {
                    try {
                        C1579b.C1583c m40451bE = c1579b.m40451bE(m40412bJ);
                        C1579b.C1583c c1583c = m40451bE;
                        if (m40451bE == null) {
                            C1613ai.m40284d("ImageFetcher", "processBitmap, not found in http cache, downloading...");
                            C1579b.C1580a m40450bF = f4322sf.m40450bF(m40412bJ);
                            if (m40450bF != null) {
                                if (m40377a((String) str, m40450bF.m40436x(0))) {
                                    m40450bF.commit();
                                } else {
                                    m40450bF.abort();
                                }
                            }
                            c1583c = f4322sf.m40451bE(m40412bJ);
                        }
                        if (c1583c != null) {
                            str = (FileInputStream) c1583c.m40421ad(0);
                            try {
                                FileDescriptor fd = str.getFD();
                                Bitmap bitmap3 = null;
                                if (fd != null) {
                                    bitmap3 = C1587e.m40401a(fd, this.f4306ka, this.f4307kb);
                                }
                                closeable3 = str;
                                bitmap2 = bitmap3;
                            } catch (IOException e4) {
                                e = e4;
                                closeable = str;
                                str = closeable;
                                C1723q.m39823a(e);
                                C1608ad.m40316a(closeable);
                                bitmap = null;
                                return bitmap;
                            } catch (IllegalStateException e5) {
                                e2 = e5;
                                closeable2 = str;
                                str = closeable2;
                                C1723q.m39823a(e2);
                                C1608ad.m40316a(closeable2);
                                bitmap = null;
                                return bitmap;
                            } catch (Throwable th2) {
                                th = th2;
                                C1608ad.m40316a(str);
                                throw th;
                            }
                        } else {
                            bitmap2 = null;
                            closeable3 = null;
                        }
                        C1608ad.m40316a(closeable3);
                        bitmap = bitmap2;
                    } catch (IOException e6) {
                        e = e6;
                        closeable = null;
                    } catch (IllegalStateException e7) {
                        e2 = e7;
                        closeable2 = null;
                    } catch (Throwable th3) {
                        th = th3;
                        str = 0;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
        return bitmap;
    }

    /* renamed from: bi */
    private void m40375bi(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
            C1471i.m40855a(context, C1298R.string.freshchat_error_message_not_connected_to_internet);
        }
    }

    /* renamed from: d */
    private void m40374d(Context context) {
        m40375bi(context);
        f4323sg = C1585d.m40419R(context, Protocols.HTTP);
    }

    /* renamed from: ka */
    private void m40368ka() {
        synchronized (f4325si) {
            C1579b c1579b = f4322sf;
            if ((c1579b == null || c1579b.isClosed()) && C1585d.m40411c(f4323sg) > 10485760) {
                try {
                    f4322sf = C1579b.m40456a(f4323sg, 1, 1, 10485760L);
                    C1613ai.m40284d("ImageFetcher", "HTTP cache initialized");
                } catch (IOException e) {
                    f4322sf = null;
                }
            }
            f4324sh = false;
            f4325si.notifyAll();
        }
    }

    /* renamed from: kb */
    public static void m40367kb() {
    }

    /* renamed from: a */
    public boolean m40377a(String str, OutputStream outputStream) {
        HttpURLConnection httpURLConnection;
        BufferedOutputStream bufferedOutputStream;
        BufferedInputStream bufferedInputStream;
        IOException e;
        BufferedOutputStream bufferedOutputStream2;
        BufferedInputStream bufferedInputStream2;
        if (C1626as.isEmpty(str)) {
            return false;
        }
        m40367kb();
        try {
            httpURLConnection = new URL(str).openConnection();
            try {
                bufferedInputStream2 = new BufferedInputStream(httpURLConnection.getInputStream(), 8192);
                try {
                    BufferedOutputStream bufferedOutputStream3 = new BufferedOutputStream(outputStream, 8192);
                    while (true) {
                        try {
                            int read = bufferedInputStream2.read();
                            if (read == -1) {
                                break;
                            }
                            bufferedOutputStream3.write(read);
                        } catch (IOException e2) {
                            e = e2;
                            bufferedInputStream = bufferedInputStream2;
                            bufferedOutputStream = bufferedOutputStream3;
                            try {
                                C1613ai.m40284d("FRESHCHAT", "Failed to load URL " + str);
                                C1723q.m39823a(e);
                                if (httpURLConnection != null && (httpURLConnection instanceof HttpURLConnection)) {
                                    httpURLConnection.disconnect();
                                }
                                C1608ad.m40316a(bufferedInputStream, bufferedOutputStream);
                                return false;
                            } catch (Throwable th) {
                                th = th;
                                bufferedOutputStream2 = bufferedOutputStream;
                                bufferedInputStream2 = bufferedInputStream;
                                if (httpURLConnection != null && (httpURLConnection instanceof HttpURLConnection)) {
                                    httpURLConnection.disconnect();
                                }
                                C1608ad.m40316a(bufferedInputStream2, bufferedOutputStream2);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedOutputStream2 = bufferedOutputStream3;
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            C1608ad.m40316a(bufferedInputStream2, bufferedOutputStream2);
                            throw th;
                        }
                    }
                    if (httpURLConnection instanceof HttpURLConnection) {
                        ((HttpURLConnection) httpURLConnection).disconnect();
                    }
                    C1608ad.m40316a(bufferedInputStream2, bufferedOutputStream3);
                    return true;
                } catch (IOException e3) {
                    e = e3;
                    bufferedInputStream = bufferedInputStream2;
                    bufferedOutputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    bufferedOutputStream2 = null;
                }
            } catch (IOException e4) {
                e = e4;
                bufferedInputStream = null;
                bufferedOutputStream = null;
            } catch (Throwable th4) {
                th = th4;
                bufferedInputStream2 = null;
                bufferedOutputStream2 = null;
            }
        } catch (IOException e5) {
            e = e5;
            bufferedInputStream = null;
            bufferedOutputStream = null;
            httpURLConnection = null;
        } catch (Throwable th5) {
            th = th5;
            bufferedInputStream2 = null;
            bufferedOutputStream2 = null;
            httpURLConnection = null;
        }
    }

    @Override // com.freshchat.consumer.sdk.p057j.p058a.C1587e, com.freshchat.consumer.sdk.p057j.p058a.AbstractC1588f
    /* renamed from: d */
    public Bitmap mo40373d(Object obj) {
        return m40376bK(String.valueOf(obj));
    }

    @Override // com.freshchat.consumer.sdk.p057j.p058a.AbstractC1588f
    /* renamed from: fp */
    public void mo40372fp() {
        super.mo40372fp();
        m40368ka();
    }

    @Override // com.freshchat.consumer.sdk.p057j.p058a.AbstractC1588f
    /* renamed from: fr */
    public void mo40371fr() {
        super.mo40371fr();
        synchronized (f4325si) {
            C1579b c1579b = f4322sf;
            if (c1579b != null && !c1579b.isClosed()) {
                try {
                    f4322sf.delete();
                    C1613ai.m40284d("ImageFetcher", "HTTP cache cleared");
                } catch (IOException e) {
                    C1723q.m39823a(e);
                }
                f4322sf = null;
                f4324sh = true;
                m40368ka();
            }
        }
    }

    @Override // com.freshchat.consumer.sdk.p057j.p058a.AbstractC1588f
    /* renamed from: fs */
    public void mo40370fs() {
        super.mo40370fs();
        synchronized (f4325si) {
            C1579b c1579b = f4322sf;
            if (c1579b != null) {
                try {
                    c1579b.flush();
                    C1613ai.m40284d("ImageFetcher", "HTTP cache flushed");
                } catch (IOException e) {
                    C1723q.m39823a(e);
                }
            }
        }
    }

    @Override // com.freshchat.consumer.sdk.p057j.p058a.AbstractC1588f
    /* renamed from: ft */
    public void mo40369ft() {
        super.mo40369ft();
        synchronized (f4325si) {
            C1579b c1579b = f4322sf;
            if (c1579b != null) {
                try {
                    if (!c1579b.isClosed()) {
                        f4322sf.close();
                        f4322sf = null;
                        C1613ai.m40284d("ImageFetcher", "HTTP cache closed");
                    }
                } catch (IOException e) {
                    C1723q.m39823a(e);
                }
            }
        }
    }
}
