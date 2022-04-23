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
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/http/client/a.class */
public final class a {

    /* renamed from: d  reason: collision with root package name */
    public Set<String> f19760d;
    public Set<String> e;

    /* renamed from: a  reason: collision with root package name */
    protected int f19757a = 2000;

    /* renamed from: b  reason: collision with root package name */
    protected int f19758b = 8000;

    /* renamed from: c  reason: collision with root package name */
    protected String f19759c = "UTF-8";
    private int f = 3;
    private boolean g = false;
    private Map<String, String> h = new TreeMap();

    private static int a(HttpURLConnection httpURLConnection, byte[] bArr) throws Exception {
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
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v54, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r6v55 */
    /* JADX WARN: Type inference failed for: r6v56 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.facebook.biddingkit.http.client.f a(java.lang.String r6, com.facebook.biddingkit.http.client.c r7, java.lang.String r8, byte[] r9) throws com.facebook.biddingkit.http.client.HttpRequestException {
        /*
            Method dump skipped, instructions count: 718
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.biddingkit.http.client.a.a(java.lang.String, com.facebook.biddingkit.http.client.c, java.lang.String, byte[]):com.facebook.biddingkit.http.client.f");
    }

    private static f a(HttpURLConnection httpURLConnection) throws Exception {
        Throwable th;
        InputStream inputStream = null;
        byte[] bArr = null;
        try {
            InputStream inputStream2 = httpURLConnection.getInputStream();
            if (inputStream2 != null) {
                try {
                    bArr = a(inputStream2);
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
            f fVar = new f(httpURLConnection, bArr);
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (Exception e2) {
                }
            }
            return fVar;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static HttpURLConnection a(String str) throws IOException {
        try {
            return (HttpURLConnection) new URL(str).openConnection();
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(str + " is not a valid URL", e);
        }
    }

    private static byte[] a(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[16384];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                byteArrayOutputStream.flush();
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    private int b(int i) {
        return (i <= 1 || i > 20) ? i : b(i - 1) + b(i - 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [long] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.facebook.biddingkit.http.client.f b(com.facebook.biddingkit.http.client.e r7) throws com.facebook.biddingkit.http.client.HttpRequestException {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.biddingkit.http.client.a.b(com.facebook.biddingkit.http.client.e):com.facebook.biddingkit.http.client.f");
    }

    private static f b(HttpURLConnection httpURLConnection) throws Exception {
        Throwable th;
        InputStream inputStream = null;
        byte[] bArr = null;
        try {
            InputStream errorStream = httpURLConnection.getErrorStream();
            if (errorStream != null) {
                try {
                    bArr = a(errorStream);
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
            f fVar = new f(httpURLConnection, bArr);
            if (errorStream != null) {
                try {
                    errorStream.close();
                } catch (Exception e2) {
                }
            }
            return fVar;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final f a(e eVar) {
        f fVar;
        try {
            fVar = b(eVar);
        } catch (HttpRequestException e) {
            Log.e("AndroidHttpClient", "Unable to send request and got a HttpRequestException: ", e);
            fVar = null;
        } catch (Exception e2) {
            Log.e("AndroidHttpClient", "Unable to send request and got a RuntimeException: ", new HttpRequestException(e2, null));
            fVar = null;
        }
        return fVar;
    }

    public final f a(String str, String str2, byte[] bArr) {
        return a(new d(str, null, str2, bArr));
    }

    public final void a(int i) {
        this.f19757a = i;
    }
}
