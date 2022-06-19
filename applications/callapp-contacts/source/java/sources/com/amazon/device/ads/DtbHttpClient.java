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

    /* renamed from: b */
    int f11883b;

    /* renamed from: g */
    private String f11888g;

    /* renamed from: h */
    private String f11889h;

    /* renamed from: c */
    boolean f11884c = true;

    /* renamed from: d */
    boolean f11885d = false;

    /* renamed from: e */
    String f11886e = null;

    /* renamed from: a */
    HashMap<String, Object> f11882a = new HashMap<>();

    /* renamed from: f */
    private HashMap<String, Object> f11887f = new HashMap<>();

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbHttpClient$HTTPMethod.class */
    public enum HTTPMethod {
        POST,
        GET
    }

    public DtbHttpClient(String str) {
        this.f11888g = str;
    }

    /* renamed from: a */
    private static String m38834a(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        sb.append(readLine + StringUtils.f67179LF);
                    }
                } catch (IOException e) {
                    "Error converting stream to string. Ex=".concat(String.valueOf(e));
                    DtbLog.m38825b();
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

    /* renamed from: a */
    private void m38835a(HTTPMethod hTTPMethod, URL url) throws JSONException, IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(1000);
        httpURLConnection.setReadTimeout(60000);
        StringBuilder sb = new StringBuilder();
        for (String str : this.f11887f.keySet()) {
            String obj = this.f11887f.get(str) != null ? this.f11887f.get(str).toString() : "";
            httpURLConnection.setRequestProperty(str, obj);
            sb.append(str + ":" + obj + StringUtils.SPACE);
        }
        StringBuilder sb2 = new StringBuilder("with headers:[");
        sb2.append(sb.toString());
        sb2.append("]");
        DtbLog.m38825b();
        if (hTTPMethod == HTTPMethod.POST) {
            httpURLConnection.setDoOutput(true);
            if (!this.f11885d && !this.f11882a.isEmpty()) {
                httpURLConnection.setRequestProperty("content-type", "application/json; charset=utf-8");
                String m38891a = DtbCommonUtils.m38891a(this.f11882a);
                StringBuilder sb3 = new StringBuilder("with json params:[");
                sb3.append(m38891a);
                sb3.append("]");
                DtbLog.m38825b();
                OutputStream outputStream = httpURLConnection.getOutputStream();
                outputStream.write(m38891a.getBytes());
                outputStream.flush();
                outputStream.close();
            }
        }
        try {
            InputStream inputStream = httpURLConnection.getInputStream();
            if (inputStream == null) {
                return;
            }
            this.f11883b = httpURLConnection.getResponseCode();
            this.f11889h = httpURLConnection.getResponseMessage();
            this.f11886e = m38834a(inputStream);
            inputStream.close();
            new StringBuilder("Response :").append(this.f11886e);
            DtbLog.m38825b();
        } catch (Exception e) {
            this.f11886e = null;
            StringBuilder sb4 = new StringBuilder("Error while connecting to remote server: ");
            sb4.append(httpURLConnection.getURL().toString());
            sb4.append(" with error:");
            sb4.append(e.getMessage());
            DtbLog.m38825b();
        } finally {
            httpURLConnection.disconnect();
        }
    }

    /* renamed from: c */
    private String m38831c() {
        String str = "";
        if (!this.f11882a.isEmpty()) {
            str = "?";
            for (String str2 : this.f11882a.keySet()) {
                if (this.f11882a.get(str2) != null) {
                    String str3 = str2 + "=" + DtbCommonUtils.m38889b(this.f11882a.get(str2).toString());
                    str = str.length() > 1 ? str + "&" + str3 : str + str3;
                }
            }
        }
        return str;
    }

    /* renamed from: a */
    public final void m38836a() throws JSONException, IOException {
        URL url;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f11884c ? "https://" : "http://");
        sb.append(this.f11888g);
        String sb2 = sb.toString();
        "POST URL:".concat(String.valueOf(sb2));
        DtbLog.m38825b();
        if (this.f11885d) {
            String m38831c = m38831c();
            StringBuilder sb3 = new StringBuilder("with query params:[");
            sb3.append(m38831c);
            sb3.append("]");
            DtbLog.m38825b();
            url = new URL(sb2 + m38831c);
        } else {
            url = new URL(sb2);
        }
        m38835a(HTTPMethod.POST, url);
    }

    /* renamed from: a */
    public final void m38833a(String str, String str2) {
        this.f11887f.put(str, str2);
    }

    /* renamed from: b */
    public final void m38832b() throws JSONException, IOException {
        String m38831c = m38831c();
        String str = this.f11888g;
        String str2 = str;
        if (!str.startsWith("https://")) {
            str2 = str;
            if (!this.f11888g.startsWith("http://")) {
                StringBuilder sb = new StringBuilder();
                sb.append(this.f11884c ? "https://" : "http://");
                sb.append(this.f11888g);
                str2 = sb.toString();
            }
        }
        "GET URL:".concat(String.valueOf(str2));
        DtbLog.m38825b();
        "with params: ".concat(String.valueOf(m38831c));
        DtbLog.m38825b();
        m38835a(HTTPMethod.GET, new URL(str2 + m38831c));
    }
}
