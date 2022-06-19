package com.bytedance.sdk.adnet.p141b;

import android.text.TextUtils;
import com.bytedance.sdk.adnet.core.C4203e;
import com.bytedance.sdk.adnet.core.C4211i;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.core.C4221o;
import com.bytedance.sdk.adnet.core.Header;
import com.bytedance.sdk.adnet.core.HttpResponse;
import com.bytedance.sdk.adnet.core.Request;
import com.bytedance.sdk.adnet.err.C4239a;
import com.bytedance.sdk.adnet.err.C4244f;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.adnet.p143d.C4227c;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPInputStream;
/* renamed from: com.bytedance.sdk.adnet.b.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/c.class */
public class C4164c extends Request<File> {

    /* renamed from: c */
    private File f15267c;

    /* renamed from: d */
    private File f15268d;

    /* renamed from: e */
    private final Object f15269e = new Object();

    /* renamed from: f */
    private C4218m.AbstractC4219a<File> f15270f;

    /* renamed from: com.bytedance.sdk.adnet.b.c$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/c$a.class */
    public interface AbstractC4165a extends C4218m.AbstractC4219a<File> {
        /* renamed from: a */
        void mo34566a(long j, long j2);
    }

    public C4164c(String str, String str2, C4218m.AbstractC4219a<File> abstractC4219a) {
        super(str2, abstractC4219a);
        this.f15270f = abstractC4219a;
        this.f15267c = new File(str);
        this.f15268d = new File(str + ".tmp");
        try {
            File file = this.f15267c;
            if (file != null && file.getParentFile() != null && !this.f15267c.getParentFile().exists()) {
                this.f15267c.getParentFile().mkdirs();
            }
        } catch (Throwable th) {
        }
        setRetryPolicy(new C4203e(25000, 1, 1.0f));
        setShouldCache(false);
    }

    /* renamed from: a */
    private String m36269a(HttpResponse httpResponse, String str) {
        if (httpResponse == null || httpResponse.getHeaders() == null || httpResponse.getHeaders().isEmpty()) {
            return null;
        }
        for (Header header : httpResponse.getHeaders()) {
            if (header != null && TextUtils.equals(header.getName(), str)) {
                return header.getValue();
            }
        }
        return null;
    }

    /* renamed from: b */
    private boolean m36268b(HttpResponse httpResponse) {
        return TextUtils.equals(m36269a(httpResponse, "Content-Encoding"), "gzip");
    }

    /* renamed from: c */
    private boolean m36267c(HttpResponse httpResponse) {
        if (TextUtils.equals(m36269a(httpResponse, "Accept-Ranges"), "bytes")) {
            return true;
        }
        String m36269a = m36269a(httpResponse, "Content-Range");
        return m36269a != null && m36269a.startsWith("bytes");
    }

