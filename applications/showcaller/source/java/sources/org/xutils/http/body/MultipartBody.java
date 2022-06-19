package org.xutils.http.body;

import android.text.TextUtils;
import com.yanzhenjie.nohttp.Headers;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import org.xutils.common.Callback;
import org.xutils.common.util.KeyValue;
import org.xutils.http.BaseParams;
import org.xutils.http.ProgressHandler;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/body/MultipartBody.class */
public class MultipartBody implements ProgressBody {

    /* renamed from: a */
    private static byte[] f40738a = "--------7da3d81520810".getBytes();

    /* renamed from: b */
    private static byte[] f40739b = "\r\n".getBytes();

    /* renamed from: c */
    private static byte[] f40740c = "--".getBytes();

    /* renamed from: d */
    private byte[] f40741d;

    /* renamed from: e */
    private String f40742e;

    /* renamed from: f */
    private String f40743f;

    /* renamed from: g */
    private List<KeyValue> f40744g;

    /* renamed from: h */
    private long f40745h;

    /* renamed from: i */
    private long f40746i = 0;

    /* renamed from: j */
    private ProgressHandler f40747j;

    /* renamed from: org.xutils.http.body.MultipartBody$a */
    /* loaded from: classes2-dex2jar.jar:org/xutils/http/body/MultipartBody$a.class */
    public class C9654a extends OutputStream {

        /* renamed from: d */
        final AtomicLong f40748d = new AtomicLong(0);

        public C9654a() {
            MultipartBody.this = r7;
        }

        /* renamed from: a */
        public void m189a(File file) {
            if (this.f40748d.get() == -1) {
                return;
            }
            this.f40748d.addAndGet(file.length());
        }

        /* renamed from: e */
        public void m188e(InputStream inputStream) {
            if (this.f40748d.get() == -1) {
                return;
            }
            long inputStreamLength = InputStreamBody.getInputStreamLength(inputStream);
            if (inputStreamLength > 0) {
                this.f40748d.addAndGet(inputStreamLength);
            } else {
                this.f40748d.set(-1L);
            }
        }

        @Override // java.io.OutputStream
        public void write(int i) {
            if (this.f40748d.get() == -1) {
                return;
            }
            this.f40748d.incrementAndGet();
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            if (this.f40748d.get() == -1) {
                return;
            }
            this.f40748d.addAndGet(bArr.length);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            if (this.f40748d.get() == -1) {
                return;
            }
            this.f40748d.addAndGet(i2);
        }
    }

    public MultipartBody(List<KeyValue> list, String str) {
        this.f40743f = "UTF-8";
        this.f40745h = 0L;
        if (!TextUtils.isEmpty(str)) {
            this.f40743f = str;
        }
        this.f40744g = list;
        m194c();
        C9654a c9654a = new C9654a();
        try {
            writeTo(c9654a);
            this.f40745h = c9654a.f40748d.get();
        } catch (IOException e) {
            this.f40745h = -1L;
        }
    }

