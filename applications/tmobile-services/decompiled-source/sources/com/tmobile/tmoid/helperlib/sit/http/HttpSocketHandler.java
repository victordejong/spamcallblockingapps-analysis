package com.tmobile.tmoid.helperlib.sit.http;

import android.net.Network;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.facebook.stetho.common.Utf8Charset;
import com.tmobile.tmoid.helperlib.sit.SitErrorType;
import com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException;
import com.tmobile.tmoid.helperlib.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.Socket;
import java.net.URL;
import java.nio.charset.Charset;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/HttpSocketHandler.class */
public class HttpSocketHandler extends HttpHandler {

    /* renamed from: b */
    private Socket f14801b;

    /* renamed from: c */
    private boolean f14802c;

    /* renamed from: d */
    private String f14803d;

    /* renamed from: e */
    private String f14804e;

    /* renamed from: f */
    private int f14805f;

    public HttpSocketHandler(Network network, String str, String str2) throws SitServerCommunicationErrorException {
        this.f14801b = null;
        this.f14802c = false;
        if (TextUtils.isEmpty(str2)) {
            this.f14800a = "cnam";
            Log.m4654d("TMO-Agent:HttpSocketHandler", "HttpSocketHandler url = " + str + ", serviceName [DEFAULT] = " + this.f14800a);
        } else {
            this.f14800a = str2;
            Log.m4654d("TMO-Agent:HttpSocketHandler", "HttpSocketHandler url = " + str + ", serviceName = " + this.f14800a);
        }
        try {
            URL url = new URL(str);
            this.f14803d = url.getHost();
            this.f14804e = url.getPath();
            int port = url.getPort();
            this.f14805f = port;
            if (port < 0) {
                this.f14805f = url.getDefaultPort();
            }
            if (URLUtil.isHttpsUrl(str)) {
                this.f14801b = m4949a(SSLSocketFactory.getDefault(), network);
            } else {
                this.f14801b = m4949a(SocketFactory.getDefault(), network);
            }
        } catch (IOException e) {
            throw new SitServerCommunicationErrorException(SitErrorType.OTHER, e);
        }
    }

    public HttpSocketHandler(String str, String str2) throws SitServerCommunicationErrorException {
        this(null, str, str2);
    }

    /* renamed from: a */
    private Socket m4949a(SocketFactory socketFactory, Network network) throws IOException {
        Socket createSocket = socketFactory.createSocket(this.f14803d, this.f14805f);
        CookieHandler.setDefault(new CookieManager());
        if (network != null && Build.VERSION.SDK_INT >= 21) {
            network.bindSocket(createSocket);
        }
        return createSocket;
    }