    /* renamed from: h */
    private void m36264h() {
        try {
            this.f15267c.delete();
        } catch (Throwable th) {
        }
        try {
            this.f15268d.delete();
        } catch (Throwable th2) {
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    /* renamed from: a */
    public C4218m<File> mo33324a(C4211i c4211i) {
        if (isCanceled()) {
            m36264h();
            return C4218m.m36113a(new VAdError("Request was Canceled!", 611));
        } else if (!this.f15268d.canRead() || this.f15268d.length() <= 0) {
            m36264h();
            return C4218m.m36113a(new VAdError("Download temporary file was invalid!", 610));
        } else if (this.f15268d.renameTo(this.f15267c)) {
            return C4218m.m36112a((Object) null, C4227c.m36094a(c4211i));
        } else {
            m36264h();
            return C4218m.m36113a(new VAdError("Can't rename the download temporary file!", 609));
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    /* renamed from: a */
    public void mo36203a(long j, long j2) {
        C4218m.AbstractC4219a<File> abstractC4219a;
        synchronized (this.f15269e) {
            abstractC4219a = this.f15270f;
        }
        if (abstractC4219a instanceof AbstractC4165a) {
            ((AbstractC4165a) abstractC4219a).mo34566a(j, j2);
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    /* renamed from: a */
    public void mo33323a(C4218m<File> c4218m) {
        C4218m.AbstractC4219a<File> abstractC4219a;
        synchronized (this.f15269e) {
            abstractC4219a = this.f15270f;
        }
        if (abstractC4219a != null) {
            abstractC4219a.mo33422a(C4218m.m36112a(this.f15267c, c4218m.f15469b));
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:108:0x02ae -> B:120:0x0132). Please submit an issue!!! */
    /* renamed from: a */
    public byte[] m36270a(HttpResponse httpResponse) throws IOException, C4244f {
        RandomAccessFile randomAccessFile;
        InputStream inputStream;
        InputStream content;
        InputStream inputStream2;
        char contentLength = httpResponse.getContentLength();
        if (contentLength <= 0) {
            C4221o.m36106b("Response doesn't present Content-Length!", new Object[0]);
        }
        char length = m36265g().length();
        boolean m36267c = m36267c(httpResponse);
        if (m36267c) {
            ?? r0 = contentLength + length;
            String m36269a = m36269a(httpResponse, "Content-Range");
            contentLength = r0;
            if (!TextUtils.isEmpty(m36269a)) {
                String str = "bytes " + ((long) length) + VerificationLanguage.REGION_PREFIX + (r0 - 1);
                if (TextUtils.indexOf(m36269a, str) == -1) {
                    throw new IllegalStateException("The Content-Range Header is invalid Assume[" + str + "] vs Real[" + m36269a + "], please remove the temporary file [" + m36265g() + "].");
                }
                contentLength = r0;
            }
        }
        if (contentLength > 0 && m36266f().length() == contentLength) {
            m36266f().renameTo(m36265g());
            mo36203a(contentLength, contentLength);
            return null;
        }
        if (m36266f() != null && m36266f().exists()) {
            m36266f().delete();
        }
        try {
            randomAccessFile = new RandomAccessFile(m36265g(), "rw");
            try {
                if (m36267c) {
                    randomAccessFile.seek(length);
                } else {
                    randomAccessFile.setLength(0L);
                    length = 0;
                }
            } catch (Throwable th) {
            }
        } catch (Throwable th2) {
            randomAccessFile = null;
        }
        try {
            content = httpResponse.getContent();
            inputStream2 = content;
            inputStream = content;
        } catch (Throwable th3) {
            inputStream = null;
        }
        try {
            if (m36268b(httpResponse)) {
                inputStream2 = content;
                if (!(content instanceof GZIPInputStream)) {
                    inputStream2 = new GZIPInputStream(content);
                }
            }
            InputStream inputStream3 = inputStream2;
            byte[] bArr = new byte[1024];
            InputStream inputStream4 = inputStream2;
            mo36203a(length, contentLength);
            do {
                inputStream = inputStream2;
                int read = inputStream2.read(bArr);
                if (read == -1) {
                    break;
                }
                randomAccessFile.write(bArr, 0, read);
                length += read;
                mo36203a(length, contentLength);
                InputStream inputStream5 = inputStream2;
            } while (!isCanceled());
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (Throwable th4) {
                    C4221o.m36108a("Error occured when calling InputStream.close", new Object[0]);
                }
            }
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (Throwable th5) {
                    C4221o.m36108a("Error occured when calling consumingContent", new Object[0]);
                }
            }
            try {
                randomAccessFile.close();
                return null;
            } catch (Throwable th6) {
                C4221o.m36108a("Error occured when calling tmpFile.close", new Object[0]);
                return null;
            }
        } catch (Throwable th7) {
            try {
                C4221o.m36108a("Error occured when FileRequest.parseHttpResponse", new Object[0]);
                m36264h();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th8) {
                        C4221o.m36108a("Error occured when calling InputStream.close", new Object[0]);
                    }
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th9) {
                        C4221o.m36108a("Error occured when calling consumingContent", new Object[0]);
                    }
                }
                try {
                    randomAccessFile.close();
                    return null;
                } catch (Throwable th10) {
                    C4221o.m36108a("Error occured when calling tmpFile.close", new Object[0]);
                    return null;
                }
            } catch (Throwable th11) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th12) {
                        C4221o.m36108a("Error occured when calling InputStream.close", new Object[0]);
                    }
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th13) {
                        C4221o.m36108a("Error occured when calling consumingContent", new Object[0]);
                    }
                }
                try {
                    randomAccessFile.close();
                } catch (Throwable th14) {
                    C4221o.m36108a("Error occured when calling tmpFile.close", new Object[0]);
                }
                throw th11;
            }
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f15269e) {
            this.f15270f = null;
        }
    }

    /* renamed from: f */
    public File m36266f() {
        return this.f15267c;
    }

    /* renamed from: g */
    public File m36265g() {
        return this.f15268d;
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public Map<String, String> getHeaders() throws C4239a {
        HashMap hashMap = new HashMap();
        hashMap.put("Range", "bytes=" + this.f15268d.length() + VerificationLanguage.REGION_PREFIX);
        hashMap.put("Accept-Encoding", "identity");
        return hashMap;
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public Request.EnumC4195b getPriority() {
        return Request.EnumC4195b.LOW;
    }
}