    /* renamed from: a */
    private static byte[] m196a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder("Content-Disposition: form-data");
        sb.append("; name=\"");
        sb.append(str.replace("\"", "\\\""));
        sb.append("\"");
        if (!TextUtils.isEmpty(str2)) {
            sb.append("; filename=\"");
            sb.append(str2.replace("\"", "\\\""));
            sb.append("\"");
        }
        return sb.toString().getBytes(str3);
    }

    /* renamed from: b */
    private static byte[] m195b(Object obj, String str, String str2) {
        String str3;
        StringBuilder sb = new StringBuilder("Content-Type: ");
        if (!TextUtils.isEmpty(str)) {
            str3 = str.replaceFirst("\\/jpg$", "/jpeg");
        } else if (obj instanceof String) {
            str3 = "text/plain; charset=" + str2;
        } else {
            str3 = Headers.HEAD_VALUE_CONTENT_TYPE_OCTET_STREAM;
        }
        sb.append(str3);
        return sb.toString().getBytes(str2);
    }

    /* renamed from: c */
    private void m194c() {
        String hexString = Double.toHexString(Math.random() * 65535.0d);
        this.f40741d = hexString.getBytes();
        this.f40742e = "multipart/form-data; boundary=" + new String(f40738a) + hexString;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r2v15, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r2v17, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r2v19, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r2v21, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r2v24, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r2v3, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r2v5, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r2v7, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r2v9, types: [byte[], byte[][]] */
    /* renamed from: d */
    private void m193d(OutputStream outputStream, KeyValue keyValue) {
        String str;
        byte[] bytes;
        String str2 = keyValue.key;
        Object obj = keyValue.value;
        if (TextUtils.isEmpty(str2) || obj == null) {
            return;
        }
        m191f(outputStream, new byte[]{f40740c, f40738a, this.f40741d});
        String str3 = null;
        if (keyValue instanceof BaseParams.BodyItemWrapper) {
            BaseParams.BodyItemWrapper bodyItemWrapper = (BaseParams.BodyItemWrapper) keyValue;
            str = bodyItemWrapper.fileName;
            str3 = bodyItemWrapper.contentType;
        } else {
            str = "";
        }
        if (obj instanceof File) {
            File file = (File) obj;
            String str4 = str;
            if (TextUtils.isEmpty(str)) {
                str4 = file.getName();
            }
            String str5 = str3;
            if (TextUtils.isEmpty(str3)) {
                str5 = FileBody.getFileContentType(file);
            }
            m191f(outputStream, new byte[]{m196a(str2, str4, this.f40743f)});
            m191f(outputStream, new byte[]{m195b(obj, str5, this.f40743f)});
            m191f(outputStream, new byte[0]);
            m192e(outputStream, file);
            m191f(outputStream, new byte[0]);
            return;
        }
        m191f(outputStream, new byte[]{m196a(str2, str, this.f40743f)});
        m191f(outputStream, new byte[]{m195b(obj, str3, this.f40743f)});
        m191f(outputStream, new byte[0]);
        if (obj instanceof InputStream) {
            m190g(outputStream, (InputStream) obj);
            m191f(outputStream, new byte[0]);
            return;
        }
        m191f(outputStream, new byte[]{obj instanceof byte[] ? (byte[]) obj : keyValue.getValueStrOrEmpty().getBytes(this.f40743f)});
        long length = this.f40746i + bytes.length;
        this.f40746i = length;
        ProgressHandler progressHandler = this.f40747j;
        if (progressHandler != null && !progressHandler.updateProgress(this.f40745h, length, false)) {
            throw new Callback.CancelledException("upload stopped!");
        }
    }

    /* renamed from: e */
    private void m192e(OutputStream outputStream, File file) {
        if (outputStream instanceof C9654a) {
            ((C9654a) outputStream).m189a(file);
        } else {
            m190g(outputStream, new FileInputStream(file));
        }
    }

    /* renamed from: f */
    private void m191f(OutputStream outputStream, byte[]... bArr) {
        if (bArr != null) {
            for (byte[] bArr2 : bArr) {
                outputStream.write(bArr2);
            }
        }
        outputStream.write(f40739b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0066, code lost:
        throw new org.xutils.common.Callback.CancelledException("upload stopped!");
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m190g(java.io.OutputStream r8, java.io.InputStream r9) {
        /*
            r7 = this;
            r0 = r8
            boolean r0 = r0 instanceof org.xutils.http.body.MultipartBody.C9654a
            if (r0 == 0) goto L12
            r0 = r8
            org.xutils.http.body.MultipartBody$a r0 = (org.xutils.http.body.MultipartBody.C9654a) r0
            r1 = r9
            r0.m188e(r1)
            goto L6b
        L12:
            r0 = 4096(0x1000, float:5.74E-42)
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L6c
            r10 = r0
        L18:
            r0 = r9
            r1 = r10
            int r0 = r0.read(r1)     // Catch: java.lang.Throwable -> L6c
            r11 = r0
            r0 = r11
            if (r0 < 0) goto L67
            r0 = r8
            r1 = r10
            r2 = 0
            r3 = r11
            r0.write(r1, r2, r3)     // Catch: java.lang.Throwable -> L6c
            r0 = r7
            long r0 = r0.f40746i     // Catch: java.lang.Throwable -> L6c
            r1 = r11
            long r1 = (long) r1     // Catch: java.lang.Throwable -> L6c
            long r0 = r0 + r1
            r12 = r0
            r0 = r7
            r1 = r12
            r0.f40746i = r1     // Catch: java.lang.Throwable -> L6c
            r0 = r7
            org.xutils.http.ProgressHandler r0 = r0.f40747j     // Catch: java.lang.Throwable -> L6c
            r14 = r0
            r0 = r14
            if (r0 == 0) goto L18
            r0 = r14
            r1 = r7
            long r1 = r1.f40745h     // Catch: java.lang.Throwable -> L6c
            r2 = r12
            r3 = 0
            boolean r0 = r0.updateProgress(r1, r2, r3)     // Catch: java.lang.Throwable -> L6c
            if (r0 == 0) goto L5b
            goto L18
        L5b:
            org.xutils.common.Callback$CancelledException r0 = new org.xutils.common.Callback$CancelledException     // Catch: java.lang.Throwable -> L6c
            r8 = r0
            r0 = r8
            java.lang.String r1 = "upload stopped!"
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L6c
            r0 = r8
            throw r0     // Catch: java.lang.Throwable -> L6c
        L67:
            r0 = r9
            org.xutils.common.util.IOUtil.closeQuietly(r0)
        L6b:
            return
        L6c:
            r8 = move-exception
            r0 = r9
            org.xutils.common.util.IOUtil.closeQuietly(r0)
            r0 = r8
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.xutils.http.body.MultipartBody.m190g(java.io.OutputStream, java.io.InputStream):void");
    }

    @Override // org.xutils.http.body.RequestBody
    public long getContentLength() {
        return this.f40745h;
    }

    @Override // org.xutils.http.body.RequestBody
    public String getContentType() {
        return this.f40742e;
    }

    @Override // org.xutils.http.body.RequestBody
    public void setContentType(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        int indexOf = this.f40742e.indexOf(";");
        this.f40742e = "multipart/" + str + this.f40742e.substring(indexOf);
    }

    @Override // org.xutils.http.body.ProgressBody
    public void setProgressHandler(ProgressHandler progressHandler) {
        this.f40747j = progressHandler;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [byte[], byte[][]] */
    @Override // org.xutils.http.body.RequestBody
    public void writeTo(OutputStream outputStream) {
        ProgressHandler progressHandler = this.f40747j;
        if (progressHandler == null || progressHandler.updateProgress(this.f40745h, this.f40746i, true)) {
            for (KeyValue keyValue : this.f40744g) {
                m193d(outputStream, keyValue);
            }
            byte[] bArr = f40740c;
            m191f(outputStream, new byte[]{bArr, f40738a, this.f40741d, bArr});
            outputStream.flush();
            ProgressHandler progressHandler2 = this.f40747j;
            if (progressHandler2 == null) {
                return;
            }
            progressHandler2.updateProgress(this.f40745h, this.f40746i, true);
            return;
        }
        throw new Callback.CancelledException("upload stopped!");
    }
}
