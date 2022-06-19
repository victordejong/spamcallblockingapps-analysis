package com.facebook.biddingkit.http.client;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
/* renamed from: com.facebook.biddingkit.http.client.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/http/client/a.class */
public final class C10157a {

    /* renamed from: d */
    public Set<String> f33572d;

    /* renamed from: e */
    public Set<String> f33573e;

    /* renamed from: a */
    protected int f33569a = 2000;

    /* renamed from: b */
    protected int f33570b = 8000;

    /* renamed from: c */
    protected String f33571c = "UTF-8";

    /* renamed from: f */
    private int f33574f = 3;

    /* renamed from: g */
    private boolean f33575g = false;

    /* renamed from: h */
    private Map<String, String> f33576h = new TreeMap();

    /* renamed from: a */
    private static int m23327a(HttpURLConnection httpURLConnection, byte[] bArr) throws Exception {
        OutputStream outputStream;
        Throwable th;
        try {
            OutputStream outputStream2 = httpURLConnection.getOutputStream();
            if (outputStream2 != null) {
                try {
                    outputStream2.write(bArr);
                } catch (Throwable th2) {
                    th = th2;
                    outputStream = outputStream2;
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (Exception e) {
                        }
                    }
                    throw th;
                }
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (outputStream2 != null) {
                try {
                    outputStream2.close();
                } catch (Exception e2) {
                }
            }
            return responseCode;
        } catch (Throwable th3) {
            th = th3;
            outputStream = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:168:0x02c8  */
    /* JADX WARN: Type inference failed for: r0v165, types: [java.net.HttpURLConnection] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.facebook.biddingkit.http.client.C10162f m23330a(java.lang.String r6, com.facebook.biddingkit.http.client.EnumC10159c r7, java.lang.String r8, byte[] r9) throws com.facebook.biddingkit.http.client.HttpRequestException {
        /*
            Method dump skipped, instructions count: 718
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.biddingkit.http.client.C10157a.m23330a(java.lang.String, com.facebook.biddingkit.http.client.c, java.lang.String, byte[]):com.facebook.biddingkit.http.client.f");
    }

    /* renamed from: a */
    private static C10162f m23328a(HttpURLConnection httpURLConnection) throws Exception {
        Throwable th;
        InputStream inputStream = null;
        try {
            InputStream inputStream2 = httpURLConnection.getInputStream();
            byte[] bArr = null;
            if (inputStream2 != null) {
                try {
                    bArr = m23332a(inputStream2);
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = inputStream2;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Exception e) {
                        }
                    }
                    throw th;
                }
            }
            C10162f c10162f = new C10162f(httpURLConnection, bArr);
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (Exception e2) {
                }
            }
            return c10162f;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: a */
    private static HttpURLConnection m23331a(String str) throws IOException {
        try {
            return (HttpURLConnection) new URL(str).openConnection();
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(str + " is not a valid URL", e);
        }
    }

    /* renamed from: a */
    private static byte[] m23332a(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[16384];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                byteArrayOutputStream.flush();
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    /* renamed from: b */
    private int m23326b(int i) {
        return (i <= 1 || i > 20) ? i : m23326b(i - 1) + m23326b(i - 2);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* renamed from: b */
    private C10162f m23325b(AbstractC10161e abstractC10161e) throws HttpRequestException {
        C10162f c10162f;
        boolean z;
        C10162f m23330a;
        boolean currentTimeMillis = System.currentTimeMillis();
        C10162f c10162f2 = null;
        int i = 0;
        while (i < this.f33574f) {
            boolean z2 = currentTimeMillis;
            try {
                this.f33569a = m23326b(i + 2) * 1000;
                boolean z3 = currentTimeMillis;
                z = System.currentTimeMillis();
                m23330a = m23330a(abstractC10161e.m23323a(), abstractC10161e.m23321b(), abstractC10161e.m23320c(), abstractC10161e.m23319d());
                c10162f = m23330a;
            } catch (HttpRequestException e) {
                long currentTimeMillis2 = (System.currentTimeMillis() - (z2 ? 1L : 0L)) + 10;
                if (!this.f33575g ? currentTimeMillis2 >= ((long) this.f33569a) : currentTimeMillis2 >= ((long) this.f33570b)) {
                    z = z2 ? 1 : 0;
                    c10162f = c10162f2;
                    if (i < this.f33574f - 1) {
                        continue;
                    }
                }
                C10162f c10162f3 = e.f33568a;
                if (!(c10162f3 != null && c10162f3.f33581a > 0) || i >= this.f33574f - 1) {
                    Log.e("AndroidHttpClient", "Unable to send request: ", e);
                    break;
                }
                try {
                    Thread.sleep(this.f33569a);
                    c10162f = c10162f2;
                    z = z2;
                } catch (InterruptedException e2) {
                    Log.e("AndroidHttpClient", "App is stopping: ", e2);
                }
            }
            if (m23330a != null) {
                return m23330a;
            }
            i++;
            c10162f2 = c10162f;
            currentTimeMillis = z;
        }
        return c10162f2;
    }

    /* renamed from: b */
    private static C10162f m23324b(HttpURLConnection httpURLConnection) throws Exception {
        Throwable th;
        InputStream inputStream = null;
        try {
            InputStream errorStream = httpURLConnection.getErrorStream();
            byte[] bArr = null;
            if (errorStream != null) {
                try {
                    bArr = m23332a(errorStream);
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = errorStream;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Exception e) {
                        }
                    }
                    throw th;
                }
            }
            C10162f c10162f = new C10162f(httpURLConnection, bArr);
            if (errorStream != null) {
                try {
                    errorStream.close();
                } catch (Exception e2) {
                }
            }
            return c10162f;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: a */
    public final C10162f m23333a(AbstractC10161e abstractC10161e) {
        C10162f c10162f;
        try {
            c10162f = m23325b(abstractC10161e);
        } catch (HttpRequestException e) {
            Log.e("AndroidHttpClient", "Unable to send request and got a HttpRequestException: ", e);
            c10162f = null;
        } catch (Exception e2) {
            Log.e("AndroidHttpClient", "Unable to send request and got a RuntimeException: ", new HttpRequestException(e2, null));
            c10162f = null;
        }
        return c10162f;
    }

    /* renamed from: a */
    public final C10162f m23329a(String str, String str2, byte[] bArr) {
        return m23333a(new C10160d(str, null, str2, bArr));
    }

    /* renamed from: a */
    public final void m23334a(int i) {
        this.f33569a = i;
    }
}
