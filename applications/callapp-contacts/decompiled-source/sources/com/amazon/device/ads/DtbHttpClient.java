package com.amazon.device.ads;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbHttpClient.class */
class DtbHttpClient {

    /* renamed from: b  reason: collision with root package name */
    int f6487b;
    private String g;
    private String h;

    /* renamed from: c  reason: collision with root package name */
    boolean f6488c = true;

    /* renamed from: d  reason: collision with root package name */
    boolean f6489d = false;
    String e = null;

    /* renamed from: a  reason: collision with root package name */
    HashMap<String, Object> f6486a = new HashMap<>();
    private HashMap<String, Object> f = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbHttpClient$HTTPMethod.class */
    public enum HTTPMethod {
        POST,
        GET
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DtbHttpClient(String str) {
        this.g = str;
    }

    private static String a(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        sb.append(readLine + StringUtils.LF);
                    }
                } catch (IOException e) {
                    "Error converting stream to string. Ex=".concat(String.valueOf(e));
                    DtbLog.b();
                }
                try {
                    break;
                } catch (IOException e2) {
                }
            } catch (Throwable th) {
                try {
                    inputStream.close();
                } catch (IOException e3) {
                }
                throw th;
            }
        }
        inputStream.close();
        return sb.toString();
    }

    private void a(HTTPMethod hTTPMethod, URL url) throws JSONException, IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(1000);
        httpURLConnection.setReadTimeout(60000);
        StringBuilder sb = new StringBuilder();
        for (String str : this.f.keySet()) {
            String obj = this.f.get(str) != null ? this.f.get(str).toString() : "";
            httpURLConnection.setRequestProperty(str, obj);
            sb.append(str + ":" + obj + StringUtils.SPACE);
        }
        StringBuilder sb2 = new StringBuilder("with headers:[");
        sb2.append(sb.toString());
        sb2.append("]");
        DtbLog.b();
        if (hTTPMethod == HTTPMethod.POST) {
            httpURLConnection.setDoOutput(true);
            if (!this.f6489d && !this.f6486a.isEmpty()) {
                httpURLConnection.setRequestProperty("content-type", "application/json; charset=utf-8");
                String a2 = DtbCommonUtils.a(this.f6486a);
                StringBuilder sb3 = new StringBuilder("with json params:[");
                sb3.append(a2);
                sb3.append("]");
                DtbLog.b();
                OutputStream outputStream = httpURLConnection.getOutputStream();
                outputStream.write(a2.getBytes());
                outputStream.flush();
                outputStream.close();
            }
        }
        try {
            InputStream inputStream = httpURLConnection.getInputStream();
            if (inputStream != null) {
                this.f6487b = httpURLConnection.getResponseCode();
                this.h = httpURLConnection.getResponseMessage();
                this.e = a(inputStream);
                inputStream.close();
                new StringBuilder("Response :").append(this.e);
                DtbLog.b();
            }
        } catch (Exception e) {
            this.e = null;
            StringBuilder sb4 = new StringBuilder("Error while connecting to remote server: ");
            sb4.append(httpURLConnection.getURL().toString());
            sb4.append(" with error:");
            sb4.append(e.getMessage());
            DtbLog.b();
        } finally {
            httpURLConnection.disconnect();
        }
    }

    private String c() {
        String str = "";
        if (!this.f6486a.isEmpty()) {
            str = "?";
            for (String str2 : this.f6486a.keySet()) {
                if (this.f6486a.get(str2) != null) {
                    String str3 = str2 + "=" + DtbCommonUtils.b(this.f6486a.get(str2).toString());
                    str = str.length() > 1 ? str + "&" + str3 : str + str3;
                }
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a() throws JSONException, IOException {
        URL url;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f6488c ? "https://" : "http://");
        sb.append(this.g);
        String sb2 = sb.toString();
        "POST URL:".concat(String.valueOf(sb2));
        DtbLog.b();
        if (this.f6489d) {
            String c2 = c();
            StringBuilder sb3 = new StringBuilder("with query params:[");
            sb3.append(c2);
            sb3.append("]");
            DtbLog.b();
            url = new URL(sb2 + c2);
        } else {
            url = new URL(sb2);
        }
        a(HTTPMethod.POST, url);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(String str, String str2) {
        this.f.put(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b() throws JSONException, IOException {
        String c2 = c();
        String str = this.g;
        String str2 = "https://";
        String str3 = str;
        if (!str.startsWith("https://")) {
            str3 = str;
            if (!this.g.startsWith("http://")) {
                StringBuilder sb = new StringBuilder();
                if (!this.f6488c) {
                    str2 = "http://";
                }
                sb.append(str2);
                sb.append(this.g);
                str3 = sb.toString();
            }
        }
        "GET URL:".concat(String.valueOf(str3));
        DtbLog.b();
        "with params: ".concat(String.valueOf(c2));
        DtbLog.b();
        a(HTTPMethod.GET, new URL(str3 + c2));
    }
}
