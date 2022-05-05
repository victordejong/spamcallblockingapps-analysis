package p459j.p460a.p474c0.p475c.p479z;

import android.content.Context;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import p459j.p460a.p474c0.p475c.p479z.C11641b0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
/* renamed from: j.a.c0.c.z.w */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/w.class */
public class C11682w<D extends C11641b0> extends AbstractC11666m<D> {
    public C11682w(Context context, D d) {
        super(context, d);
        this.f26183c = 0;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11666m
    /* renamed from: g */
    public InputStream mo8641g() throws FileNotFoundException {
        C12151d.m7002b();
        return null;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11666m
    /* renamed from: i */
    public boolean mo8640i() throws FileNotFoundException {
        Throwable th;
        MalformedURLException e;
        IOException e2;
        C12151d.m7002b();
        r7 = null;
        HttpURLConnection httpURLConnection = null;
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(((C11641b0) this.f26182b).f26138i.toString()).openConnection()));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (MalformedURLException e3) {
            e = e3;
        } catch (IOException e4) {
            e2 = e4;
        }
        try {
            httpURLConnection.connect();
            if (httpURLConnection.getResponseCode() == 200) {
                boolean equalsIgnoreCase = "image/gif".equalsIgnoreCase(httpURLConnection.getContentType());
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return equalsIgnoreCase;
            } else if (httpURLConnection == null) {
                return false;
            } else {
                httpURLConnection.disconnect();
                return false;
            }
        } catch (MalformedURLException e5) {
            e = e5;
            StringBuilder sb = new StringBuilder();
            sb.append("MalformedUrl for image with url: ");
            sb.append(((C11641b0) this.f26182b).f26138i.toString());
            httpURLConnection2 = httpURLConnection;
            C12153d0.m6986b("MessagingApp", sb.toString(), e);
            if (httpURLConnection == null) {
                return false;
            }
            httpURLConnection.disconnect();
            return false;
        } catch (IOException e6) {
            e2 = e6;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("IOException trying to get inputStream for image with url: ");
            sb2.append(((C11641b0) this.f26182b).f26138i.toString());
            httpURLConnection2 = httpURLConnection;
            C12153d0.m6986b("MessagingApp", sb2.toString(), e2);
            if (httpURLConnection == null) {
                return false;
            }
            httpURLConnection.disconnect();
            return false;
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection2 = httpURLConnection;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x019c  */
    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11666m
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap mo8639j() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p475c.p479z.C11682w.mo8639j():android.graphics.Bitmap");
    }
}