    /* renamed from: d */
    private String m4946d(Socket socket) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(socket.getInputStream());
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Log.m4654d("TMO-Agent:HttpSocketHandler", "Reading the headers from is...");
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            char readUnsignedByte = (char) dataInputStream.readUnsignedByte();
            if (readUnsignedByte == '\n') {
                String sb2 = sb.toString();
                Log.m4654d("TMO-Agent:HttpSocketHandler", sb2);
                sb = new StringBuilder();
                if (!sb2.toLowerCase().startsWith("content-length:")) {
                    i = i;
                    if (TextUtils.isEmpty(sb2)) {
                        break;
                    }
                } else {
                    i = Integer.parseInt(sb2.substring(15).trim());
                }
            } else if (readUnsignedByte != '\r') {
                sb.append(readUnsignedByte);
            }
        }
        Log.m4654d("TMO-Agent:HttpSocketHandler", "Reached end of headers.");
        Log.m4654d("TMO-Agent:HttpSocketHandler", "Reading the data from is...");
        int i2 = 0;
        int i3 = 0;
        if (i > 0) {
            do {
                byteArrayOutputStream.write(dataInputStream.readByte());
                i2 = i3 + 1;
                i3 = i2;
            } while (i2 < i);
            Log.m4654d("TMO-Agent:HttpSocketHandler", "Data delivery complete. Received length: " + i2);
        }
        if (i2 == i) {
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            if (byteArray.length >= 2 && byteArray[0] == 31 && byteArray[1] == -117) {
                Log.m4654d("TMO-Agent:HttpSocketHandler", "Received data is GZIP format. Converting...");
                String b = Util.m4858b(byteArray);
                Log.m4654d("TMO-Agent:HttpSocketHandler", "Response json: " + b);
                if (!this.f14802c) {
                    m4945e();
                }
                return b;
            }
            Log.m4654d("TMO-Agent:HttpSocketHandler", "Received data is NOT GZIP format:");
            throw new IOException("Unexpected data format received from the server");
        }
        Log.m4654d("TMO-Agent:HttpSocketHandler", "receivedContentLength: " + i2);
        throw new IOException("Unexpected end of data");
    }

    /* renamed from: g */
    private void m4943g(Socket socket, String str) throws IOException {
        Log.m4654d("TMO-Agent:HttpSocketHandler", "library version: 3.2.6");
        Log.m4654d("TMO-Agent:HttpSocketHandler", "Request json: " + str);
        byte[] a = Util.m4859a(str.getBytes(Charset.forName(Utf8Charset.NAME)));
        OutputStream outputStream = socket.getOutputStream();
        Log.m4654d("TMO-Agent:HttpSocketHandler", "Writing data to os...");
        PrintWriter printWriter = new PrintWriter(new OutputStreamWriter(outputStream));
        StringBuilder sb = new StringBuilder();
        sb.append("POST " + this.f14804e + " HTTP/1.1\r\n");
        sb.append("Host: " + this.f14803d + "\r\n");
        sb.append("User-Agent: Java\r\n");
        sb.append("Content-Type: application/json\r\n");
        sb.append("Content-Encoding: gzip\r\n");
        sb.append("Accept-Encoding: gzip\r\n");
        sb.append("Accept: application/json\r\n");
        sb.append("Content-Length: " + a.length + "\r\n");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("HttpSocketHandler: Adding Application Category Header: ");
        sb2.append(this.f14800a);
        Log.m4654d("TMO-Agent:HttpSocketHandler", sb2.toString());
        sb.append("X-application-category: " + this.f14800a + "\r\n");
        sb.append("\r\n");
        Log.m4654d("TMO-Agent:HttpSocketHandler", "HttpSocketHandler Headers: " + sb.toString());
        printWriter.print(sb.toString());
        printWriter.flush();
        outputStream.write(a);
        outputStream.flush();
    }

    /* renamed from: b */
    public String m4948b(String str) throws SitServerCommunicationErrorException {
        Log.m4654d("TMO-Agent:HttpSocketHandler", "========================= Start ============================");
        try {
            try {
                this.f14801b.setKeepAlive(this.f14802c);
                this.f14801b.setSoTimeout(60000);
                m4943g(this.f14801b, str);
                Log.m4654d("TMO-Agent:HttpSocketHandler", "Getting the response...");
                String d = m4946d(this.f14801b);
                if (!this.f14802c) {
                    try {
                        this.f14801b.close();
                    } catch (Exception e) {
                    }
                }
                Log.m4654d("TMO-Agent:HttpSocketHandler", "========================= End ============================");
                return d;
            } catch (Exception e2) {
                Log.m4653d("TMO-Agent:HttpSocketHandler", "An error occurred: ", e2);
                throw new SitServerCommunicationErrorException(e2);
            }
        } catch (Throwable th) {
            if (!this.f14802c) {
                try {
                    this.f14801b.close();
                } catch (Exception e3) {
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b9  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> T m4947c(com.tmobile.tmoid.helperlib.sit.http.BaseRequest r6, java.lang.Class<T> r7) throws com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            java.lang.String r1 = r1.mo4892a()
            java.lang.String r0 = r0.m4948b(r1)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x00b1
            org.json.JSONArray r0 = new org.json.JSONArray     // Catch: JSONException -> 0x0078, IllegalAccessException -> 0x008b, InstantiationException -> 0x009e
            r6 = r0
            r0 = r6
            r1 = r8
            r0.<init>(r1)     // Catch: JSONException -> 0x0078, IllegalAccessException -> 0x008b, InstantiationException -> 0x009e
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: JSONException -> 0x0078, IllegalAccessException -> 0x008b, InstantiationException -> 0x009e
            r8 = r0
            r0 = r8
            r0.<init>()     // Catch: JSONException -> 0x0078, IllegalAccessException -> 0x008b, InstantiationException -> 0x009e
            r0 = 0
            r9 = r0
        L_0x0021:
            r0 = r9
            r1 = r6
            int r1 = r1.length()     // Catch: JSONException -> 0x0078, IllegalAccessException -> 0x008b, InstantiationException -> 0x009e
            if (r0 >= r1) goto L_0x003e
            r0 = r8
            r1 = r6
            r2 = r9
            org.json.JSONObject r1 = r1.getJSONObject(r2)     // Catch: JSONException -> 0x0078, IllegalAccessException -> 0x008b, InstantiationException -> 0x009e
            java.lang.String r1 = r1.toString()     // Catch: JSONException -> 0x0078, IllegalAccessException -> 0x008b, InstantiationException -> 0x009e
            boolean r0 = r0.add(r1)     // Catch: JSONException -> 0x0078, IllegalAccessException -> 0x008b, InstantiationException -> 0x009e
            int r9 = r9 + 1
            goto L_0x0021
        L_0x003e:
            java.lang.Class<com.tmobile.tmoid.helperlib.sit.http.MultiResponse> r0 = com.tmobile.tmoid.helperlib.sit.http.MultiResponse.class
            r1 = r7
            boolean r0 = r0.isAssignableFrom(r1)     // Catch: JSONException -> 0x0078, IllegalAccessException -> 0x008b, InstantiationException -> 0x009e
            if (r0 == 0) goto L_0x0058
            r0 = r7
            java.lang.Object r0 = r0.newInstance()     // Catch: JSONException -> 0x0078, IllegalAccessException -> 0x008b, InstantiationException -> 0x009e
            r6 = r0
            r0 = r6
            com.tmobile.tmoid.helperlib.sit.http.MultiResponse r0 = (com.tmobile.tmoid.helperlib.sit.http.MultiResponse) r0     // Catch: JSONException -> 0x0078, IllegalAccessException -> 0x008b, InstantiationException -> 0x009e
            r1 = r8
            r0.mo4881c(r1)     // Catch: JSONException -> 0x0078, IllegalAccessException -> 0x008b, InstantiationException -> 0x009e
            goto L_0x00b3
        L_0x0058:
            r0 = r8
            int r0 = r0.size()     // Catch: JSONException -> 0x0078, IllegalAccessException -> 0x008b, InstantiationException -> 0x009e
            if (r0 <= 0) goto L_0x00b1
            com.google.gson.Gson r0 = new com.google.gson.Gson     // Catch: JSONException -> 0x0078, IllegalAccessException -> 0x008b, InstantiationException -> 0x009e
            r6 = r0
            r0 = r6
            r0.<init>()     // Catch: JSONException -> 0x0078, IllegalAccessException -> 0x008b, InstantiationException -> 0x009e
            r0 = r6
            r1 = r8
            r2 = 0
            java.lang.Object r1 = r1.get(r2)     // Catch: JSONException -> 0x0078, IllegalAccessException -> 0x008b, InstantiationException -> 0x009e
            java.lang.String r1 = (java.lang.String) r1     // Catch: JSONException -> 0x0078, IllegalAccessException -> 0x008b, InstantiationException -> 0x009e
            r2 = r7
            java.lang.Object r0 = r0.m8426i(r1, r2)     // Catch: JSONException -> 0x0078, IllegalAccessException -> 0x008b, InstantiationException -> 0x009e
            r6 = r0
            goto L_0x00b3
        L_0x0078:
            r6 = move-exception
            java.lang.String r0 = "TMO-Agent:HttpSocketHandler"
            java.lang.String r1 = "request failed with exception: "
            r2 = r6
            com.tmobile.tmoid.helperlib.util.Log.m4653d(r0, r1, r2)
            com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException r0 = new com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            throw r0
        L_0x008b:
            r6 = move-exception
            java.lang.String r0 = "TMO-Agent:HttpSocketHandler"
            java.lang.String r1 = "request failed with exception: "
            r2 = r6
            com.tmobile.tmoid.helperlib.util.Log.m4653d(r0, r1, r2)
            com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException r0 = new com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            throw r0
        L_0x009e:
            r6 = move-exception
            java.lang.String r0 = "TMO-Agent:HttpSocketHandler"
            java.lang.String r1 = "request failed with exception: "
            r2 = r6
            com.tmobile.tmoid.helperlib.util.Log.m4653d(r0, r1, r2)
            com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException r0 = new com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            throw r0
        L_0x00b1:
            r0 = 0
            r6 = r0
        L_0x00b3:
            r0 = r6
            if (r0 == 0) goto L_0x00b9
            r0 = r6
            return r0
        L_0x00b9:
            com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException r0 = new com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException
            r1 = r0
            com.tmobile.tmoid.helperlib.sit.SitErrorType r2 = com.tmobile.tmoid.helperlib.sit.SitErrorType.OTHER
            java.lang.String r3 = "Unexpected null response"
            r1.<init>(r2, r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.tmoid.helperlib.sit.http.HttpSocketHandler.m4947c(com.tmobile.tmoid.helperlib.sit.http.BaseRequest, java.lang.Class):java.lang.Object");
    }

    /* renamed from: e */
    public void m4945e() {
        try {
            this.f14801b.close();
        } catch (Exception e) {
        }
    }

    /* renamed from: f */
    public void m4944f(boolean z) {
        this.f14802c = z;
    }
}
