package p193e.p1577m.p1578a.p1580b.p1581i;

import e.m.d.r.c;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.Objects;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1580b.p1581i.C23997d;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24026s;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.C24017m;
/* renamed from: e.m.a.b.i.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/i/b.class */
public final /* synthetic */ class C23995b {

    /* renamed from: a */
    public final /* synthetic */ C23997d f66470a;

    public /* synthetic */ C23995b(C23997d c23997d) {
        this.f66470a = c23997d;
    }

    /* renamed from: a */
    public final Object m5631a(Object obj) {
        C23997d.C23999b c23999b;
        C23997d c23997d = this.f66470a;
        C23997d.C23998a c23998a = (C23997d.C23998a) obj;
        Objects.requireNonNull(c23997d);
        C26232y.m2448K("CctTransportBackend", "Making request to: %s", c23998a.f66485a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) c23998a.f66485a.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(c23997d.f66484g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("User-Agent", String.format("datatransport/%s android/", "3.1.2"));
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        String str = c23998a.f66487c;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            try {
                OutputStream outputStream = httpURLConnection.getOutputStream();
                try {
                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                    c23997d.f66478a.a(c23998a.f66486b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                    gZIPOutputStream.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    C26232y.m2479C0("CctTransportBackend");
                    httpURLConnection.getHeaderField("Content-Type");
                    C26232y.m2479C0("CctTransportBackend");
                    httpURLConnection.getHeaderField("Content-Encoding");
                    C26232y.m2479C0("CctTransportBackend");
                    if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                        c23999b = new C23997d.C23999b(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                    } else if (responseCode != 200) {
                        c23999b = new C23997d.C23999b(responseCode, null, 0L);
                    } else {
                        InputStream inputStream = httpURLConnection.getInputStream();
                        try {
                            InputStream gZIPInputStream = "gzip".equals(httpURLConnection.getHeaderField("Content-Encoding")) ? new GZIPInputStream(inputStream) : inputStream;
                            C23997d.C23999b c23999b2 = new C23997d.C23999b(responseCode, null, ((C24017m) AbstractC24026s.m5598a(new BufferedReader(new InputStreamReader(gZIPInputStream)))).f66564a);
                            if (gZIPInputStream != null) {
                                gZIPInputStream.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            c23999b = c23999b2;
                        } catch (Throwable th) {
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                    }
                    throw th3;
                }
            } catch (c | IOException e) {
                C26232y.m2479C0("CctTransportBackend");
                c23999b = new C23997d.C23999b(400, null, 0L);
            }
        } catch (ConnectException | UnknownHostException e2) {
            C26232y.m2479C0("CctTransportBackend");
            c23999b = new C23997d.C23999b(500, null, 0L);
        }
        return c23999b;
    }
}
