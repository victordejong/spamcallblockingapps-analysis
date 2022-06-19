package com.freshchat.consumer.sdk.p052e;

import android.content.Context;
import com.tenor.android.core.constant.StringConstant;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.net.HttpURLConnection;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.e.e */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/e/e.class */
public class C1532e {
    private String charset;

    /* renamed from: eF */
    private final String f4152eF;

    /* renamed from: eG */
    private HttpURLConnection f4153eG;

    /* renamed from: eH */
    private OutputStream f4154eH;

    /* renamed from: eI */
    private PrintWriter f4155eI;

    public C1532e(Context context, String str) throws IOException {
        this(context, str, "POST");
    }

    public C1532e(Context context, String str, String str2) throws IOException {
        this.charset = StringConstant.UTF8;
        StringBuilder m8728C = C22128a.m8728C("***");
        m8728C.append(System.currentTimeMillis());
        m8728C.append("***");
        String sb = m8728C.toString();
        this.f4152eF = sb;
        HttpURLConnection m40607a = new C1530c(context).m40607a(str, str2, C1530c.m40601ah(C22128a.m8543z2("multipart/form-data; boundary=", sb)));
        this.f4153eG = m40607a;
        this.f4154eH = m40607a.getOutputStream();
        this.f4155eI = new PrintWriter((Writer) new OutputStreamWriter(this.f4154eH, this.charset), true);
    }

    /* renamed from: a */
    public void m40594a(String str, File file) throws IOException {
        m40593a(str, file.getName(), new FileInputStream(file), null);
    }

    /* renamed from: a */
    public void m40593a(String str, String str2, InputStream inputStream, String str3) throws IOException {
        if (inputStream == null) {
            return;
        }
        PrintWriter printWriter = this.f4155eI;
        StringBuilder m8728C = C22128a.m8728C("--");
        m8728C.append(this.f4152eF);
        printWriter.append((CharSequence) m8728C.toString()).append((CharSequence) "\r\n");
        this.f4155eI.append((CharSequence) C22128a.m8717E2("Content-Disposition: form-data; name=\"", str, "\"; filename=\"", str2, "\"")).append((CharSequence) "\r\n");
        this.f4155eI.append((CharSequence) "Content-Transfer-Encoding: binary").append((CharSequence) "\r\n");
        if (str3 != null) {
            PrintWriter printWriter2 = this.f4155eI;
            printWriter2.append((CharSequence) ("Content-Type: " + str3)).append((CharSequence) "\r\n");
        }
        this.f4155eI.append((CharSequence) "\r\n");
        this.f4155eI.flush();
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                this.f4154eH.flush();
                inputStream.close();
                this.f4155eI.append((CharSequence) "\r\n");
                this.f4155eI.flush();
                return;
            }
            this.f4154eH.write(bArr, 0, read);
        }
    }

    /* renamed from: dc */
    public C1531d m40592dc() {
        try {
            this.f4155eI.append((CharSequence) "\r\n").flush();
            PrintWriter printWriter = this.f4155eI;
            printWriter.append((CharSequence) ("--" + this.f4152eF + "--")).append((CharSequence) "\r\n");
            this.f4155eI.close();
            InputStream m40605a = C1530c.m40605a(this.f4153eG);
            C1531d c1531d = new C1531d();
            c1531d.setInputStream(m40605a);
            c1531d.setStatusCode(this.f4153eG.getResponseCode());
            return c1531d;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: f */
    public void m40591f(String str, String str2) {
        PrintWriter printWriter = this.f4155eI;
        StringBuilder m8728C = C22128a.m8728C("--");
        m8728C.append(this.f4152eF);
        printWriter.append((CharSequence) m8728C.toString()).append((CharSequence) "\r\n");
        PrintWriter printWriter2 = this.f4155eI;
        printWriter2.append((CharSequence) ("Content-Disposition: form-data; name=\"" + str + "\"")).append((CharSequence) "\r\n");
        PrintWriter printWriter3 = this.f4155eI;
        StringBuilder m8728C2 = C22128a.m8728C("Content-Type: text/plain; charset=");
        m8728C2.append(this.charset);
        printWriter3.append((CharSequence) m8728C2.toString()).append((CharSequence) "\r\n");
        this.f4155eI.append((CharSequence) "\r\n");
        this.f4155eI.append((CharSequence) str2).append((CharSequence) "\r\n");
        this.f4155eI.flush();
    }
}
