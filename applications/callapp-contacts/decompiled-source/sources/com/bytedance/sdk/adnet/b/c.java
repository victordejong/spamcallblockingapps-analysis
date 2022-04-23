package com.bytedance.sdk.adnet.b;

import android.text.TextUtils;
import com.bytedance.sdk.adnet.core.Header;
import com.bytedance.sdk.adnet.core.HttpResponse;
import com.bytedance.sdk.adnet.core.Request;
import com.bytedance.sdk.adnet.core.e;
import com.bytedance.sdk.adnet.core.i;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.adnet.err.VAdError;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/c.class */
public class c extends Request<File> {

    /* renamed from: c  reason: collision with root package name */
    private File f8207c;

    /* renamed from: d  reason: collision with root package name */
    private File f8208d;
    private final Object e = new Object();
    private m.a<File> f;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/c$a.class */
    public interface a extends m.a<File> {
        void a(long j, long j2);
    }

    public c(String str, String str2, m.a<File> aVar) {
        super(str2, aVar);
        this.f = aVar;
        this.f8207c = new File(str);
        this.f8208d = new File(str + ".tmp");
        try {
            File file = this.f8207c;
            if (!(file == null || file.getParentFile() == null || this.f8207c.getParentFile().exists())) {
                this.f8207c.getParentFile().mkdirs();
            }
        } catch (Throwable th) {
        }
        setRetryPolicy(new e(25000, 1, 1.0f));
        setShouldCache(false);
    }

    private String a(HttpResponse httpResponse, String str) {
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

    private boolean b(HttpResponse httpResponse) {
        return TextUtils.equals(a(httpResponse, "Content-Encoding"), "gzip");
    }

    private boolean c(HttpResponse httpResponse) {
        if (TextUtils.equals(a(httpResponse, "Accept-Ranges"), "bytes")) {
            return true;
        }
        String a2 = a(httpResponse, "Content-Range");
        return a2 != null && a2.startsWith("bytes");
    }

    private void h() {
        try {
            this.f8207c.delete();
        } catch (Throwable th) {
        }
        try {
            this.f8208d.delete();
        } catch (Throwable th2) {
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public m<File> a(i iVar) {
        if (isCanceled()) {
            h();
            return m.a(new VAdError("Request was Canceled!", 611));
        } else if (!this.f8208d.canRead() || this.f8208d.length() <= 0) {
            h();
            return m.a(new VAdError("Download temporary file was invalid!", 610));
        } else if (this.f8208d.renameTo(this.f8207c)) {
            return m.a((Object) null, com.bytedance.sdk.adnet.d.c.a(iVar));
        } else {
            h();
            return m.a(new VAdError("Can't rename the download temporary file!", 609));
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public void a(long j, long j2) {
        m.a<File> aVar;
        synchronized (this.e) {
            aVar = this.f;
        }
        if (aVar instanceof a) {
            ((a) aVar).a(j, j2);
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public void a(m<File> mVar) {
        m.a<File> aVar;
        synchronized (this.e) {
            aVar = this.f;
        }
        if (aVar != null) {
            aVar.a(m.a(this.f8207c, mVar.f8333b));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.bytedance.sdk.adnet.b.c] */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:108:0x02ae -> B:120:0x0132). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] a(com.bytedance.sdk.adnet.core.HttpResponse r7) throws java.io.IOException, com.bytedance.sdk.adnet.err.f {
        /*
            Method dump skipped, instructions count: 695
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.adnet.b.c.a(com.bytedance.sdk.adnet.core.HttpResponse):byte[]");
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public void cancel() {
        super.cancel();
        synchronized (this.e) {
            this.f = null;
        }
    }

    public File f() {
        return this.f8207c;
    }

    public File g() {
        return this.f8208d;
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public Map<String, String> getHeaders() throws com.bytedance.sdk.adnet.err.a {
        HashMap hashMap = new HashMap();
        hashMap.put("Range", "bytes=" + this.f8208d.length() + VerificationLanguage.REGION_PREFIX);
        hashMap.put("Accept-Encoding", "identity");
        return hashMap;
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public Request.b getPriority() {
        return Request.b.LOW;
    }
}
