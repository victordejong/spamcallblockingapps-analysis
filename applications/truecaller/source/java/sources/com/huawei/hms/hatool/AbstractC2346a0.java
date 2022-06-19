package com.huawei.hms.hatool;

import android.text.TextUtils;
import com.amazon.device.ads.MraidCloseCommand;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.Map;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
/* renamed from: com.huawei.hms.hatool.a0 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/a0.class */
public abstract class AbstractC2346a0 {

    /* renamed from: com.huawei.hms.hatool.a0$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/a0$a.class */
    public static class C2347a extends Exception {
        public C2347a(String str) {
            super(str);
        }
    }

    /* renamed from: a */
    public static C2350b0 m37809a(String str, byte[] bArr, Map<String, String> map) {
        return m37808a(str, bArr, map, "POST");
    }

    /* renamed from: a */
    public static C2350b0 m37808a(String str, byte[] bArr, Map<String, String> map, String str2) {
        HttpURLConnection httpURLConnection;
        OutputStream outputStream;
        Throwable th;
        OutputStream outputStream2;
        BufferedOutputStream bufferedOutputStream;
        HttpURLConnection httpURLConnection2;
        BufferedOutputStream bufferedOutputStream2;
        BufferedOutputStream bufferedOutputStream3;
        BufferedOutputStream bufferedOutputStream4;
        BufferedOutputStream bufferedOutputStream5;
        BufferedOutputStream bufferedOutputStream6;
        BufferedOutputStream bufferedOutputStream7;
        int responseCode;
        if (TextUtils.isEmpty(str)) {
            return new C2350b0(-100, "");
        }
        int i = -102;
        BufferedOutputStream bufferedOutputStream8 = null;
        try {
            try {
                httpURLConnection2 = m37810a(str, bArr.length, map, str2);
                try {
                    if (httpURLConnection2 == null) {
                        C2350b0 c2350b0 = new C2350b0(-101, "");
                        C2388t0.m37529a((Closeable) null);
                        C2388t0.m37529a((Closeable) null);
                        if (httpURLConnection2 != null) {
                            C2388t0.m37524a(httpURLConnection2);
                        }
                        return c2350b0;
                    }
                    outputStream2 = httpURLConnection2.getOutputStream();
                    try {
                        BufferedOutputStream bufferedOutputStream9 = new BufferedOutputStream(outputStream2);
                        try {
                            try {
                                bufferedOutputStream9.write(bArr);
                                bufferedOutputStream9.flush();
                                responseCode = httpURLConnection2.getResponseCode();
                            } catch (C2347a e) {
                                bufferedOutputStream = bufferedOutputStream9;
                                C2398y.m37469f("hmsSdk", "PostRequest(byte[]): No ssl socket factory set!");
                                BufferedOutputStream bufferedOutputStream10 = bufferedOutputStream;
                                C2350b0 c2350b02 = new C2350b0(-101, "");
                                C2388t0.m37529a((Closeable) bufferedOutputStream);
                                C2388t0.m37529a((Closeable) outputStream2);
                                if (httpURLConnection2 != null) {
                                    C2388t0.m37524a(httpURLConnection2);
                                }
                                return c2350b02;
                            } catch (Throwable th2) {
                                bufferedOutputStream8 = bufferedOutputStream9;
                                httpURLConnection = httpURLConnection2;
                                th = th2;
                                outputStream = outputStream2;
                                C2388t0.m37529a((Closeable) bufferedOutputStream8);
                                C2388t0.m37529a((Closeable) outputStream);
                                if (httpURLConnection != null) {
                                    C2388t0.m37524a(httpURLConnection);
                                }
                                throw th;
                            }
                        } catch (IOException e2) {
                        } catch (SecurityException e3) {
                        } catch (ConnectException e4) {
                        } catch (UnknownHostException e5) {
                        } catch (SSLHandshakeException e6) {
                        } catch (SSLPeerUnverifiedException e7) {
                        }
                        try {
                            C2350b0 c2350b03 = new C2350b0(responseCode, m37806b(httpURLConnection2));
                            C2388t0.m37529a((Closeable) bufferedOutputStream9);
                            C2388t0.m37529a((Closeable) outputStream2);
                            C2388t0.m37524a(httpURLConnection2);
                            return c2350b03;
                        } catch (SecurityException e8) {
                            i = responseCode;
                            bufferedOutputStream2 = bufferedOutputStream9;
                            C2398y.m37469f("hmsSdk", "SecurityException with HttpClient. Please check INTERNET permission.");
                            BufferedOutputStream bufferedOutputStream11 = bufferedOutputStream2;
                            C2350b0 c2350b04 = new C2350b0(i, "");
                            C2388t0.m37529a((Closeable) bufferedOutputStream2);
                            C2388t0.m37529a((Closeable) outputStream2);
                            if (httpURLConnection2 != null) {
                                C2388t0.m37524a(httpURLConnection2);
                            }
                            return c2350b04;
                        } catch (ConnectException e9) {
                            i = responseCode;
                            bufferedOutputStream5 = bufferedOutputStream9;
                            C2398y.m37469f("hmsSdk", "Network is unreachable or Connection refused");
                            BufferedOutputStream bufferedOutputStream12 = bufferedOutputStream5;
                            C2350b0 c2350b05 = new C2350b0(i, "");
                            C2388t0.m37529a((Closeable) bufferedOutputStream5);
                            C2388t0.m37529a((Closeable) outputStream2);
                            if (httpURLConnection2 != null) {
                                C2388t0.m37524a(httpURLConnection2);
                            }
                            return c2350b05;
                        } catch (UnknownHostException e10) {
                            i = responseCode;
                            bufferedOutputStream6 = bufferedOutputStream9;
                            C2398y.m37469f("hmsSdk", "No address associated with hostname or No network");
                            BufferedOutputStream bufferedOutputStream13 = bufferedOutputStream6;
                            C2350b0 c2350b06 = new C2350b0(i, "");
                            C2388t0.m37529a((Closeable) bufferedOutputStream6);
                            C2388t0.m37529a((Closeable) outputStream2);
                            if (httpURLConnection2 != null) {
                                C2388t0.m37524a(httpURLConnection2);
                            }
                            return c2350b06;
                        } catch (SSLHandshakeException e11) {
                            i = responseCode;
                            bufferedOutputStream4 = bufferedOutputStream9;
                            C2398y.m37469f("hmsSdk", "Chain validation failed,Certificate expired");
                            BufferedOutputStream bufferedOutputStream14 = bufferedOutputStream4;
                            C2350b0 c2350b07 = new C2350b0(i, "");
                            C2388t0.m37529a((Closeable) bufferedOutputStream4);
                            C2388t0.m37529a((Closeable) outputStream2);
                            if (httpURLConnection2 != null) {
                                C2388t0.m37524a(httpURLConnection2);
                            }
                            return c2350b07;
                        } catch (SSLPeerUnverifiedException e12) {
                            i = responseCode;
                            bufferedOutputStream3 = bufferedOutputStream9;
                            C2398y.m37469f("hmsSdk", "Certificate has not been verified,Request is restricted!");
                            BufferedOutputStream bufferedOutputStream15 = bufferedOutputStream3;
                            C2350b0 c2350b08 = new C2350b0(i, "");
                            C2388t0.m37529a((Closeable) bufferedOutputStream3);
                            C2388t0.m37529a((Closeable) outputStream2);
                            if (httpURLConnection2 != null) {
                                C2388t0.m37524a(httpURLConnection2);
                            }
                            return c2350b08;
                        } catch (IOException e13) {
                            i = responseCode;
                            bufferedOutputStream7 = bufferedOutputStream9;
                            C2398y.m37469f("hmsSdk", "events PostRequest(byte[]): IOException occurred.");
                            BufferedOutputStream bufferedOutputStream16 = bufferedOutputStream7;
                            C2350b0 c2350b09 = new C2350b0(i, "");
                            C2388t0.m37529a((Closeable) bufferedOutputStream7);
                            C2388t0.m37529a((Closeable) outputStream2);
                            if (httpURLConnection2 != null) {
                                C2388t0.m37524a(httpURLConnection2);
                            }
                            return c2350b09;
                        }
                    } catch (C2347a e14) {
                        bufferedOutputStream = null;
                    } catch (SecurityException e15) {
                        bufferedOutputStream2 = null;
                    } catch (ConnectException e16) {
                        bufferedOutputStream5 = null;
                    } catch (UnknownHostException e17) {
                        bufferedOutputStream6 = null;
                    } catch (SSLHandshakeException e18) {
                        bufferedOutputStream4 = null;
                    } catch (SSLPeerUnverifiedException e19) {
                        bufferedOutputStream3 = null;
                    } catch (IOException e20) {
                        bufferedOutputStream7 = null;
                    }
                } catch (C2347a e21) {
                    outputStream2 = null;
                    bufferedOutputStream = null;
                } catch (SecurityException e22) {
                    outputStream2 = null;
                    bufferedOutputStream2 = null;
                } catch (ConnectException e23) {
                    outputStream2 = null;
                    bufferedOutputStream5 = null;
                } catch (UnknownHostException e24) {
                    outputStream2 = null;
                    bufferedOutputStream6 = null;
                } catch (SSLHandshakeException e25) {
                    outputStream2 = null;
                    bufferedOutputStream4 = null;
                } catch (SSLPeerUnverifiedException e26) {
                    outputStream2 = null;
                    bufferedOutputStream3 = null;
                } catch (IOException e27) {
                    outputStream2 = null;
                    bufferedOutputStream7 = null;
                } catch (Throwable th3) {
                    outputStream = null;
                    httpURLConnection = httpURLConnection2;
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                outputStream = str2;
            }
        } catch (C2347a e28) {
            httpURLConnection2 = null;
            outputStream2 = null;
            bufferedOutputStream = null;
        } catch (ConnectException e29) {
            httpURLConnection2 = null;
            outputStream2 = null;
            bufferedOutputStream5 = null;
        } catch (UnknownHostException e30) {
            httpURLConnection2 = null;
            outputStream2 = null;
            bufferedOutputStream6 = null;
        } catch (SSLHandshakeException e31) {
            httpURLConnection2 = null;
            outputStream2 = null;
            bufferedOutputStream4 = null;
        } catch (SSLPeerUnverifiedException e32) {
            httpURLConnection2 = null;
            outputStream2 = null;
            bufferedOutputStream3 = null;
        } catch (IOException e33) {
            httpURLConnection2 = null;
            outputStream2 = null;
            bufferedOutputStream7 = null;
        } catch (SecurityException e34) {
            httpURLConnection2 = null;
            outputStream2 = null;
            bufferedOutputStream2 = null;
        } catch (Throwable th5) {
            th = th5;
            httpURLConnection = null;
            outputStream = null;
        }
    }

    /* renamed from: a */
    public static HttpURLConnection m37810a(String str, int i, Map<String, String> map, String str2) {
        if (TextUtils.isEmpty(str)) {
            C2398y.m37476b("hmsSdk", "CreateConnection: invalid urlPath.");
            return null;
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        m37807a(httpURLConnection);
        httpURLConnection.setRequestMethod(str2);
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(15000);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
        httpURLConnection.setRequestProperty("Content-Length", String.valueOf(i));
        httpURLConnection.setRequestProperty("Connection", MraidCloseCommand.NAME);
        if (map != null && map.size() >= 1) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key != null && !TextUtils.isEmpty(key)) {
                    httpURLConnection.setRequestProperty(key, entry.getValue());
                }
            }
        }
        return httpURLConnection;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0057  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m37807a(java.net.HttpURLConnection r4) {
        /*
            r0 = r4
            boolean r0 = r0 instanceof javax.net.ssl.HttpsURLConnection
            if (r0 == 0) goto L61
            r0 = r4
            javax.net.ssl.HttpsURLConnection r0 = (javax.net.ssl.HttpsURLConnection) r0
            r5 = r0
            r0 = 0
            r6 = r0
            android.content.Context r0 = com.huawei.hms.hatool.AbstractC2349b.m37779i()     // Catch: java.lang.IllegalAccessException -> L18 java.io.IOException -> L1f java.security.GeneralSecurityException -> L26 java.security.KeyStoreException -> L2d java.security.NoSuchAlgorithmException -> L34
            com.huawei.secure.android.common.ssl.SecureSSLSocketFactory r0 = com.huawei.secure.android.common.ssl.SecureSSLSocketFactory.getInstance(r0)     // Catch: java.lang.IllegalAccessException -> L18 java.io.IOException -> L1f java.security.GeneralSecurityException -> L26 java.security.KeyStoreException -> L2d java.security.NoSuchAlgorithmException -> L34
            r4 = r0
            goto L40
        L18:
            r4 = move-exception
            java.lang.String r0 = "getSocketFactory(): Illegal Access Exception "
            r4 = r0
            goto L38
        L1f:
            r4 = move-exception
            java.lang.String r0 = "getSocketFactory(): IO Exception!"
            r4 = r0
            goto L38
        L26:
            r4 = move-exception
            java.lang.String r0 = "getSocketFactory(): General Security Exception"
            r4 = r0
            goto L38
        L2d:
            r4 = move-exception
            java.lang.String r0 = "getSocketFactory(): Key Store exception"
            r4 = r0
            goto L38
        L34:
            r4 = move-exception
            java.lang.String r0 = "getSocketFactory(): Algorithm Exception!"
            r4 = r0
        L38:
            java.lang.String r0 = "hmsSdk"
            r1 = r4
            com.huawei.hms.hatool.C2398y.m37469f(r0, r1)
            r0 = r6
            r4 = r0
        L40:
            r0 = r4
            if (r0 == 0) goto L57
            r0 = r5
            r1 = r4
            r0.setSSLSocketFactory(r1)
            r0 = r5
            com.huawei.secure.android.common.ssl.hostname.StrictHostnameVerifier r1 = new com.huawei.secure.android.common.ssl.hostname.StrictHostnameVerifier
            r2 = r1
            r2.<init>()
            r0.setHostnameVerifier(r1)
            goto L61
        L57:
            com.huawei.hms.hatool.a0$a r0 = new com.huawei.hms.hatool.a0$a
            r1 = r0
            java.lang.String r2 = "No ssl socket factory set"
            r1.<init>(r2)
            throw r0
        L61:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.hatool.AbstractC2346a0.m37807a(java.net.HttpURLConnection):void");
    }

    /* renamed from: b */
    public static String m37806b(HttpURLConnection httpURLConnection) {
        InputStream inputStream = null;
        InputStream inputStream2 = null;
        try {
            try {
                InputStream inputStream3 = httpURLConnection.getInputStream();
                inputStream2 = inputStream3;
                inputStream = inputStream3;
                String m37526a = C2388t0.m37526a(inputStream3);
                C2388t0.m37529a((Closeable) inputStream3);
                return m37526a;
            } catch (IOException e) {
                int responseCode = httpURLConnection.getResponseCode();
                InputStream inputStream4 = inputStream;
                InputStream inputStream5 = inputStream;
                StringBuilder sb = new StringBuilder();
                InputStream inputStream6 = inputStream;
                sb.append("When Response Content From Connection inputStream operation exception! ");
                InputStream inputStream7 = inputStream;
                sb.append(responseCode);
                InputStream inputStream8 = inputStream;
                C2398y.m37469f("hmsSdk", sb.toString());
                C2388t0.m37529a((Closeable) inputStream);
                return "";
            }
        } catch (Throwable th) {
            C2388t0.m37529a((Closeable) inputStream2);
            throw th;
        }
    }
}
