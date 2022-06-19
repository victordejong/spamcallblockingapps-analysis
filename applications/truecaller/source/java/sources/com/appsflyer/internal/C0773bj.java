package com.appsflyer.internal;

import android.support.annotation.NonNull;
import com.appsflyer.AFLogger;
import com.tenor.android.core.constant.StringConstant;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
/* renamed from: com.appsflyer.internal.bj */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/bj.class */
public final class C0773bj {
    private final int AFInAppEventType;

    public C0773bj(int i) {
        this.AFInAppEventType = i;
    }

    @NonNull
    private static String valueOf(HttpURLConnection httpURLConnection, boolean z) throws IOException {
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        Throwable th;
        IOException e;
        InputStreamReader inputStreamReader2;
        BufferedReader bufferedReader2;
        Exception e2;
        BufferedReader bufferedReader3;
        IOException e3;
        Exception e4;
        InputStreamReader inputStreamReader3 = null;
        try {
            try {
                InputStream inputStream = z ? httpURLConnection.getInputStream() : httpURLConnection.getErrorStream();
                if (inputStream == null) {
                    return "";
                }
                StringBuilder sb = new StringBuilder();
                inputStreamReader = new InputStreamReader(inputStream);
                try {
                    bufferedReader = new BufferedReader(inputStreamReader);
                    boolean z2 = true;
                    while (true) {
                        try {
                            boolean z3 = z2;
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                String obj = sb.toString();
                                inputStreamReader.close();
                                bufferedReader.close();
                                return obj;
                            }
                            if (!z3) {
                                sb.append('\n');
                            }
                            sb.append(readLine);
                            z2 = false;
                        } catch (IOException e5) {
                            bufferedReader2 = bufferedReader;
                            e3 = e5;
                            inputStreamReader2 = inputStreamReader;
                            e = e3;
                            InputStreamReader inputStreamReader4 = inputStreamReader2;
                            StringBuilder sb2 = new StringBuilder("Could not read connection response from: ");
                            InputStreamReader inputStreamReader5 = inputStreamReader2;
                            sb2.append(httpURLConnection.getURL().toString());
                            InputStreamReader inputStreamReader6 = inputStreamReader2;
                            AFLogger.valueOf(sb2.toString(), e);
                            InputStreamReader inputStreamReader7 = inputStreamReader2;
                            throw e;
                        } catch (Exception e6) {
                            bufferedReader3 = bufferedReader;
                            e4 = e6;
                            inputStreamReader3 = inputStreamReader;
                            e2 = e4;
                            InputStreamReader inputStreamReader8 = inputStreamReader3;
                            StringBuilder sb3 = new StringBuilder("Could not read connection response from: ");
                            InputStreamReader inputStreamReader9 = inputStreamReader3;
                            sb3.append(httpURLConnection.getURL().toString());
                            InputStreamReader inputStreamReader10 = inputStreamReader3;
                            AFLogger.valueOf(sb3.toString(), e2);
                            InputStreamReader inputStreamReader11 = inputStreamReader3;
                            InputStreamReader inputStreamReader12 = inputStreamReader3;
                            InputStreamReader inputStreamReader13 = inputStreamReader3;
                            StringBuilder sb4 = new StringBuilder("Could not read connection response: ");
                            InputStreamReader inputStreamReader14 = inputStreamReader3;
                            sb4.append(e2.getMessage());
                            InputStreamReader inputStreamReader15 = inputStreamReader3;
                            C0780br c0780br = new C0780br(sb4.toString(), e2);
                            InputStreamReader inputStreamReader16 = inputStreamReader3;
                            throw c0780br;
                        } catch (Throwable th2) {
                            th = th2;
                            if (inputStreamReader != null) {
                                inputStreamReader.close();
                            }
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            throw th;
                        }
                    }
                } catch (IOException e7) {
                    e3 = e7;
                    bufferedReader2 = null;
                } catch (Exception e8) {
                    e4 = e8;
                    bufferedReader3 = null;
                } catch (Throwable th3) {
                    th = th3;
                    bufferedReader = null;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (IOException e9) {
            e = e9;
            bufferedReader2 = null;
            inputStreamReader2 = null;
        } catch (Exception e10) {
            e2 = e10;
            bufferedReader3 = null;
        } catch (Throwable th5) {
            th = th5;
            bufferedReader = null;
            inputStreamReader = null;
        }
    }

    public final C0776bm<String> valueOf(C0831v c0831v) throws IOException {
        HttpURLConnection httpURLConnection;
        Throwable th;
        HttpURLConnection httpURLConnection2;
        Throwable th2;
        BufferedOutputStream bufferedOutputStream = null;
        try {
            StringBuilder sb = new StringBuilder("HTTP: url: ");
            sb.append(c0831v.AFKeystoreWrapper);
            AFLogger.AFInAppEventType(sb.toString());
            if (c0831v.AFInAppEventType != null) {
                StringBuilder sb2 = new StringBuilder("HTTP: data: ");
                sb2.append(new String(c0831v.AFInAppEventType));
                AFLogger.AFInAppEventType(sb2.toString());
            }
            httpURLConnection2 = (HttpURLConnection) new URL(c0831v.AFKeystoreWrapper).openConnection();
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection = null;
        }
        try {
            httpURLConnection2.setRequestMethod(c0831v.valueOf);
            httpURLConnection2.setConnectTimeout(this.AFInAppEventType);
            httpURLConnection2.setReadTimeout(this.AFInAppEventType);
            httpURLConnection2.addRequestProperty("Content-Type", "application/json");
            for (Map.Entry<String, String> entry : c0831v.values.entrySet()) {
                httpURLConnection2.setRequestProperty(entry.getKey(), entry.getValue());
            }
            byte[] bArr = c0831v.AFInAppEventType;
            boolean z = true;
            if (bArr != null) {
                httpURLConnection2.setDoOutput(true);
                StringBuilder sb3 = new StringBuilder();
                sb3.append(bArr.length);
                httpURLConnection2.setRequestProperty("Content-Length", sb3.toString());
                try {
                    BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(httpURLConnection2.getOutputStream());
                    try {
                        bufferedOutputStream2.write(bArr);
                        bufferedOutputStream2.close();
                    } catch (Throwable th4) {
                        th2 = th4;
                        bufferedOutputStream = bufferedOutputStream2;
                        if (bufferedOutputStream != null) {
                            bufferedOutputStream.close();
                        }
                        throw th2;
                    }
                } catch (Throwable th5) {
                    th2 = th5;
                }
            }
            int responseCode = httpURLConnection2.getResponseCode();
            if (responseCode / 100 != 2) {
                z = false;
            }
            String valueOf = valueOf(httpURLConnection2, z);
            StringBuilder sb4 = new StringBuilder("HTTP: response code: ");
            sb4.append(responseCode);
            sb4.append(StringConstant.SPACE);
            sb4.append(httpURLConnection2.getResponseMessage());
            AFLogger.AFInAppEventType(sb4.toString());
            AFLogger.AFInAppEventType("HTTP: response body: ".concat(String.valueOf(valueOf)));
            C0776bm<String> c0776bm = new C0776bm<>(valueOf, httpURLConnection2.getResponseCode(), z);
            httpURLConnection2.disconnect();
            return c0776bm;
        } catch (Throwable th6) {
            th = th6;
            httpURLConnection = httpURLConnection2;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }
}
